.class public Lcom/huawei/ims/HwImsServiceImpl;
.super Ljava/lang/Object;
.source "HwImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DMPROVIDER_TO_IMS:Ljava/lang/String; = "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

.field private static final ACTION_IMS_TO_DMPROVIDER:Ljava/lang/String; = "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

.field private static final AT_DMCN:I = 0xa

.field private static final AUDIO_QUALITY_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.AUDIO_QUALITY_GET"

.field private static final AUDIO_QUALITY_SET_ACTION:Ljava/lang/String; = "com.huawei.intent.action.AUDIO_QUALITY_SET"

.field private static final AudioQualityType:Ljava/lang/String; = "AUDIO_QUALITY_TYPE"

.field private static final BATTERY_CLOSE_LEVEL:I = 0x2

.field private static final BATTERY_LOWER_LEVEL:I = 0x5

.field private static final BATTERY_STATUS_CLOSE:I = 0x2

.field private static final BATTERY_STATUS_NORMAL:I = 0x0

.field private static final BATTERY_STATUS_REJECT:I = 0x1

.field private static final BINARY:I = 0x2

.field private static final CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field private static final CARRIER_CONFIG_CHANGE_STATE:Ljava/lang/String; = "carrierConfigChangeState"

.field private static final CARRIER_CONFIG_STATE_LOAD:I = 0x1

.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final CSVT_INDEX:I = 0x3

.field private static final DISABLE_LTE_INFO_REPORT:I = 0x0

.field private static final DMPROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.dm"

.field private static final DMRECEIVER_CLASS:Ljava/lang/String; = "com.android.providers.dm.DmReceiver"

.field private static final DMUSER_DEFAULT_VALUE:Ljava/lang/String;

.field private static final DM_IMS_CMD_FAIL:I = -0x1

.field private static final DM_IMS_CMD_OK:I = 0x1

.field private static final DM_IMS_DATA:Ljava/lang/String; = "data"

.field private static final DM_IMS_GET_AT_DMDYN:I = 0x7

.field private static final DM_IMS_GET_AT_DMPCSCF:I = 0x5

.field private static final DM_IMS_GET_AT_DMSMS:I = 0x8

.field private static final DM_IMS_GET_AT_DMTIMER:I = 0x6

.field private static final DM_IMS_GET_AT_DMUSER:I = 0x9

.field private static final DM_IMS_RET:Ljava/lang/String; = "ret"

.field private static final DM_IMS_SET_AT_DMDYN:I = 0x2

.field private static final DM_IMS_SET_AT_DMPCSCF:I = 0x1

.field private static final DM_IMS_SET_AT_DMSMS:I = 0x4

.field private static final DM_IMS_SET_AT_DMTIMER:I = 0x3

.field private static final DM_IMS_TYPE:Ljava/lang/String; = "type"

.field private static final DM_INVALID_CMD_TYPE:I = -0x1

.field private static final DM_SYNC_RETRY_INTERVAL:I = 0x7d0

.field private static final DM_SYNC_RETRY_MAX_TIMES:I = 0x5

.field public static final DM_USER_IMS_VALUE:Ljava/lang/String; = "dm_user_ims_value"

.field private static final ENABLE_LTE_INFO_REPORT:I = 0x1

.field private static final EVENT_CALL_MODIFY:I = 0xd

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x1

.field protected static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x3ef

.field private static final EVENT_GET_CURRENT_CALLS:I = 0x7

.field private static final EVENT_GET_SRV_STATUS:I = 0x5

.field private static final EVENT_HANDOVER_STATE_CHANGED:I = 0xc

.field private static final EVENT_ICC_CHANGED:I = 0x10

.field protected static final EVENT_IMS_CS_REDIAL:I = 0x3f1

.field private static final EVENT_IMS_DMCN:I = 0x3f8

.field private static final EVENT_IMS_GET_DMUSER:I = 0x3e8

.field private static final EVENT_IMS_GET_DM_PARAMETER_DONE:I = 0x3f7

.field protected static final EVENT_IMS_GET_IMPU_DONE:I = 0x11

.field protected static final EVENT_IMS_ONHOLD_TONE:I = 0x44c

.field protected static final EVENT_IMS_RADIO_ON:I = 0x44d

.field private static final EVENT_IMS_REG_FAIL_DELAY:I = 0x12

.field private static final EVENT_IMS_SET_DM_PARAMETER_DONE:I = 0x3f6

.field private static final EVENT_IMS_SET_SMS_CONFIG:I = 0x3e9

.field private static final EVENT_IMS_SET_VT_CAPABILITY:I = 0x13

.field private static final EVENT_IMS_STATE_CHANGED:I = 0x2

.field private static final EVENT_IMS_STATE_DONE:I = 0x3

.field protected static final EVENT_MODIFY_RESULT:I = 0x3eb

.field protected static final EVENT_MT_NEW_RING_REPORT:I = 0x3ee

.field protected static final EVENT_MT_STATUS_REPORT:I = 0x3ed

.field private static final EVENT_MWI:I = 0xe

.field private static final EVENT_QUERY_CAMERASTATUS:I = 0x16

.field private static final EVENT_READ_DOMAIN_NAME:I = 0x14

.field private static final EVENT_READ_ISIM_IMPI:I = 0x15

.field private static final EVENT_REFRESH_CONF_INFO:I = 0xb

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x3f0

.field private static final EVENT_SEND_BATTERY_STATUS:I = 0x3fa

