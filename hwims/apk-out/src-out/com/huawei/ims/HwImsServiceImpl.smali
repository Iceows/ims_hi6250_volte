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

.field private static final ACTION_SWITCH_DUAL_CARDS_SLOT:Ljava/lang/String; = "huawei.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

.field private static final AT_DMCN:I = 0xa

.field private static final AUDIO_QUALITY_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.AUDIO_QUALITY_GET"

.field private static final AUDIO_QUALITY_SET_ACTION:Ljava/lang/String; = "com.huawei.intent.action.AUDIO_QUALITY_SET"

.field private static final AUDIO_QUALITY_TYPE:Ljava/lang/String; = "AUDIO_QUALITY_TYPE"

.field private static final BATTERY_CLOSE_LEVEL:I = 0x2

.field private static final BATTERY_LOWER_LEVEL:I = 0x5

.field private static final BATTERY_STATUS_CLOSE:I = 0x2

.field private static final BATTERY_STATUS_FULL:I = 0x64

.field private static final BATTERY_STATUS_INVALID:I = -0x1

.field private static final BATTERY_STATUS_NORMAL:I = 0x0

.field private static final BATTERY_STATUS_REJECT:I = 0x1

.field private static final BINARY:I = 0x2

.field private static final CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field private static final CARRIER_CONFIG_CHANGE_STATE:Ljava/lang/String; = "carrierConfigChangeState"

.field private static final CARRIER_CONFIG_STATE_LOAD:I = 0x1

.field private static final CARRIER_CONFIG_STATE_UNKNOW:I = 0x0

.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

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

.field private static final EVENT_GET_CURRENT_CALLS_AND_HANGUP:I = 0x18

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

.field private static final EVENT_SET_VONR_SWITCH_DONE:I = 0x451

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0xf

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x3f2

.field private static final EVENT_SRV_STATUS_UPDATE:I = 0x4

.field private static final EVENT_SUPP_SRV_UPDATE:I = 0x8

.field private static final EVENT_TTY_STATE_CHANGED:I = 0xa

.field protected static final EVENT_UNSOL_IMS_REG_MODE:I = 0x44e

.field private static final EVENT_UNSOL_LTE_PDCP_INFO:I = 0x3f4

.field private static final EVENT_UNSOL_LTE_RRC_INFO:I = 0x3f5

.field private static final EVENT_UNSOL_SIM_NVCFG_FINISHED:I = 0x17

.field private static final EVENT_UNSOL_SPEECH_INFO:I = 0x3f3

.field private static final EVENT_UNSOL_VOWIF_REG_ERR_REPORT:I = 0x44f

.field private static final EVENT_VOWIFI_REG_ERR_REPORT:I = 0x450

.field private static final EVENT_VOWIFI_SOS_PENDING_TIMEOUT:I = 0x3fc

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static final FLAG_IS_VOLTE:I = 0x1

.field private static final IMS_ERRDOMAIN:Ljava/lang/String; = "errDomain"

.field private static final IMS_ERRSTAGE:Ljava/lang/String; = "errStage"

.field private static final IMS_FAILCAUSE:Ljava/lang/String; = "failcause"

.field private static final IMS_FAILSTRING:Ljava/lang/String; = "failstring"

.field private static final IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

.field private static final IMS_REG_FAIL_DELAY_TIMER_LENGTH:I = 0x11170

.field private static final IMS_RIL_RADIO_TECH:Ljava/lang/String; = "imsRilTech"

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

.field private static final INVALID_NEGATIVE_ONE:I = -0x1

.field private static final INVALID_VALUE_KEY:I = -0x1

.field public static final IS_AMR_WB_SHOW_HD_VOLTE:Z

.field private static final IS_HARMONY_WATCH:Z

.field private static final IS_SPEECH_CODEC_ADJUST:Z

.field private static final IS_SUPPORT_CMCC_ENCRYPT:Z

.field private static final IS_VOWIFI:Ljava/lang/String; = "vowifi_state"

.field private static final IS_VOWIFI_PROP_ON:Z

.field private static final KEY_SUPPORT_HOLD_TONE_BOOL:Ljava/lang/String; = "support_hold_tone_bool"

.field private static final LAST_CALL_TYPE_CS:I = 0x0

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LAST_CALL_TYPE_VOLTE:I = 0x1

.field private static final LAST_CALL_TYPE_VOWIFI:I = 0x2

.field private static final LENGTH_FOUR:I = 0x4

.field private static final LENGTH_TWO:I = 0x2

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

.field private static final RESULT_INVALID:I = -0x1

.field private static final RESULT_SUCCESS:I = 0x0

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

.field private static final THRESHOLD_OF_CLOSE:I = 0x64

.field public static final VOWIFI_REG_ERROR_REPORT_SWITCH_DEFAULT:I = 0x0

.field private static final VOWIFI_SOS_PENDING_TIMEOUT:I = 0x7530

.field private static final VT_FLOW_INFO_REPORT:I = 0x9c41

.field private static sIsFirstReg:Z

.field private static sIsVowifiForbidden:Z


# instance fields
.field private mAccessTechMode:I

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field protected mCi:Lcom/huawei/ims/ImsRIL;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBatteryStatus:I

.field private mDmSyncRetryCount:I

.field protected mHandler:Landroid/os/Handler;

.field private mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private mImsRilTech:I

.field private mImsStateBindRat:I

.field private mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCarrierConfigChange:Z

.field private mIsCurrentHaveCall:Z

.field private mIsEmergencyUnderWifi:Z

.field private mIsImsStateRegBeforeCarrierConfig:Z

.field private mIsMainSlotChange:Z

.field private mIsNrModeSa:Z

.field private mIsRemoveVowifiIconFlag:Z

.field private mIsReportLteInfo:Z

.field private mIsResetVtCapability:Z

.field private mLastCallType:I

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

