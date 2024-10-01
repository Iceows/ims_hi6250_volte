.class public Lcom/huawei/ims/HwImsUtImpl;
.super Lcom/huawei/ims/ImsUtImpl;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;,
        Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;,
        Lcom/huawei/ims/HwImsUtImpl$UTData;,
        Lcom/huawei/ims/HwImsUtImpl$UtCmd;,
        Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;,
        Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;,
        Lcom/huawei/ims/HwImsUtImpl$CmdToken;,
        Lcom/huawei/ims/HwImsUtImpl$CmdState;,
        Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    }
.end annotation


# static fields
.field public static final ACTION_MAPCON_SERVICE_FAILED:Ljava/lang/String; = "com.hisi.mapcon.servicefailed"

.field public static final CALL_SDK_FAILED:I = -0x1

.field public static final CALL_SDK_SUCCESSFULLY:I = 0x0

.field public static final CALL_WAITING_ACTIVE:I = 0x1

.field public static final CALL_WAITING_DEACTIVE:I = 0x0

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field public static final CFT_DATE_NUM:I = 0x2

.field public static final CF_REASON_TIME:I = 0x6

.field private static final CLEAR_TCP_GBA_PARM:I = 0x0

.field private static final CLEAR_TCP_GBA_UTCFG_PARM:I = 0x1

.field public static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CONNECT_INFO_ERRORCODE:Ljava/lang/String; = "ut409perfix"

.field private static final DC_ALARM_IN_MS:I = 0x2710

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CURRENT_SUB_ID:I = -0x1

.field public static final DEFAULT_NO_REPLY_TIME:I = 0x14

.field private static final DEFAULT_NO_REPLY_TIMER:I = -0x1

.field private static final EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT:I = 0x1

.field private static final EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT:I = 0x0

.field private static final EVENT_ECT_RESULT:I = 0x32

.field public static final EVENT_GET_CS_CALL_WAITING_DONE:I = 0x1b

.field public static final EVENT_QUERY_CALL_WAITING:I = 0x14

.field public static final EVENT_QUERY_CLIR:I = 0x16

.field public static final EVENT_SET_CS_CALL_WAITING_DONE:I = 0x1c

.field public static final EVENT_SYNC_CLIR_TO_IMS_DONE:I = 0x1f

.field public static final EVENT_SYNC_CW_TO_CS_DONE:I = 0x1e

.field public static final EVENT_SYNC_CW_TO_IMS_DONE:I = 0x1d

.field public static final EVENT_UPDATE_CALL_WAITING:I = 0x15

.field public static final EVENT_UPDATE_CLIR:I = 0x17

.field private static FLAG_DEFAULT_VOLTE_VALUE:I = 0x0

.field private static FLAG_IS_NOT_VOLTE:I = 0x0

.field private static FLAG_IS_VOLTE:I = 0x0

.field public static final GENERAL_TELEPHONE_NUMBER:I = 0x81

.field public static final GET_CALL_WAITING_DURATION_TIME:I = 0x5

.field public static final HANDLER_ARG_RESERVE:I = 0x0

.field public static final ILLEGAL_NUMBER:I = -0x1

.field private static final IMS_DATA_CONNECTION_KEEPALIVE_IN_MS:I = 0x7530

.field private static final IMS_DATA_CONNECTION_TIMEOUT_IN_MS:I = 0x2710

.field private static final IMS_GET_HOST_NAME_DELAY_IN_MS:I = 0x64

.field public static final INTERNATIONAL_TELEPHONE_NUMBER:I = 0x91

.field public static final IS_UT_USE_IMSAPN:Z

.field public static final IS_VOWIFI_PROP_ON:Z

.field public static final LOCAL_CALL_WAITING_DEFAULT_VALUE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsUtImpl"

.field public static final MAPCON_APN:Ljava/lang/String; = "apn"

.field public static final MAPCON_CAUSE:Ljava/lang/String; = "cause"

.field public static final MAPCON_DOMAIN_CELLULAR_PREFER:I = 0x3

.field public static final MAPCON_DOMAIN_LTE_PREFER:I = 0x1

.field public static final MAPCON_DOMAIN_WIFI_ONLY:I = 0x0

.field public static final MAPCON_DOMAIN_WIFI_PREFER:I = 0x2

.field public static final MAPCON_PHONEID:Ljava/lang/String; = "phoneId"

.field public static final MAPCON_SERVERADDR:Ljava/lang/String; = "serverAddr"

.field public static final MAPCON_SERVICE_TYPE_MMS:I = 0x1

.field public static final MAPCON_SERVICE_TYPE_UT:I = 0x2

.field public static final MAPCON_SERVICE_TYPE_VOICE:I = 0x0

.field public static final MAPCON_TYPE:Ljava/lang/String; = "serviceType"

.field public static final MAPCON_UNKNOW_INDEX:I = 0x3

.field public static final MAX_REQUESTS_PENDING:I = 0x32

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final NOT_REGISTERED:I = 0x0

.field public static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED:I = 0x1

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED:I = 0x3

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED:I = 0x2

.field public static final PERMISSION_READ_PRECISE_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRECISE_PHONE_STATE"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_HW_OEMNAME:Ljava/lang/String;

.field private static final SEND_CHR_BROADCAST_TIME_GAP:I = 0x36ee80

.field public static final SERVICE_CLASS_CW_MODE:I = 0x3

.field public static final SMCOMMON_TYPE_MMS:I = 0x0

.field public static final SMCOMMON_TYPE_OTHERS:I = 0x2

.field public static final SMCOMMON_TYPE_UT:I = 0x1

.field public static final SSCONF_CB_CONDITION_ALL:I = 0x5

.field public static final SSCONF_CB_CONDITION_BAIC:I = 0x0

.field public static final SSCONF_CB_CONDITION_BAICr:I = 0x4

.field public static final SSCONF_CB_CONDITION_BAOC:I = 0x1

.field public static final SSCONF_CB_CONDITION_BAOIC:I = 0x2

.field public static final SSCONF_CB_CONDITION_BAOICxH:I = 0x3

.field public static final SSCONF_CF_REASON_CFB:I = 0x2

.field public static final SSCONF_CF_REASON_CFNL:I = 0x1

.field public static final SSCONF_CF_REASON_CFNR:I = 0x3

.field public static final SSCONF_CF_REASON_CFNRc:I = 0x4

.field public static final SSCONF_CF_REASON_CFT:I = 0x5

.field public static final SSCONF_CF_REASON_CFU:I = 0x0

.field public static final SSCONF_OP_TYPE_GET:I = 0x0

.field public static final SSCONF_OP_TYPE_PUT:I = 0x1

.field public static final SSCONF_SS_TYPE_ALL:I = 0x0

.field public static final SSCONF_SS_TYPE_BAIC:I = 0xf

.field public static final SSCONF_SS_TYPE_BAICr:I = 0x13

.field public static final SSCONF_SS_TYPE_BAOC:I = 0x10

.field public static final SSCONF_SS_TYPE_BAOIC:I = 0x11

.field public static final SSCONF_SS_TYPE_BAOICxH:I = 0x12

.field public static final SSCONF_SS_TYPE_BA_ALL:I = 0x15

.field public static final SSCONF_SS_TYPE_CDIV:I = 0x5

.field public static final SSCONF_SS_TYPE_CFA:I = 0x16

.field public static final SSCONF_SS_TYPE_CFAC:I = 0x17

.field public static final SSCONF_SS_TYPE_CFB:I = 0x9

.field public static final SSCONF_SS_TYPE_CFNL:I = 0x8

.field public static final SSCONF_SS_TYPE_CFNR:I = 0xa

.field public static final SSCONF_SS_TYPE_CFNRc:I = 0xb

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

.field public static final SS_403_FORBIDDEN_ERROR:I = 0x193

.field public static final SS_404_NOT_FOUND_ERROR:I = 0x194

.field public static final SS_409_CONFLICT_ERROR:I = 0x199

.field public static final SS_ACTIVE:I = 0x1

.field public static final SS_DEACTIVE:I = 0x0

.field public static final SS_ERROR:I = 0x1

.field public static final SS_ERROR_FROM_BSF:I = 0x2

.field public static final SS_ERROR_FROM_NAF:I = 0x1

.field public static final SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR:I = 0x3

.field public static final SS_OK:I = 0x0

.field public static final SS_RESPONSE_CF_NUM:I = 0x1

.field public static final SS_RESPONSE_NUM:I = 0x2

.field public static final SS_SEVICE_CLASS_VOICE:I = 0x1

.field public static final SUB_EVENT_IMS_GET_IMPU_DONE:I = 0xb

.field public static final SUB_EVENT_IMS_UT_CLEAR:I = 0x7

.field public static final SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY:I = 0x5

.field public static final SUB_EVENT_IMS_UT_DC_ALARM:I = 0x29

.field public static final SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY:I = 0xc

.field public static final SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE:I = 0x2

.field public static final SUB_EVENT_IMS_UT_IMS_DC_ALARM:I = 0x2c

.field public static final SUB_EVENT_IMS_UT_INIT:I = 0x8

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED:I = 0x4

.field public static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK:I = 0x3

.field public static final SUB_EVENT_IMS_UT_SCISSCONFCB:I = 0x1

.field public static final SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM:I = 0x2e

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM:I = 0x2f

.field public static final SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM:I = 0x30

.field public static final SUB_EVENT_IMS_UT_TICK:I = 0x6

.field public static final SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM:I = 0x2d

.field public static final SUB_EVENT_IMS_UT_UT_ALARM:I = 0x2a

.field public static final SUB_EVENT_IMS_UT_UT_RETRY_ALARM:I = 0x2b

.field public static final SUB_EVENT_SIM_CARD_ABSENT:I = 0xa

.field public static final SUB_EVENT_SIM_RECORDS_LOADED:I = 0x9

.field private static final TEMPORARY_DC_ALARM_IN_MS:I = 0x7530

.field private static final TEMPORARY_UT_STAY_ALARM_IN_MS:I = 0x3e8

.field private static final TUNNEL_SETUP_TIMEOUT_IN_MS:I = 0x2710

.field private static final TYPE_SDK_HOST_BSF:I = 0x1

.field private static final TYPE_SDK_HOST_NAF:I = 0x0

.field private static final UT_ALARM_IN_MS:I = 0x7530

.field public static final UT_DATA_UPDATE_TIME:I = 0xa

.field public static final UT_DOMAIN_CELLULAR:I = 0x2

.field public static final UT_DOMAIN_DEFAULT:I = 0x0

.field public static final UT_DOMAIN_WIFI:I = 0x1

.field public static final UT_ID_INVALID:I = -0x1

.field public static final UT_ID_VALID:I = 0x0

.field public static final UT_INVALID:I = -0x1

.field private static mCurrentSubId:I

.field private static mRequestId:I

.field private static mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;


# instance fields
.field private MAX_UT_TUNNEL_RETRY_TIMES:I

.field private hasSetNetworkAsDefault:Z

.field private hasUtUseAPN:Z

.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private mCallWatingUtCanBeUsed:Z

.field private mCanSendChrBroadcastDate:Ljava/util/Date;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private mHasChangedDefaultDataSub:Z

.field private mHasCheckedSIMCardByUT:Z

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field private mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirModeResetCWInModem:Z

.field private mIsDataReg:Z

.field private mIsSimRecordLoaded:Z

.field private mIsUtEnable:Z

.field private mIsUtForbidden:Z

.field private mIsUtSubscribed:Z

.field private mIsVowifi:Z

.field private mIsVowifiTimeOut:Z

.field private mIsWifiTunnnelUp:Z

.field private mLastSS:I

.field private mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

.field private mNetId:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNextGetCallWaitingTime:Ljava/util/Date;

.field private mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private mShowDataConnectionDialog:Z

.field private mSubId:I

.field private mUtAPNInetAddressMap:Ljava/util/HashMap;
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