.field private static final EVENT_SET_IMS_STATE:I = 0x9

.field private static final EVENT_SET_SRV_STATUS:I = 0x6

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0xf

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x3f2

.field private static final EVENT_SRV_STATUS_UPDATE:I = 0x4

.field private static final EVENT_SUPP_SRV_UPDATE:I = 0x8

.field private static final EVENT_TTY_STATE_CHANGED:I = 0xa

.field private static final EVENT_UNSOL_SIM_NVCFG_FINISHED:I = 0x17

.field private static final EVENT_UNSOL_VOWIF_REG_ERR_REPORT:I = 0x44f

.field protected static final EVENT_UNSOl_IMS_REG_MODE:I = 0x44e

.field private static final EVENT_UNSOl_LTE_PDCP_INFO:I = 0x3f4

.field private static final EVENT_UNSOl_LTE_RRC_INFO:I = 0x3f5

.field private static final EVENT_UNSOl_SPEECH_INFO:I = 0x3f3

.field private static final EVENT_VOWIFI_REG_ERR_REPORT:I = 0x450

.field private static final EVENT_VOWIFI_SOS_PENDING_TIMEOUT:I = 0x3fc

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static FLAG_IS_VOLTE:I = 0x0

.field private static final IMS_ERRDOMAIN:Ljava/lang/String; = "errDomain"

.field private static final IMS_ERRSTAGE:Ljava/lang/String; = "errStage"

.field private static final IMS_FAILCAUSE:Ljava/lang/String; = "failcause"

.field private static final IMS_FAILSTRING:Ljava/lang/String; = "failstring"

.field private static final IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

.field private static final IMS_REG_FAIL_DELAY_TIMER_LENGTH:I = 0x11170

.field private static final IMS_SERVICE_CURRENT_PHONE_TYPE_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_CURRENT_PHONE_TYPE"

.field private static final IMS_SERVICE_CURRENT_PHONE_TYPE_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE"

.field private static final IMS_SERVICE_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

.field private static final IMS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

.field private static final IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_REG_ERROR_REPORT"

.field private static final IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT"

.field private static final IMS_SERVICE_VOWIFI_STATE_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

.field private static final IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

.field private static final IMS_STATE:Ljava/lang/String; = "state"

.field private static final IMS_STATE_CHANGE_SUBID:Ljava/lang/String; = "subId"

.field private static final IMS_STATE_REGISTERED:Ljava/lang/String; = "REGISTERED"

.field private static final IMS_STATE_UNREGISTERED:Ljava/lang/String; = "UNREGISTERED"

.field private static final INVALID_VALUE_KEY:I = -0x1

.field public static final IS_AMR_WB_SHOW_HD_VOLTE:Z

.field private static final IS_VOWIFI:Ljava/lang/String; = "vowifi_state"

.field private static final IS_VOWIFI_PROP_ON:Z

.field private static final KEY_SUPPORT_HOLD_TONE_BOOL:Ljava/lang/String; = "support_hold_tone_bool"

.field private static final LAST_CALL_TYPE_CS:I = 0x0

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LAST_CALL_TYPE_VOLTE:I = 0x1

.field private static final LAST_CALL_TYPE_VOWIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsServiceImpl"

.field private static final LTE_PDCP_INFO_CURBUFFPKTNUM:I = 0x1

.field private static final LTE_PDCP_INFO_CURBUFFTIME:I = 0x0

.field private static final LTE_PDCP_INFO_MACULTHRPUT:I = 0x2

.field private static final LTE_PDCP_INFO_MAXBUFFTIME:I = 0x3

.field private static final LTE_RRC_INFO_BLER:I = 0x3

.field private static final LTE_RRC_INFO_RSRP:I = 0x0

.field private static final LTE_RRC_INFO_RSRQ:I = 0x1

.field private static final LTE_RRC_INFO_RSSI:I = 0x2

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field private static final MAX_FEATURES_SUPPORTED:I = 0x3

.field private static final NON_CHARGED_STATUS:I = 0x0

.field private static final NOT_REGISTERED:I = 0x0

.field private static final NVCFG_RESULT_FINISHED:I = 0x1

.field private static final OPERATOR_CUSTOMER_WB_SHOW_HD:Ljava/lang/String; = "wb_show_hd"

.field private static final QUERY_CAMERASTATUS_TIME:I = 0x64

.field private static final RCS_GLOBAL_RECEIVER_CLASS:Ljava/lang/String; = "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

.field private static final RCS_SERVICE_PACKAGE:Ljava/lang/String; = "com.huawei.rcsserviceapplication"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final REGISTRATION_UNKNOWN:I = 0x3

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_TYPE_MAX:I = 0x5

.field private static final SIP_IMPU_SOURCE:I = 0x0

.field public static final SMS_DEFAULT_VALUE:I = 0x1

.field private static final SMS_DISABLED_VALUE:I = 0x0

.field private static final SMS_ENABLED_VALUE:I = 0x1

.field public static final SMS_IMS_SET_VALUE:Ljava/lang/String; = "sms_ims_set_value"

.field private static final SPEECH_CODEC_NB:I = 0x1

.field private static final SPEECH_CODEC_WB:I = 0x2

.field private static final SPEECH_EVS_NB:I = 0x3

.field private static final SPEECH_EVS_SWB:I = 0x5

.field private static final SPEECH_EVS_WB:I = 0x4

.field private static final SPEECH_INFO_CODEC_NB:Ljava/lang/String; = "Codec=AMR_NB"