.field private mServiceState:[Lcom/huawei/ims/ImsServiceState;

.field protected mSlotId:I

.field private mSpeechInfoCodec:[Ljava/lang/String;

.field private mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

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
    .registers 4

    .line 113
    nop

    .line 114
    const/4 v0, 0x0

    const-string v1, "ro.config.amr_wb_show_hd_volte"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    .line 337
    nop

    .line 338
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_SPEECH_CODEC_ADJUST:Z

    .line 349
    const-string v1, "card_volte_flag_0"

    const-string v2, "card_volte_flag_1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 428
    nop

    .line 429
    const-string v1, "ro.config.cmcc.volteencrypt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_SUPPORT_CMCC_ENCRYPT:Z

    .line 451
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    .line 453
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 455
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/HwImsServiceImpl;->DMUSER_DEFAULT_VALUE:Ljava/lang/String;

    .line 510
    nop

    .line 511
    const-string v1, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "watch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->IS_HARMONY_WATCH:Z

    .line 513
    const/4 v1, 0x1

    sput-boolean v1, Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z

    .line 515
    sput-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->sIsVowifiForbidden:Z

    .line 3038
    sget-object v2, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3039
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3038
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3040
    sget-object v0, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3041
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3040
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    .line 525
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    .line 530
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 542
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 544
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z

    .line 546
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I

    .line 550
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 552
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 560
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 562
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 564
    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    .line 566
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    .line 570
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z

    .line 572
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    .line 574
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    .line 576
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 578
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsResetVtCapability:Z

    .line 580
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z

    .line 582
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    .line 586
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z

    .line 588
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z

    .line 590
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z

    .line 592
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    .line 594
    iput v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    .line 596
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLteInfo:Z

    .line 598
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    .line 600
    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    .line 602
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$1;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 664
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    .line 665
    const-string v0, "HwImsServiceImpl Constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 666
    iput-object p2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 667
    new-instance v0, Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/huawei/ims/ImsRIL;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 668
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 669
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 670
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 671
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const v4, 0x9c41

    invoke-virtual {v0, v2, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 673
    :cond_8d
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->getInstance()Lcom/huawei/ims/ImsConfigImpl;

    move-result-object v0

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-virtual {v0, p0, v2}, Lcom/huawei/ims/ImsConfigImpl;->getConfigInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 676
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->getInstance()Lcom/huawei/ims/ImsUtImpl;

    move-result-object v0

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-virtual {v0, p0, v2}, Lcom/huawei/ims/ImsUtImpl;->getUtInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    .line 677
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerBootCompleted()V

    .line 678
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    new-instance v0, Lcom/huawei/ims/HwImsEcbmImpl;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, v2}, Lcom/huawei/ims/HwImsEcbmImpl;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

    .line 681
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 682
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 685
    new-instance v0, Lcom/huawei/ims/MtStatusManager;

    invoke-direct {v0, p0}, Lcom/huawei/ims/MtStatusManager;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    .line 686
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsCsRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 688
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_SPEECH_CODEC_ADJUST:Z

    if-eqz v0, :cond_10a

    .line 689
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    :cond_10a
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLtePdcpInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f5

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForUnsolLteRrcInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44c

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 698
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_14c

    .line 699
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44e

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    :cond_14c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44f

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForVowifiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 702
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->initServiceState()V

    .line 703
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 704
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    .line 705
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18a

    .line 706
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x44d

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolNvCfgFinished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 709
    :cond_18a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->onUpdateIccAvailability()V

    .line 711
    :try_start_18d
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 712
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_198
    .catch Ljava/lang/RuntimeException; {:try_start_18d .. :try_end_198} :catch_199

    .line 715
    .end local v0    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    goto :goto_19f

    .line 713
    :catch_199
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "UiccController getInstance RuntimeException"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 716
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_19f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 717
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v2, "huawei.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    if-eqz p2, :cond_1bf

    .line 722
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    :cond_1bf
    const-string v2, "ro.config.hw_support_omadm"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 725
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 726
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    if-eqz p2, :cond_1e2

    .line 728
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST"

    invoke-virtual {p2, v3, v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 731
    :cond_1e2
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f8

    invoke-virtual {v3, v4, v5, v1}, Lcom/huawei/ims/ImsRIL;->registerForImsDmcn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1eb
    if-eqz p2, :cond_1f0

    .line 734
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsServiceImpl;->initVolteEncrypt(Landroid/content/Context;)V

    .line 736
    :cond_1f0
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isSaModeSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z

    .line 737
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentCallsAndHangup()V

    .line 738
    const-string v1, "HwImsServiceImpl init done"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/hisi/mapcon/IMapconService;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/huawei/ims/HwImsServiceImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 94
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/huawei/ims/HwImsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/huawei/ims/HwImsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V

    return-void
.end method

.method static synthetic access$2300(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->imsFeatureCapabilityChangeCallBack(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentCallFromModem()V

    return-void
.end method

.method static synthetic access$2500(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->initServiceState()V

    return-void
.end method

.method static synthetic access$2600()Z
    .registers 1

    .line 94
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_HARMONY_WATCH:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isEuiccProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 94
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 94
    sput-boolean p0, Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/huawei/ims/HwImsServiceImpl;[I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # [I

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallResult([I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/huawei/ims/HwImsServiceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerReceiverForBattery()V

    return-void
.end method

.method static synthetic access$3400(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->onUpdateIccAvailability()V

    return-void
.end method

.method static synthetic access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsStateBindRat()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->queryCameraStatus()V

    return-void
.end method

.method static synthetic access$3800(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleSetVoNrSwitchDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->hanldeGetCurrentCallsAndHangup(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->notifyCarrierConfigChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsRegErrReport;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Lcom/huawei/ims/ImsRegErrReport;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleIllegalmeFailCause(Lcom/huawei/ims/ImsRegErrReport;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$4102(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return p1
.end method

.method static synthetic access$4108(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I

    return v0
.end method

.method static synthetic access$4202(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    return p1
.end method

.method static synthetic access$4300(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    return v0
.end method

.method static synthetic access$4400(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->setSpeechCodec(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->setImsRegisterState(I)V

    return-void
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 94
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVolteSwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->optimizeImsRegisterState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    return-void
.end method

.method static synthetic access$5000()[Ljava/lang/String;
    .registers 1

    .line 94
    sget-object v0, Lcom/huawei/ims/HwImsServiceImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/huawei/ims/HwImsServiceImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I

    return v0
.end method

.method static synthetic access$5102(Lcom/huawei/ims/HwImsServiceImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I

    return p1
.end method

.method static synthetic access$5200(Lcom/huawei/ims/HwImsServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->moveSharePreferenceToDe()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsServiceImpl;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->processDmBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->sendBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method private convertCapability(II)I
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 3070
    const/4 v0, -0x1

    .line 3071
    .local v0, "capConverted":I
    const-string v1, "convertCapability capability not expected. capatility = "

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p2, :cond_27

    .line 3072
    if-eq p1, v4, :cond_25

    if-eq p1, v3, :cond_23

    if-eq p1, v2, :cond_21

    .line 3083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3084
    goto :goto_64

    .line 3080
    :cond_21
    const/4 v0, 0x4

    .line 3081
    goto :goto_64

    .line 3077
    :cond_23
    const/4 v0, 0x1

    .line 3078
    goto :goto_64

    .line 3074
    :cond_25
    const/4 v0, 0x0

    .line 3075
    goto :goto_64

    .line 3086
    :cond_27
    if-ne p2, v4, :cond_48

    .line 3087
    if-eq p1, v4, :cond_46

    if-eq p1, v3, :cond_44

    if-eq p1, v2, :cond_42

    .line 3098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3099
    goto :goto_64

    .line 3095
    :cond_42
    const/4 v0, 0x5

    .line 3096
    goto :goto_64

    .line 3092
    :cond_44
    const/4 v0, 0x3

    .line 3093
    goto :goto_64

    .line 3089
    :cond_46
    const/4 v0, 0x2

    .line 3090
    goto :goto_64

    .line 3102
    :cond_48
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

    .line 3104
    :goto_64
    return v0
.end method

.method private executeRequestLteInfo()V
    .registers 4

    .line 3000
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getLpdcpThreshold()I

    move-result v0

    .line 3001
    .local v0, "threshold":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->requestLteInfo(IILandroid/os/Message;)V

    .line 3002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRequestLteInfo, threshold is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3003
    return-void
.end method

.method private getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;
    .registers 3
    .param p1, "slotId"    # I

    .line 3132
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3133
    const-string v0, "getCommandsInterface the slotId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3134
    const/4 v0, 0x0

    return-object v0

    .line 3136
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private getCurrentCallFromModem()V
    .registers 4

    .line 3013
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3014
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->haveCall()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3015
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 3018
    :cond_1c
    return-void
.end method

.method private getCurrentCallsAndHangup()V
    .registers 4

    .line 3183
    const-string v0, "getCurrentCallsAndHangup"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3184
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_16

    .line 3185
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 3187
    :cond_16
    return-void
.end method

.method private getCurrentPhoneTypeForSlot(I)I
    .registers 5
    .param p1, "slotId"    # I

    .line 2619
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    .line 2620
    .local v0, "phoneType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldPhoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2621
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2622
    const/4 v0, 0x2

    .line 2624
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newPhoneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2625
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->setCardTypeToGlobalDb(II)V

    .line 2626
    return v0
.end method

.method private getEnhancedVideoFeature()I
    .registers 7

    .line 2914
    const/4 v0, -0x1

    .line 2915
    .local v0, "valueKeyConfig":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 2916
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 2917
    .local v2, "subId":I
    if-eqz v1, :cond_30

    .line 2918
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2919
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_30

    .line 2920
    const-string v4, "carrierconfig_enhanced_video_feature"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2921
    .local v4, "mValueKeyConfig":Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 2923
    const/4 v5, 0x2

    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2c} :catch_2e

    move v0, v5

    .line 2926
    goto :goto_30

    .line 2924
    :catch_2e
    move-exception v5

    .line 2925
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v0

    .line 2930
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    .end local v4    # "mValueKeyConfig":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_30
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnhancedVideoFeature valueKeyConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2931
    return v0
.end method

.method private getImsStateBindRat()I
    .registers 2

    .line 2383
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    return v0
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .registers 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1034
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1036
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    goto :goto_21

    .line 1037
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_14
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :goto_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v3, 0x0

    .line 1051
    .local v3, "isHasActiveVideoCall":Z
    if-eqz v0, :cond_c0

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1054
    .local v4, "callListSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    if-ge v5, v4, :cond_c0

    .line 1056
    :try_start_35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/ims/DriverImsCall;
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_3b} :catch_3c

    .line 1060
    .local v6, "dc":Lcom/huawei/ims/DriverImsCall;
    goto :goto_44

    .line 1057
    .end local v6    # "dc":Lcom/huawei/ims/DriverImsCall;
    :catch_3c
    move-exception v6

    .line 1058
    .local v6, "e":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    .line 1059
    .local v7, "dc":Lcom/huawei/ims/DriverImsCall;
    const-string v8, "handleCalls cast exception, clear dc"

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    move-object v6, v7

    .line 1061
    .end local v7    # "dc":Lcom/huawei/ims/DriverImsCall;
    .local v6, "dc":Lcom/huawei/ims/DriverImsCall;
    :goto_44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCalls: dc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->isActiveVtCall(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1063
    const/4 v3, 0x1

    .line 1065
    :cond_5f
    if-eqz v6, :cond_a1

    iget-object v7, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v7, :cond_a1

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-eqz v7, :cond_a1

    .line 1066
    iget-object v7, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v7, v7, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_9b

    .line 1067
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update dc imsCallProfile extras use mSpeechInfoCodec[0] : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1068
    new-instance v7, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v8, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v7, v8}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    .line 1069
    .local v7, "newCdetails":Lcom/huawei/ims/ImsCallProfiles;
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v8, v7, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 1070
    iget-object v8, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v8, v7}, Lcom/huawei/ims/ImsCallProfiles;->update(Lcom/huawei/ims/ImsCallProfiles;)Z

    .line 1071
    .end local v7    # "newCdetails":Lcom/huawei/ims/ImsCallProfiles;
    goto :goto_a1

    .line 1072
    :cond_9b
    iget-object v7, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;

    iput-object v8, v7, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 1075
    :cond_a1
    :goto_a1
    if-eqz v6, :cond_b4

    iget-object v7, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v7, :cond_b4

    iget-object v7, v6, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 1076
    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b4

    .line 1077
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1078
    :cond_b4
    if-eqz v6, :cond_bc

    .line 1079
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->updateVideoCapability(Lcom/huawei/ims/DriverImsCall;)V

    .line 1054
    :cond_bc
    :goto_bc
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_33

    .line 1084
    .end local v4    # "callListSize":I
    .end local v5    # "i":I
    .end local v6    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_c0
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->processDriverImsCallsList(Ljava/util/ArrayList;)V

    .line 1085
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->openOrCloseLteInfo(Z)V

    .line 1086
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1087
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->handleMmTelCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->handleCsVtCalls(Ljava/util/ArrayList;)V

    .line 1089
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1090
    return-void

    .line 1044
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v1    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v2    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .end local v3    # "isHasActiveVideoCall":Z
    :cond_d3
    const-string v0, "else???"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method private handleCsVtCalls(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1178
    .local p1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1179
    const-string v0, "Call for non-registered service class CSVT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1181
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isRemoveVowifiIconUnderCsCall()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1182
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1183
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->removeVowifiIconWhenCsCall(Ljava/util/ArrayList;)V

    goto :goto_22

    .line 1185
    :cond_1f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->recoveryVowifiIconWhenCsCall()V

    .line 1191
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_29

    .line 1192
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->processPendingSessionList(Ljava/util/ArrayList;)V

    .line 1194
    :cond_29
    return-void
.end method

.method private handleIllegalmeFailCause(Lcom/huawei/ims/ImsRegErrReport;)V
    .registers 7
    .param p1, "result"    # Lcom/huawei/ims/ImsRegErrReport;

    .line 3149
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRegErrReport;->getErrDomain()I

    move-result v0

    const/16 v1, 0x64

    const-string v2, "HwImsServiceImpl"

    if-ne v0, v1, :cond_7d

    .line 3150
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRegErrReport;->getErrStage()I

    move-result v0

    if-ne v0, v1, :cond_7d

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_15

    goto :goto_7d

    .line 3156
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRegErrReport;->getFailCause()I

    move-result v0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_44

    .line 3157
    sput-boolean v4, Lcom/huawei/ims/HwImsServiceImpl;->sIsVowifiForbidden:Z

    .line 3158
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/ims/HwImsManager;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3159
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v0, v3}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    .line 3161
    :cond_2d
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    invoke-static {}, Landroid/telephony/HwTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 3162
    invoke-static {v0, v4}, Lcom/android/ims/HwImsManager;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3163
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v0, v4}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    goto :goto_75

    .line 3165
    :cond_44
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRegErrReport;->getFailCause()I

    move-result v0

    if-nez v0, :cond_70

    .line 3166
    sput-boolean v3, Lcom/huawei/ims/HwImsServiceImpl;->sIsVowifiForbidden:Z

    .line 3167
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/ims/HwImsManager;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3168
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v0, v3}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    .line 3170
    :cond_59
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    invoke-static {}, Landroid/telephony/HwTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 3171
    invoke-static {v0, v4}, Lcom/android/ims/HwImsManager;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3172
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v0, v4}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    goto :goto_75

    .line 3175
    :cond_70
    const-string v0, "handleUnsolVoWiFiRegErrReport unknow failcause"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_75} :catch_76

    .line 3179
    :cond_75
    :goto_75
    goto :goto_7c

    .line 3177
    :catch_76
    move-exception v0

    .line 3178
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "handleUnsolVoWiFiRegErrReport exception"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_7c
    return-void

    .line 3151
    :cond_7d
    :goto_7d
    const-string v0, "handleUnsolVoWiFiRegErrReport not EE custom or MapconService is null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return-void
.end method

.method private handleMmTelCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
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

    .line 1163
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-nez v0, :cond_10

    .line 1164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 1165
    const-string v0, "Call for non-registered service class MMTEL"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_21

    .line 1169
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1170
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_21

    .line 1172
    :cond_1c
    const-string v0, "CS Call, ignore handle"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1175
    :cond_21
    :goto_21
    return-void
.end method

.method private handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 4
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_1c

    .line 1219
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto :goto_21

    .line 1221
    :cond_1c
    const-string v0, "ImsServiceCallTracker not found."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1223
    :goto_21
    return-void
.end method

.method private handleModifyCallResult([I)V
    .registers 3
    .param p1, "modifyResult"    # [I

    .line 1226
    const-string v0, "handleModifyCallResult"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_d

    .line 1229
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->handleModifyCallResult([I)V

    goto :goto_12

    .line 1231
    :cond_d
    const-string v0, "ImsServiceCallTracker not found."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1233
    :goto_12
    return-void
.end method

.method private handleSetVoNrSwitchDone(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3141
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, -0x1

    .line 3142
    .local v1, "result":I
    if-eqz v0, :cond_c

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    .line 3143
    const/4 v1, 0x0

    .line 3145
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetVoNrSwitch result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method private hanldeGetCurrentCallsAndHangup(Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3191
    const-string v0, "hanldeGetCurrentCallsAndHangup"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3192
    if-eqz p1, :cond_6a

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6a

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    .line 3193
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 3198
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1e

    goto :goto_64

    .line 3203
    :cond_1e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 3205
    :try_start_25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/DriverImsCall;
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2b} :catch_2c

    .line 3209
    .local v2, "dc":Lcom/huawei/ims/DriverImsCall;
    goto :goto_34

    .line 3206
    .end local v2    # "dc":Lcom/huawei/ims/DriverImsCall;
    :catch_2c
    move-exception v2

    .line 3207
    .local v2, "e":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    .line 3208
    .local v3, "dc":Lcom/huawei/ims/DriverImsCall;
    const-string v4, "handleCalls cast exception, clear dc"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    move-object v2, v3

    .line 3210
    .end local v3    # "dc":Lcom/huawei/ims/DriverImsCall;
    .local v2, "dc":Lcom/huawei/ims/DriverImsCall;
    :goto_34
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v3, :cond_60

    if-eqz v2, :cond_60

    iget-object v3, v2, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v3, :cond_60

    iget-object v3, v2, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 3211
    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_60

    .line 3212
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v4, v2, Lcom/huawei/ims/DriverImsCall;->index:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 3213
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->isActiveVtCall(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 3214
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {p0, v3, v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->requestLteInfo(IILandroid/os/Message;)V

    .line 3215
    const-string v3, "hanldeGetCurrentCallsAndHangup: release requestLteInfo"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3203
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 3219
    .end local v1    # "i":I
    .end local v2    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_63
    return-void

    .line 3199
    :cond_64
    :goto_64
    const-string v1, "current callList is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3200
    return-void

    .line 3195
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_6a
    const-string v0, "there is no current call"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3196
    return-void
.end method

.method private imsFeatureCapabilityChangeCallBack(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    .line 997
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsFeatureCapabilityChangeCallBack. mTelCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-interface {p1, v0}, Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 1001
    goto :goto_22

    .line 999
    :catchall_1c
    move-exception v0

    .line 1000
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "imsFeatureCapabilityChangeCallBack exceptionN"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1002
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_22
    return-void
.end method

.method private initServiceState()V
    .registers 6

    .line 858
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/huawei/ims/ImsServiceState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    .line 859
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_29

    .line 860
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    new-instance v3, Lcom/huawei/ims/ImsServiceState;

    invoke-direct {v3}, Lcom/huawei/ims/ImsServiceState;-><init>()V

    aput-object v3, v2, v1

    .line 865
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;

    aget-object v3, v2, v1

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v4, v3, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 866
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    const/4 v3, 0x0

    new-instance v4, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v4}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    aput-object v4, v2, v3

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 868
    .end local v1    # "i":I
    :cond_29
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_44

    .line 869
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->bindMapconService()V

    .line 870
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 871
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.hisi.permission.VOWIFI_SPECIAL"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 874
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_44
    return-void
.end method

.method private initVolteEncrypt(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 849
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_SUPPORT_CMCC_ENCRYPT:Z

    if-eqz v0, :cond_b

    .line 850
    invoke-static {p1, p0}, Lcom/huawei/ims/VolteEncryptCallCmdService;->init(Landroid/content/Context;Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 851
    invoke-static {p1, p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->init(Landroid/content/Context;Lcom/huawei/ims/HwImsServiceImpl;)V

    goto :goto_10

    .line 853
    :cond_b
    const-string v0, "not support cmcc encrypt call."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 855
    :goto_10
    return-void
.end method

.method private isActiveVtCall(Lcom/huawei/ims/DriverImsCall;)Z
    .registers 6
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 2935
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-nez v1, :cond_8

    goto :goto_33

    .line 2938
    :cond_8
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_29

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 2939
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eq v1, v3, :cond_29

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 2940
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    :cond_29
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v2, :cond_32

    move v0, v3

    .line 2938
    :cond_32
    return v0

    .line 2936
    :cond_33
    :goto_33
    return v0
.end method

.method private isCdmaCardAndVoLte()Z
    .registers 8

    .line 2641
    const/4 v0, 0x0

    .line 2642
    .local v0, "isCdmaCard":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2643
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    .line 2644
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 2645
    .local v4, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v3

    :goto_14
    move v0, v5

    .line 2647
    .end local v4    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_15
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isCdmaVoLteAndIsim()Z

    move-result v4

    .line 2648
    .local v4, "isCdmaVoLte":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdmaCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCdmaVoLte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2649
    if-eqz v0, :cond_3a

    if-eqz v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v3

    :goto_3b
    return v2
.end method

.method private isCurrentHaveCall(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
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

    .line 1121
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_1f

    .line 1125
    :cond_d
    const-string v0, "isCurrentHaveCall there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z

    .line 1127
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsResetVtCapability:Z

    if-eqz v1, :cond_27

    .line 1128
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V

    .line 1129
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsResetVtCapability:Z

    goto :goto_27

    .line 1122
    :cond_1f
    :goto_1f
    const-string v0, "isCurrentHaveCall there new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z

    .line 1132
    :cond_27
    :goto_27
    return-void
.end method

.method private isEuiccProvisioned()Z
    .registers 4

    .line 2387
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2388
    return v1

    .line 2391
    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "euicc_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1012
    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1013
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1012
    :goto_14
    return v0
.end method

.method private isMtVideoCall(Lcom/huawei/ims/DriverImsCall;)Z
    .registers 6
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 2962
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-nez v1, :cond_8

    goto :goto_32

    .line 2965
    :cond_8
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_15

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_15

    .line 2966
    return v0

    .line 2968
    :cond_15
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_30

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 2969
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    if-eq v1, v3, :cond_30

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 2970
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    :cond_30
    move v0, v3

    .line 2968
    :cond_31
    return v0

    .line 2963
    :cond_32
    :goto_32
    return v0
.end method

.method private isSupportViLte()Z
    .registers 7

    .line 2873
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v0, v1}, Lcom/android/ims/HwImsManager;->isVtEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    .line 2874
    .local v0, "isVtEnabledByPlatform":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v1, v2}, Lcom/android/ims/HwImsManager;->isVtEnabledByUser(Landroid/content/Context;I)Z

    move-result v1

    .line 2875
    .local v1, "isVtEnabledByUser":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v2, v3}, Lcom/android/ims/HwImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 2876
    .local v2, "isNonTtyOrTtyOnVolteEnabled":Z
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 2877
    .local v3, "isSupportVt":Z
    :goto_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportVt: isVtEnabledByPlatform = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVtEnabledByUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isSupportVt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2880
    return v3
.end method

.method private isVoWifiRegistered()Z
    .registers 3

    .line 2780
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 2781
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 2780
    :goto_f
    return v1
.end method

.method private isVolteSwitchOn()Z
    .registers 5

    .line 1017
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1018
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1020
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_b

    .line 1021
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsSwitch()Z

    move-result v1

    .line 1023
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1024
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsServiceImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsServiceImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void
.end method

.method private moveSharePreferenceToDe()V
    .registers 4

    .line 2816
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2817
    .local v0, "sharedPreferenceName":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/ims/SharePreferenceUtil;->isVersionHigherThanM()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2818
    const-string v1, "moveSharePreferenceToDe"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2819
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 2820
    .local v1, "deviceContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/SharePreferenceUtil;->moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2821
    const-string v2, "Failed to move shared preference"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2824
    .end local v1    # "deviceContext":Landroid/content/Context;
    :cond_24
    return-void
.end method

.method private notifyCarrierConfigChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 784
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 785
    const-string v0, "phone"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 786
    .local v0, "intentSlotId":I
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    if-eq v0, v2, :cond_15

    .line 787
    const-string v1, "ACTION_CARRIER_CONFIG_CHANGED is not for this slot, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 788
    return-void

    .line 791
    .end local v0    # "intentSlotId":I
    :cond_15
    nop

    .line 792
    const-string v0, "carrierConfigChangeState"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    move v1, v2

    :cond_20
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z

    .line 793
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->supplementImsStateBroadcastIfNeeded()V

    .line 794
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_FEATURE_VOLTE_DYN:Z

    if-nez v0, :cond_2f

    .line 795
    const-string v0, "volte feature not support dyn,do nothing when receive CARRIER_CONFIG_CHANGED broadcast!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 796
    return-void

    .line 798
    :cond_2f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_3b

    .line 799
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDMUSER()V

    goto :goto_48

    .line 800
    :cond_3b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z

    if-eqz v0, :cond_43

    .line 801
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVideoCapabilityToCallTracker()V

    goto :goto_48

    .line 803
    :cond_43
    const-string v0, "carrier config is not loaded or the card is not verizon!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 805
    :goto_48
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    .line 806
    const-string v0, "carrier config changed "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V

    .line 808
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->sendSimCardType()V

    .line 809
    return-void
.end method

.method private notifyImsState(Ljava/lang/String;)V
    .registers 8
    .param p1, "state"    # Ljava/lang/String;

    .line 812
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v0

    .line 813
    .local v0, "isVowifi":Z
    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    if-eqz v1, :cond_10

    .line 814
    const-string v1, "IMS state,there is CS call now to keep remove vowifi icon."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 815
    return-void

    .line 817
    :cond_10
    const-string v1, "REGISTERED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_28

    .line 818
    iput v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 819
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 820
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    goto :goto_37

    .line 822
    :cond_28
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    .line 823
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 824
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 825
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I

    .line 827
    :goto_37
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsStateBindRat:I

    if-ne v1, v4, :cond_3c

    move v3, v4

    :cond_3c
    move v1, v3

    .line 828
    .local v1, "isImsRegistered":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify IMS state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isVowifi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isImsRegistered is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", imsRilTech is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 830
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 831
    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVtGlobals;->reInitVtSdk(Z)V

    .line 833
    :cond_74
    new-instance v2, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.IMS_SERVICE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, "imsStateIntent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v3, "vowifi_state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 836
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z

    if-eqz v3, :cond_90

    .line 837
    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I

    const-string v4, "imsRilTech"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    :cond_90
    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v3

    .line 840
    .local v3, "slotId":I
    const-string v4, "subId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v4, "slot"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 843
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v4, :cond_b2

    .line 844
    invoke-virtual {v4}, Lcom/huawei/ims/ImsServiceCallTracker;->getFeatureCapabilityListener()Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl;->imsFeatureCapabilityChangeCallBack(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    .line 846
    :cond_b2
    return-void
.end method

.method private onUpdateIccAvailability()V
    .registers 9

    .line 2424
    const-string v0, "enter onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2425
    const/4 v0, 0x0

    .line 2429
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_ac

    move-object v0, v1

    .line 2433
    nop

    .line 2435
    if-nez v0, :cond_14

    .line 2436
    const-string v1, "uiccController is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2437
    return-void

    .line 2441
    :cond_14
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    .line 2442
    .local v1, "phoneId":I
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2443
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 2446
    :cond_2c
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2447
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    .line 2448
    .local v3, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eq v2, v3, :cond_5d

    .line 2449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Old Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2451
    iput-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 2452
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v4, :cond_5d

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v4, :cond_5d

    .line 2453
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimCardAbsent()V

    .line 2457
    :cond_5d
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 2458
    .local v4, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2460
    .local v5, "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v5, v4, :cond_ab

    .line 2461
    const-string v6, "oldUiccApplication != newUiccApplication"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2462
    if-eqz v5, :cond_83

    .line 2463
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 2464
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->unregisterForSimRecordEvents()V

    .line 2467
    :cond_7d
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2470
    :cond_83
    if-eqz v4, :cond_90

    .line 2471
    const-string v6, "main slot changed, handle clear."

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2472
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z

    .line 2473
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimCardAbsent()V

    .line 2475
    :cond_90
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2477
    if-eqz v4, :cond_a8

    .line 2478
    const-string v6, "New Uicc application found"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2479
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2480
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->registerForSimRecordEvents()V

    .line 2482
    :cond_a8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V

    .line 2484
    :cond_ab
    return-void

    .line 2430
    .end local v1    # "phoneId":I
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v3    # "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v4    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "oldUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catch_ac
    move-exception v1

    .line 2431
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "UiccController getInstance Exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method private openOrCloseLteInfo(Z)V
    .registers 5
    .param p1, "isHasActiveVideoCall"    # Z

    .line 2979
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLteInfo:Z

    if-nez v0, :cond_a

    .line 2980
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->queryCameraStatus()V

    goto :goto_25

    .line 2981
    :cond_a
    if-nez p1, :cond_25

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLteInfo:Z

    if-eqz v0, :cond_25

    .line 2982
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->requestLteInfo(IILandroid/os/Message;)V

    .line 2983
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLteInfo:Z

    .line 2984
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2985
    const-string v0, "request close report LTE Info"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2987
    :cond_25
    :goto_25
    return-void
.end method

.method private optimizeImsRegisterState()Z
    .registers 4

    .line 2767
    const/4 v0, 0x1

    .line 2768
    .local v0, "isOptimize":Z
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 2769
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v1

    .line 2770
    .local v1, "voWiFiRegistered":Z
    sget-boolean v2, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    .line 2771
    const/4 v0, 0x0

    .line 2773
    .end local v1    # "voWiFiRegistered":Z
    :cond_11
    goto :goto_13

    .line 2774
    :cond_12
    const/4 v0, 0x0

    .line 2776
    :goto_13
    return v0
.end method

.method private processDmBroadcast(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDmBroadcast: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2829
    const/16 v0, 0x3f6

    const/16 v1, 0x3f7

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_9c

    .line 2867
    const-string v0, "processDmBroadcast: invalid type! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 2863
    :pswitch_23
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    .line 2864
    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2863
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmUser(Landroid/os/Message;)V

    .line 2865
    goto :goto_9a

    .line 2859
    :pswitch_31
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    .line 2860
    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2859
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmSms(Landroid/os/Message;)V

    .line 2861
    goto :goto_9a

    .line 2855
    :pswitch_3f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    .line 2856
    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2855
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmDyn(Landroid/os/Message;)V

    .line 2857
    goto :goto_9a

    .line 2851
    :pswitch_4c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    .line 2852
    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2851
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmTimer(Landroid/os/Message;)V

    .line 2853
    goto :goto_9a

    .line 2847
    :pswitch_59
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    .line 2848
    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2847
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmPcscf(Landroid/os/Message;)V

    .line 2849
    goto :goto_9a

    .line 2843
    :pswitch_66
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    .line 2844
    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2843
    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDmSms(Ljava/lang/String;Landroid/os/Message;)V

    .line 2845
    goto :goto_9a

    .line 2839
    :pswitch_73
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    .line 2840
    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2839
    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDmTimer(Ljava/lang/String;Landroid/os/Message;)V

    .line 2841
    goto :goto_9a

    .line 2835
    :pswitch_80
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    .line 2836
    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2835
    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDmDyn(Ljava/lang/String;Landroid/os/Message;)V

    .line 2837
    goto :goto_9a

    .line 2831
    :pswitch_8d
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    .line 2832
    invoke-virtual {v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2831
    invoke-virtual {v1, p2, v0}, Lcom/huawei/ims/ImsRIL;->setDmPcscf(Ljava/lang/String;Landroid/os/Message;)V

    .line 2833
    nop

    .line 2870
    :goto_9a
    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_80
        :pswitch_73
        :pswitch_66
        :pswitch_59
        :pswitch_4c
        :pswitch_3f
        :pswitch_31
        :pswitch_23
    .end packed-switch
.end method

.method private processDriverImsCallsList(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1093
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 1096
    :cond_9
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$2;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1105
    return-void

    .line 1094
    :cond_12
    :goto_12
    return-void
.end method

.method private queryCameraStatus()V
    .registers 6

    .line 2990
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    .line 2991
    .local v0, "cameraManager":Lcom/huawei/ims/vt/CameraManager;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->isParamReady()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2992
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->executeRequestLteInfo()V

    .line 2993
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsReportLteInfo:Z

    goto :goto_1c

    .line 2995
    :cond_13
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2997
    :goto_1c
    return-void
.end method

.method private recoveryVowifiIconWhenCsCall()V
    .registers 4

    .line 1154
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 1155
    .local v0, "isEndCallOnVowifi":Z
    :goto_e
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    .line 1156
    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    instance-of v1, v1, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    if-eqz v1, :cond_26

    .line 1157
    const-string v1, "There is no CS call now then will send Broadcast to recovery vowifi icon."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    const-string v2, "REGISTERED"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->access$1100(Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;Ljava/lang/String;)V

    .line 1160
    :cond_26
    return-void
.end method

.method private registerBootCompleted()V
    .registers 4

    .line 2807
    const-string v0, "registerBootCompleted"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2808
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2809
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2810
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 2811
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2813
    :cond_18
    return-void
.end method

.method private registerForSimRecordEvents()V
    .registers 5

    .line 2548
    const-string v0, "enter registerForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2549
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2551
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_15

    .line 2552
    const-string v1, "registerForSimRecordEvents is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2553
    return-void

    .line 2556
    :cond_15
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2557
    return-void
.end method

.method private registerReceiverForBattery()V
    .registers 4

    .line 742
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "registerReceiverForBattery"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 745
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method private removeVowifiIconWhenCsCall(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1135
    .local p1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    if-eqz v0, :cond_5

    .line 1136
    return-void

    .line 1138
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1139
    .local v0, "dcListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_3f

    .line 1140
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/DriverImsCall;

    .line 1141
    .local v2, "dc":Lcom/huawei/ims/DriverImsCall;
    iget-object v3, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_22

    iget-object v3, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_22

    .line 1142
    nop

    .line 1139
    .end local v2    # "dc":Lcom/huawei/ims/DriverImsCall;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1144
    .restart local v2    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_22
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isVoWifiRegistered()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    instance-of v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    if-eqz v3, :cond_3c

    .line 1145
    const-string v3, "This is CS call number and will send Broadcast to remove vowifi icon."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1146
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    check-cast v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    const-string v4, "UNREGISTERED"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->access$1100(Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;Ljava/lang/String;)V

    .line 1148
    :cond_3c
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z

    .line 1151
    .end local v1    # "i":I
    .end local v2    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_3f
    return-void
.end method

.method private requestLteInfo(IILandroid/os/Message;)V
    .registers 5
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3007
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_7

    .line 3008
    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLteInfo(IILandroid/os/Message;)V

    .line 3010
    :cond_7
    return-void
.end method

.method private sendBatteryStatus(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 751
    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 752
    .local v0, "level":I
    const/4 v1, 0x0

    const-string v2, "plugged"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 753
    .local v2, "plugType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real battery level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlugType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 756
    if-eqz v2, :cond_3c

    .line 757
    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_4b

    .line 758
    :cond_3c
    const/4 v3, 0x2

    if-gt v0, v3, :cond_42

    .line 759
    iput v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_4b

    .line 760
    :cond_42
    const/4 v3, 0x5

    if-gt v0, v3, :cond_49

    .line 761
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    goto :goto_4b

    .line 763
    :cond_49
    iput v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    .line 766
    :goto_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old status is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "new status is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 767
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I

    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I

    if-eq v1, v3, :cond_7e

    .line 768
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3fa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/huawei/ims/ImsRIL;->sendBatteryStatus(ILandroid/os/Message;)V

    .line 770
    :cond_7e
    return-void
.end method

.method private sendSimCardType()V
    .registers 7

    .line 2608
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2609
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v3

    :goto_11
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2610
    .local v1, "simState":I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_3c

    .line 2611
    new-instance v4, Landroid/content/Intent;

    const-string v5, "huawei.intent.action.IMS_CURRENT_PHONE_TYPE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2612
    .local v4, "phoneTypeIntent":Landroid/content/Intent;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentPhoneTypeForSlot(I)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2613
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->getCurrentPhoneTypeForSlot(I)I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2614
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2616
    .end local v4    # "phoneTypeIntent":Landroid/content/Intent;
    :cond_3c
    return-void
.end method

.method private setCardTypeToGlobalDb(II)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "cardType"    # I

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "card_type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2631
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2632
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2633
    return-void
.end method

.method private setImsRegisterState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 2370
    iput p1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    .line 2371
    return-void
.end method

.method private setLastCallType(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
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

    .line 1108
    .local p1, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    .local p2, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1109
    const-string v0, "impossible to be here, pls check"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_2e

    .line 1111
    :cond_15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_2e

    .line 1113
    :cond_1f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1114
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    goto :goto_2e

    .line 1116
    :cond_29
    const-string v0, "there is no new calling now"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 1118
    :goto_2e
    return-void
.end method

.method private setSpeechCodec(I)V
    .registers 7
    .param p1, "speechCodec"    # I

    .line 3022
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3023
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_47

    .line 3026
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wb_show_hd"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3027
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.intent.action.SPEECH_CODEC_WB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3029
    const-string v2, "speechCodecWb"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3030
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    .line 3031
    .local v2, "slotId":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v3

    .line 3032
    .local v3, "subId":I
    const-string v4, "subscription"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3033
    const-string v4, "phone"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3034
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3035
    return-void

    .line 3024
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "slotId":I
    .end local v3    # "subId":I
    :cond_47
    :goto_47
    return-void
.end method

.method private setVideoCapabilityToCallTracker()V
    .registers 3

    .line 2884
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_d

    .line 2885
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isSupportViLte()Z

    move-result v0

    .line 2886
    .local v0, "isSupportVt":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->updateVtCapability(Z)V

    .line 2888
    .end local v0    # "isSupportVt":Z
    :cond_d
    return-void
.end method

.method private setVtCapabilityToModem()V
    .registers 9

    .line 2891
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 2892
    const-string v0, "the Current have Call ,You should set the video capability when the call hangs up"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2893
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsResetVtCapability:Z

    .line 2894
    return-void

    .line 2897
    :cond_d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isSupportViLte()Z

    move-result v0

    .line 2898
    .local v0, "isSupportVt":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 2899
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2898
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0, v3}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 2900
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getEnhancedVideoFeature()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5d

    .line 2902
    nop

    .line 2903
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getEnhancedVideoFeature()I

    move-result v2

    and-int/lit8 v2, v2, 0xc

    .line 2904
    .local v2, "videoCwCapability":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    move v3, v5

    .line 2906
    .local v3, "isSupportCwCapability":Z
    :goto_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVTCapabilityToModem: videoCwCapability = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isSupportCwCapability = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2908
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v3, :cond_54

    move v5, v1

    :cond_54
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 2909
    invoke-virtual {v7, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2908
    invoke-virtual {v6, v1, v5, v4}, Lcom/huawei/ims/ImsRIL;->requestSetImsVtCapability(IILandroid/os/Message;)V

    .line 2911
    .end local v2    # "videoCwCapability":I
    .end local v3    # "isSupportCwCapability":Z
    :cond_5d
    return-void
.end method

.method private supplementImsStateBroadcastIfNeeded()V
    .registers 3

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplementImsStateBroadcastIfNeeded,mIsImsStateRegBeforeCarrierConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 775
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z

    if-eqz v0, :cond_27

    .line 777
    const-string v0, "ims has registered before receive CarrierConfig broadcast,need supplement the broadcast here"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 778
    const-string v0, "REGISTERED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z

    .line 781
    :cond_27
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .registers 3

    .line 2560
    const-string v0, "enter unregisterForSimRecordEvents"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2563
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_10

    .line 2564
    return-void

    .line 2567
    :cond_10
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2568
    return-void
.end method

.method private updateNewPhoneBase(Lcom/android/internal/telephony/Phone;)V
    .registers 10
    .param p1, "newPhoneBase"    # Lcom/android/internal/telephony/Phone;

    .line 2730
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2731
    const-string v0, "register listening message of data reg state from new phone base"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2733
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v2, :cond_38

    aget v4, v0, v3

    .line 2734
    .local v4, "transport":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ef

    invoke-virtual {v5, v4, v6, v7, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 2733
    .end local v4    # "transport":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2740
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2741
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2742
    return-void
.end method

.method private updateOldPhoneBase(Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .param p1, "oldPhoneBase"    # Lcom/android/internal/telephony/Phone;

    .line 2745
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2746
    const-string v0, "Unregister listening message of data reg state from old phone base"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2748
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_35

    aget v3, v0, v2

    .line 2749
    .local v3, "transport":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    .line 2748
    .end local v3    # "transport":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2753
    :cond_35
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 2754
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 2755
    return-void
.end method

.method private updatePhoneBaseEvent()V
    .registers 4

    .line 2714
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2715
    .local v0, "newPhoneBase":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 2717
    .local v1, "oldPhoneBase":Lcom/android/internal/telephony/Phone;
    if-eq v0, v1, :cond_1d

    .line 2718
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mPhoneBase:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2719
    if-eqz v1, :cond_18

    .line 2720
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->updateOldPhoneBase(Lcom/android/internal/telephony/Phone;)V

    .line 2723
    :cond_18
    if-eqz v0, :cond_1d

    .line 2724
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->updateNewPhoneBase(Lcom/android/internal/telephony/Phone;)V

    .line 2727
    :cond_1d
    return-void
.end method

.method private updateVideoCapability(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 2949
    const-string v0, "updateVideoCapability"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2950
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->isMtVideoCall(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2951
    return-void

    .line 2953
    :cond_c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2954
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2955
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v0, :cond_25

    .line 2956
    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->getFeatureCapabilityListener()Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->imsFeatureCapabilityChangeCallBack(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    .line 2959
    :cond_25
    return-void
.end method


# virtual methods
.method protected bindMapconService()V
    .registers 6

    .line 2788
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_1e

    .line 2789
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsServiceImpl$3;-><init>(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 2801
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2802
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2804
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V
    .registers 9
    .param p1, "cap"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .param p2, "value"    # I

    .line 3051
    if-nez p1, :cond_3

    .line 3052
    return-void

    .line 3054
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->convertCapability(II)I

    move-result v0

    .line 3055
    .local v0, "capConverted":I
    sget-object v1, Lcom/huawei/ims/HwImsServiceImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 3056
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3057
    .local v1, "radioTechConverted":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    const-string v3, "enabled"

    goto :goto_30

    :cond_2e
    const-string v3, "disabled"

    .line 3059
    .local v3, "capStr":Ljava/lang/String;
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeFeatureValue - cap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " radioTech: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3061
    sget-boolean v4, Lcom/huawei/ims/HwImsServiceImpl;->sIsVowifiForbidden:Z

    if-eqz v4, :cond_5e

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5e

    if-ne p2, v2, :cond_5e

    .line 3063
    const-string v2, "vowifi is forbidden, ignore"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 3064
    return-void

    .line 3066
    :cond_5e
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, p2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 3067
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-nez v1, :cond_b

    .line 886
    const-string v1, " No ImsServiceCallTracker - cannot create profile"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_11

    .line 888
    :cond_b
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    move-object v0, v1

    .line 890
    :goto_11
    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-nez v1, :cond_1a

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ImsServiceCallTracker - cannot create Call Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    goto :goto_1e

    .line 905
    :cond_1a
    invoke-virtual {v1, p2}, Lcom/huawei/ims/ImsServiceCallTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 907
    :goto_1e
    return-object v0
.end method

.method public createImsServiceCallTracker(Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V
    .registers 7
    .param p1, "inComingListener"    # Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;
    .param p2, "featureListener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    .line 963
    const-string v0, "enter createImsServiceCallTracker."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-nez v0, :cond_15

    .line 966
    new-instance v0, Lcom/huawei/ims/ImsServiceCallTracker;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/ImsServiceCallTracker;-><init>(Lcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 968
    :cond_15
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->setIncomingCallListener(Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;)V

    .line 969
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsServiceCallTracker;->setFeatureCapabilityListener(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    .line 970
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 971
    return-void
.end method

.method public getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;
    .registers 3
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

    .line 1203
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_b

    :cond_7
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 3

    .line 2492
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2493
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_b

    .line 2494
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    return-object v1

    .line 2496
    :cond_b
    const-string v1, "can\'t get uiccCard"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2497
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v1
.end method

.method public getConfig()Lcom/huawei/ims/HwImsConfigImpl;
    .registers 2

    .line 943
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method public getDMUSER()V
    .registers 4

    .line 2542
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_f

    .line 2543
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getDmUser(Landroid/os/Message;)V

    .line 2545
    :cond_f
    return-void
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 5

    .line 2698
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2702
    .local v0, "slotId":I
    :try_start_6
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2704
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultPhone phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 2706
    return-object v1

    .line 2707
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :catch_1f
    move-exception v1

    .line 2708
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "getDefaultPhone occurs IllegalStateException"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2710
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEcbm()Lcom/huawei/ims/HwImsEcbmImpl;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHwImsEcbmImpl:Lcom/huawei/ims/HwImsEcbmImpl;

    return-object v0
.end method

.method getImsPhone()Lcom/android/internal/telephony/Phone;
    .registers 5

    .line 2685
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2687
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_8

    .line 2688
    const/4 v1, 0x0

    return-object v1

    .line 2691
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2693
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsPhone imsPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2694
    return-object v1
.end method

.method public getImsRegisterState()I
    .registers 2

    .line 2379
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I

    return v0
.end method

.method public getImsRegistrationImpl()Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 2

    .line 952
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    return-object v0
.end method

.method public getLastCallType()I
    .registers 2

    .line 2763
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mLastCallType:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 3

    .line 2675
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2676
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public getSubscription()I
    .registers 2

    .line 1212
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 3

    .line 2507
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2508
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_8

    .line 2509
    const/4 v1, 0x0

    return-object v1

    .line 2511
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    return-object v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 4

    .line 2408
    const-string v0, "enter UiccCardApplication"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2409
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 2411
    .local v0, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/huawei/ims/HwImsService;

    if-eqz v1, :cond_1b

    .line 2412
    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    .line 2414
    .local v1, "phoneId":I
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    return-object v2

    .line 2416
    .end local v1    # "phoneId":I
    :cond_1b
    const-string v1, "mContext is not a HwImsService!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 2419
    const-string v1, "getUiccCardApplication fail"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2420
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUt()Lcom/huawei/ims/HwImsUtImpl;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    return-object v0
.end method

.method public handleImsGetImpuDone(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2576
    const-string v0, "enter handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2577
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2579
    .local v0, "arImpu":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 2580
    const-string v1, "get impu OK, set impu to ims sdk. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2581
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_1f

    .line 2582
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDone(Ljava/lang/String;)V

    .line 2585
    :cond_1f
    return-void
.end method

.method public handleImsRegMode(Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2658
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_2c

    .line 2659
    if-eqz p1, :cond_2c

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2c

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 2661
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2662
    .local v0, "regMode":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 2663
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 2662
    invoke-static {v1, v0, v2, v3, v4}, Lcom/huawei/ims/cust/HwCustVzwIms;->setVzwImsRegMode(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 2666
    .end local v0    # "regMode":I
    :cond_2c
    return-void
.end method

.method public handleSimCardAbsent()V
    .registers 2

    .line 2518
    const-string v0, "enter handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v0, :cond_c

    .line 2521
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsent()V

    .line 2523
    :cond_c
    return-void
.end method

.method public handleSimRecordsLoaded()V
    .registers 5

    .line 2591
    const-string v0, "enter handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsServiceImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 2593
    .local v0, "newImsi":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl;->isCdmaCardAndVoLte()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_2b

    .line 2594
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadHomeDomainName(Landroid/os/Message;)V

    .line 2595
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->requestReadIsimImpi(Landroid/os/Message;)V

    .line 2597
    :cond_2b
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_32

    .line 2598
    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoaded(Ljava/lang/String;)V

    .line 2601
    :cond_32
    const-string v1, "leave handleSimRecordsLoaded"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 2602
    return-void
.end method

.method public registerForPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 926
    return-void
.end method

.method public removeImsServiceCallTracker()V
    .registers 2

    .line 977
    const-string v0, "enter removeImsServiceCallTracker."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 979
    return-void
.end method

.method public setImsSmsConfig(I)V
    .registers 5
    .param p1, "imsSmsConfig"    # I

    .line 2531
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    .line 2532
    const-string v2, "sms_ims_set_value"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2531
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2533
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_20

    .line 2534
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setImsSmsConfig(ILandroid/os/Message;)V

    .line 2536
    :cond_20
    return-void
.end method

.method public setUiTtyMode(IILandroid/os/Message;)V
    .registers 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 918
    return-void
.end method

.method public setVoNrSwitch(I)V
    .registers 5
    .param p1, "status"    # I

    .line 3122
    iget v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl;->getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 3123
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    if-eqz v0, :cond_14

    .line 3124
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x451

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3125
    .local v1, "setVoNrSwitchMsg":Landroid/os/Message;
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setVoNrSwitch(ILandroid/os/Message;)V

    .line 3126
    .end local v1    # "setVoNrSwitchMsg":Landroid/os/Message;
    goto :goto_19

    .line 3127
    :cond_14
    const-string v1, "setVoNrSwitch, phone or ci is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V

    .line 3129
    :goto_19
    return-void
.end method

.method public setVoWiFiRegErrReportEnable(I)V
    .registers 5
    .param p1, "enabled"    # I

    .line 3113
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x450

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setVowifiRegErrReportEnable(ILandroid/os/Message;)V

    .line 3114
    return-void
.end method