.field private mbReqRoutHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 213
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    .line 376
    const-string v0, "ro.hw.oemName"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    .line 378
    const-string v0, "ro.huawei.build.version.incremental"

    const-string v1, ""

    .line 379
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 382
    const-string v0, ""

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.version.incremental"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 552
    const-string v0, "ro.config.hw_ut_ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_UT_USE_IMSAPN:Z

    .line 618
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 656
    const/4 v0, -0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 665
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 3577
    const-string v2, "card_volte_flag_0"

    const-string v3, "card_volte_flag_1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 3578
    const/4 v2, 0x1

    sput v2, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    .line 3579
    sput v1, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .line 3580
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;ILcom/huawei/ims/ImsUtImpl;)V
    .locals 5
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "subId"    # I
    .param p3, "imsUtImpl"    # Lcom/huawei/ims/ImsUtImpl;

    .line 702
    invoke-direct {p0}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 199
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 200
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 202
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    .line 203
    const/4 v1, 0x3

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    .line 388
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 547
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 559
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 560
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 563
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    .line 566
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 567
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 582
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 588
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 590
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 608
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    .line 615
    new-instance v3, Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-direct {v3}, Lcom/huawei/ims/ImsUtListenerProxy;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 620
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 623
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 625
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    .line 627
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 628
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 630
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 632
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 636
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 638
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    .line 641
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 644
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 653
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 658
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 660
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 661
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 687
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 690
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/huawei/ims/HwImsUtImpl$1;-><init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 1881
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$3;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$3;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4689
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$4;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$4;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 6389
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6560
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 704
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    .line 705
    const-string v0, "HwImsUtImpl constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 706
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const-string v0, "subId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 708
    return-void

    .line 711
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 712
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_1

    .line 713
    const-string v0, "mHwImsServiceImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 714
    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 718
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_2

    .line 719
    const-string v0, "mImsConfigImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 720
    return-void

    .line 724
    :cond_2
    iput-object p3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 725
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_3

    .line 726
    const-string v0, "mImsUtImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 727
    return-void

    .line 732
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtServiceThread()V

    .line 733
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 133
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->getIdForRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 133
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsUtImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1402(Lcom/huawei/ims/HwImsUtImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 133
    iput p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return p1
.end method

.method static synthetic access$1408(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->MAX_UT_TUNNEL_RETRY_TIMES:I

    return v0
.end method

.method static synthetic access$1600(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsUtImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$1900(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    return-void
.end method

.method static synthetic access$2100(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleConnectivity(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/huawei/ims/HwImsUtImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtApnConnection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    return-void
.end method

.method static synthetic access$3000(Lcom/huawei/ims/HwImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 133
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    return v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 133
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    return-object v0
.end method

.method private addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 1994
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1995
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
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

    .line 1998
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private beginImsConnectivity(Z)I
    .locals 12
    .param p1, "isVowifi"    # Z

    .line 5105
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 5106
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5108
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 5109
    const-string v1, "get ConnectivityManager null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5110
    const/4 v1, 0x3

    return v1

    .line 5114
    :cond_0
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v7

    .line 5115
    .local v7, "slotId":I
    const/4 v1, 0x0

    .line 5116
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$1;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5117
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    .line 5118
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    .line 5119
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v10

    .line 5120
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v10, "request":Landroid/net/NetworkRequest;
    const-string v1, "handle UT data connection begin ims connectivity of vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5121
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    const/16 v5, 0x2f

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5123
    iput-boolean v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5135
    move-object v8, v10

    goto :goto_0

    .line 5126
    .end local v10    # "request":Landroid/net/NetworkRequest;
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNCapabilities()I

    move-result v10

    .line 5128
    .local v10, "cap":I
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v11

    .line 5129
    .local v11, "connectionType":I
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 5130
    invoke-virtual {v2, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v8

    .line 5131
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v8, "request":Landroid/net/NetworkRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle UT data connection begin ims connectivity of volte use connectionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5132
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v8

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5135
    .end local v10    # "cap":I
    .end local v11    # "connectionType":I
    :goto_0
    return v9
.end method

.method private broadcastUtIdle()V
    .locals 2

    .line 6508
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6509
    return-void

    .line 6512
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_1

    .line 6513
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->broadcastUtIdle(I)V

    .line 6515
    :cond_1
    return-void
.end method

.method private canUse403ForLocalCW()Z
    .locals 1

    .line 6477
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v0

    return v0
.end method

.method private cancelStopImsApnMessage()V
    .locals 2

    .line 5682
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5683
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5684
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5686
    :cond_0
    return-void
.end method

.method private changeDcStateWhenImsActFail()V
    .locals 4

    .line 5245
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5247
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 5249
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 5250
    const-string v1, "process ut use xcap connection fail,retry vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5251
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5252
    return-void

    .line 5256
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5258
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 5259
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5260
    :cond_1
    if-nez v1, :cond_2

    .line 5261
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5262
    :cond_2
    if-ne v2, v1, :cond_3

    .line 5264
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5265
    :cond_3
    const/4 v2, 0x3

    if-ne v2, v1, :cond_4

    .line 5266
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5268
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5271
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5274
    .end local v1    # "utDomain":I
    :cond_5
    return-void
.end method

.method private changeDcStateWhenTunnelSetupFail()V
    .locals 4

    .line 5287
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5289
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 5293
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5294
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5295
    return-void

    .line 5298
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5299
    const-string v1, "process ut prefer use volte fail,retry vowifi fail,csfb"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5300
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5301
    return-void

    .line 5306
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5308
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_3

    .line 5309
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5310
    :cond_3
    if-nez v1, :cond_4

    .line 5311
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5312
    :cond_4
    if-ne v2, v1, :cond_5

    .line 5314
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5315
    :cond_5
    const/4 v2, 0x3

    if-ne v2, v1, :cond_6

    .line 5316
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_0

    .line 5318
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail,utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5320
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail,cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5323
    .end local v1    # "utDomain":I
    :cond_7
    return-void
.end method

.method private checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3624
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3625
    const-string v1, "ut cmd is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3627
    return v0

    .line 3632
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method private checkNetworkAvailable(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .line 5690
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 5691
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z
    .locals 2
    .param p1, "ds"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3641
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3645
    if-nez p1, :cond_0

    .line 3646
    const-string v0, "ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3648
    const/4 v0, 0x0

    return v0

    .line 3653
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method private checkUtForbiddenDate()V
    .locals 2

    .line 5960
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v0, :cond_0

    .line 5961
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5963
    .local v0, "currDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5964
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 5965
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 5968
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_0
    return-void
.end method

.method private clearCTCardVolteFlag()V
    .locals 4

    .line 3591
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 3592
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCTCardVolteFlag: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget v3, Lcom/huawei/ims/HwImsUtImpl;->FLAG_DEFAULT_VOLTE_VALUE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3594
    return-void
.end method

.method private clearSharedPreferences()V
    .locals 5

    .line 4206
    const-string v0, "enter clearSharedPreferences"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4209
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSIM(Ljava/lang/String;)V

    .line 4210
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setNafAddrFromSIM(Ljava/lang/String;)V

    .line 4211
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setBsfAddrFromSIM(Ljava/lang/String;)V

    .line 4214
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4215
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4214
    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4216
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4217
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4216
    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4221
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4223
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4221
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 4227
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V

    .line 4230
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4232
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 4233
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4234
    const-string v2, "ims not registered, set impu from network as null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4236
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v3, v3, v4

    .line 4237
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4236
    invoke-virtual {v2, v3, v1, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 4239
    :cond_0
    const-string v1, "ims is registered."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4242
    :cond_1
    const-string v1, "imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4244
    :goto_0
    return-void
.end method

.method private createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;
    .locals 3
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .line 2625
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 2626
    .local v0, "sbIpAddr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2627
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2629
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3661
    move-object v0, p1

    .line 3665
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3666
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0

    .line 3667
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3668
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3671
    :cond_1
    :goto_0
    return-object v0
.end method

.method private domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 2
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3679
    move-object v0, p1

    .line 3683
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_0

    .line 3684
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_0

    .line 3685
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, p1, :cond_1

    .line 3686
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3689
    :cond_1
    :goto_0
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 5
    .param p1, "prevDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .param p2, "utType"    # I
    .param p3, "showDcDialog"    # Z

    .line 3693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter domainSelect, prevDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showDcDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3695
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isImsSsBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3696
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v0

    .line 3699
    :cond_0
    move-object v0, p1

    .line 3701
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtForbiddenWhenVolteSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3702
    const-string v1, "UtForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3705
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVolteSwitchOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3706
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3707
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_1

    .line 3708
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3714
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->checkUtForbiddenDate()V

    .line 3718
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3719
    const-string v1, "Ut forbidden"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3721
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3722
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_2

    .line 3723
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3729
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardTypePreferToUseUT()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3730
    const-string v1, "this card is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3732
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3733
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_3

    .line 3734
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3738
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3739
    const-string v1, "this card MCC MNC is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3741
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3742
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_4

    .line 3743
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3748
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSUseCsOnly(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3749
    const-string v1, "this ut type use cs only"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3751
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3752
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_5

    .line 3753
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3758
    :cond_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSSForbidFallbackCS(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3759
    const-string v1, "this ut type is forbided fallback cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3761
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUT(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3762
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_6

    .line 3763
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3769
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 3770
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    if-nez v1, :cond_7

    .line 3771
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3772
    const-string v1, "Ut Not Use Default APN, but has no Ut APN"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3773
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSupportedByCurrentBearer()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3774
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3775
    const-string v1, "Ut Not Use Default APN, but current bearer not support ut"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3778
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSubscribed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3779
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v1

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v1, v3, :cond_9

    const/16 v1, 0x14

    if-eq p2, v1, :cond_a

    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3781
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 3782
    :cond_a
    const-string v1, "CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3784
    :cond_b
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3785
    const-string v1, "Ut Not Use Default APN, but ut service not subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3791
    :cond_c
    :goto_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v0, :cond_d

    .line 3792
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3798
    :cond_d
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    .line 3799
    .local v1, "isUtCanUseWifi":Z
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v3

    .line 3810
    .local v3, "isWifiConnected":Z
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    .line 3811
    const-string v2, "wifi has connected, Ut will use wifi link"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3812
    :cond_e
    if-nez v1, :cond_11

    if-eqz v3, :cond_11

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3815
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-nez v4, :cond_f

    .line 3816
    if-eqz p3, :cond_13

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3817
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3818
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3820
    :cond_f
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    .line 3822
    const-string v2, "tip user to diconnect wifi"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3826
    :cond_10
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    goto :goto_1

    .line 3831
    :cond_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3833
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p3, :cond_12

    .line 3834
    const-string v4, "Show a dialog to notice user to turn data switch on"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3837
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3839
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    goto :goto_1

    .line 3843
    :cond_12
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3849
    :cond_13
    :goto_1
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3857
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3859
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    if-nez p1, :cond_0

    .line 3860
    const-string v1, "cmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3862
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 3865
    :cond_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-ne v2, v1, :cond_2

    .line 3866
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCS(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 3869
    :cond_2
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    return-object v1
.end method

.method private endConnectivityIfNeeded(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 2433
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
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

    .line 2435
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2437
    :cond_0
    return-void
.end method

.method private endImsConnectivity()V
    .locals 4

    .line 5140
    nop

    .line 5141
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5143
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string v1, "endImsConnectivity"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 5147
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5150
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 5151
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5155
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_1

    .line 5156
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5160
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    if-eqz v3, :cond_1

    .line 5161
    const-string v3, "clear default network for host"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5165
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->hasSetNetworkAsDefault:Z

    .line 5170
    :cond_1
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v2, :cond_2

    .line 5171
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 5175
    :cond_2
    return-void
.end method

.method private ensureRouteToHost([Ljava/net/InetAddress;)Z
    .locals 6
    .param p1, "inetAddress"    # [Ljava/net/InetAddress;

    .line 5548
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5553
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtAPNConectionType()I

    move-result v1

    .line 5557
    .local v1, "utAPNType":I
    nop

    .line 5558
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5560
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 5561
    .local v3, "addTag":I
    move v4, v3

    move v3, v0

    .local v3, "i":I
    .local v4, "addTag":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 5562
    if-eqz v2, :cond_1

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    aget-object v5, p1, v3

    .line 5563
    invoke-virtual {v2, v1, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5564
    add-int/lit8 v4, v4, 0x1

    .line 5561
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5567
    .end local v3    # "i":I
    :cond_2
    if-lez v4, :cond_3

    .line 5568
    const/4 v0, 0x1

    return v0

    .line 5570
    :cond_3
    const-string v3, "ensureRouteToHost fail addTag<=0"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5571
    return v0

    .line 5574
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "addTag":I
    :catch_0
    move-exception v2

    .line 5575
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ensureRouteToHost failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5576
    return v0

    .line 5549
    .end local v1    # "utAPNType":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return v0
.end method

.method private extractParametersForChr(BBI)Lcom/huawei/ims/UtCHRData;
    .locals 22
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    move-object/from16 v0, p0

    .line 6678
    const/4 v1, 0x0

    .line 6679
    .local v1, "utChrData":Lcom/huawei/ims/UtCHRData;
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v2

    .line 6680
    .local v2, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v2, :cond_0

    .line 6681
    const-string v3, "extractParametersForChr"

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6682
    iget v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    int-to-byte v3, v3

    .line 6683
    .local v3, "operationType":B
    iget-object v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v4

    int-to-byte v15, v4

    .line 6684
    .local v15, "apnType":B
    iget-object v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v7

    .line 6685
    .local v7, "canUseWifi":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v8

    .line 6686
    .local v8, "mobileDataConneted":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v9

    .line 6687
    .local v9, "wifiConnected":B
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v4

    int-to-byte v14, v4

    .line 6688
    .local v14, "vowifiDomain":B
    iget-object v4, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v17

    .line 6689
    .local v17, "dcState":Ljava/lang/String;
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v4

    int-to-byte v13, v4

    .line 6690
    .local v13, "subId":B
    new-instance v18, Lcom/huawei/ims/UtCHRData;

    sget v4, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    int-to-byte v12, v4

    move-object/from16 v4, v18

    move v5, v3

    move v6, v15

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v16, v12

    move v12, v13

    move/from16 v19, v13

    move/from16 v13, v16

    .end local v13    # "subId":B
    .local v19, "subId":B
    move/from16 v20, v14

    .end local v14    # "vowifiDomain":B
    .local v20, "vowifiDomain":B
    move/from16 v21, v15

    move/from16 v15, p3

    .end local v15    # "apnType":B
    .local v21, "apnType":B
    move-object/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/huawei/ims/UtCHRData;-><init>(BBBBBBBBBBILjava/lang/String;)V

    move-object/from16 v1, v18

    .line 6694
    .end local v3    # "operationType":B
    .end local v7    # "canUseWifi":B
    .end local v8    # "mobileDataConneted":B
    .end local v9    # "wifiConnected":B
    .end local v17    # "dcState":Ljava/lang/String;
    .end local v19    # "subId":B
    .end local v20    # "vowifiDomain":B
    .end local v21    # "apnType":B
    :cond_0
    return-object v1
.end method

.method private getCallWaitingAction(Z)I
    .locals 1
    .param p1, "isEnable"    # Z

    .line 6270
    if-eqz p1, :cond_0

    .line 6271
    const/4 v0, 0x1

    return v0

    .line 6273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCardMccMnc()Ljava/lang/String;
    .locals 7

    .line 3958
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 3959
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 3962
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3964
    return-object v2

    .line 3967
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3969
    const/4 v3, 0x0

    .line 3972
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-ne v5, v4, :cond_1

    .line 3973
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v3    # "mccMnc":Ljava/lang/String;
    .local v2, "mccMnc":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 3975
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v5, v4, :cond_2

    .line 3976
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3985
    .end local v3    # "mccMnc":Ljava/lang/String;
    .restart local v2    # "mccMnc":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccMnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3989
    return-object v2

    .line 3980
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_2
    const-string v4, "mccMnc error: Get wrong MCC MNC "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3982
    return-object v2
.end method

.method private getDefaultDataSubId()I
    .locals 3

    .line 5513
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 5514
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5515
    return v0
.end method

.method private getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .locals 4

    .line 2010
    const/4 v0, 0x0

    .line 2012
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2013
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2014
    const-string v2, "getFirstUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2016
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 2019
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-object v0, v2

    .line 2020
    monitor-exit v1

    .line 2022
    return-object v0

    .line 2020
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getHostByName(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .line 5521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5522
    return-object v1

    .line 5525
    :cond_0
    move-object v0, v1

    .line 5529
    .local v0, "inetAddress":[Ljava/net/InetAddress;
    if-eqz p2, :cond_1

    .line 5531
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 5535
    :catch_0
    move-exception v2

    .line 5536
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "Cannot get inet address Unknown host"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5538
    const/16 v3, 0x3eb

    const/4 v4, -0x1

    invoke-direct {p0, v4, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5541
    return-object v1

    .line 5542
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_1
    :goto_0
    nop

    .line 5544
    return-object v0
.end method

.method private getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "serviceAddr"    # Ljava/lang/String;

    .line 2635
    if-nez p1, :cond_0

    .line 2636
    const-string v0, "network is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2637
    const/4 v0, 0x0

    return v0

    .line 2639
    :cond_0
    const/4 v0, 0x0

    .line 2640
    .local v0, "inetAddress":[Ljava/net/InetAddress;
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v2, p1, Landroid/net/Network;->netId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2641
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/net/InetAddress;

    .line 2642
    const-string v1, " InetAddress get from local map."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2644
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/huawei/ims/HwImsUtImpl;->getHostByName(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2645
    if-eqz v0, :cond_2

    .line 2646
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    const-string v1, " InetAddress get from host, and save in local map."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2650
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->ensureRouteToHost([Ljava/net/InetAddress;)Z

    move-result v1

    return v1
.end method

.method private static getIdForRequest()I
    .locals 2

    .line 4513
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4515
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 4516
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    .line 4519
    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mRequestId:I

    return v0
.end method

.method private getNetworkForDefaultApn()Landroid/net/Network;
    .locals 2

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .local v0, "type":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2559
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2560
    const/4 v0, 0x1

    .line 2563
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2564
    const/4 v0, 0x0

    .line 2567
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "type"    # I

    .line 2570
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2571
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2873
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNoReplyTimer()I

    move-result v0

    .line 2874
    .local v0, "time":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNeedNoReplyTimer()I

    move-result v1

    .line 2875
    .local v1, "deactNoReplyTime":I
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    const/4 v3, -0x1

    if-nez v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 2876
    move v0, v1

    .line 2878
    :cond_0
    if-nez v0, :cond_1

    .line 2880
    const/4 v0, -0x1

    goto :goto_0

    .line 2881
    :cond_1
    if-ne v3, v0, :cond_3

    .line 2883
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 2884
    if-nez v0, :cond_3

    .line 2885
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2891
    :pswitch_0
    const/4 v0, -0x1

    .line 2892
    goto :goto_0

    .line 2887
    :cond_2
    const/16 v0, 0x14

    .line 2888
    nop

    .line 2898
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNoReplyTimer  time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2899
    return v0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getUtAPNCapabilities()I
    .locals 2

    .line 5602
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5603
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5607
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_1

    .line 5608
    const/16 v0, 0xc

    return v0

    .line 5611
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 5605
    :cond_2
    :goto_0
    const/16 v0, 0x9

    return v0
.end method

.method private getUtAPNConectionType()I
    .locals 2

    .line 5617
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_0

    .line 5618
    const/16 v0, 0x2f

    return v0

    .line 5619
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5620
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5622
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_2

    .line 5623
    const/4 v0, 0x0

    return v0

    .line 5625
    :cond_2
    const/16 v0, 0xb

    return v0

    .line 5621
    :cond_3
    :goto_0
    const/16 v0, 0x2d

    return v0
.end method

.method private getUtDomain()I
    .locals 5

    .line 5278
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 5279
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 5280
    .local v1, "isRoaming":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/ims/HwImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v2

    .line 5281
    .local v2, "utDomain":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUtOverWifiEnabled isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5282
    return v2
.end method

.method private handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handle403Error, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3221
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3223
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3227
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3228
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3229
    const-string v0, "CT Card receive 403, notify HWCardManager"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3231
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 3233
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3234
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 3235
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 3240
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3243
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3244
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3246
    .local v2, "size":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 3247
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3248
    .local v3, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3246
    .end local v3    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3250
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3253
    return-void

    .line 3250
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)Z
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3257
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 3262
    :cond_0
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3264
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 3290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle409Error: not support ut type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3274
    :cond_1
    :pswitch_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 3275
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getSSConflictPhraseText()Ljava/lang/String;

    move-result-object v1

    .line 3276
    .local v1, "phraseText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle409Error: phraseText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3277
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3278
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x324

    invoke-direct {v3, v4, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v3

    .line 3280
    .local v0, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ut409perfix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3281
    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 3282
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3283
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3284
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3285
    return v2

    .line 3287
    .end local v0    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "phraseText":Ljava/lang/String;
    :cond_2
    nop

    .line 3294
    :cond_3
    :goto_0
    return v0

    .line 3258
    :cond_4
    :goto_1
    const-string v1, "handle409Error: cmd or ut is null, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3259
    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleClear(I)V
    .locals 7
    .param p1, "iLevel"    # I

    .line 6057
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6059
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 6060
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearCTCardVolteFlag()V

    .line 6062
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6063
    if-ne p1, v0, :cond_1

    .line 6064
    const-string v1, "handleClear, set mIsUtForbidden false"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6065
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6066
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    goto :goto_0

    .line 6070
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6073
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6076
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 6078
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6081
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 6084
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 6085
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6087
    .local v3, "size":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 6088
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6090
    .local v5, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v6, v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 6087
    .end local v5    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6093
    .end local v4    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6094
    .end local v3    # "size":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6096
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_3

    .line 6097
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clear()V

    goto :goto_2

    .line 6099
    :cond_3
    const-string v1, "mGbaAuth is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6102
    :goto_2
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 6106
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_4

    if-ne v0, p1, :cond_4

    .line 6107
    const-string v0, "handleClear: reset current sub id to default"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6108
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 6113
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6116
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 6117
    return-void

    .line 6094
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleConnectivity(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 5805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnectivity mImsDCState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5807
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5813
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5814
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    const/16 v1, 0x2f

    .line 5815
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->checkNetworkAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5816
    const-string v1, "handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5817
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5820
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 5821
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v2, :cond_2

    .line 5822
    const-string v1, "Data has connected, but not for this sub, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5823
    return-void

    .line 5827
    :cond_2
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v1, v2, :cond_3

    .line 5828
    const-string v1, "handleConnectivity: Ims connection is being established, do not use default data connection."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5829
    return-void

    .line 5834
    :cond_3
    if-eqz v0, :cond_4

    .line 5835
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v1, v2, :cond_4

    .line 5836
    const-string v1, "Data has connected, the SS can go UT interface"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5837
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 5838
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 5839
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5840
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 5841
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 5842
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5846
    .end local v1    # "network":Landroid/net/Network;
    :cond_4
    return-void

    .line 5808
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_5
    :goto_0
    const-string v0, "network not available"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5810
    return-void
.end method

.method private handleDcTimeOut()V
    .locals 4

    .line 5849
    const-string v0, "handleDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5851
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5853
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5854
    const-string v1, "[error]cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5856
    return-void

    .line 5859
    :cond_0
    const-string v1, "handle UT data connection time out and finish data connection"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5862
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3ea

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5865
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5867
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5869
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5870
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5873
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5874
    return-void
.end method

.method private handleGetCWResponseFromCs(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1824
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1825
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1827
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCWResponseFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1831
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1834
    return-void

    .line 1837
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_2

    .line 1838
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1841
    .local v2, "cwArray":[I
    if-nez v2, :cond_1

    .line 1842
    :try_start_0
    const-string v3, "cwArray is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1844
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1846
    return-void

    .line 1854
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1849
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCBResponseFromCs, cwArray[0]="

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

    .line 1851
    aget v3, v2, v4

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 1853
    .local v3, "enable":Z
    aget v4, v2, v5

    invoke-direct {p0, v3, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    .end local v3    # "enable":Z
    goto :goto_1

    .line 1854
    :goto_0
    nop

    .line 1855
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "handleGetCWResponseFromCs: improper failed"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1857
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1859
    .end local v2    # "cwArray":[I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    goto :goto_2

    .line 1860
    :cond_2
    const-string v2, "ar.result is not int[]"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1862
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1864
    :goto_2
    return-void
.end method

.method private handleGetCallWaitingDone(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 6124
    const/4 v0, 0x0

    .line 6126
    .local v0, "isEnable":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 6129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get call waiting success, isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6131
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6132
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_1

    .line 6133
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6134
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_1

    .line 6136
    :cond_2
    const-string v1, "call waiting does not sync to modem, response to target"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v1

    .line 6139
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6141
    .end local v1    # "ret":Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method private handleImsConnectionFailure()V
    .locals 2

    .line 6435
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6438
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6439
    const-string v0, "handleImsConnectionFailure, set mIsUtForbidden true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6440
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6441
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 6442
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 6446
    :cond_0
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 6451
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6453
    const-string v0, "handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6454
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 6455
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto :goto_0

    .line 6457
    :cond_1
    const-string v0, "handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6459
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6460
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 6463
    :goto_0
    return-void
.end method

.method private handleImsDcTimeOut()V
    .locals 1

    .line 5589
    const-string v0, "handleImsDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5591
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 5593
    return-void
.end method

.method private handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 4247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4249
    .local v0, "impu":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 4250
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4249
    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4253
    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v1, v2, :cond_0

    .line 4254
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    goto :goto_0

    .line 4256
    :cond_0
    const-string v1, "handleImsGetImpuDone: skip set impu to sdk because it\'s not the current sub"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4259
    :goto_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1599
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 1793
    const-string v0, "imsut not support this msg"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1786
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryUtStayTimeOut()V

    .line 1787
    goto/16 :goto_2

    .line 1782
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryDcTimeOut()V

    .line 1783
    goto/16 :goto_2

    .line 1779
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTearDownTunnelConnectionTimeout()V

    .line 1780
    goto/16 :goto_2

    .line 1776
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTunnelSetupTimeout()V

    .line 1777
    goto/16 :goto_2

    .line 1773
    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsDcTimeOut()V

    .line 1774
    goto/16 :goto_2

    .line 1770
    :pswitch_5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtRetryAlarmTimeOut()V

    .line 1771
    goto/16 :goto_2

    .line 1767
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtTimeOut()V

    .line 1768
    goto/16 :goto_2

    .line 1764
    :pswitch_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleDcTimeOut()V

    .line 1765
    goto/16 :goto_2

    .line 1746
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V

    .line 1747
    goto/16 :goto_2

    .line 1742
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToCsDone(Landroid/os/Message;)V

    .line 1743
    goto/16 :goto_2

    .line 1739
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V

    .line 1740
    goto/16 :goto_2

    .line 1736
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCWFromCs(Landroid/os/Message;)V

    .line 1737
    goto/16 :goto_2

    .line 1733
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCWResponseFromCs(Landroid/os/Message;)V

    .line 1734
    goto/16 :goto_2

    .line 1760
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCLIR(Landroid/os/Message;)V

    .line 1761
    goto/16 :goto_2

    .line 1757
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR(Landroid/os/Message;)V

    .line 1758
    goto/16 :goto_2

    .line 1753
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Landroid/os/Message;)V

    .line 1754
    goto/16 :goto_2

    .line 1750
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting(Landroid/os/Message;)V

    .line 1751
    goto/16 :goto_2

    .line 1720
    :pswitch_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1722
    .local v0, "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    const/4 v1, 0x0

    .line 1723
    .local v1, "isUtRetryCmdEmpty":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1724
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v1, v3

    .line 1725
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 1728
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    goto/16 :goto_2

    .line 1725
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1716
    .end local v0    # "mCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v1    # "isUtRetryCmdEmpty":Z
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Landroid/os/Message;)V

    .line 1717
    goto/16 :goto_2

    .line 1713
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent(Landroid/os/Message;)V

    .line 1714
    goto/16 :goto_2

    .line 1710
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Landroid/os/Message;)V

    .line 1711
    goto/16 :goto_2

    .line 1707
    :pswitch_15
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtInit()V

    .line 1708
    goto/16 :goto_2

    .line 1703
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 1705
    goto/16 :goto_2

    .line 1699
    :pswitch_17
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 1700
    goto/16 :goto_2

    .line 1679
    :pswitch_18
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1681
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 1682
    const-string v1, "there is no cmd in queue"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1684
    return-void

    .line 1687
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1688
    const-string v1, "The network is connected and continues to be connected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    goto/16 :goto_2

    .line 1693
    :cond_1
    const-string v1, "The network is disconnected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1697
    goto/16 :goto_2

    .line 1650
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_19
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 1651
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 1653
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x3ec

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 1658
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1660
    const-string v0, "received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1662
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_2

    .line 1663
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    goto :goto_0

    .line 1665
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 1668
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto/16 :goto_2

    .line 1672
    :cond_3
    const-string v0, "handle UT data connection fall back cs for ensure route fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1674
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 1677
    goto/16 :goto_2

    .line 1642
    :pswitch_1a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 1643
    .local v0, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v1, v2, :cond_4

    .line 1644
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1646
    :cond_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 1647
    goto/16 :goto_2

    .line 1606
    .end local v0    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 1609
    .local v0, "network":Landroid/net/Network;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v2

    .line 1610
    .local v2, "utNafSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v3

    .line 1612
    .local v3, "nafRouteAddress":Z
    const/4 v4, 0x0

    .line 1613
    .local v4, "bsfRouteAddress":Z
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1614
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v5

    .line 1615
    .local v5, "utBsfSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/huawei/ims/HwImsUtImpl;->getHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v4

    .line 1616
    .end local v5    # "utBsfSrvAddr":Ljava/lang/String;
    goto :goto_1

    .line 1617
    :cond_5
    const-string v5, "ut not need bsf auth."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1618
    const/4 v4, 0x1

    .line 1622
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle UT data connection ensure route to host and result is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1623
    iget-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v5, :cond_6

    .line 1624
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 1626
    :cond_6
    if-eqz v3, :cond_7

    .line 1627
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1630
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 1631
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1632
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v1, :cond_9

    .line 1633
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    goto :goto_2

    .line 1636
    :cond_7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1639
    goto :goto_2

    .line 1601
    .end local v0    # "network":Landroid/net/Network;
    .end local v2    # "utNafSrvAddr":Ljava/lang/String;
    .end local v3    # "nafRouteAddress":Z
    .end local v4    # "bsfRouteAddress":Z
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UTData;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 1602
    goto :goto_2

    .line 1790
    :cond_8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->processECTCallBack(Landroid/os/Message;)V

    .line 1791
    nop

    .line 1796
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3877
    const/4 v0, 0x0

    .line 3879
    .local v0, "ret":I
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3880
    const-string v2, "utcmd is null. "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3882
    return v1

    .line 3886
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3895
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v3

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain select by ss is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3900
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3910
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3911
    const/4 v0, 0x1

    goto :goto_0

    .line 3904
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v0

    .line 3905
    if-ne v1, v0, :cond_1

    .line 3906
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3916
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    .line 3924
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSciSSConfCb(Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 3
    .param p1, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSciSSConfCb ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3165
    if-nez p1, :cond_0

    .line 3166
    const-string v0, "handleSciSSConfCb, UTData is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3168
    return-void

    .line 3171
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 3179
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_6

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 3186
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    .line 3188
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 3191
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 3193
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x193

    if-eq v1, v2, :cond_4

    const/16 v2, 0x199

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 3205
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUt409ShowPhrase()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3206
    goto :goto_1

    .line 3213
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    goto :goto_1

    .line 3201
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3202
    goto :goto_1

    .line 3195
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3196
    nop

    .line 3216
    :goto_1
    return-void

    .line 3180
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this Ut data is useless, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3182
    return-void
.end method

.method private handleSciSSConfCbOfCWSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 6712
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6713
    .local v0, "onComplete":Landroid/os/Message;
    if-nez v0, :cond_0

    .line 6714
    const-string v1, "onComplete is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6716
    :cond_0
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v1, :cond_2

    .line 6717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cw state, cmd.mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6718
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 6719
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallWaitingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6720
    .local v1, "flag":Z
    invoke-direct {p0, v1, v3, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 6721
    .end local v1    # "flag":Z
    goto :goto_0

    .line 6722
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6723
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    goto :goto_0

    .line 6727
    :cond_2
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 6729
    :cond_3
    :goto_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6730
    return-void
.end method

.method private handleSciSSConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3337
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setUtDataExpireTime(I)V

    .line 3339
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

    .line 3342
    const/4 v0, 0x0

    .line 3344
    .local v0, "flag":Z
    const/4 v1, 0x6

    :try_start_0
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3557
    :pswitch_0
    const-string v2, "not support ssType"

    goto/16 :goto_4

    .line 3415
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSSConfCbOfCWSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V

    .line 3417
    goto/16 :goto_5

    .line 3445
    :pswitch_2
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_0

    .line 3446
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3447
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 3449
    .local v2, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3450
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3451
    .end local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_5

    .line 3453
    :cond_0
    const-string v2, "OIP OCB: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3455
    goto/16 :goto_5

    .line 3433
    :pswitch_3
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_1

    .line 3434
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3435
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 3437
    .restart local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3438
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3439
    .end local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_5

    .line 3441
    :cond_1
    const-string v2, "OIP ICB: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3443
    goto/16 :goto_5

    .line 3459
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isCFNRcChangeWithCFNL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3460
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_3

    .line 3462
    const/4 v5, 0x1

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    .line 3467
    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v2

    .line 3474
    .local v2, "result":I
    const/16 v3, 0x8

    iput v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3475
    if-ne v4, v2, :cond_2

    .line 3478
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3484
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3486
    .end local v2    # "result":I
    :goto_0
    goto/16 :goto_5

    .line 3487
    :cond_3
    const-string v2, "CFNRc: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3489
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3491
    goto/16 :goto_5

    .line 3498
    :cond_4
    :pswitch_5
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3499
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3500
    goto/16 :goto_5

    .line 3525
    :pswitch_6
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_8

    .line 3526
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIR92V10orGreater()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3527
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3528
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_5

    .line 3530
    :cond_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v2

    .line 3531
    .local v2, "time":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_6

    .line 3533
    const-string v3, "don\'t set the NRT when set the CFNR"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3534
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3535
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3536
    goto/16 :goto_5

    .line 3539
    :cond_6
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNoReplyTimer(I)I

    move-result v3

    .line 3540
    .local v3, "result":I
    iput v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3542
    if-ne v4, v3, :cond_7

    .line 3543
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallDiversionNoReplyTimer fail, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3547
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3549
    .end local v2    # "time":I
    .end local v3    # "result":I
    :goto_1
    goto/16 :goto_5

    .line 3551
    :cond_8
    const-string v2, "CFNR GET: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3553
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3555
    goto/16 :goto_5

    .line 3510
    :pswitch_7
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-ne v4, v2, :cond_a

    .line 3511
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    .line 3512
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3514
    :cond_9
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3515
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto/16 :goto_5

    .line 3517
    :cond_a
    const-string v2, "CF SET: don\'t support this OPRATOR"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3519
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3521
    goto/16 :goto_5

    .line 3419
    :pswitch_8
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_c

    .line 3420
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 3421
    .local v2, "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3422
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3424
    :cond_b
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 3425
    .end local v2    # "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_2

    .line 3426
    :cond_c
    const-string v2, "CDIV PUT: don\'t support will handover to cs"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3429
    :goto_2
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3430
    goto/16 :goto_5

    .line 3402
    :pswitch_9
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_d

    .line 3403
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3404
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3406
    .local v2, "colrInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3407
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3408
    .end local v2    # "colrInfo":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 3409
    :cond_d
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3410
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3412
    goto/16 :goto_5

    .line 3370
    :pswitch_a
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    const/16 v5, 0x1f

    if-nez v2, :cond_f

    .line 3371
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3373
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaultBehavior()I

    move-result v2

    .line 3374
    .local v2, "mDefaultBehavior":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;

    move-result-object v6

    .line 3376
    .local v6, "clirInfo":Landroid/os/Bundle;
    const-string v7, "queryClir"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 3378
    .local v7, "clirResponse":[I
    if-eqz v7, :cond_e

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    aget v4, v7, v4

    if-eqz v4, :cond_e

    .line 3381
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3382
    .local v4, "onComplete":Landroid/os/Message;
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3383
    invoke-virtual {v8, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3384
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3385
    aget v3, v7, v3

    invoke-direct {p0, v3, v5}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3386
    .end local v4    # "onComplete":Landroid/os/Message;
    .end local v5    # "response":Landroid/os/Message;
    goto :goto_3

    .line 3387
    :cond_e
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v6}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3390
    :goto_3
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3391
    .end local v2    # "mDefaultBehavior":I
    .end local v6    # "clirInfo":Landroid/os/Bundle;
    .end local v7    # "clirResponse":[I
    goto/16 :goto_5

    .line 3393
    :cond_f
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3394
    .local v2, "onComplete":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 3395
    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3396
    .local v3, "response":Landroid/os/Message;
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 3398
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3400
    .end local v2    # "onComplete":Landroid/os/Message;
    .end local v3    # "response":Landroid/os/Message;
    goto/16 :goto_5

    .line 3358
    :pswitch_b
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_10

    .line 3359
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3360
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3362
    .local v2, "colpInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3363
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3364
    .end local v2    # "colpInfo":Landroid/os/Bundle;
    goto :goto_5

    .line 3365
    :cond_10
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3366
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3368
    goto :goto_5

    .line 3346
    :pswitch_c
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    if-nez v2, :cond_11

    .line 3347
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 3348
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v2

    .line 3349
    .local v2, "clipInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3350
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3351
    .end local v2    # "clipInfo":Landroid/os/Bundle;
    goto :goto_5

    .line 3353
    :cond_11
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3354
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3356
    goto :goto_5

    .line 3557
    :goto_4
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3559
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3560
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "flag":Z
    goto :goto_5

    .line 3567
    :catch_0
    move-exception v0

    .line 3568
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3570
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 3563
    :catch_1
    move-exception v0

    .line 3564
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "RuntimeException"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3566
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3571
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    nop

    .line 3574
    :goto_6
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3575
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private handleSciSSConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UTData;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UTData;

    .line 3299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handleSciSSConfCbUndefinedError, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3301
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3305
    :cond_0
    if-nez p1, :cond_1

    .line 3306
    return-void

    .line 3309
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 3310
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCTCardVolteFlag(Z)V

    .line 3313
    :cond_3
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3315
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryMaxCounts()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3316
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3317
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    .line 3319
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3321
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->startUtRetryAlarm(I)V

    goto :goto_0

    .line 3324
    :cond_4
    const-string v0, "handle UT data connection fallback CS domain for ut fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3327
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3328
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 3330
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3333
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3334
    return-void
.end method

.method private handleSetCWFromCs(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1867
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1868
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1870
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCWFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1873
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 1875
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 1877
    .local v2, "isEnalbe":Z
    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 1879
    .end local v2    # "isEnalbe":Z
    :goto_0
    return-void
.end method

.method private handleSetCallWaitingDone(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set call waiting success, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6146
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6147
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 6148
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6149
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 6151
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v0

    .line 6153
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6155
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method private handleSimCardAbsent(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 4198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 4201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4203
    return-void
.end method

.method private handleSimRecordsLoaded(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 4057
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v1, v1, v2

    .line 4058
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4057
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4059
    .local v0, "oldImsi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4060
    .local v1, "newImsi":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->spliceMncMcc()Ljava/lang/String;

    move-result-object v2

    .line 4063
    .local v2, "spliceMncMcc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4064
    const-string v3, "Can\'t get current imsi from sim, return"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4066
    return-void

    .line 4070
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setCurrentImsi(Ljava/lang/String;)V

    .line 4071
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/ims/HwImsConfigImpl;->setSpliceMncMcc(Ljava/lang/String;)V

    .line 4073
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 4078
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->readCarrierConfig(Landroid/content/Context;)V

    .line 4082
    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCardChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4083
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearSharedPreferences()V

    .line 4086
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    .line 4088
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4086
    invoke-virtual {v4, v5, v1, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4090
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4092
    invoke-virtual {v6}, Lcom/huawei/ims/HwImsConfigImpl;->getImpuFromSIM()Ljava/lang/String;

    move-result-object v6

    .line 4093
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4090
    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4097
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4098
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    .line 4103
    :cond_2
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 4108
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    .line 4111
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCLIRModeToImsSdk()V

    .line 4114
    sget v3, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v3, v4, :cond_3

    .line 4115
    const-string v3, "handleSimRecordsLoaded: init sdk params when mCurrentSubId == mSubId"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4116
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 4118
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    if-eqz v3, :cond_4

    .line 4119
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 4121
    :cond_4
    return-void
.end method

.method private handleSyncCLIRModeToImsSdkDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6342
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6343
    .local v0, "arSyncCLIR":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6345
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6346
    const-string v2, "SyncCLIRModeToImsSdk FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6347
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6348
    return-void

    .line 6351
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 6352
    .local v2, "ret":Landroid/os/Bundle;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6353
    return-void
.end method

.method private handleSyncCallWaitingDone(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .line 6248
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6250
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    const-string v1, "sync call waiting has finished successfully."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6253
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    .line 6256
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6257
    const-string v1, "begin set call waiting to sharedpreference"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6259
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v2, v2, v3

    .line 6261
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6259
    invoke-virtual {v1, v2, p1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 6264
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6265
    .local v1, "onComplete":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v2

    .line 6266
    .local v2, "ret":Ljava/lang/Object;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6267
    return-void
.end method

.method private handleSyncCallWaitingToCsDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6228
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6230
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6231
    const-string v2, "SyncCallWaitingToCs FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6233
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6235
    return-void

    .line 6238
    :cond_0
    const-string v2, "sync call waiting to IMS SDK successfully"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6240
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6242
    .local v2, "callWaitingAction":I
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6244
    .local v3, "enable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6245
    return-void
.end method

.method private handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 6183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6184
    .local v0, "arSyncCW":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6186
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 6187
    const-string v2, "SyncCallWaitingToImsSdk FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6189
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6191
    return-void

    .line 6194
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6196
    .local v2, "callWaitingAction":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync call waiting to IMS SDK successfully, callWaitingAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6198
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6210
    .local v3, "enable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6211
    return-void
.end method

.method private handleTearDownTunnelConnectionTimeout()V
    .locals 3

    .line 5344
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5345
    const-string v0, "handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5346
    return-void

    .line 5348
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5349
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5351
    const-string v1, "restart wifi tunnel lifetime alarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5352
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5353
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    .line 5354
    return-void

    .line 5357
    :cond_1
    const-string v1, "tunnel lifetime is out, endImsConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5359
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5361
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5362
    return-void
.end method

.method private handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2481
    if-nez p1, :cond_0

    .line 2482
    const-string v0, "handleTempDcConnectionACT - ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2483
    return-void

    .line 2485
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processTemporarilyDcConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2487
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_0

    .line 2490
    :cond_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2491
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryDCAlarm()V

    .line 2494
    :cond_2
    :goto_0
    return-void
.end method

.method private handleTemporaryDcTimeOut()V
    .locals 2

    .line 5923
    const-string v0, "handleTemporaryDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5924
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5927
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5929
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_0

    .line 5930
    const-string v1, "[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5932
    return-void

    .line 5935
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5937
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5939
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_1

    .line 5940
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5943
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5944
    return-void
.end method

.method private handleTemporaryUtStayTimeOut()V
    .locals 1

    .line 5991
    const-string v0, "handleTemporaryUtStayTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5993
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5995
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->broadcastUtIdle()V

    .line 5996
    return-void
.end method

.method private handleTunnelSetupTimeout()V
    .locals 3

    .line 5380
    const-string v0, "handleTunnelSetupTimeout"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5382
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5383
    const-string v0, "handleTunnelSetupTimeout - isVowifiPropOpened is false, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5384
    return-void

    .line 5387
    :cond_0
    const/4 v0, -0x1

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5390
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5392
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5393
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5395
    if-eqz v0, :cond_1

    .line 5398
    const-string v1, "handle UT data connection tunnel setup time out, endUtOverWifiConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5399
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5400
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5401
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5403
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    .line 5404
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5406
    :cond_1
    return-void
.end method

.method private handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2137
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2138
    const-string v0, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2140
    if-eqz p1, :cond_0

    .line 2141
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2142
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2145
    :cond_0
    return-void

    .line 2148
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDKWhenDomainSelectUt()V

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd.dcState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2155
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2422
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleTempDcConnectionACT(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2423
    return-void

    .line 2417
    :pswitch_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2418
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 2420
    return-void

    .line 2414
    :pswitch_2
    goto/16 :goto_0

    .line 2412
    :pswitch_3
    return-void

    .line 2406
    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->processImsConnectivity()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2407
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2408
    return-void

    .line 2397
    :pswitch_5
    const-string v0, "Airplane mode is turned on, no longer trying volte ut and cs, return failure! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2398
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2399
    return-void

    .line 2378
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2380
    const-string v0, "state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2381
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2383
    return-void

    .line 2385
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2386
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2387
    goto/16 :goto_0

    .line 2389
    :cond_3
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2390
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2391
    return-void

    .line 2369
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2372
    const-string v0, "handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2374
    return-void

    .line 2362
    :pswitch_8
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2363
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2365
    return-void

    .line 2345
    :pswitch_9
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_4

    .line 2346
    return-void

    .line 2350
    :cond_4
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2352
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2353
    return-void

    .line 2338
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2339
    return-void

    .line 2328
    :pswitch_b
    const-string v0, "state IMS_DC_WIFI_PREF_IMSPDP_FAIL,startDCAlarm."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2329
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_5

    .line 2330
    return-void

    .line 2333
    :cond_5
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2334
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2335
    return-void

    .line 2298
    :pswitch_c
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_6

    .line 2299
    return-void

    .line 2302
    :cond_6
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2303
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2304
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2305
    return-void

    .line 2308
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2309
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2310
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2311
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2312
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2313
    goto/16 :goto_0

    .line 2314
    .end local v0    # "network":Landroid/net/Network;
    :cond_8
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2315
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2316
    return-void

    .line 2319
    :cond_9
    const-string v0, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2320
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2321
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2322
    return-void

    .line 2247
    :pswitch_d
    const-string v0, "case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2248
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_a

    .line 2249
    return-void

    .line 2251
    :cond_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2252
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2253
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2254
    goto/16 :goto_0

    .line 2257
    :cond_b
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 2260
    const-string v0, "handle UT data connection begin vowifi Connectivity"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 2263
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 2264
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    .line 2265
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2267
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2269
    return-void

    .line 2272
    :cond_c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2273
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2274
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2276
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2277
    return-void

    .line 2278
    :cond_d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2279
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2281
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2282
    .restart local v0    # "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2284
    goto/16 :goto_0

    .line 2285
    .end local v0    # "network":Landroid/net/Network;
    :cond_e
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2286
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2287
    return-void

    .line 2290
    :cond_f
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2291
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2292
    return-void

    .line 2158
    :pswitch_e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->performUtPreprocessingForFirstTime()Z

    move-result v0

    .line 2159
    .local v0, "shouldInterruptUt":Z
    if-eqz v0, :cond_10

    .line 2160
    const-string v1, "handleUt: The other Sub is busy, waiting."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2161
    return-void

    .line 2167
    :cond_10
    const-string v3, "handle UT data connection start"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2169
    const/4 v3, 0x0

    .line 2170
    .local v3, "utDomain":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2171
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_11

    .line 2172
    return-void

    .line 2174
    :cond_11
    const-string v5, "isUtOverWifiEnabled return true."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2176
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v3

    .line 2178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoWifiServiceDomain return utDomain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2181
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isNeedSetupWifiTunnel(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2183
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2185
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2186
    goto/16 :goto_0

    .line 2189
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle UT data connection vowifi connection tunnel act domain is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2190
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2192
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2193
    return-void

    .line 2203
    .end local v3    # "utDomain":I
    .end local v4    # "context":Landroid/content/Context;
    :cond_13
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2204
    :cond_14
    const-string v1, "Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2205
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2206
    return-void

    .line 2211
    :cond_15
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2213
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2214
    return-void

    .line 2218
    :cond_16
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNeedTempChangeDefaultDataSub()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2219
    const-string v3, "handle UT data connection ut use default apn and data is connected but not for this sub"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2220
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2221
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2222
    return-void

    .line 2223
    :cond_17
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2224
    const-string v1, "handle UT data connection ut use default apn and data is connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2225
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2226
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 2227
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2228
    goto :goto_0

    .line 2230
    .end local v1    # "network":Landroid/net/Network;
    :cond_18
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2231
    const-string v1, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2232
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2233
    return-void

    .line 2237
    :cond_19
    const-string v1, "handle UT data connection ut use default apn and data is not connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2238
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2239
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    .line 2240
    return-void

    .line 2428
    .end local v0    # "shouldInterruptUt":Z
    :cond_1a
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2429
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUtApnConnection(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6391
    if-nez p1, :cond_0

    .line 6392
    return-void

    .line 6396
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v0, v1, :cond_1

    .line 6397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtApnConnection intent not for this sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6398
    return-void

    .line 6402
    :cond_1
    const-string v0, "apnType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6403
    .local v0, "apn":Ljava/lang/String;
    const-string v1, "failCause"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6405
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUtApnConnection apn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "xcap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6409
    const/4 v2, -0x1

    .line 6410
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    move-result v3

    .line 6409
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 6412
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6413
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6417
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseToReleaseApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6419
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 6420
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 6425
    :cond_3
    return-void
.end method

.method private handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtCmd enter, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2657
    const/4 v0, 0x1

    .line 2659
    .local v0, "ret":I
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 2660
    const-string v1, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2662
    if-eqz p1, :cond_0

    .line 2663
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2664
    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2667
    :cond_0
    return v4

    .line 2671
    :cond_1
    :try_start_0
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    packed-switch v1, :pswitch_data_0

    .line 2838
    :pswitch_0
    const-string v1, "handleUtCmd not support this cmd"

    goto/16 :goto_0

    .line 2703
    :pswitch_1
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_2

    .line 2704
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallWaiting()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2706
    :cond_2
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setCallWaiting(Z)I

    move-result v1

    move v0, v1

    .line 2708
    goto/16 :goto_1

    .line 2782
    :pswitch_2
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_3

    .line 2783
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget-boolean v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1, v5}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZ)I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2785
    :cond_3
    const/4 v0, 0x1

    .line 2787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2789
    goto/16 :goto_1

    .line 2756
    :pswitch_3
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_5

    .line 2759
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2761
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOutgoingCallBarring()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2763
    :cond_4
    const/4 v0, 0x0

    .line 2765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of OCB querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2768
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2769
    .local v1, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2770
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2772
    :cond_5
    const/4 v0, 0x1

    .line 2774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_OCB not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2776
    goto/16 :goto_1

    .line 2733
    :pswitch_4
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_7

    .line 2736
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2738
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryIncomingCallBarring()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2740
    :cond_6
    const/4 v0, 0x0

    .line 2742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of ICB querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2745
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2747
    .restart local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2748
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2750
    :cond_7
    const/4 v0, 0x1

    .line 2752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_ICB not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2754
    goto/16 :goto_1

    .line 2819
    :pswitch_5
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_8

    .line 2823
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget-object v8, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    iget-object v9, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v1

    move v0, v1

    .line 2830
    const/4 v1, 0x7

    iput v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    goto/16 :goto_1

    .line 2832
    :cond_8
    const/4 v0, 0x1

    .line 2834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF SET not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2836
    goto/16 :goto_1

    .line 2797
    :pswitch_6
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v4, v1, :cond_b

    .line 2798
    const/4 v1, -0x1

    .line 2801
    .local v1, "time":I
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0x16

    if-eq v5, v6, :cond_9

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0x17

    if-eq v5, v6, :cond_9

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 2802
    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIR92V10orGreater()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2803
    :cond_9
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v5

    move v1, v5

    .line 2805
    :cond_a
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v11, v1

    invoke-static/range {v5 .. v11}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNew(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v5

    move v0, v5

    .line 2812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setCallDiversionNew return value ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2813
    .end local v1    # "time":I
    goto/16 :goto_1

    .line 2814
    :cond_b
    const/4 v0, 0x1

    .line 2815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CF GET not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2817
    goto/16 :goto_1

    .line 2710
    :pswitch_7
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_d

    .line 2713
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2715
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallDiversion()I

    move-result v1

    move v0, v1

    goto/16 :goto_1

    .line 2717
    :cond_c
    const/4 v0, 0x0

    .line 2719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the status of CFU querying via UT interface is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2722
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UTData;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    invoke-direct {v1, v5, v6, v7}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 2724
    .local v1, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2725
    .end local v1    # "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    goto/16 :goto_1

    .line 2727
    :cond_d
    const/4 v0, 0x1

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSCONF_SS_TYPE_CDIV not support utOpType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2731
    goto/16 :goto_1

    .line 2696
    :pswitch_8
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_e

    .line 2697
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityRestriction()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2699
    :cond_e
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityRestriction(Z)I

    move-result v1

    move v0, v1

    .line 2701
    goto :goto_1

    .line 2687
    :pswitch_9
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_f

    .line 2688
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityRestriction()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2691
    :cond_f
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v1, v5}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v1

    move v0, v1

    .line 2694
    goto :goto_1

    .line 2680
    :pswitch_a
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_10

    .line 2681
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityPresentation()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2683
    :cond_10
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityPresentation(Z)I

    move-result v1

    move v0, v1

    .line 2685
    goto :goto_1

    .line 2673
    :pswitch_b
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v1, :cond_11

    .line 2674
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityPresentation()I

    move-result v1

    move v0, v1

    goto :goto_1

    .line 2676
    :cond_11
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityPresentation(Z)I

    move-result v1

    move v0, v1

    .line 2678
    goto :goto_1

    .line 2838
    :goto_0
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2840
    const/4 v0, 0x1

    goto :goto_1

    .line 2848
    :catch_0
    move-exception v1

    .line 2849
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SciSSConfHs func exception"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2851
    const/4 v0, 0x1

    .line 2852
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2843
    :catch_1
    move-exception v1

    .line 2844
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "SciSSConfHs func RuntimeException"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2846
    const/4 v0, 0x1

    .line 2847
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 2853
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 2855
    :goto_2
    if-nez v0, :cond_12

    .line 2856
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 2857
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_3

    .line 2859
    :cond_12
    iput v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 2860
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2861
    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2864
    :goto_3
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

    .line 2869
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private handleUtCmdQueue()V
    .locals 3

    .line 2040
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2042
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_2

    .line 2044
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2045
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 2046
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 2050
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2052
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 2054
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendStopImsApnMessage()V

    .line 2058
    :cond_1
    return-void

    .line 2062
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryUtStayAlarm()V

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmdQueue start,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2067
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support this cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2081
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2082
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd()V

    .line 2084
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryUtStayAlarm()V

    .line 2086
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2087
    goto :goto_0

    .line 2076
    :pswitch_1
    const-string v1, "handle UT data connection fallback CS domain"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2078
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2079
    goto :goto_0

    .line 2073
    :pswitch_2
    goto :goto_0

    .line 2070
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2071
    nop

    .line 2093
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmdQueue leave,  cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2094
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUtInit()V
    .locals 0

    .line 4011
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initImsUtImpl()V

    .line 4012
    return-void
.end method

.method private handleUtNotUseDefaultAPN(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2462
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail not default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 2464
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v0, v1, :cond_1

    .line 2465
    :cond_0
    const-string v0, "handle UT data connection ut use complex apn and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    .line 2467
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSDKServiceIpAddr(Landroid/net/Network;)V

    .line 2468
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2469
    return v0

    .line 2471
    .end local v1    # "network":Landroid/net/Network;
    :cond_1
    const-string v0, "handle UT data connection ut use xcap apn or complex apn with mobile data not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2472
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2473
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2475
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 2476
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtRetryAlarmTimeOut()V
    .locals 1

    .line 3108
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtRetryAlarm()V

    .line 3110
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3112
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 3113
    return-void
.end method

.method private handleUtSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3996
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3999
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4000
    const/4 v0, 0x0

    return v0

    .line 4002
    :cond_0
    const-string v0, "Send UT message fail, remove last ut cmd."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4004
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeLastUtCmd()V

    .line 4007
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtTimeOut()V
    .locals 2

    .line 5885
    const-string v0, "handleUtTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5886
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSS:I

    .line 5888
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_0

    .line 5889
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5891
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 5894
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtAPNInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5899
    :cond_0
    const/16 v0, 0x3e9

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5902
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick()V

    .line 5903
    return-void
.end method

.method private handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2441
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2442
    return-void

    .line 2445
    :cond_0
    const-string v0, "ro.vowifi.wifi_only_fall_cs"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2446
    .local v0, "supportWifiOnlyFallCs":Ljava/lang/Boolean;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2448
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,will fall back to cs,startDCAlarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2451
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2452
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDCAlarm()V

    goto :goto_0

    .line 2455
    :cond_1
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2456
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2459
    :goto_0
    return-void
.end method

.method private handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .locals 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2906
    const/4 v0, 0x0

    .line 2908
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 2909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOverSS mToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", utType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2911
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2920
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2921
    const-string v2, "handoverSS: Airplane mode is turned on, forbid CSFB, return failure!"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2922
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2923
    return v1

    .line 2927
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->checkCSDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2928
    const-string v2, "Can\'t start SS wiht CS domain."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2929
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2930
    return v1

    .line 2933
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCSBeUsed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2934
    const-string v2, "handleOverSS cannot use CS"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2936
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2938
    return v1

    .line 2941
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2943
    .local v2, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_3

    .line 2944
    const-string v4, "handoverSS cannot get default phone"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2946
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 2948
    return v1

    .line 2951
    :cond_3
    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2953
    .local v4, "onComplete":Landroid/os/Message;
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2955
    const-string v3, "set Ut disable"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2957
    invoke-direct {p0, v2, p1, v4, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I

    move-result v0

    .line 2959
    if-ne v1, v0, :cond_4

    .line 2960
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2963
    :cond_4
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 2965
    const-string v1, "set ut enable"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2967
    return v0

    .line 2914
    .end local v2    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "onComplete":Landroid/os/Message;
    :cond_5
    const-string v2, "handoverSS,utCmd null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2915
    return v1
.end method

.method private handoverSSTick()V
    .locals 1

    .line 3047
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3048
    return-void
.end method

.method private handoverSSTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3051
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 3052
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 3053
    return-void
.end method

.method private handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;I)I
    .locals 8
    .param p1, "defPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "ret"    # I

    .line 2970
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handoverSS not support cmd.mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3040
    const/4 p4, 0x1

    goto/16 :goto_0

    .line 3035
    :pswitch_0
    const-string v0, "handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3036
    goto/16 :goto_0

    .line 3017
    :pswitch_1
    const/4 v0, 0x6

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    if-ne v0, v2, :cond_0

    .line 3018
    const-string v0, "Set CFU due to time in cs domain, but abandon the time"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3020
    iput v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 3025
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mHwGsmCdmaPhoneEx:Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;

    .line 3026
    .local v0, "hwGsmCdmaPhoneEx":Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;
    if-eqz v0, :cond_1

    .line 3027
    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget-object v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    iget v6, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    move-object v1, v0

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_0

    .line 3009
    .end local v0    # "hwGsmCdmaPhoneEx":Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;
    :pswitch_2
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 3011
    goto :goto_0

    .line 3005
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 3006
    goto :goto_0

    .line 2997
    :pswitch_4
    iget-boolean v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 2998
    .local v0, "callWaitingAction":I
    iget-boolean v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x1c

    .line 2999
    invoke-virtual {v3, v4, v1, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2998
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3003
    goto :goto_0

    .line 2990
    .end local v0    # "callWaitingAction":I
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2991
    goto :goto_0

    .line 2987
    :pswitch_6
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2988
    goto :goto_0

    .line 2984
    :pswitch_7
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2985
    goto :goto_0

    .line 2978
    :pswitch_8
    iget-object v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget-object v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    iget-boolean v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    iget v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V

    .line 2982
    goto :goto_0

    .line 2973
    :pswitch_9
    iget-object v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;ILandroid/os/Message;)V

    .line 2975
    nop

    .line 3043
    :cond_1
    :goto_0
    return p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 6120
    invoke-static {p1, p2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initImsUtImpl()V
    .locals 5

    .line 4015
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 4018
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4023
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4031
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 4032
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4033
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4035
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 4038
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_0

    .line 4040
    const-string v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4044
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4048
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4053
    return-void
.end method

.method private initSDKServiceIpAddr(Landroid/net/Network;)V
    .locals 6
    .param p1, "netWork"    # Landroid/net/Network;

    .line 2575
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v1, p1, Landroid/net/Network;->netId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtQueryDnsIgnoreNetId()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v0, :cond_1

    goto :goto_2

    .line 2579
    :cond_1
    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 2582
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtGbaLifetimeBeUsed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2583
    const-string v0, "initSDKServiceIpAddr skip sdk.reset & gba.clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2586
    :cond_2
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 2590
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2592
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->clear()V

    .line 2596
    :goto_0
    const/4 v0, -0x1

    move v2, v0

    .line 2600
    .local v2, "addressType":B
    const/4 v2, 0x0

    .line 2602
    :try_start_0
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 2604
    .local v3, "nafIpAddr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 2605
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I

    .line 2607
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2609
    const/4 v2, 0x1

    .line 2611
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2612
    .local v1, "bsfIpAddr":[Ljava/net/InetAddress;
    if-eqz v1, :cond_4

    array-length v4, v1

    if-lez v4, :cond_4

    .line 2613
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    .end local v1    # "bsfIpAddr":[Ljava/net/InetAddress;
    .end local v3    # "nafIpAddr":[Ljava/net/InetAddress;
    :cond_4
    goto :goto_1

    .line 2616
    :catch_0
    move-exception v1

    .line 2617
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "Cannot get inet address "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2619
    const/16 v3, 0x3eb

    invoke-direct {p0, v0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 2623
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-void

    .line 2577
    .end local v2    # "addressType":B
    :cond_5
    :goto_2
    return-void
.end method

.method private initSciSSConfHs()V
    .locals 8

    .line 4612
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 4613
    const-string v0, "initSciSSConfHs:: sdk has not been initialized and mSciSSConfCb is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4614
    return-void

    .line 4617
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSCB:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V

    .line 4618
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v0, :cond_1

    .line 4619
    new-instance v0, Lcom/huawei/ims/GbaAuth;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/GbaAuth;-><init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 4621
    :cond_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V

    .line 4623
    const/4 v0, -0x1

    .line 4625
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseNodeSelector()Z

    move-result v1

    .line 4627
    .local v1, "isUseNodeSelector":Z
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->isSupportNodeSelector(Z)I

    move-result v2

    move v0, v2

    .line 4628
    if-eqz v0, :cond_2

    .line 4629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportNodeSelector ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4632
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init isSupportNodeSelector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4634
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseXcapNameSpace()Z

    move-result v2

    .line 4636
    .local v2, "isUseXcapNameSpace":Z
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setSupportXcapNamespace(Z)I

    move-result v3

    move v0, v3

    .line 4637
    if-eqz v0, :cond_3

    .line 4638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSupportXcapNamespace ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4641
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init setSupportXcapNamespace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4643
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtGbaType()I

    move-result v3

    .line 4645
    .local v3, "gbaType":I
    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->setSupportGBAType(I)I

    move-result v4

    move v0, v4

    .line 4646
    if-eqz v0, :cond_4

    .line 4647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSupportGBAType ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4650
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init setSupportGBAType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4652
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseTmpi()Z

    move-result v4

    .line 4654
    .local v4, "isUseTmpi":Z
    invoke-static {v4}, Lcom/huawei/sci/SciSSConfHs;->setSupportTmpi(Z)I

    move-result v5

    move v0, v5

    .line 4655
    if-eqz v0, :cond_5

    .line 4656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSupportTmpi ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4659
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init usetmpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4661
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getContentTypeMode()I

    move-result v5

    .line 4663
    .local v5, "contentTypeMode":I
    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setContentType(I)I

    move-result v6

    move v0, v6

    .line 4664
    if-eqz v0, :cond_6

    .line 4665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentType ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4668
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init contentTypeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4670
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    .line 4671
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 4672
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 4673
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 4676
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkParamsCfg()V

    .line 4679
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsXcapRootUri()I

    .line 4681
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsUserAgentExtensionalParam()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":I
    .end local v1    # "isUseNodeSelector":Z
    .end local v2    # "isUseXcapNameSpace":Z
    .end local v3    # "gbaType":I
    .end local v4    # "isUseTmpi":Z
    .end local v5    # "contentTypeMode":I
    goto :goto_0

    .line 4684
    :catch_0
    move-exception v0

    .line 4685
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SciSSConfHs exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4682
    :catch_1
    move-exception v0

    .line 4683
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SciSSConfHs RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4686
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 4687
    :goto_1
    return-void
.end method

.method private initUtSDK()V
    .locals 4

    .line 4581
    const-string v0, "initUtSDK enter"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4582
    new-instance v0, Lcom/huawei/sci/SciSSConfCb;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb;-><init>()V

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V

    .line 4584
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 4585
    const-string v0, "instance mSciSSConfCb fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4587
    return-void

    .line 4591
    :cond_0
    const/4 v0, -0x1

    .line 4593
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtOpenHrsLog()Z

    move-result v1

    .line 4595
    .local v1, "isOpenHrsLog":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/huawei/sci/SciSSConfHs;->init(Landroid/content/Context;Z)I

    move-result v2

    move v0, v2

    .line 4597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SciSSConfHs.init ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IS_HRS_LOG_OPEN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ret":I
    .end local v1    # "isOpenHrsLog":Z
    goto :goto_0

    .line 4600
    :catch_0
    move-exception v0

    .line 4601
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SciSSConfHs exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4598
    :catch_1
    move-exception v0

    .line 4599
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SciSSConfHs RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4602
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 4604
    :goto_1
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 4606
    const-string v0, "initUtSDK leave"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4607
    return-void
.end method

.method private declared-synchronized initUtSDKWhenDomainSelectUt()V
    .locals 1

    monitor-enter p0

    .line 6568
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_0

    .line 6569
    const-string v0, "initUtSDKWhenDomainSelectUt: initUtSDK and set ut params to sdk."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6570
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSDK()V

    .line 6571
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    goto :goto_0

    .line 6572
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6573
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 6574
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 6575
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6577
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 6567
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsUtImpl;
    throw v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .line 2498
    const/4 v0, 0x0

    .line 2499
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2500
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v0, v3

    .line 2501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2503
    :cond_1
    return v0
.end method

.method private isCTCardAndNotSupportVolte()Z
    .locals 2

    .line 3602
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 3603
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCTCardAndSupportVolte()Z
    .locals 2

    .line 3597
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 3598
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCallWaitingExpire()Z
    .locals 3

    .line 1431
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1432
    return v1

    .line 1435
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1437
    .local v0, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    .line 1438
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

    .line 1440
    const/4 v1, 0x0

    return v1

    .line 1443
    :cond_1
    return v1
.end method

.method private isCardChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "newImsi"    # Ljava/lang/String;
    .param p2, "oldImsi"    # Ljava/lang/String;

    .line 4161
    const/4 v0, 0x0

    .line 4163
    .local v0, "ret":Z
    if-nez p1, :cond_1

    .line 4164
    if-nez p2, :cond_0

    .line 4165
    const/4 v0, 0x0

    goto :goto_0

    .line 4167
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4170
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 4173
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card is changed ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4175
    return v0
.end method

.method private isCardMccMncPreferToUseUT()Z
    .locals 2

    .line 3953
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getCardMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardMccMncPreferToUseUT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCardTypePreferToUseUT()Z
    .locals 3

    .line 3945
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 3946
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getCardType(I)I

    move-result v1

    .line 3949
    .local v1, "cardType":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardTypePreferToUseUT(I)Z

    move-result v2

    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 4575
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3074
    const/4 v0, 0x0

    .line 3076
    .local v0, "result":Z
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3094
    :pswitch_0
    const/4 v1, 0x1

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eq v1, v2, :cond_1

    .line 3095
    const/4 v0, 0x1

    goto :goto_0

    .line 3081
    :cond_0
    :pswitch_1
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eqz v1, :cond_1

    .line 3082
    const/4 v0, 0x1

    .line 3102
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmdGetResultFromSdkLocally="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3104
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isConfigUtForbiddenTimer()Z
    .locals 2

    .line 5971
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentSubChange()Z
    .locals 3

    .line 4179
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4180
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current sub is changed, ret is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentSubId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4181
    return v0
.end method

.method private isDataConnection()Z
    .locals 2

    .line 5747
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5748
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5749
    const-string v0, "handle UT data connection ut can use wifi and wifi is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5750
    return v1

    .line 5755
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5756
    const-string v0, "handle UT data connection ut can not use wifi and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5758
    return v1

    .line 5761
    :cond_1
    const-string v0, "data is not Connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5763
    const/4 v0, 0x0

    return v0
.end method

.method private isDataSwitchOn()Z
    .locals 2

    .line 5799
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5801
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isDefaultConnected()Z
    .locals 3

    .line 5768
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5770
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5771
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 5773
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 5775
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5779
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method

.method private isEnableCallWaiting(I)Z
    .locals 1
    .param p1, "callWaitingAction"    # I

    .line 6278
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 6279
    return v0

    .line 6281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLTENetworkType()Z
    .locals 4

    .line 6379
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 6381
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 6382
    .local v1, "networkType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLTENetworkType subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6383
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private isLocalCallWaitingEnable()Z
    .locals 4

    .line 1816
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1818
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1819
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 1818
    :cond_0
    return v1
.end method

.method private isNeedSetupWifiTunnel(I)Z
    .locals 5
    .param p1, "utDomain"    # I

    .line 2520
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNoDataService()Z

    move-result v0

    .line 2522
    .local v0, "isNoDataService":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 2524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isNoDataService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2525
    return v0

    .line 2529
    :cond_0
    const/4 v1, 0x0

    .line 2530
    .local v1, "isVoWifiRegistered":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtPreferVowifiWhenVowifiReg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2531
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v3

    .line 2532
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/HwTelephonyManagerInner;->isWifiCallingAvailable(I)Z

    move-result v1

    .line 2534
    .end local v3    # "subId":I
    :cond_1
    const/4 v3, 0x2

    if-eq v3, p1, :cond_3

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    if-eq v3, p1, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    return v2
.end method

.method private isNeedTempChangeDefaultDataSub()Z
    .locals 3

    .line 2540
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2541
    return v1

    .line 2544
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    return v1

    .line 2548
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2549
    return v1

    .line 2552
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method private isNetworkConnected()Z
    .locals 4

    .line 5179
    nop

    .line 5180
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5181
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5182
    const-string v2, "The ConnectivityManager is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5183
    return v1

    .line 5185
    :cond_0
    const/16 v2, 0x2d

    .line 5186
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v3, :cond_1

    .line 5187
    const/16 v2, 0x2f

    .line 5189
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 5190
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 5191
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5193
    :cond_2
    return v1
.end method

.method private isNoDataService()Z
    .locals 1

    .line 2516
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNoMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNoMobileNetwork()Z
    .locals 5

    .line 2508
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2509
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getDataRegisteredState(I)I

    move-result v1

    .line 2510
    .local v1, "dataRegisterState":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2511
    .local v2, "noMobileNetwork":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNoMobileNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2512
    return v2
.end method

.method private isOtherSubUtIdle()Z
    .locals 2

    .line 6500
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_0

    .line 6501
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->isOtherSubUtIdle(I)Z

    move-result v0

    return v0

    .line 6504
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSsUseUtInterface(I)Z
    .locals 3
    .param p1, "utType"    # I

    .line 3056
    const/4 v0, 0x1

    .line 3058
    .local v0, "result":Z
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3062
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 3063
    const/4 v0, 0x0

    .line 3070
    :cond_1
    :goto_0
    return v0
.end method

.method private isUtDataExpire(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 6287
    const/4 v0, 0x0

    .line 6289
    .local v0, "utDataExpireTime":Ljava/util/Date;
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 6296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtDataExpire unknown type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6298
    return v2

    .line 6293
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    .line 6294
    nop

    .line 6301
    if-nez v0, :cond_1

    .line 6302
    return v2

    .line 6305
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6307
    .local v1, "currDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_2

    .line 6308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ut data is not expire, currDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNextUtDataUpdateTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6310
    const/4 v2, 0x0

    return v2

    .line 6313
    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUtIdInvalid(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 4495
    if-gez p1, :cond_0

    .line 4496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4498
    const/4 v0, 0x1

    return v0

    .line 4500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4502
    const/4 v0, 0x0

    return v0
.end method

.method private isUtNotUseDefaultAPN()Z
    .locals 1

    .line 5597
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUtOverWifiEnabled()Z
    .locals 12

    .line 5201
    const/4 v0, 0x1

    .line 5202
    .local v0, "UT_SWITCH_ON":I
    const/4 v1, 0x0

    .line 5203
    .local v1, "SUB0":I
    const-string v2, "ro.config.hw_vowifi_mmsut"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5205
    .local v2, "isUtOverWifiEnabled":Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 5207
    .local v4, "ret":Z
    sget-boolean v5, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v5, :cond_0

    .line 5208
    return v3

    .line 5211
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5212
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_1

    .line 5213
    const-string v6, "null == context"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5214
    return v3

    .line 5217
    :cond_1
    iget v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v6}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/ims/HwImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5218
    return v3

    .line 5221
    :cond_2
    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsConfigImpl;->getVowifiUtSwitch()Z

    move-result v6

    .line 5225
    .local v6, "isUtSwitchOn":Z
    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 5226
    .local v7, "cm":Landroid/net/ConnectivityManager;
    if-nez v7, :cond_3

    .line 5227
    const-string v8, "null == ConnectivityManager"

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5228
    return v3

    .line 5231
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 5232
    .local v9, "wifiNetinfo":Landroid/net/NetworkInfo;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 5233
    .local v10, "isWifiConnected":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 5234
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 5237
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v6, :cond_5

    move v3, v8

    nop

    .line 5239
    .end local v4    # "ret":Z
    .local v3, "ret":Z
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUtOverWifiEnabled return "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5240
    return v3
.end method

.method private isUtOverWifiTunnelUp()Z
    .locals 2

    .line 5409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUtOverWifiTunnelUp, mIsWifiTunnnelUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5410
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    return v0
.end method

.method private isUtSubscribed()Z
    .locals 1

    .line 6428
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    return v0
.end method

.method private isUtSupportedByCurrentBearer()Z
    .locals 5

    .line 6362
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBearerType()I

    move-result v0

    .line 6363
    .local v0, "utBearerType":I
    const/4 v1, 0x1

    .line 6364
    .local v1, "result":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6366
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLTENetworkType()Z

    move-result v1

    goto :goto_2

    .line 6367
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 6369
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v1, v2

    goto :goto_2

    .line 6370
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 6372
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLTENetworkType()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    nop

    :cond_4
    :goto_1
    move v1, v2

    .line 6374
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtSupportedByCurrentBearer result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6375
    return v1
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .line 4563
    packed-switch p1, :pswitch_data_0

    .line 4570
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 4568
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .line 4548
    packed-switch p1, :pswitch_data_0

    .line 4558
    const/4 v0, 0x0

    return v0

    .line 4556
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .line 3928
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3929
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 3931
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 3932
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsSwitch()Z

    move-result v1

    .line 3935
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3937
    return v1
.end method

.method private isWifiConnected()Z
    .locals 3

    .line 5784
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5786
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 5787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5789
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 5790
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 5794
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private keepAliveImsConnectivity()V
    .locals 4

    .line 5476
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5477
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5476
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5479
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 6467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6468
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 6471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

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

    .line 6472
    return-void
.end method

.method private performUtPreprocessingForFirstTime()Z
    .locals 4

    .line 2103
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2104
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isOtherSubUtIdle()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2108
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUtPreprocessingForFirstTime: ut for other sub is not idle, but mCurrentSubId is -1, should set mCurrentSubId as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2111
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 2112
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    .line 2113
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 2114
    return v1

    .line 2116
    :cond_0
    const-string v0, "performUtPreprocessingForFirstTime: ut for other sub is not idle, waiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2117
    return v2

    .line 2119
    :cond_1
    const-string v0, "performUtPreprocessingForFirstTime: reset Ut SDK"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2120
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSubId(I)V

    .line 2123
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 2125
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->regetIMSIFromPhone()Z

    .line 2126
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSSConfHs()V

    .line 2128
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2129
    return v1

    .line 2132
    :cond_2
    return v1
.end method

.method private popUtMessage(I)Landroid/os/Message;
    .locals 3
    .param p1, "id"    # I

    .line 1555
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1557
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1558
    const-string v1, "popUtMessage imsPhone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1560
    const/4 v1, 0x0

    return-object v1

    .line 1563
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1564
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhoneEx:Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    return-object v2
.end method

.method private processECTCallBack(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1799
    if-nez p1, :cond_0

    .line 1800
    const-string v0, "ECTCallBack msg is null,just return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1801
    return-void

    .line 1803
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1804
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v1, :cond_2

    .line 1805
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1806
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_1

    .line 1807
    const-string v2, "get imsphone fails."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1808
    return-void

    .line 1810
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1811
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyECTFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1813
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_2
    return-void
.end method

.method private processImsConnectivity()Z
    .locals 5

    .line 5420
    const/4 v0, 0x0

    .line 5422
    .local v0, "bDCReady":Z
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 5424
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 5425
    const-string v1, "processImsConnectivity, wait for ims connecting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5427
    return v3

    .line 5430
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 5431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImsConnectivity, ims is connected, mbReqRoutHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5433
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mbReqRoutHost:Z

    if-ne v4, v1, :cond_1

    .line 5434
    return v4

    .line 5437
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5439
    return v3

    .line 5443
    :cond_2
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v1

    .line 5445
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImsConnectivity, begin ims result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",  mImsDCState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5448
    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 5463
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 5464
    const/4 v0, 0x0

    .line 5465
    goto :goto_0

    .line 5450
    :cond_4
    const/4 v0, 0x0

    .line 5451
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_5

    .line 5452
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5453
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_0

    .line 5454
    :cond_5
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 5456
    :cond_6
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_7

    .line 5458
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5459
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 5471
    :cond_7
    :goto_0
    return v0
.end method

.method private processReportChrException(BBI)V
    .locals 7
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    .line 6698
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->extractParametersForChr(BBI)Lcom/huawei/ims/UtCHRData;

    move-result-object v0

    .line 6699
    .local v0, "utChrData":Lcom/huawei/ims/UtCHRData;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6700
    .local v1, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 6701
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUtChrBroadcast(Lcom/huawei/ims/UtCHRData;)V

    .line 6702
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 6703
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6705
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 6707
    :cond_2
    return-void
.end method

.method private processTemporarilyDcConnection()Z
    .locals 3

    .line 5482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTemporarilyDcConnection, mImsDCState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5483
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 5484
    const-string v0, "processTemporarilyDcConnection, wait for ims connecting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5486
    return v2

    .line 5489
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_1

    .line 5490
    const-string v0, "processTemporarilyDcConnection, ims is connected, return true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5491
    return v2

    .line 5494
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 5496
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 5499
    const/4 v0, 0x0

    return v0
.end method

.method private queryAndSyncCLIRModeToImsSdk()V
    .locals 3

    .line 1216
    const-string v0, "[UTCMD]enter queryAndSyncCLIRModeToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1218
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 1219
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1220
    return-void

    .line 1222
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1223
    .local v0, "domainSelect":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 1225
    .local v1, "mOIRSourceMode":I
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1226
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR()I

    .line 1228
    :cond_1
    return-void
.end method

.method private queryCLIR(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 4320
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4322
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 4323
    .local v1, "mOIRSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter queryCLIR, mOIRSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4325
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4327
    .local v2, "mCLIRUtCanBeUsed":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4329
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRDefaultMode()I

    move-result v4

    .line 4330
    .local v4, "defaultClirMode":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v6, v6, v7

    .line 4332
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4330
    invoke-virtual {v5, v6, v7, v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v5

    .line 4335
    .local v5, "clirmode":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 4336
    .local v6, "clirArray":[I
    const/4 v7, 0x0

    aput v5, v6, v7

    .line 4337
    const/4 v7, 0x4

    aput v7, v6, v3

    .line 4339
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4340
    .local v3, "clirInfo":Landroid/os/Bundle;
    const-string v7, "queryClir"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4342
    iget v7, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4343
    .local v7, "onComplete":Landroid/os/Message;
    if-nez v7, :cond_0

    .line 4344
    const-string v8, "onComplete is null."

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4347
    :cond_0
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4349
    .local v8, "response":Landroid/os/Message;
    invoke-virtual {v8, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4351
    invoke-direct {p0, v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4352
    .end local v3    # "clirInfo":Landroid/os/Bundle;
    .end local v4    # "defaultClirMode":I
    .end local v5    # "clirmode":I
    .end local v6    # "clirArray":[I
    .end local v7    # "onComplete":Landroid/os/Message;
    .end local v8    # "response":Landroid/os/Message;
    goto :goto_0

    .line 4353
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4355
    :goto_0
    return-void
.end method

.method private queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 4262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4264
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v1

    .line 4266
    .local v1, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter getCallWaiting, callWaitingSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4268
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4274
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_0

    .line 4275
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4277
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4279
    return-void

    .line 4282
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t get call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4313
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    goto :goto_0

    .line 4290
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query cw , mIsUtForbidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",canUse403ForLocalCW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4291
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_1

    .line 4292
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_0

    .line 4295
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v3, v3, v4

    .line 4297
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4295
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4301
    .local v2, "enable":Ljava/lang/Boolean;
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4303
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_2

    .line 4304
    const-string v4, "onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4307
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4, v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 4309
    .end local v2    # "enable":Ljava/lang/Boolean;
    .end local v3    # "onComplete":Landroid/os/Message;
    goto :goto_0

    .line 4287
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4288
    goto :goto_0

    .line 4284
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4285
    nop

    .line 4316
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queryUtApn()V
    .locals 15

    .line 5632
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 5633
    .local v0, "subId":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 5635
    .local v1, "operator":Ljava/lang/String;
    const-string v2, "ims"

    .line 5637
    .local v2, "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 5638
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 5640
    :cond_0
    const-string v2, "xcap"

    .line 5644
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric = ? AND (type like \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5646
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "_id"

    .line 5647
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v12, 0x0

    .line 5649
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v6, "content://telephony/carriers/subId"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 5650
    .local v13, "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryUtApn subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5653
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    new-array v10, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v10, v14

    move-object v7, v13

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v12, v6

    .line 5655
    if-eqz v12, :cond_3

    .line 5656
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 5657
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    goto :goto_0

    .line 5659
    :cond_2
    iput-boolean v14, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    .line 5662
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasUtUseAPN = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/huawei/ims/HwImsUtImpl;->hasUtUseAPN:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5666
    if-eqz v12, :cond_4

    .line 5667
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 5666
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 5663
    :catch_0
    move-exception v4

    .line 5664
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "Exception for queryUtApn "

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5666
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_4

    goto :goto_1

    .line 5670
    :cond_4
    :goto_2
    return-void

    .line 5666
    :goto_3
    if-eqz v12, :cond_5

    .line 5667
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private recoverDefaultDataSub()V
    .locals 4

    .line 5999
    const-string v0, "recoverDefaultDataSub"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6000
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    if-nez v0, :cond_0

    .line 6001
    return-void

    .line 6004
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    .line 6005
    .local v0, "defaultDataSubId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    .line 6006
    .local v1, "default4GSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoverDefaultDataSub: defaultDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", default4GSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6008
    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v2, :cond_1

    .line 6009
    const-string v2, "recoverDefaultDataSub: recover default data sub to main sub"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6010
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSubId(I)V

    .line 6011
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasChangedDefaultDataSub:Z

    .line 6013
    :cond_1
    return-void
.end method

.method private regetIMSIFromPhone()Z
    .locals 3

    .line 6483
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 6484
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6485
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 6486
    .local v1, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 6487
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 6488
    if-eqz v0, :cond_0

    .line 6489
    const-string v2, "regetIMSIFromPhone"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6490
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setIMSI(Ljava/lang/String;)V

    .line 6491
    const/4 v2, 0x1

    return v2

    .line 6496
    .end local v1    # "defPhone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeLastUtCmd()V
    .locals 3

    .line 2026
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2027
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    const-string v1, "removeLastUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2030
    monitor-exit v0

    return-void

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2035
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

    .line 2036
    monitor-exit v0

    .line 2037
    return-void

    .line 2036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUtCmd()V
    .locals 3

    .line 2002
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2003
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2005
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

    .line 2006
    monitor-exit v0

    .line 2007
    return-void

    .line 2006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3149
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3150
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3152
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3154
    .local v2, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-ne v2, p1, :cond_0

    .line 3155
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3156
    goto :goto_1

    .line 3158
    .end local v2    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_0
    goto :goto_0

    .line 3159
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 3160
    return-void

    .line 3159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5083
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 5085
    .local v0, "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5088
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_1

    .line 5086
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5091
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5093
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5095
    return-object v1
.end method

.method private responseCLCK(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5001
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 5003
    .local v0, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5004
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5007
    :cond_0
    aget-object v1, v0, v2

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_1

    .line 5005
    :cond_1
    :goto_0
    aget-object v1, v0, v2

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5010
    :goto_1
    return-object v0
.end method

.method private responseCLIP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCLIP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5067
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCLIR(Ljava/lang/Boolean;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "defaultBehavior"    # I

    .line 5034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCLIR result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5036
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5038
    .local v1, "response":[I
    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 5039
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5047
    :cond_0
    if-ne p2, v2, :cond_1

    .line 5048
    aput v0, v1, v3

    goto :goto_1

    .line 5049
    :cond_1
    if-ne p2, v0, :cond_2

    .line 5050
    aput v2, v1, v3

    goto :goto_1

    .line 5052
    :cond_2
    aput v0, v1, v3

    goto :goto_1

    .line 5040
    :cond_3
    :goto_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 5041
    aput v0, v1, v3

    .line 5042
    aput v3, v1, v2

    goto :goto_1

    .line 5044
    :cond_4
    aput v3, v1, v3

    .line 5056
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5058
    .local v0, "clirInfo":Landroid/os/Bundle;
    const-string v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5060
    return-object v0
.end method

.method private responseCOLP(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCOLP, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5079
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCOLR(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCOLR, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5073
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCWInts(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 5014
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseInts(Ljava/lang/Boolean;I)[I

    move-result-object v0

    return-object v0
.end method

.method private responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 9
    .param p1, "reason"    # I

    .line 4922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCallForward reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4924
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v0

    .line 4926
    .local v0, "condition":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 4927
    const-string v1, "invalid reason"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4928
    new-array v1, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    return-object v1

    .line 4931
    :cond_0
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 4933
    .local v3, "result":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallDiversionEnable result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4935
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 4937
    .local v5, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v6, v5, v2

    .line 4939
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 4942
    :cond_1
    aget-object v6, v5, v2

    iput v4, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 4940
    :cond_2
    :goto_0
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 4945
    :goto_1
    aget-object v6, v5, v2

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 4946
    aget-object v6, v5, v2

    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTargetNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4947
    aget-object v6, v5, v2

    iget-object v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 4948
    const-string v6, "responseCallForward number is null, set empty string as default"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4950
    aget-object v6, v5, v2

    const-string v7, ""

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 4953
    :cond_3
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 4954
    const/4 v6, 0x3

    if-ne v6, p1, :cond_4

    .line 4955
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionNoReplyTimer()Ljava/lang/String;

    move-result-object v6

    .line 4956
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 4959
    :try_start_0
    aget-object v7, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4962
    goto :goto_2

    .line 4960
    :catch_0
    move-exception v7

    .line 4961
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "responseCallForward : NumberFormatException "

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4967
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    if-nez p1, :cond_6

    .line 4968
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTime()[Ljava/util/Date;

    move-result-object v6

    .line 4970
    .local v6, "date":[Ljava/util/Date;
    if-eqz v6, :cond_5

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_5

    aget-object v7, v6, v2

    if-eqz v7, :cond_5

    aget-object v7, v6, v4

    if-eqz v7, :cond_5

    .line 4971
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4972
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 4973
    aget-object v1, v5, v2

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    .line 4974
    aget-object v1, v5, v2

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    iput v4, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 4976
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

    goto :goto_3

    .line 4982
    :cond_5
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4983
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4984
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4985
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 4987
    const-string v1, "can\'t get the time while query CFT, deliver -1 to APP"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4995
    .end local v6    # "date":[Ljava/util/Date;
    :cond_6
    :goto_3
    aget-object v1, v5, v2

    const/16 v2, 0x81

    iput v2, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 4997
    return-object v5
.end method

.method private responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 4
    .param p1, "reason"    # I

    .line 4901
    const/4 v0, 0x0

    .line 4902
    .local v0, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCFReason(I)I

    move-result v1

    .line 4903
    .local v1, "condition":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsUseMultCondition()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4904
    const-string v2, "responseCallForwardEx ,Single and composite node query"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4905
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 4906
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_0

    .line 4907
    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 4908
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_0

    .line 4910
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 4912
    :goto_0
    if-eqz v0, :cond_3

    aget-object v2, v0, v3

    if-eqz v2, :cond_3

    .line 4913
    aget-object v2, v0, v3

    iput v1, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_1

    .line 4916
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 4918
    :cond_3
    :goto_1
    return-object v0
.end method

.method private responseFailure(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 4529
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mShowDataConnectionDialog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4530
    const/16 p2, 0x33f

    .line 4541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter responseFailure, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4543
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 4544
    .local v0, "error":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-virtual {v1, p1, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 4545
    return-void
.end method

.method private responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6582
    if-nez p1, :cond_0

    .line 6583
    const-string v0, "responseFailureAndEndUt: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6584
    return-void

    .line 6586
    :cond_0
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6587
    .local v0, "onComplete":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 6588
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6590
    :cond_1
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6591
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6592
    return-void
.end method

.method private responseInts(Ljava/lang/Boolean;I)[I
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;
    .param p2, "num"    # I

    .line 5018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseInts result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5020
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5022
    .local v0, "response":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5025
    :cond_0
    aput v1, v0, v2

    goto :goto_1

    .line 5023
    :cond_1
    :goto_0
    aput v2, v0, v2

    .line 5027
    :goto_1
    aput p2, v0, v1

    .line 5029
    return-object v0
.end method

.method private saveCTCardVolteFlag(Z)V
    .locals 4
    .param p1, "isVolteCard"    # Z

    .line 3584
    if-eqz p1, :cond_0

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_VOLTE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->FLAG_IS_NOT_VOLTE:I

    .line 3585
    .local v0, "volteFlag":I
    :goto_0
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    .line 3586
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCTCardVolteFlag isVolteCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3588
    return-void
.end method

.method private sendQueryCallWaitingForDetection()V
    .locals 4

    .line 6613
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 6614
    const-string v0, "[UTCMD]enter sendQueryCallWaitingForDetection"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6615
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 6616
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6617
    return-void

    .line 6619
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 6620
    return-void
.end method

.method private sendStopImsApnMessage()V
    .locals 5

    .line 5674
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSubId()I

    move-result v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 5675
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImsDataDelayEndTime()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefUtImsDataDelayEndTime()I

    move-result v0

    .line 5676
    .local v0, "utImsDataDelayTime":I
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    .line 5677
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    .line 5676
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5679
    return-void
.end method

.method private sendUtChrBroadcast(Lcom/huawei/ims/UtCHRData;)V
    .locals 4
    .param p1, "utChrData"    # Lcom/huawei/ims/UtCHRData;

    .line 6646
    if-nez p1, :cond_0

    .line 6647
    const-string v0, "sendUtCHRBroadcast: utCHRData is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6648
    return-void

    .line 6650
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6651
    .local v0, "utChrBundle":Landroid/os/Bundle;
    const-string v1, "EventScenario"

    const-string v2, "UT_FAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6652
    const-string v1, "EventFailCause"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6653
    const-string v1, "IMS.UT.operationType"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mOperationType:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6654
    const-string v1, "IMS.UT.dataApntype"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mDataApntype:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6655
    const-string v1, "IMS.UT.isSupportWifi"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsSupportWifi:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6656
    const-string v1, "IMS.UT.isMobileDateConnected"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsMobileDateConnected:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6657
    const-string v1, "IMS.UT.isWifiConnected"

    iget-byte v2, p1, Lcom/huawei/ims/UtCHRData;->mIsWifiConnected:B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6658
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 6659
    const-string v1, "IMS.UT.isVowifiEnable"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6661
    :cond_1
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    if-eq v1, v2, :cond_2

    .line 6662
    const-string v1, "IMS.UT.addressType"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6664
    :cond_2
    const-string v1, "IMS.UT.subId"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mSubId:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6665
    const-string v1, "IMS.UT.currentSubId"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mCurrentSubId:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6666
    iget-byte v1, p1, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    if-eq v1, v2, :cond_3

    .line 6667
    const-string v1, "IMS.UT.vowifidomain"

    iget-byte v3, p1, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6669
    :cond_3
    iget v1, p1, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    if-eq v1, v2, :cond_4

    .line 6670
    const-string v1, "IMS.UT.failReason"

    iget v2, p1, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6672
    :cond_4
    const-string v1, "IMS.UT.cmdDcState"

    iget-object v2, p1, Lcom/huawei/ims/UtCHRData;->mCmdDcState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUtCHRBroadcast: sendTelephonyChrBroadcast."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6674
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwTelephonyChrManager()Lcom/android/internal/telephony/HwTelephonyChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwTelephonyChrManager;->sendTelephonyChrBroadcast(Landroid/os/Bundle;)V

    .line 6675
    return-void
.end method

.method private static setCurrentSubId(I)V
    .locals 0
    .param p0, "subId"    # I

    .line 4185
    sput p0, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    .line 4186
    return-void
.end method

.method private setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 5503
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5504
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_0

    .line 5505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubId: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5506
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0

    .line 5508
    :cond_0
    const-string v1, "setDefaultDataSubId failed!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5510
    :goto_0
    return-void
.end method

.method private setImsExtensionalParam(IZLjava/lang/String;)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "isNeed"    # Z
    .param p3, "params"    # Ljava/lang/String;

    .line 4124
    if-eqz p2, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/huawei/sci/SciSSConfHs;->setExtensionalParam(IZLjava/lang/String;)I

    .line 4125
    return-void
.end method

.method private setImsUserAgentExtensionalParam()V
    .locals 4

    .line 4128
    const-string v0, ""

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4130
    .local v0, "buildVersionBuffer":Ljava/lang/StringBuffer;
    const-string v1, "HUAWEI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4131
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolCarrierBuildVersion()Z

    move-result v1

    .line 4132
    .local v1, "isNeedBuildVersion":Z
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4133
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetImsExtensionalParam suucess:RO_HW_OEMNAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",RO_BUILD_VERSION_INCREMENTAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",buildVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4134
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4137
    .end local v0    # "buildVersionBuffer":Ljava/lang/StringBuffer;
    .end local v1    # "isNeedBuildVersion":Z
    goto :goto_0

    .line 4138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get prop RO_HW_OEMNAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",RO_BUILD_VERSION_INCREMENTAL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4141
    :goto_0
    return-void
.end method

.method private static setSciSSConfCb(Lcom/huawei/sci/SciSSConfCb;)V
    .locals 0
    .param p0, "sciSSConfCb"    # Lcom/huawei/sci/SciSSConfCb;

    .line 4189
    sput-object p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSSConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 4190
    return-void
.end method

.method private setUtDataExpireTime(I)V
    .locals 3
    .param p1, "type"    # I

    .line 6317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setUtDataExpireTime, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6319
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 6323
    :cond_0
    :pswitch_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6325
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 6326
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expirte time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6329
    nop

    .line 6333
    .end local v0    # "currDate":Ljava/util/Date;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setUtOverWifiTunnelUpFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 5414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUtOverWifiTunnelUpFlag, flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5415
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 5416
    return-void
.end method

.method private startAlarm(II)V
    .locals 4
    .param p1, "alarm"    # I
    .param p2, "timer"    # I

    .line 6017
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

    .line 6019
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6020
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6021
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6023
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6024
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    .line 6023
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6027
    :cond_1
    return-void
.end method

.method private startDCAlarm()V
    .locals 2

    .line 5906
    const/16 v0, 0x29

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5907
    return-void
.end method

.method private startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6631
    const-string v0, "startDefaultBearForWifiConnected."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6632
    if-nez p1, :cond_0

    .line 6633
    const-string v0, "startDefaultBearForWifiConnected: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6634
    return-void

    .line 6636
    :cond_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6637
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDCState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6638
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 6639
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 6640
    return-void
.end method

.method private startImsDataConnectionAlarm()V
    .locals 2

    .line 5581
    const/16 v0, 0x2c

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5582
    return-void
.end method

.method private startTemporaryDCAlarm()V
    .locals 2

    .line 5914
    const/16 v0, 0x2f

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5915
    return-void
.end method

.method private startTemporaryUtStayAlarm()V
    .locals 2

    .line 5977
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5978
    const-string v0, "startTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5979
    const/16 v0, 0x30

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5981
    :cond_0
    return-void
.end method

.method private startUtAlarm()V
    .locals 2

    .line 5877
    const/16 v0, 0x2a

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5878
    return-void
.end method

.method private startUtForbiddenAlarm()V
    .locals 4

    .line 5948
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    .line 5949
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

    .line 5950
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5951
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    const v3, 0xea60

    div-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 5952
    return-void
.end method

.method private startUtRetryAlarm(I)V
    .locals 2
    .param p1, "count"    # I

    .line 3607
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryInterval(I)I

    move-result v0

    .line 3608
    .local v0, "utRetryInterval":I
    if-gez v0, :cond_0

    .line 3609
    return-void

    .line 3612
    :cond_0
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 3613
    return-void
.end method

.method private startUtServiceThread()V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$2;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$2;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    return-void
.end method

.method private startWifiTunnelConnectionAlarm()V
    .locals 2

    .line 5327
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 5329
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtVoWifiDelayEndTime()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5332
    :cond_0
    return-void
.end method

.method private startWifiTunnelSetupAlarm()V
    .locals 2

    .line 5366
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 5367
    const/16 v0, 0x2d

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5369
    :cond_0
    return-void
.end method

.method private stopAlarm(I)V
    .locals 2
    .param p1, "alarm"    # I

    .line 6030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6032
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6033
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6034
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6036
    :cond_0
    return-void
.end method

.method private stopDcAlarm()V
    .locals 1

    .line 5910
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5911
    return-void
.end method

.method private stopImsDataConnectionAlarm()V
    .locals 1

    .line 5585
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5586
    return-void
.end method

.method private stopTemporaryDcAlarm()V
    .locals 1

    .line 5918
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5919
    return-void
.end method

.method private stopTemporaryUtStayAlarm()V
    .locals 1

    .line 5984
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 5985
    const-string v0, "stopTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5986
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5988
    :cond_0
    return-void
.end method

.method private stopUtAlarm()V
    .locals 1

    .line 5881
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5882
    return-void
.end method

.method private stopUtForbiddenAlarm()V
    .locals 2

    .line 5955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopUtForbiddenAlarm: mUtForbiddenDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5957
    return-void
.end method

.method private stopUtRetryAlarm()V
    .locals 1

    .line 3616
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 3617
    return-void
.end method

.method private stopWifiTunnelConnectionAlarm()V
    .locals 1

    .line 5335
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5336
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5337
    return-void

    .line 5339
    :cond_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5340
    return-void
.end method

.method private stopWifiTunnelSetupAlarm()V
    .locals 1

    .line 5372
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 5373
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5374
    return-void

    .line 5376
    :cond_0
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5377
    return-void
.end method

.method private syncCLIRModeToImsSdk(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6338
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->setCLIR(ILandroid/os/Message;)V

    .line 6339
    return-void
.end method

.method private syncCallWaitingToCS(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6217
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6219
    .local v0, "callWaitingAction":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6223
    const/4 v1, 0x1

    return v1
.end method

.method private syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6158
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6160
    .local v0, "callWaitingAction":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin sync call waiting to IMS SDK, callWaitingAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6163
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    const/4 v2, 0x0

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 6164
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6166
    invoke-virtual {v5, v3, v0, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6164
    invoke-virtual {v1, p1, v4, v2}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 6171
    :cond_0
    const-string v1, "don\'t sync result to IMS SDK exectly"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6173
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6179
    :goto_0
    return v4
.end method

.method private transBarringFacilityToCbReason(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .line 4798
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4799
    const/4 v0, 0x1

    return v0

    .line 4800
    :cond_0
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4801
    const/4 v0, 0x2

    return v0

    .line 4802
    :cond_1
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4803
    const/4 v0, 0x3

    return v0

    .line 4804
    :cond_2
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4805
    const/4 v0, 0x0

    return v0

    .line 4806
    :cond_3
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4807
    const/4 v0, 0x4

    return v0

    .line 4808
    :cond_4
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4809
    const/4 v0, 0x5

    return v0

    .line 4811
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private transCFToUtReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4816
    packed-switch p1, :pswitch_data_0

    .line 4834
    const/4 v0, -0x1

    return v0

    .line 4826
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 4831
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 4829
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 4824
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 4822
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 4820
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 4818
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transCFToUtType(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4839
    packed-switch p1, :pswitch_data_0

    .line 4857
    const/4 v0, -0x1

    return v0

    .line 4849
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 4854
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 4852
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 4847
    :pswitch_3
    const/16 v0, 0xb

    return v0

    .line 4845
    :pswitch_4
    const/16 v0, 0xa

    return v0

    .line 4843
    :pswitch_5
    const/16 v0, 0x9

    return v0

    .line 4841
    :pswitch_6
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transCLIRModeToUtReason(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 4887
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 4893
    return v0

    .line 4889
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private transCbTypeToFacility(I)Ljava/lang/String;
    .locals 3
    .param p1, "cbType"    # I

    .line 4730
    const/4 v0, 0x0

    .line 4732
    .local v0, "facility":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4760
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4756
    :pswitch_1
    const-string v0, "AC"

    .line 4757
    goto :goto_0

    .line 4753
    :pswitch_2
    const-string v0, "AG"

    .line 4754
    goto :goto_0

    .line 4750
    :pswitch_3
    const-string v0, "AB"

    .line 4751
    goto :goto_0

    .line 4746
    :pswitch_4
    const-string v0, "IR"

    .line 4747
    goto :goto_0

    .line 4740
    :pswitch_5
    const-string v0, "OX"

    .line 4741
    goto :goto_0

    .line 4737
    :pswitch_6
    const-string v0, "OI"

    .line 4738
    goto :goto_0

    .line 4734
    :pswitch_7
    const-string v0, "AO"

    .line 4735
    goto :goto_0

    .line 4743
    :pswitch_8
    const-string v0, "AI"

    .line 4744
    nop

    .line 4764
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private transCbTypeToUtTypeGet(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 4711
    const/4 v0, -0x1

    .line 4712
    .local v0, "utType":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4716
    :pswitch_0
    const/16 v0, 0xe

    .line 4717
    goto :goto_0

    .line 4720
    :pswitch_1
    const/16 v0, 0xd

    .line 4721
    nop

    .line 4726
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transCbTypeToUtTypeSet(I)I
    .locals 3
    .param p1, "cbType"    # I

    .line 4768
    const/4 v0, -0x1

    .line 4770
    .local v0, "utType":I
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR]unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4784
    :pswitch_0
    const/16 v0, 0x13

    .line 4785
    goto :goto_0

    .line 4778
    :pswitch_1
    const/16 v0, 0x12

    .line 4779
    goto :goto_0

    .line 4775
    :pswitch_2
    const/16 v0, 0x11

    .line 4776
    goto :goto_0

    .line 4772
    :pswitch_3
    const/16 v0, 0x10

    .line 4773
    goto :goto_0

    .line 4781
    :pswitch_4
    const/16 v0, 0xf

    .line 4782
    goto :goto_0

    .line 4787
    :cond_0
    const/16 v0, 0x15

    .line 4788
    nop

    .line 4794
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transIntToDate(II)Ljava/util/Date;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 6039
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6041
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->setHours(I)V

    .line 6042
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 6044
    return-object v0
.end method

.method private transUtToCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 4862
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4881
    const/4 v0, -0x1

    return v0

    .line 4877
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 4875
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 4872
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 4870
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 4868
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 4866
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 4864
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transferCmdFromRetryQueueToUtCmdQueue()V
    .locals 5

    .line 3116
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3117
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3119
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferCmdFromRetryQueueToUtCmdQueue, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3122
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3125
    .local v3, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtNotUseDefaultAPN()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3126
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 3130
    :cond_0
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3131
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3121
    .end local v3    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3134
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3135
    .end local v1    # "size":I
    monitor-exit v0

    .line 3136
    return-void

    .line 3135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .locals 2
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3139
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3141
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3142
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3146
    return-void

    .line 3143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateCLIR(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 4465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4467
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOIRSourceMode()I

    move-result v1

    .line 4469
    .local v1, "mOIRSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter updateCLIR, mOIRSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4471
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4472
    .local v2, "mCLIRUtCanBeUsed":Z
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4473
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 4476
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4473
    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4478
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4480
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_0

    .line 4481
    const-string v4, "onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4484
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4487
    .local v4, "response":Landroid/os/Message;
    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->syncCLIRModeToImsSdk(ILandroid/os/Message;)V

    .line 4488
    .end local v3    # "onComplete":Landroid/os/Message;
    .end local v4    # "response":Landroid/os/Message;
    goto :goto_0

    .line 4489
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4491
    :goto_0
    return-void
.end method

.method private updateCallBarringAllOption(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "action"    # Z
    .param p3, "serviceClass"    # I

    .line 4361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallbarringAllOption, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4362
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 4364
    .local v0, "CallBarringAll":[I
    const/4 v1, 0x0

    .line 4366
    .local v1, "id":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4368
    aget v3, v0, v2

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    .line 4366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4372
    .end local v2    # "i":I
    :cond_0
    return v1

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x1
        0x5
    .end array-data
.end method

.method private updateCallBarringBase(Ljava/lang/String;IZI)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "serviceClass"    # I

    .line 4378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallBarringBase, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4379
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 4381
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 4383
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4384
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 4387
    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 4389
    .local v2, "facility":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    .line 4391
    .local v3, "condition":I
    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 4392
    iput-boolean p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 4393
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 4394
    iput-object p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 4396
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 4398
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4400
    iget v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v4
.end method

.method private updateCallWaiting(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallWaiting enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1525
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1527
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1529
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1530
    return v2

    .line 1541
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1543
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v3, :cond_1

    .line 1544
    const-string v1, "invalid domain, stop updateCallWaiting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1546
    return v2

    .line 1549
    :cond_1
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1551
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method private updateCallWaiting(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 4404
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    .line 4406
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter setCallWaiting, callWaitingSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4408
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4410
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    .line 4416
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_0

    .line 4417
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4419
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4421
    return-void

    .line 4424
    :cond_0
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t set call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4459
    return-void

    .line 4433
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update callwaiting canUse403ForLocalCW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsUtForbidden : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4434
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->canUse403ForLocalCW()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_1

    .line 4435
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_1

    .line 4438
    :cond_1
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4440
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v2, :cond_2

    .line 4441
    const-string v3, "onComplete is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4444
    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4445
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_0

    .line 4446
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4447
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->syncCallWaitingToCS(ZLandroid/os/Message;)Z

    .line 4455
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_0
    goto :goto_1

    .line 4449
    .restart local v2    # "onComplete":Landroid/os/Message;
    :cond_4
    const-string v3, "[error]local call waiting and not sync is not reasonable."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4451
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4452
    return-void

    .line 4429
    .end local v2    # "onComplete":Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4430
    goto :goto_1

    .line 4426
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4427
    nop

    .line 4461
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canUseDefaultBearForWifiConnected()Z
    .locals 1

    .line 6625
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_0

    .line 6626
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6625
    :goto_0
    return v0
.end method

.method clear()V
    .locals 1

    .line 1275
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1276
    return-void
.end method

.method public close()V
    .locals 1

    .line 739
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 742
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 743
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 744
    return-void
.end method

.method public detectSimCardSubscriptionStatus()V
    .locals 3

    .line 6596
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 6597
    const-string v0, "sim card has not been loaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6598
    return-void

    .line 6602
    :cond_0
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 6603
    .local v0, "mainSlot":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndSupportVolte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6604
    :cond_1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCTCardAndNotSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6605
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t detect sim card subscription status, the main slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6607
    return-void

    .line 6609
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendQueryCallWaitingForDetection()V

    .line 6610
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .line 6548
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-eqz v0, :cond_0

    .line 6549
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6551
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .line 1268
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1269
    return-void
.end method

.method handleSimCardAbsent()V
    .locals 1

    .line 1478
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1479
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "newImsi"    # Ljava/lang/String;

    .line 1261
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1262
    return-void
.end method

.method isAirModeResetCWInModem()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCWInModem:Z

    return v0
.end method

.method public isSIMCardCheckedByUT()Z
    .locals 1

    .line 6557
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHasCheckedSIMCardByUT:Z

    return v0
.end method

.method public isSupportCFT()Z
    .locals 3

    .line 1146
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->checkUTDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method isUtEnable()Z
    .locals 1

    .line 1155
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    return v0
.end method

.method public isUtIdle()Z
    .locals 6

    .line 6518
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x30

    .line 6519
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6521
    .local v0, "isWaitingForUtStay":Z
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 6523
    .local v3, "isUtCmdQueueEmpty":Z
    :goto_1
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

    .line 6524
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public processECT()V
    .locals 3

    .line 6538
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 6539
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->explicitCallTransfer(Landroid/os/Message;)V

    .line 6541
    :cond_0
    return-void
.end method

.method declared-synchronized queryAndSyncCallWaitingToCs()V
    .locals 4

    monitor-enter p0

    .line 1192
    :try_start_0
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1197
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    goto :goto_0

    .line 1204
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1205
    const-string v0, "this card MCC MNC is not prefer to use UT, will set network mode for callwait"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsUtImpl;
    throw v0
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .locals 1

    .line 1232
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1238
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_0

    .line 1239
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1241
    return-void

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1247
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    .line 1252
    :cond_1
    return-void
.end method

.method public queryCLIP()I
    .locals 4

    .line 898
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 900
    const-string v0, "[UTCMD]enter queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 902
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 906
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 910
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 912
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCLIR()I
    .locals 4

    .line 870
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 872
    const-string v0, "[UTCMD]enter queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 874
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 876
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 881
    :cond_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 883
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_1

    .line 884
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 885
    const/4 v1, -0x1

    return v1

    .line 888
    :cond_1
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 891
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLP()I
    .locals 4

    .line 940
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 942
    const-string v0, "[UTCMD]enter queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 944
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 948
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 952
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 954
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLR()I
    .locals 4

    .line 919
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 921
    const-string v0, "[UTCMD]enter queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 923
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 927
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 931
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 933
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 4
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 761
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 763
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

    .line 765
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeGet(I)I

    move-result v0

    .line 767
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 769
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 773
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "facility":Ljava/lang/String;
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 776
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 778
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 781
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 783
    iget v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3
.end method

.method public queryCallForwardForServiceClass(ILjava/lang/String;I)I
    .locals 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 793
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter queryCallForward, condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    const-string v0, "Invalid condition for queryCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 800
    const/4 v0, -0x1

    return v0

    .line 803
    :cond_0
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 805
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 809
    :cond_1
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 810
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v1

    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 812
    iput p3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 815
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 817
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallWaiting()I
    .locals 7

    .line 824
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 826
    const-string v0, "[UTCMD]enter queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 835
    .local v0, "currDate":Ljava/util/Date;
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 836
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 840
    :cond_0
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {v1, v2, v4, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 842
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    .line 843
    return v5

    .line 854
    :cond_1
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v6, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 856
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v2, v3, :cond_2

    .line 857
    const-string v2, "invalid domain, stop queryCallWaiting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 859
    return v5

    .line 862
    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 863
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2
.end method

.method public receiveOtherSubUtIdle()V
    .locals 2

    .line 6528
    const-string v0, "receiveOtherSubUtIdle"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6530
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6532
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 6534
    :cond_0
    return-void
.end method

.method responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "err"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMessage with err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1472
    return-void
.end method

.method responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMessage with obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1454
    if-nez p1, :cond_0

    .line 1455
    const-string v0, "responseMessage msg is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1457
    return-void

    .line 1460
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1461
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1462
    return-void
.end method

.method sendUTMessage(I)Z
    .locals 1
    .param p1, "utEvent"    # I

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method sendUTMessage(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "utEvent"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1176
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1177
    const-string v0, "mUtServiceHandler is null, can\'t send message via this handler."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x0

    return v0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1184
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public setHomeDomainName()I
    .locals 4

    .line 4146
    const/4 v0, -0x1

    .line 4147
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v1

    .line 4149
    .local v1, "domainName":Ljava/lang/String;
    :try_start_0
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

    .line 4150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v2, v3, :cond_0

    .line 4151
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setHomeDomainName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 4155
    :cond_0
    goto :goto_0

    .line 4153
    :catch_0
    move-exception v2

    .line 4154
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setHomeDomainName, exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4156
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHomeDomainName , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4157
    return v0
.end method

.method setImsSdkBsfAddr()I
    .locals 6

    .line 1329
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "bsfAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfPort()I

    move-result v1

    .line 1331
    .local v1, "bsfPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfUseHttps()Z

    move-result v2

    .line 1333
    .local v2, "isBsfGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk, bsf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1335
    const/4 v3, -0x1

    .line 1337
    .local v3, "ret":I
    if-nez v0, :cond_0

    .line 1338
    const-string v4, "bsfAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1339
    return v3

    .line 1343
    :cond_0
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setBsfAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1346
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v4

    .line 1345
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setImsSdkBsfAddr, failed"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1348
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Bsf Addr , ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1350
    return v3
.end method

.method setImsSdkImpi()I
    .locals 4

    .line 1302
    const/4 v0, -0x1

    .line 1303
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPI()Ljava/lang/String;

    move-result-object v1

    .line 1305
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

    .line 1307
    if-nez v1, :cond_0

    .line 1308
    const-string v2, "impi is null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1309
    return v0

    .line 1313
    :cond_0
    :try_start_0
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->mCurrentSubId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSubId:I

    if-ne v2, v3, :cond_1

    .line 1314
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setAuthUserName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1318
    :cond_1
    goto :goto_0

    .line 1316
    :catch_0
    move-exception v2

    .line 1317
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSdkImpi, failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1320
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ims Sdk Impi, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1322
    return v0
.end method

.method setImsSdkImpu()I
    .locals 4

    .line 1282
    const/4 v0, -0x1

    .line 1283
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    .local v1, "impu":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsSdkImpu impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1288
    :try_start_0
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setLocalUserName(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1291
    goto :goto_0

    .line 1289
    :catch_0
    move-exception v2

    .line 1290
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSdkImpu, failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1293
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ims Sdk impu, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1295
    return v0
.end method

.method setImsSdkNafAddr()I
    .locals 6

    .line 1375
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "nafAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafPort()I

    move-result v1

    .line 1377
    .local v1, "nafPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtNafUseHttps()Z

    move-result v2

    .line 1379
    .local v2, "isNafGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk naf , naf port, naf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1381
    const/4 v3, -0x1

    .line 1383
    .local v3, "ret":I
    if-nez v0, :cond_0

    .line 1384
    const-string v4, "nafAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1386
    return v3

    .line 1390
    :cond_0
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setNafAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1393
    goto :goto_0

    .line 1391
    :catch_0
    move-exception v4

    .line 1392
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setImsSdkNafAddr, exception"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1395
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Naf Addr , ret ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1397
    return v3
.end method

.method setImsSdkParamsCfg()V
    .locals 8

    .line 1401
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "mUtParamsCfgArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1404
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1405
    aget-object v3, v0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "mUtParamsCfg":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-object v5, v3, v4

    .line 1407
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1413
    :cond_0
    :try_start_0
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .local v5, "mUtParam":I
    nop

    .line 1416
    nop

    .line 1418
    aget-object v6, v3, v4

    invoke-static {v5, v6}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    .line 1419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init utParamsCfg, cfgParam="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .end local v3    # "mUtParamsCfg":[Ljava/lang/String;
    .end local v5    # "mUtParam":I
    goto :goto_2

    .line 1414
    .restart local v3    # "mUtParamsCfg":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1415
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "setParamsCfg Exception"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1416
    goto :goto_2

    .line 1408
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const-string v4, "setParamsCfg config param not right"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1409
    nop

    .line 1404
    .end local v3    # "mUtParamsCfg":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method setImsXcapRootUri()I
    .locals 4

    .line 1359
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtXcapRootUri()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "xcapuri":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1362
    .local v1, "ret":I
    :try_start_0
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setXcapRootUri(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1365
    goto :goto_0

    .line 1363
    :catch_0
    move-exception v2

    .line 1364
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsXcapRootUri, exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1366
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsXcapRootUri , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1367
    return v1
.end method

.method public setIsDataReg(Z)V
    .locals 0
    .param p1, "regState"    # Z

    .line 6562
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 6563
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 750
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 752
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 753
    return-void
.end method

.method public updateCLIP(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 1076
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIP, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1080
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1084
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1088
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1090
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1092
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCLIR(I)I
    .locals 4
    .param p1, "clirMode"    # I

    .line 1041
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIR, clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1045
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1047
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1052
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1053
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCLIRModeToUtReason(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1054
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR, utEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", utReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1059
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1061
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_2

    .line 1062
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1063
    const/4 v1, -0x1

    return v1

    .line 1066
    :cond_2
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 1069
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLP(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1123
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLP, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1131
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1135
    :cond_0
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1137
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1139
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLR(I)I
    .locals 4
    .param p1, "presentation"    # I

    .line 1099
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLR, presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1107
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1111
    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1112
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1114
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1116
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "serviceClass"    # I
    .param p5, "barrList"    # [Ljava/lang/String;

    .line 962
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallBarringOption, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", barrList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 969
    .local v0, "type":I
    const/16 v1, 0x15

    if-ne v1, v0, :cond_0

    .line 970
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v1

    .line 971
    .local v1, "utType":I
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    .line 972
    .local v2, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringOption: domainSelect is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 973
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-eq v3, v2, :cond_0

    .line 974
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringAllOption(Ljava/lang/String;ZI)I

    move-result v3

    return v3

    .line 978
    .end local v1    # "utType":I
    .end local v2    # "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 4
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 1486
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1487
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

    .line 1490
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

    .line 1487
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1494
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1500
    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v0

    .line 1502
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1504
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1505
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1508
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1509
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1510
    iput-object p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1511
    iput p5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 1512
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1513
    iput p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1514
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 1516
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1518
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1495
    .end local v0    # "type":I
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_2
    :goto_0
    const-string v0, "Invalid action or condition for updateCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1497
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 4
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 987
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 989
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

    .line 996
    const/4 v1, 0x0

    invoke-direct {p0, p7, v1}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 998
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    if-nez p6, :cond_0

    .line 1000
    const/4 p6, 0x6

    .line 1003
    :cond_0
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtType(I)I

    move-result v0

    .line 1005
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1007
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1011
    :cond_1
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 1012
    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->transCFToUtReason(I)I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1013
    iput-object p7, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    .line 1015
    invoke-direct {p0, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    .line 1016
    iput p6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1017
    iput p5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1019
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSS(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1021
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1023
    .end local v0    # "type":I
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_2
    const-string v0, "Invalid condition for updateCallForwardUncondTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1024
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 1032
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1034
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaiting(Z)I

    move-result v0

    return v0
.end method