.field private static final SPEECH_INFO_CODEC_WB:Ljava/lang/String; = "Codec=AMR_WB"

.field private static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final THRESHOLD_OF_CLOSE:I = 0x64

.field public static final VOWIFI_REG_ERROR_REPORT_SWITCH_DEFAULT:I = 0x0

.field private static final VOWIFI_SOS_PENDING_TIMEOUT:I = 0x7530

.field private static final VT_FLOW_INFO_REPORT:I = 0x9c41

.field private static mFirstReg:Z

.field private static final mSupportAdjustSpeechCodec:Z


# instance fields
.field private DBG:Z

.field private mAccessTechMode:I

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field protected mCi:Lcom/huawei/ims/ImsRIL;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBatteryStatus:I

.field private mCurrentHaveCall:Z

.field private mDmSyncRetryCount:I

.field private mEmergencyUnderWifi:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

.field public mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsRegisterState:I

.field private mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

.field private mImsStateBindRat:I

.field private mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReportLTEInfo:Z

.field private mLastCallType:I

.field private mMainSlotChange:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

.field private mNewBatteryStatus:I

.field protected mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceIdTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceCallTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:[Lcom/huawei/ims/ImsServiceState;

.field private mShouldResetVTCapability:Z

.field private mSpeechInfoCodec:[Ljava/lang/String;

.field protected mSub:I

.field private mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mTrackerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/ims/ImsServiceCallTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 327
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->mFirstReg:Z

    .line 345
    nop

    .line 346
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->mSupportAdjustSpeechCodec:Z

    .line 357
    const-string v1, "card_volte_flag_0"

    const-string v2, "card_volte_flag_1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 358
    sput v0, Lcom/huawei/ims/HwImsServiceImpl;->FLAG_IS_VOLTE:I

    .line 444
    const-string v1, "ro.config.amr_wb_show_hd_volte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    .line 450
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    .line 455
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 459
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->DMUSER_DEFAULT_VALUE:Ljava/lang/String;

    .line 3225
    sget-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3226
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3225
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3227
    sget-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3228
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3227
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->DBG:Z

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 151
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceIdTable:Ljava/util/Map;

    .line 160
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 161
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 175
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 176
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 178
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    .line 232
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    .line 296
    const/4 v3, -0x1

    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    .line 330
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mEmergencyUnderWifi:Z

    .line 332
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    .line 336
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 341
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    .line 360
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mShouldResetVTCapability:Z

    .line 361
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentHaveCall:Z

    .line 363
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    .line 376
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMainSlotChange:Z

    .line 426
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    .line 432
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    .line 434
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLTEInfo:Z

    .line 626
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$1;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$2;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 741
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    .line 742
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    .line 484
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    .line 485
    const-string v0, "HwImsServiceImpl Constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 486
    iput-object p2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 487
    new-instance v0, Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/huawei/ims/ImsRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 488
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 492
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const v4, 0x9c41

    invoke-virtual {v0, v3, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 499
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->getInstance()Lcom/huawei/ims/ImsConfigImpl;

    move-result-object v0

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-virtual {v0, p0, v3}, Lcom/huawei/ims/ImsConfigImpl;->getConfigInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 503
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->getInstance()Lcom/huawei/ims/ImsUtImpl;

    move-result-object v0

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-virtual {v0, p0, v3}, Lcom/huawei/ims/ImsUtImpl;->getUtInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 506
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerBootCompleted()V

    .line 507
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 511
    new-instance v0, Lcom/huawei/ims/HwImsEcbmImpl;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsEcbmImpl;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

    .line 513
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 515
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    new-instance v0, Lcom/huawei/ims/MtStatusManager;

    invoke-direct {v0, p0}, Lcom/huawei/ims/MtStatusManager;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 534
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->mSupportAdjustSpeechCodec:Z

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f5

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44c

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44e

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44f

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForVoWiFiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->initServiceState()V

    .line 568
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 569
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    .line 572
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44d

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolNvCfgFinished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 578
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->onUpdateIccAvailability()V

    .line 582
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 584
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v0    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UiccController getInstance Exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 592
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-eqz v2, :cond_4

    .line 597
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    :cond_4
    const-string v2, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    const-string v2, "true"

    const-string v3, "ro.config.hw_support_omadm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 612
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 613
    .local v2, "DMFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

    invoke-virtual {p2, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 616
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f8

    invoke-virtual {v3, v4, v5, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 621
    .end local v2    # "DMFilter":Landroid/content/IntentFilter;
    :cond_5
    const-string v1, "HwImsServiceImpl init done"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/ims/HwImsServiceImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 146
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->sendBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mEmergencyUnderWifi:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/huawei/ims/HwImsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mEmergencyUnderWifi:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->DBG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentCallFromModem()V

    return-void
.end method

.method static synthetic access$2100(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->initServiceState()V

    return-void
.end method

.method static synthetic access$2200(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return v0
.end method

.method static synthetic access$2202(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return p1
.end method

.method static synthetic access$2300(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/huawei/ims/HwImsServiceImpl;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # [I

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallResult([I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMainSlotChange:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/huawei/ims/HwImsServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMainSlotChange:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerReceiverForBattery()V

    return-void
.end method

.method static synthetic access$2800(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->onUpdateIccAvailability()V

    return-void
.end method

.method static synthetic access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsStateBindRat()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->queryCameraStatus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return p1
.end method

.method static synthetic access$3208(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$3302(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    return p1
.end method

.method static synthetic access$3400(Lcom/huawei/ims/HwImsServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    return v0
.end method

.method static synthetic access$3500(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->setSpeechCodec(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->setImsRegisterState(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->optimizeImsRegisterState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900()[Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lcom/huawei/ims/HwImsServiceImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 146
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->mFirstReg:Z

    return v0
.end method

.method static synthetic access$4000()I
    .locals 1

    .line 146
    sget v0, Lcom/huawei/ims/HwImsServiceImpl;->FLAG_IS_VOLTE:I

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 146
    sput-boolean p0, Lcom/huawei/ims/HwImsServiceImpl;->mFirstReg:Z

    return p0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .line 146
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVolteSwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVTCapabilityToModem()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->sendSimCardType()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 146
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->moveSharePreferenceToDE()V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsServiceImpl;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->processDMBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private convertCapability(II)I
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 3244
    const/4 v0, -0x1

    .line 3245
    .local v0, "capConverted":I
    const/4 v1, 0x4

    if-nez p2, :cond_1

    .line 3246
    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability capability not expected. capatility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3258
    goto :goto_0

    .line 3251
    :pswitch_0
    const/4 v0, 0x1

    .line 3252
    goto :goto_0

    .line 3248
    :pswitch_1
    const/4 v0, 0x0

    .line 3249
    goto :goto_0

    .line 3254
    :cond_0
    const/4 v0, 0x4

    .line 3255
    goto :goto_0

    .line 3260
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 3261
    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_1

    .line 3272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability capability not expected. capatility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3273
    goto :goto_0

    .line 3266
    :pswitch_2
    const/4 v0, 0x3

    .line 3267
    goto :goto_0

    .line 3263
    :pswitch_3
    const/4 v0, 0x2

    .line 3264
    goto :goto_0

    .line 3269
    :cond_2
    const/4 v0, 0x5

    .line 3270
    goto :goto_0

    .line 3276
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCapability radioTech not expected. radioTech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3278
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 1026
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$3;-><init>(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V

    .line 1037
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "HwImsServiceImplcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1038
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1039
    return-void
.end method

.method private executeRequestLTEInfo()V
    .locals 3

    .line 3180
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getLpdcpThreshold()I

    move-result v0

    .line 3181
    .local v0, "threshold":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->requestLTEInfo(IILandroid/os/Message;)V

    .line 3182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRequestLTEInfo, threshold is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3183
    return-void
.end method

.method private getCurrentCallFromModem()V
    .locals 4

    .line 3194
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 3196
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->haveCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3197
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 3200
    .end local v0    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :cond_0
    return-void
.end method

.method private getCurrentPhoneTypeForSlot(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 2824
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    .line 2825
    .local v0, "phoneType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldPhoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2826
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2827
    const/4 v0, 0x2

    .line 2829
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newPhoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2830
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->setCardTypeToGlobalDB(II)V

    .line 2831
    return v0
.end method

.method private getEnhancedVideoFeature()I
    .locals 6

    .line 3126
    const/4 v0, -0x1

    .line 3127
    .local v0, "valueKeyConfig":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3128
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 3129
    .local v2, "subId":I
    if-eqz v1, :cond_0

    .line 3130
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3131
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 3132
    const-string v4, "carrierconfig_enhanced_video_feature"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3133
    .local v4, "mValueKeyConfig":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3135
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 3138
    goto :goto_0

    .line 3136
    :catch_0
    move-exception v5

    .line 3137
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v0

    .line 3142
    .end local v3    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "mValueKeyConfig":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnhancedVideoFeature valueKeyConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3143
    return v0
.end method

.method private getImsStateBindRat()I
    .locals 1

    .line 2584
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    return v0
.end method

.method private handleCSVTCalls(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1199
    .local p1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1200
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_0

    .line 1201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1202
    const-string v1, "Call for non-registered service class CSVT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1208
    :cond_1
    :goto_0
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1079
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :goto_0
    goto :goto_1

    .line 1086
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1094
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :goto_1
    nop

    .line 1097
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v3, 0x0

    .line 1101
    .local v3, "hasActiveVideoCall":Z
    if-eqz v0, :cond_7

    .line 1103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1104
    .local v4, "callListSize":I
    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .local v3, "i":I
    .local v6, "hasActiveVideoCall":Z
    :goto_2
    if-ge v3, v4, :cond_6

    .line 1105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/ims/DriverImsCall;

    .line 1106
    .local v7, "dc":Lcom/huawei/ims/DriverImsCall;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCalls: dc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsServiceImpl;->isActiveVTCall(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1108
    const/4 v6, 0x1

    .line 1111
    :cond_1
    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v8, v8, v5

    if-eqz v8, :cond_3

    .line 1112
    iget-object v8, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v8, v8, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update dc imsCallProfile extras  use mSpeechInfoCodec[0] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1115
    new-instance v8, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v9, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v8, v9}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    .line 1116
    .local v8, "newCdetails":Lcom/huawei/ims/ImsCallProfiles;
    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v9, v8, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 1117
    iget-object v9, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v9, v8}, Lcom/huawei/ims/ImsCallProfiles;->update(Lcom/huawei/ims/ImsCallProfiles;)Z

    .line 1118
    .end local v8    # "newCdetails":Lcom/huawei/ims/ImsCallProfiles;
    goto :goto_3

    .line 1119
    :cond_2
    iget-object v8, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v9, v8, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 1123
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    iget-object v8, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v8, v8, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1125
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1127
    :cond_4
    if-eqz v7, :cond_5

    .line 1128
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1134
    .end local v3    # "i":I
    .end local v4    # "callListSize":I
    .end local v7    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_6
    move v3, v6

    .end local v6    # "hasActiveVideoCall":Z
    .local v3, "hasActiveVideoCall":Z
    :cond_7
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->openOrCloseLTEInfo(Z)V

    .line 1135
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1136
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1137
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->handleCSVTCalls(Ljava/util/ArrayList;)V

    .line 1139
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1141
    return-void

    .line 1093
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v1    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v2    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v3    # "hasActiveVideoCall":Z
    :cond_8
    const-string v0, "else???"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method private handleMMTELCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1176
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1177
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_0

    .line 1185
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1186
    const-string v1, "Call for non-registered service class MMTEL"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1191
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1193
    :cond_1
    const-string v1, "CS Call, ignore handle"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1196
    :cond_2
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 2
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1276
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto :goto_0

    .line 1279
    :cond_0
    const-string v1, "ImsServiceCallTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1282
    :goto_0
    return-void
.end method

.method private handleModifyCallResult([I)V
    .locals 2
    .param p1, "modifyResult"    # [I

    .line 1286
    const-string v0, "handleModifyCallResult"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1290
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleModifyCallResult([I)V

    goto :goto_0

    .line 1293
    :cond_0
    const-string v1, "ImsServiceCallTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1296
    :goto_0
    return-void
.end method

.method private initServiceState()V
    .locals 5

    .line 817
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/huawei/ims/ImsServiceState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    .line 818
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 819
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    new-instance v4, Lcom/huawei/ims/ImsServiceState;

    invoke-direct {v4}, Lcom/huawei/ims/ImsServiceState;-><init>()V

    aput-object v4, v3, v2

    .line 824
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v4, v3, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 825
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    new-instance v4, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v4}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v1

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v2    # "i":I
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->bindMapconService()V

    .line 831
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 832
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.hisi.permission.VOWIFI_SPECIAL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 840
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private isActiveVTCall(Lcom/huawei/ims/DriverImsCall;)Z
    .locals 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 3147
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3150
    :cond_0
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eq v1, v3, :cond_1

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v2, :cond_2

    move v0, v3

    nop

    :cond_2
    return v0

    .line 3148
    :cond_3
    :goto_0
    return v0
.end method

.method private isCdmaCardAndVoLTE()Z
    .locals 7

    .line 2845
    const/4 v0, 0x0

    .line 2846
    .local v0, "isCdmaCard":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2847
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2848
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 2849
    .local v4, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move v0, v5

    .line 2851
    .end local v4    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_1
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isCdmaVoLTEAndISIM()Z

    move-result v4

    .line 2852
    .local v4, "isCdmaVoLTE":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdmaCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCdmaVoLTE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2853
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method private isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1158
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1162
    :cond_0
    const-string v0, "isCurrentHaveCall there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentHaveCall:Z

    .line 1164
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mShouldResetVTCapability:Z

    if-eqz v1, :cond_2

    .line 1165
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVTCapabilityToModem()V

    .line 1166
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mShouldResetVTCapability:Z

    goto :goto_1

    .line 1159
    :cond_1
    :goto_0
    const-string v0, "isCurrentHaveCall there  new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentHaveCall:Z

    .line 1169
    :cond_2
    :goto_1
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1052
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1053
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return v0
.end method

.method private isVoWifiRegistered()Z
    .locals 2

    .line 3011
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 3012
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3011
    :goto_0
    return v1
.end method

.method private isVolteSwitchOn()Z
    .locals 4

    .line 1060
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1061
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1063
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsSwitch()Z

    move-result v1

    .line 1066
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1068
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsServiceImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsServiceImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    return-void
.end method

.method private moveSharePreferenceToDE()V
    .locals 3

    .line 3049
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3050
    .local v0, "sharedPreferenceName":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/ims/SharePreferenceUtil;->isNOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3051
    const-string v1, "moveSharePreferenceToDE"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3052
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 3053
    .local v1, "deviceContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/SharePreferenceUtil;->moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3054
    const-string v2, "Failed to move shared preference"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 3057
    .end local v1    # "deviceContext":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private notifyImsState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 779
    const-string v0, "REGISTERED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 780
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 781
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 782
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_0

    .line 784
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 785
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 786
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 787
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    .line 790
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v0

    .line 795
    .local v0, "isVowifi":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify IMS state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isVowifi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 797
    invoke-static {v0}, Lcom/huawei/ims/vt/ImsVTGlobals;->reInitVtSdk(Z)V

    .line 799
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    .line 800
    .local v1, "mSubId":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v2, "imsStateIntent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v3, "vowifi_state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 803
    const-string v3, "subId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 808
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 809
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceCallTracker;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceCallTracker;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsServiceImpl;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V

    .line 810
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceCallTracker;>;"
    goto :goto_1

    .line 812
    :cond_1
    return-void
.end method

.method private onUpdateIccAvailability()V
    .locals 8

    .line 2620
    const-string v0, "enter onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2623
    const/4 v0, 0x0

    move-object v1, v0

    .line 2626
    .local v1, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2631
    nop

    .line 2634
    if-nez v1, :cond_0

    .line 2635
    const-string v0, "uiccController is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2636
    return-void

    .line 2642
    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v2

    .line 2644
    .local v2, "phoneId":I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2645
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 2650
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2651
    .local v3, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 2652
    .local v4, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eq v3, v4, :cond_2

    .line 2653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Old Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2655
    iput-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2656
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v4, :cond_2

    .line 2658
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimCardAbsent()V

    .line 2663
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 2664
    .local v5, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2666
    .local v6, "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v6, v5, :cond_7

    .line 2667
    const-string v7, "oldUiccApplication != newUiccApplication"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2668
    if-eqz v6, :cond_4

    .line 2669
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2670
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->unregisterForSimRecordEvents()V

    .line 2673
    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2678
    :cond_4
    if-eqz v5, :cond_5

    .line 2679
    const-string v0, "main slot changed, handle clear."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMainSlotChange:Z

    .line 2681
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimCardAbsent()V

    .line 2686
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2689
    if-eqz v5, :cond_6

    .line 2690
    const-string v0, "New Uicc application found"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2691
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2692
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerForSimRecordEvents()V

    .line 2696
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    .line 2699
    :cond_7
    return-void

    .line 2627
    .end local v2    # "phoneId":I
    .end local v3    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v4    # "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v5    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v6    # "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UiccController getInstance Exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method private openOrCloseLTEInfo(Z)V
    .locals 3
    .param p1, "hasActiveVideoCall"    # Z

    .line 3158
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLTEInfo:Z

    if-nez v0, :cond_0

    .line 3159
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->queryCameraStatus()V

    goto :goto_0

    .line 3160
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLTEInfo:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3161
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->requestLTEInfo(IILandroid/os/Message;)V

    .line 3162
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLTEInfo:Z

    .line 3163
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3164
    const-string v0, "request close report LTE Info"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3166
    :cond_1
    :goto_0
    return-void
.end method

.method private optimizeImsRegisterState()Z
    .locals 3

    .line 2995
    const/4 v0, 0x1

    .line 2997
    .local v0, "optimize":Z
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2998
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v1

    .line 2999
    .local v1, "voWiFiRegistered":Z
    sget-boolean v2, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3000
    const/4 v0, 0x0

    .line 3002
    .end local v1    # "voWiFiRegistered":Z
    :cond_0
    goto :goto_0

    .line 3003
    :cond_1
    const/4 v0, 0x0

    .line 3006
    :goto_0
    return v0
.end method

.method private processDMBroadcast(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 3061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDMBroadcast: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3063
    const/16 v0, 0x3f6

    const/16 v1, 0x3f7

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    .line 3092
    const-string v0, "processDMBroadcast: invalid type! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3089
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMUSER(Landroid/os/Message;)V

    .line 3090
    goto :goto_0

    .line 3086
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMSMS(Landroid/os/Message;)V

    .line 3087
    goto :goto_0

    .line 3083
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMDYN(Landroid/os/Message;)V

    .line 3084
    goto :goto_0

    .line 3080
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMTIMER(Landroid/os/Message;)V

    .line 3081
    goto :goto_0

    .line 3077
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMPCSCF(Landroid/os/Message;)V

    .line 3078
    goto :goto_0

    .line 3074
    :pswitch_5
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMSMS(Ljava/lang/String;Landroid/os/Message;)V

    .line 3075
    goto :goto_0

    .line 3071
    :pswitch_6
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V

    .line 3072
    goto :goto_0

    .line 3068
    :pswitch_7
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMDYN(Ljava/lang/String;Landroid/os/Message;)V

    .line 3069
    goto :goto_0

    .line 3065
    :pswitch_8
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V

    .line 3066
    nop

    .line 3095
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private queryCameraStatus()V
    .locals 5

    .line 3170
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    .line 3171
    .local v0, "cameraManager":Lcom/huawei/ims/vt/CameraManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->isParamReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3172
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->executeRequestLTEInfo()V

    .line 3173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLTEInfo:Z

    goto :goto_0

    .line 3175
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3177
    :goto_0
    return-void
.end method

.method private registerBootCompleted()V
    .locals 3

    .line 3040
    const-string v0, "registerBootCompleted"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3041
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3042
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3043
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3044
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3046
    :cond_0
    return-void
.end method

.method private registerForSimRecordEvents()V
    .locals 4

    .line 2753
    const-string v0, "enter registerForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2754
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2756
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2757
    const-string v1, "registerForSimRecordEvents  is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2758
    return-void

    .line 2761
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2762
    return-void
.end method

.method private registerReceiverForBattery()V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 747
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "registerReceiverForBattery"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 748
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestLTEInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3188
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLTEInfo(IILandroid/os/Message;)V

    .line 3191
    :cond_0
    return-void
.end method

.method private sendBatteryStatus(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 754
    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 755
    .local v0, "level":I
    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 757
    .local v1, "plugType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real battery level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlugType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 760
    if-eqz v1, :cond_0

    .line 761
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_0

    .line 762
    :cond_0
    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 763
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_0

    .line 764
    :cond_1
    const/4 v3, 0x5

    if-gt v0, v3, :cond_2

    .line 765
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_0

    .line 767
    :cond_2
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    .line 770
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "new status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 771
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    if-eq v2, v3, :cond_3

    .line 772
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsRIL;->sendBatteryStatus(ILandroid/os/Message;)V

    .line 774
    :cond_3
    return-void
.end method

.method private sendSimCardType()V
    .locals 6

    .line 2813
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2814
    .local v0, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2815
    .local v1, "simState":I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 2816
    new-instance v4, Landroid/content/Intent;

    const-string v5, "huawei.intent.action.IMS_CURRENT_PHONE_TYPE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v4, "phoneTypeIntent":Landroid/content/Intent;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentPhoneTypeForSlot(I)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2818
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentPhoneTypeForSlot(I)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2819
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2821
    .end local v4    # "phoneTypeIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setCardTypeToGlobalDB(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "cardType"    # I

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "card_type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2836
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2837
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2838
    return-void
.end method

.method private setImsRegisterState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 2574
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    .line 2575
    return-void
.end method

.method private setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1144
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1145
    const-string v0, "impossible to be here, pls check"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1146
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1148
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1150
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_0

    .line 1152
    :cond_2
    const-string v0, "there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1155
    :goto_0
    return-void
.end method

.method private setSpeechCodec(I)V
    .locals 4
    .param p1, "speechCodec"    # I

    .line 3206
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3207
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3210
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wb_show_hd"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3211
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.intent.action.SPEECH_CODEC_WB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3212
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3214
    const-string v2, "speechCodecWb"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3216
    const-string v2, "subscription"

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3218
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3220
    return-void

    .line 3208
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method private setVTCapabilityToModem()V
    .locals 11

    .line 3100
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentHaveCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3101
    const-string v0, "the Current have a Call ,You should set the video capability when the call hangs up"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3102
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mShouldResetVTCapability:Z

    .line 3103
    return-void

    .line 3106
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v0, v2}, Lcom/android/ims/HwImsManager;->isVtEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 3107
    .local v0, "isVtEnabledByPlatform":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v2, v3}, Lcom/android/ims/HwImsManager;->isVtEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    .line 3108
    .local v2, "isVtEnabledByUser":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v3, v4}, Lcom/android/ims/HwImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v3

    .line 3109
    .local v3, "isNonTtyOrTtyOnVolteEnabled":Z
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v4

    .line 3110
    .local v5, "isSupportVt":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVTCapabilityToModem: isVtEnabledByPlatform = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVtEnabledByUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isSupportVt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3114
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v5, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 3115
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getEnhancedVideoFeature()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 3117
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getEnhancedVideoFeature()I

    move-result v6

    and-int/lit8 v6, v6, 0xc

    .line 3118
    .local v6, "videoCWCapability":I
    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v4

    .line 3119
    .local v7, "isSupportCWCapability":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVTCapabilityToModem: videoCWCapability = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isSupportCWCapability = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3121
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v7, :cond_4

    move v4, v1

    nop

    :cond_4
    iget-object v10, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v1, v4, v9}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 3123
    .end local v6    # "videoCWCapability":I
    .end local v7    # "isSupportCWCapability":Z
    :cond_5
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .line 2765
    const-string v0, "enter unregisterForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2766
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2768
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2769
    return-void

    .line 2772
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2773
    return-void
.end method

.method private updatePhoneBaseEvent()V
    .locals 6

    .line 2940
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2941
    .local v0, "newPhoneBase":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 2943
    .local v1, "oldPhoneBase":Lcom/android/internal/telephony/Phone;
    if-eq v0, v1, :cond_3

    .line 2944
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2946
    if-eqz v1, :cond_1

    .line 2949
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2952
    const-string v2, "Unregister listening message of data reg state from old phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 2957
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 2960
    iget-object v2, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 2964
    :cond_1
    if-eqz v0, :cond_3

    .line 2967
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2970
    const-string v2, "register listening message of data reg state from new phone base"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2976
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2981
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f2

    invoke-interface {v2, v4, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2985
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/huawei/ims/IImsCallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 1248
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1249
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->addListener(Lcom/huawei/ims/IImsCallListListener;)V

    goto :goto_0

    .line 1252
    :cond_0
    const-string v1, "ImsServiceCallTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void
.end method

.method protected bindMapconService()V
    .locals 5

    .line 3019
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 3021
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$4;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 3033
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3034
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 3036
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V
    .locals 5
    .param p1, "cap"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .param p2, "value"    # I

    .line 3232
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->convertCapability(II)I

    move-result v0

    .line 3233
    .local v0, "capConverted":I
    sget-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3234
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3233
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3235
    .local v1, "radioTechConverted":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    .line 3237
    .local v2, "capStr":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFeatureValue - cap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " radioTech: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3240
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, p2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 3241
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 887
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v1, :cond_0

    .line 888
    const-string v2, " Invalid service ID - cannot create profile"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :cond_0
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    move-object v0, v2

    .line 895
    :goto_0
    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4
    .param p1, "serviceType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 908
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v1, :cond_0

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid service type - cannot create Call Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {v1, p2}, Lcom/huawei/ims/ImsServiceCallTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0
.end method

.method public createImsServiceCallTracker(ILcom/huawei/ims/ImsServiceCallTracker$InComingListener;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "inComingListener"    # Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;
    .param p3, "featureListener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter createImsServiceCallTracker.  serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 984
    return-void

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 988
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v1, :cond_1

    .line 989
    new-instance v2, Lcom/huawei/ims/ImsServiceCallTracker;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/huawei/ims/ImsServiceCallTracker;-><init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    move-object v1, v2

    .line 991
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iput-object p2, v1, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    .line 993
    iput-object p3, v1, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 995
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 996
    return-void
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 2
    .param p1, "mediaId"    # I

    .line 1230
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1231
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->findSessionByMediaId(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;
    .locals 2
    .param p1, "state"    # Lcom/huawei/ims/DriverImsCall$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/ims/DriverImsCall$State;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1221
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 2703
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2704
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 2705
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    return-object v1

    .line 2707
    :cond_0
    const-string v1, "can\'t get uiccCard"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2708
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v1
.end method

.method public getConfig()Lcom/huawei/ims/HwImsConfigImpl;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method public getDMUSER()V
    .locals 3

    .line 2746
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDMUSER(Landroid/os/Message;)V

    .line 2749
    :cond_0
    return-void
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .line 2893
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2898
    .local v0, "slotId":I
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2900
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultPhone phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    return-object v1

    .line 2903
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 2904
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "getDefaultPhone occurs exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2907
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEcbm()Lcom/huawei/ims/HwImsEcbmImpl;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

    return-object v0
.end method

.method getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 4

    .line 2879
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2881
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 2882
    const/4 v1, 0x0

    return-object v1

    .line 2885
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2887
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsPhone imsPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2888
    return-object v1
.end method

.method public getImsRegisterState()I
    .locals 1

    .line 2578
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return v0
.end method

.method public getImsRegistrationImpl()Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method public getLastCallType()I
    .locals 1

    .line 2990
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    return v0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 7
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 855
    const/4 v0, 0x0

    .line 857
    .local v0, "serviceId":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 859
    const/4 v0, -0x2

    goto :goto_0

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 862
    .local v2, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v2, :cond_1

    .line 863
    new-instance v3, Lcom/huawei/ims/ImsServiceCallTracker;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/huawei/ims/ImsServiceCallTracker;-><init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    move-object v2, v3

    .line 864
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceIdTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsServiceCallTracker;->getServiceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 867
    :cond_1
    iput-object p3, v2, Lcom/huawei/ims/ImsServiceCallTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 870
    .end local v2    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceId returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 874
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .line 2870
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2871
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSubscription()I
    .locals 1

    .line 1238
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 2714
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2716
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 2717
    const/4 v1, 0x0

    return-object v1

    .line 2720
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    return-object v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 2600
    const-string v0, "enter UiccCardApplication"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2601
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 2604
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/huawei/ims/HwImsService;

    if-eqz v1, :cond_0

    .line 2606
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    .line 2608
    .local v1, "phoneId":I
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    return-object v2

    .line 2611
    .end local v1    # "phoneId":I
    :cond_0
    const-string v1, "mContext is not a HwImsService!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2615
    const-string v1, "getUiccCardApplication fail"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2616
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUt()Lcom/huawei/ims/HwImsUtImpl;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method public handleImsGetImpuDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2776
    const-string v0, "enter handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2777
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2779
    .local v0, "arImpu":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2780
    const-string v1, "get impu OK, set impu to ims sdk. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2783
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_0

    .line 2784
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Ljava/lang/String;)V

    .line 2789
    :cond_0
    return-void
.end method

.method public handleImsRegMode(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2858
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2859
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2862
    .local v0, "regMode":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    .line 2863
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 2862
    invoke-static {v1, v0, v2, v3, v4}, Lcom/huawei/ims/cust/HwCustVZWIms;->setVZWImsRegMode(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 2866
    .end local v0    # "regMode":I
    :cond_0
    return-void
.end method

.method public handleSimCardAbsent()V
    .locals 1

    .line 2726
    const-string v0, "enter handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent()V

    .line 2733
    :cond_0
    return-void
.end method

.method public handleSimRecordsLoaded()V
    .locals 4

    .line 2792
    const-string v0, "enter handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2795
    .local v0, "newImsi":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isCdmaCardAndVoLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadHomeDomainName(Landroid/os/Message;)V

    .line 2797
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadIsimIMPI(Landroid/os/Message;)V

    .line 2800
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_1

    .line 2801
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Ljava/lang/String;)V

    .line 2805
    :cond_1
    const-string v1, "leave handleSimRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2807
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 922
    return-void
.end method

.method public removeImsServiceCallTracker(I)V
    .locals 3
    .param p1, "serviceClass"    # I

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter removeImsServiceCallTracker.  serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1002
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1006
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_1

    .line 1007
    return-void

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/IImsCallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 1263
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1264
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->removeListener(Lcom/huawei/ims/IImsCallListListener;)V

    goto :goto_0

    .line 1267
    :cond_0
    const-string v1, "ImsServiceCallTracker not found."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void
.end method

.method public setFeatureCapabilityListener(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 973
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 974
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 975
    iput-object p1, v0, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    .line 977
    :cond_0
    return-void
.end method

.method public setImsSmsConfig(I)V
    .locals 3
    .param p1, "imsSmsConfig"    # I

    .line 2739
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    const-string v2, "sms_ims_set_value"

    .line 2740
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2739
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2741
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setImsSmsConfig(ILandroid/os/Message;)V

    .line 2744
    :cond_0
    return-void
.end method

.method public setIncomingListener(Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    .line 966
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTrackerTable:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 967
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v0, :cond_0

    .line 968
    iput-object p1, v0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    .line 970
    :cond_0
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 956
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 957
    .local v0, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-nez v0, :cond_0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_0
    iput-object p2, v0, Lcom/huawei/ims/ImsServiceCallTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 962
    :goto_0
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 918
    return-void
.end method

.method public setVoWiFiRegErrReportEnable(I)V
    .locals 3
    .param p1, "enabled"    # I

    .line 3284
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x450

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setVoWiFiRegErrReportEnable(ILandroid/os/Message;)V

    .line 3285
    return-void
.end method
