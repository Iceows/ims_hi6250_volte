.class public Lcom/huawei/ims/HwImsConfigImpl;
.super Lcom/huawei/ims/ImsConfigImpl;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;,
        Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    }
.end annotation


# static fields
.field public static final CALL_WAITING_FROM_CS:I = 0x1

.field public static final CALL_WAITING_FROM_LOCAL:I = 0x2

.field public static final CALL_WAITING_FROM_UT:I = 0x0

.field public static final CALL_WAITING_FROM_UT_AND_NOT_SYNC_TO_CS_OR_IMS_SDK:I = 0x0

.field public static final CALL_WAITING_MODE_PROP_KEY:Ljava/lang/String; = "persist.ims.cwlocalset"

.field public static final CALL_WAITING_MODE_XML_KEY:Ljava/lang/String; = "callWaitingMode"

.field public static final CALL_WAITING_SOURCE_MASK:I = 0xc

.field public static final CALL_WAITING_SOURCE_OFFSET:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_CS_MASK:I = 0x2

.field public static final CALL_WAITING_SYNC_TO_IMS_SDK_MASK:I = 0x1

.field public static final CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardMccMncPreferToUseUT"

.field public static final CARD_TYPE_PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "cardTypePreferToUseUT"

.field public static final CARRIER_BUILD_VERSION_BOOL:Ljava/lang/String; = "carrier_build_version_bool"

.field public static final CARRIER_SUPPORT_VOLTE:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final CARRIER_SUPPORT_VOWIFI:Ljava/lang/String; = "carrier_wfc_ims_available_bool"

.field public static final CFNRC_CHANGE_WITH_CFNL_XML_KEY:Ljava/lang/String; = "CFNRcChangeWithCFNL"

.field private static final CFNR_USE_IR92V10_OR_GREATER:I = 0x1

.field public static final CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY:Ljava/lang/String; = "checkServiceWhenIncomingCall"

.field public static final CONFIG_NOT_INITIALIZED:I = -0x1e240

.field public static final CONTENT_TYPE_MODE_AUTO:I = 0x0

.field public static final CONTENT_TYPE_MODE_FIXED:I = 0x1

.field public static final CONTENT_TYPE_MODE_XML_KEY:Ljava/lang/String; = "ContentTypeMode"

.field public static final DC_FAIL_CAUSE_RELEASE_APN_XML_KEY:Ljava/lang/String; = "dcFailCauseToReleaseApn"

.field public static final DC_FAIL_CAUSE_XML_KEY:Ljava/lang/String; = "dcFailCauseForNonVolteSim"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_UT_GBA_LIFETIME_BE_USED:Z = false

.field private static final DEFAULT_UT_VOWIFI_DELAY_END_TIME:I = 0xea60

.field public static final FEATURE_VOLTE_DYN:Z

.field public static final FILE_PATH:Ljava/lang/String; = "/xml/hw_ims_config.xml"

.field public static final HANG_UP_WHEN_LOST_NET:Ljava/lang/String; = "hangUpWhenLostNet"

.field public static final IMPI_DOMAIN:Ljava/lang/String; = "impiDomain"

.field static final IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

.field static final IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

.field public static final IMS_CONFIG_KEY_GETDMUSER:Ljava/lang/String; = "getDMUSER"

.field public static final IMS_CONFIG_KEY_GETSMSCONFIG:Ljava/lang/String; = "getSmsConfig"

.field public static final IMS_CONFIG_KEY_SETSMSCONFIG:Ljava/lang/String; = "setSmsConfig"

.field private static final IMS_DATA_DELAY_END_IN_MS:I = 0x3e8

.field public static final IMS_DATA_DELAY_END_XML_KEY:Ljava/lang/String; = "utImsDataDelayEndTime"

.field public static final IMS_SS_BE_USED_XML_KEY:Ljava/lang/String; = "imsSsBeUsed"

.field public static final IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY:Ljava/lang/String; = "ImsStateFollowVoiceDomain"

.field private static final IS_ATT_WF:Z

.field private static final IS_VOWIFI_PROP_ON:Z

.field public static final KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL:Ljava/lang/String; = "keep_vowifi_feature_under_emergencycall"

.field static final LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

.field static final LOCAL_OIR_KEY:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsConfigImpl"

.field private static final MAPCON_BROADCAST_PERMISSION:Ljava/lang/String; = "com.hisi.permission.VOWIFI_SPECIAL"

.field private static final MAPCON_SERVICE_STARTED:Ljava/lang/String; = "com.hisi.vowifi.started"

.field public static final MCCMNC_MAX_LTH:I = 0x6

.field public static final MCC_LTH:I = 0x3

.field public static final MISSED_CALL_DISPLAY_XML_KEY:Ljava/lang/String; = "missedCallDisplay"

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT:I = 0x1f400

.field public static final MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsDelayTimer"

.field public static final MISSED_CALL_TIPS_DELAY_XML_KEY:Ljava/lang/String; = "missedCallTipsDelay"

.field public static final MISSED_CALL_TIPS_RING_TIMER_DEFAULT:I = 0x2ee0

.field public static final MISSED_CALL_TIPS_RING_TIMER_XML_KEY:Ljava/lang/String; = "missedCallTipsRingTimer"

.field public static final MISSED_CALL_TIPS_XML_KEY:Ljava/lang/String; = "missedCallTips"

.field private static final NODE_CFNR_USE_IR92V10_OR_GREATER:I = 0x11

.field public static final NULL_STRING_VALUE:Ljava/lang/String; = ""

.field public static final OIR_SOURCE_FROM_LOCAL:I = 0x1

.field public static final OIR_SOURCE_FROM_UT:I = 0x0

.field public static final PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "preferToUseUT"

.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final SEPARATOR_TAG:Ljava/lang/String; = ","

.field public static final SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDeactDefaultNoReplyTimer"

.field public static final SET_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDefaultNoReplyTimer"

.field static final SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

.field static final SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

.field static final SIM_IMSI_KEY:[Ljava/lang/String;

.field public static final SS_NOT_SUPPORT_MMI_CODE_XML_KEY:Ljava/lang/String; = "ssNotSupportMMICode"

.field public static final SS_TYPE_FORBID_FALLBACK_CS_XML_KEY:Ljava/lang/String; = "ssTypeForbidFallbackCS"

.field public static final SS_TYPE_USE_CS_ONLY_PROP_KEY:Ljava/lang/String; = "persist.ut.ssTypeUseCsOnly"

.field public static final SS_TYPE_USE_CS_ONLY_XML_KEY:Ljava/lang/String; = "ssTypeUseCsOnly"

.field public static final STRING_NOT_INITIALIZED:Ljava/lang/String; = "SNIT"

.field public static final TRUE_VALUE:Ljava/lang/String; = "true"

.field public static final USE_403_FOR_LOCAL_CW:Ljava/lang/String; = "use_403_for_local_cw"

.field public static final UT_409_SHOW_PHRASE:Ljava/lang/String; = "ut409ShowPhrase"

.field public static final UT_BEARER_DEFAULT:I = 0x0

.field public static final UT_BEARER_IMS:I = 0x2

.field public static final UT_BEARER_LTE:I = 0x1

.field public static final UT_BEARER_LTE_AND_IMS:I = 0x3

.field public static final UT_BEARER_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.bearType"

.field public static final UT_BEARER_TYPE_XML_KEY:Ljava/lang/String; = "utBearType"

.field public static final UT_BSF_AUTH_BE_USED_XML_KEY:Ljava/lang/String; = "utBsfAuthBeUsed"

.field public static final UT_BSF_PORT_DEFAULT:I = 0x1f90

.field public static final UT_BSF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfport"

.field public static final UT_BSF_PORT_XML_KEY:Ljava/lang/String; = "utBsfPort"

.field public static final UT_BSF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfsrvaddr"

.field public static final UT_BSF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utBsfSrvAddr"

.field public static final UT_BSF_USE_HTTPS:Z

.field public static final UT_BSF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfusehttps"

.field public static final UT_BSF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utBsfUsehttps"

.field public static final UT_CAN_USE_WIFI_XML_KEY:Ljava/lang/String; = "utCanUseWifi"

.field public static final UT_CS_BE_USED:Z

.field public static final UT_CS_BE_USED_PROP_KEY:Ljava/lang/String; = "persist.ut.csbeused"

.field public static final UT_CS_BE_USED_XML_KEY:Ljava/lang/String; = "utCSBeUsed"

.field public static final UT_FORBIDDEN_TIME_XML_KEY:Ljava/lang/String; = "utForbiddenTimer"

.field public static final UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF:Ljava/lang/String; = "utForbiddenWhenVolteSwitchOff"

.field public static final UT_FORBIDDEN_WVSO_PROP_KEY:Ljava/lang/String; = "persist.ut.forbiddenWVSO"

.field public static final UT_GBA_ME_TYPE:I = 0x0

.field public static final UT_GBA_TYPE:I

.field public static final UT_GBA_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.gbatype"

.field public static final UT_GBA_TYPE_XML_KEY:Ljava/lang/String; = "utGbaType"

.field public static final UT_HRS_LOG:Z

.field public static final UT_HRS_LOG_PROP_KEY:Ljava/lang/String; = "persist.ut.hrslog"

.field public static final UT_HRS_LOG_XML_KEY:Ljava/lang/String; = "utHrsLog"

.field public static final UT_IMPI:Ljava/lang/String;

.field public static final UT_IMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.authusername"

.field public static final UT_IMPI_XML_KEY:Ljava/lang/String; = "utIMPI"

.field public static final UT_IMPU:Ljava/lang/String;

.field public static final UT_IMPU_PROP_KEY:Ljava/lang/String; = "persist.ut.localusername"

.field public static final UT_IMPU_XML_KEY:Ljava/lang/String; = "utIMPU"

.field public static final UT_KSNAF_USE_BASE64:Z

.field public static final UT_KSNAF_USE_BASE64_PROP_KEY:Ljava/lang/String; = "persist.ut.ksnafbase64"

.field public static final UT_KSNAF_USE_BASE64_XML_KEY:Ljava/lang/String; = "utKsnafUseBase64"

.field public static final UT_NAF_PORT_DEFAULT:I = 0x50

.field public static final UT_NAF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.nafport"

.field public static final UT_NAF_PORT_XML_KEY:Ljava/lang/String; = "utNafPort"

.field public static final UT_NAF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.nafsrvaddr"

.field public static final UT_NAF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utNafSrvAddr"

.field public static final UT_NAF_USE_HTTPS:Z

.field public static final UT_NAF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.usehttps"

.field public static final UT_NAF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utNafUseHttps"

.field public static final UT_OIR_DEFAULT_MODE_XML_KEY:Ljava/lang/String; = "utOIRDefaultMode"

.field public static final UT_OIR_SOURCE_MODE_XML_KEY:Ljava/lang/String; = "utOIRSourceMode"

.field public static final UT_PARAMS_CFG_LENGTH:I = 0x2

.field public static final UT_PARAMS_CONFIG_XML_KEY:Ljava/lang/String; = "utParamsCfg"

.field private static final UT_PARAMS_KEY_GBA_LIFETIME_BE_USED:I = 0x13

.field private static final UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED:I = 0x1

.field public static final UT_PREFER_OPTION_KEY:Ljava/lang/String; = "utPreferOption"

.field public static final UT_PREFER_TO_USE_UT_PROP_KEY:Ljava/lang/String; = "persist.ut.preferToUseUT"

.field public static final UT_PREFER_USE_DEFAULT_MODE:I = 0x0

.field public static final UT_PREFER_USE_VOLTE_MODE:I = 0x1

.field public static final UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY:Ljava/lang/String; = "ut_prefer_vowifi_when_vowifi_registered"

.field public static final UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY:Ljava/lang/String; = "utQueryDnsIgnoreNetId"

.field public static final UT_RETRY_INTERVAL_XML_KEY:Ljava/lang/String; = "utRetryInterval"

.field public static final UT_USE_APN_XML_KEY:Ljava/lang/String; = "utUseApn"

.field public static final UT_USE_DEFAULT_DATA_APN:I = 0x0

.field public static final UT_USE_IMS_APN:I = 0x2

.field public static final UT_USE_MULTI_CF:Ljava/lang/String; = "utUseMultiCF"

.field public static final UT_USE_NODE_SELECTOR:Z

.field public static final UT_USE_NODE_SELECTOR_PROP_KEY:Ljava/lang/String; = "persist.ut.usenodeselector"

.field public static final UT_USE_NODE_SELECTOR_XML_KEY:Ljava/lang/String; = "utUseNodeSelector"

.field public static final UT_USE_TMPI:Z

.field public static final UT_USE_TMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.usetmpi"

.field public static final UT_USE_TMPI_XML_KEY:Ljava/lang/String; = "utUseTmpi"

.field public static final UT_USE_UT_COMPLEX_APN:I = 0x3

.field public static final UT_USE_UT_RESERVED_APN:I = 0x1

.field public static final UT_USE_XCAP_NAMESPACE:Z

.field public static final UT_USE_XCAP_NAMESPACE_PROP_KEY:Ljava/lang/String; = "persist.ut.usexcapnamespace"

.field public static final UT_USE_XCAP_NAMESPACE_XML_KEY:Ljava/lang/String; = "utUseXcapNamespace"

.field public static final UT_VOWIFI_DELAY_END_TIME_XML_KEY:Ljava/lang/String; = "utVoWifiDelayEndTime"

.field public static final UT_XCAP_ROOT_URI_PROP_KEY:Ljava/lang/String; = "persist.ut.xcapRootUri"

.field public static final UT_XCAP_ROOT_XML_KEY:Ljava/lang/String; = "utXcapRootUri"

.field public static final UT_X_3GPP_INTEND_ID:Ljava/lang/String;

.field public static final UT_X_3GPP_INTEND_ID_PROP_KEY:Ljava/lang/String; = "persist.ut.x3gppintendid"

.field public static final UT_X_3GPP_INTEND_ID_XML_KEY:Ljava/lang/String; = "utX3gppIntendId"

.field public static final VOLTE_LOWBATTERY_ENDCALL_XML_KEY:Ljava/lang/String; = "volte_lowbattery_endcall"

.field public static final VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT:Ljava/lang/String; = "setImsRegErrorReport"

.field public static final VOWIFI_UT_SWITCH_XML_KEY:Ljava/lang/String; = "vowifi_ut_switch"

.field public static final isATT:Z


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBsfAddrFromSim:Ljava/lang/String;

.field private mBuildVersionCarrier:Z

.field private mCFNRcChangeWithCFNL:Z

.field private mCallWaitingMode:I

.field private mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field private mCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mCardTypePreferToUseUT:[I

.field private mCarrierSupportVoWifi:Z

.field private mCarrierSupportVolte:Z

.field private mCheckServiceWhenIncomingCall:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfigIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentTypeMode:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIMSI:Ljava/lang/String;

.field private mDcFailCause:[Ljava/lang/String;

.field private mDcFailCauseToReleaseApn:[Ljava/lang/String;

.field private mDcFailCode:[I

.field private mDcFailCodeToReleaseApn:[I

.field private mDefBuildVersionCarrier:Z

.field private mDefCFNRcChangeWithCFNL:Z

.field private mDefCallWaitingMode:I

.field private mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mDefCardTypePreferToUseUT:[I

.field private mDefCheckServiceWhenIncomingCall:Z

.field private mDefContentTypeMode:I

.field private mDefDcFailCode:[I

.field private mDefDefaultNeedNoReplyTimer:I

.field private mDefDefaultNoReplyTimer:I

.field private mDefEmergencyUnderWifi:Z

.field private mDefHangUpWhenLostNet:Z

.field private mDefImpiDomain:Ljava/lang/String;

.field private mDefImsSsBeUsed:Z

.field private mDefImsStateFollowVoiceDomain:Z

.field private mDefMissedCallDisplay:Z

.field private mDefMissedCallTips:Z

.field private mDefMissedCallTipsDelay:Z

.field private mDefMissedCallTipsDelayTimer:I

.field private mDefMissedCallTipsRingTimer:I

.field private mDefNotSupportMMICode:[Ljava/lang/String;

.field private mDefPreferToUseUt:Z

.field private mDefSSForbidFallbackCS:[I

.field private mDefSSTypeUseCsOnly:[I

.field private mDefUse403ForLocalCW:Z

.field private mDefUseMultCondition:Z

.field private mDefUt409ShowPhrase:Z

.field private mDefUtBearerType:I

.field private mDefUtBsfAuthBeUsed:Z

.field private mDefUtBsfPort:I

.field private mDefUtBsfSrvAddr:Ljava/lang/String;

.field private mDefUtBsfUseHttps:Z

.field private mDefUtCSBeUsed:Z

.field private mDefUtCanUseWifi:Z

.field private mDefUtForbiddenWhenVolteSwitchOff:Z

.field private mDefUtGbaType:I

.field private mDefUtHrsLog:Z

.field private mDefUtIMPI:Ljava/lang/String;

.field private mDefUtIMPU:Ljava/lang/String;

.field private mDefUtImsDataDelayEndTime:I

.field private mDefUtKsnafUseBase64:Z

.field private mDefUtNafPort:I

.field private mDefUtNafSrvAddr:Ljava/lang/String;

.field private mDefUtNafUseHttps:Z

.field private mDefUtOIRDefaultMode:I

.field private mDefUtOIRSourceMode:I

.field private mDefUtParamsCfg:[Ljava/lang/String;

.field private mDefUtPreferOption:I

.field private mDefUtPreferVowifiWhenVowifiReg:Z

.field private mDefUtQueryDnsIgnoreNetId:Z

.field private mDefUtRetryInterval:[I

.field private mDefUtUseApn:I

.field private mDefUtUseNodeSelector:Z

.field private mDefUtUseTmpi:Z

.field private mDefUtUseXcapNamespace:Z

.field private mDefUtVoWifiDelayEndTime:I

.field private mDefUtX3gppIntendId:Ljava/lang/String;

.field private mDefUtXcapRootUri:Ljava/lang/String;

.field private mDefVolteLowbatteryEndcall:Z

.field private mDefaultNeedNoReplyTimer:I

.field private mDefaultNoReplyTimer:I

.field private mDefaultUtForbiddenTimer:I

.field private mDefaultVowifiUtSwitch:Z

.field private mDomainNameFromSim:Ljava/lang/String;

.field private mHangUpWhenLostNet:Z

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImpiDomain:Ljava/lang/String;

.field private mImpiFromSim:Ljava/lang/String;

.field private mImsSsBeUsed:Z

.field private mImsStateFollowVoiceDomain:Z

.field private mIsCallWaitingSyncToCs:Z

.field private mIsCallWaitingSyncToImsSdk:Z

.field private mIsEmergencyUnderWifi:Z

.field private mIsProtocolIR92V10orGreater:Z

.field private mIsUseMultCondition:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMissedCallDisplay:Z

.field private mMissedCallTips:Z

.field private mMissedCallTipsDelay:Z

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mNotSupportMMICode:[Ljava/lang/String;

.field private mPreferToUseUt:Z

.field private mSSForbidFallbackCS:[I

.field private mSSTypeUseCsOnly:[I

.field private mSpValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpliceMncMcc:Ljava/lang/String;

.field private mSubId:I

.field private mUse403ForLocalCW:Z

.field private mUt409ShowPhrase:Z

.field private mUtBearerType:I

.field private mUtBsfAuthBeUsed:Z

.field private mUtBsfPort:I

.field private mUtBsfSrvAddr:Ljava/lang/String;

.field private mUtBsfUseHttps:Z

.field private mUtCSBeUsed:Z

.field private mUtCanUseWifi:Z

.field private mUtForbiddenTimer:I

.field private mUtForbiddenWhenVolteSwitchOff:Z

.field private mUtGbaLifetimeBeUsed:Z

.field private mUtGbaType:I

.field private mUtHrsLog:Z

.field private mUtIMPI:Ljava/lang/String;

.field private mUtIMPU:Ljava/lang/String;

.field private mUtImsDataDelayEndTime:I

.field private mUtKsnafUseBase64:Z

.field private mUtNafPort:I

.field private mUtNafSrvAddr:Ljava/lang/String;

.field private mUtNafUseHttps:Z

.field private mUtOIRDefaultMode:I

.field private mUtOIRSourceMode:I

.field private mUtParamsCfg:[Ljava/lang/String;

.field private mUtPreferOption:I

.field private mUtPreferVowifiWhenVowifiReg:Z

.field private mUtQueryDnsIgnoreNetId:Z

.field private mUtRetryInterval:[I

.field private mUtUseApn:I

.field private mUtUseNodeSelector:Z

.field private mUtUseTmpi:Z

.field private mUtUseXcapNamespace:Z

.field private mUtVoWifiDelayEndTime:I

.field private mUtX3gppIntendId:Ljava/lang/String;

.field private mUtXcapRootUri:Ljava/lang/String;

.field private mVolteLowbatteryEndcall:Z

.field private mVowifiUtSwitch:Z

.field private mXcapRootURIFromSim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    const-string v0, "sim_imsi_key"

    const-string v1, "sim_imsi_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    .line 85
    const-string v0, "impu_from_network_key"

    const-string v1, "impu_from_network_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    .line 86
    const-string v0, "impu_from_sim_imsi_key"

    const-string v1, "impu_from_sim_imsi_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    .line 89
    const-string v0, "local_call_waiting_key"

    const-string v1, "local_call_waiting_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    .line 92
    const-string v0, "local_OIR_key"

    const-string v1, "local_OIR_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    .line 105
    const-string v0, "profile_key"

    const-string v1, "profile_key2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    .line 106
    const-string v0, "profile_param"

    const-string v1, "profile_param2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    .line 136
    const-string v0, "07"

    const-string v1, "ro.config.hw_opta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "840"

    const-string v3, "ro.config.hw_optb"

    .line 137
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    .line 391
    const-string v0, "persist.ut.csbeused"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z

    .line 392
    const-string v0, "persist.ut.hrslog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z

    .line 393
    const-string v0, "persist.ut.usehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z

    .line 394
    const-string v0, "persist.ut.bsfusehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z

    .line 395
    const-string v0, "persist.ut.usenodeselector"

    .line 396
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z

    .line 397
    const-string v0, "persist.ut.usexcapnamespace"

    .line 398
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z

    .line 399
    const-string v0, "persist.ut.ksnafbase64"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z

    .line 400
    const-string v0, "persist.ut.gbatype"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    .line 401
    const-string v0, "persist.ut.usetmpi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z

    .line 402
    const-string v0, "persist.ut.x3gppintendid"

    const-string v1, ""

    .line 403
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    .line 404
    const-string v0, "persist.ut.localusername"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    .line 405
    const-string v0, "persist.ut.authusername"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    .line 407
    const-string v0, "ro.config.hw_att_wificall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    .line 586
    const-string v0, "ro.config.hw_volte_dyn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    .line 601
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .locals 5
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "subId"    # I

    .line 641
    invoke-direct {p0}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    .line 439
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    .line 442
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    .line 444
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    .line 445
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 446
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    .line 447
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    .line 448
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    .line 449
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    .line 450
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    .line 451
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    .line 452
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    .line 454
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    .line 456
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    .line 459
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    .line 461
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    .line 463
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    .line 464
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    .line 465
    const/16 v3, 0x50

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    .line 466
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    .line 467
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    .line 468
    const/16 v3, 0x1f90

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    .line 469
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    .line 470
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    .line 471
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    .line 472
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    .line 475
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    .line 477
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    .line 478
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    .line 479
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    .line 480
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    .line 481
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    .line 482
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    .line 483
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    .line 484
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    .line 485
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    .line 486
    const/16 v3, 0x2ee0

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    .line 488
    const v3, 0x1f400

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    iput v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    .line 490
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    .line 492
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    .line 495
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    .line 498
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    .line 501
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    .line 504
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    .line 507
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 508
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    .line 512
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUt409ShowPhrase:Z

    .line 516
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    .line 520
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    .line 524
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    .line 525
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 529
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 530
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    .line 534
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 535
    const v0, 0xea60

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    .line 540
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferVowifiWhenVowifiReg:Z

    .line 543
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    .line 547
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    .line 550
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    .line 551
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    .line 552
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    .line 553
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 554
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    .line 559
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    .line 562
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z

    .line 567
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 568
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 569
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 570
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    .line 571
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    .line 572
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;

    .line 574
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    .line 577
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    .line 578
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    .line 581
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 582
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 583
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 595
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    .line 605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    .line 608
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 622
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 629
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$1;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 642
    iput p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    .line 643
    const-string v0, "HwImsConfigImpl construtor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 645
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const-string v0, "subId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 647
    return-void

    .line 649
    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-nez v0, :cond_1

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 654
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 655
    return-void

    .line 658
    :cond_2
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 660
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    .line 662
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->init(Landroid/content/Context;)V

    .line 663
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 667
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_3

    .line 668
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    .line 669
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 670
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.hisi.permission.VOWIFI_SPECIAL"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 676
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 650
    :cond_4
    :goto_0
    const-string v0, "hwImsServiceImpl or imsRIL is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 74
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 74
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 74
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    return-void
.end method

.method private bindMapconService()V
    .locals 5

    .line 2757
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_0

    .line 2758
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$2;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 2771
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2772
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 2774
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "spValueEncrypt"    # Ljava/lang/String;
    .param p2, "sKey"    # Ljava/lang/String;
    .param p3, "sParam"    # Ljava/lang/String;

    .line 2008
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2016
    :cond_0
    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2019
    if-nez p2, :cond_1

    .line 2020
    return-object v1

    .line 2024
    :cond_1
    invoke-static {p2, p3}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2027
    if-nez p3, :cond_2

    .line 2028
    return-object v1

    .line 2032
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/huawei/ims/AESEncrypter;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2009
    :cond_3
    :goto_0
    const-string v0, "value or key is not exist"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2011
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "spValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 1954
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1955
    const-string v1, "spValue is null, do not encrypt"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1957
    return-object v0

    .line 1960
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1962
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1965
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1966
    .local v3, "sKey":Ljava/lang/String;
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1969
    .local v4, "sParam":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x100

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1985
    :cond_1
    invoke-static {v3, v6}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1988
    if-nez v3, :cond_2

    .line 1989
    return-object v0

    .line 1993
    :cond_2
    invoke-static {v3, v4}, Lcom/huawei/ims/EncryptUtils;->decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1996
    if-nez v4, :cond_4

    .line 1997
    return-object v0

    .line 1970
    :cond_3
    :goto_0
    const-string v0, "create AES key"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1973
    invoke-static {v6}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v3

    .line 1974
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v4

    .line 1978
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v5

    invoke-static {v3, v6}, Lcom/huawei/ims/EncryptUtils;->encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1979
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v5

    invoke-static {v3, v4}, Lcom/huawei/ims/EncryptUtils;->encodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1981
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2002
    :cond_4
    invoke-static {p1, v3, v4}, Lcom/huawei/ims/AESEncrypter;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDcFailCause([I)[Ljava/lang/String;
    .locals 9
    .param p1, "codes"    # [I

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "failCauses":[Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 1126
    array-length v1, p1

    .line 1127
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 1128
    const/4 v2, 0x0

    .line 1129
    .local v2, "cause":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1130
    .local v3, "i":I
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p1, v5

    .line 1131
    .local v6, "code":I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    add-int/lit8 v7, v3, 0x1

    .local v7, "i":I
    aput-object v2, v0, v3

    .line 1133
    .end local v3    # "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initDcFailCause code:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cause : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1130
    .end local v6    # "code":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 1136
    .end local v1    # "size":I
    .end local v2    # "cause":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_0
    return-object v0
.end method

.method private getParamFromUtParamsCfg(I)I
    .locals 7
    .param p1, "key"    # I

    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "utParamsCfgArray":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1721
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 1722
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1723
    .local v4, "utParamsCfg":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aget-object v6, v4, v5

    .line 1724
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1731
    :cond_0
    :try_start_0
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1732
    .local v6, "utParam0":I
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    .local v5, "utParam1":I
    nop

    .line 1735
    nop

    .line 1737
    if-ne p1, v6, :cond_2

    .line 1738
    move v0, v5

    .line 1739
    goto :goto_3

    .line 1733
    .end local v5    # "utParam1":I
    .end local v6    # "utParam0":I
    :catch_0
    move-exception v5

    .line 1734
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v6, "getParamFromUtParamsCfg : NumberFormatException "

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1735
    goto :goto_2

    .line 1725
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    const-string v5, "getParamFromUtParamsCfg : config param not right"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1726
    nop

    .line 1721
    .end local v4    # "utParamsCfg":[Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1743
    .end local v3    # "i":I
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamFromUtParamsCfg: key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1744
    return v0
.end method

.method private getRootUriFromSim()Ljava/lang/String;
    .locals 3

    .line 2624
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    return-object v0

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2629
    const-string v0, "xcap.ims."

    .line 2631
    .local v0, "sRootURI":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2632
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;

    .line 2634
    return-object v0

    .line 2638
    .end local v0    # "sRootURI":Ljava/lang/String;
    :cond_1
    const-string v0, "getRootURI error: Get wrong MCC MNC "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2640
    const/4 v0, 0x0

    return-object v0
.end method

.method private final declared-synchronized handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2085
    if-nez p2, :cond_0

    .line 2086
    monitor-exit p0

    return-void

    .line 2090
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    :goto_0
    goto :goto_1

    .line 2084
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2094
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "handleBoolTypeConfig Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2092
    :catch_1
    move-exception v0

    .line 2093
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "handleBoolTypeConfig RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2097
    :goto_1
    monitor-exit p0

    return-void

    .line 2084
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2099
    :try_start_0
    const-string v0, "utCSBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    goto/16 :goto_0

    .line 2102
    :cond_0
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    goto/16 :goto_0

    .line 2105
    :cond_1
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2106
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    goto/16 :goto_0

    .line 2108
    :cond_2
    const-string v0, "utHrsLog"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2109
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    goto/16 :goto_0

    .line 2111
    :cond_3
    const-string v0, "utNafUseHttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2112
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    goto :goto_0

    .line 2114
    :cond_4
    const-string v0, "utBsfUsehttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2115
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    goto :goto_0

    .line 2117
    :cond_5
    const-string v0, "utUseNodeSelector"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2118
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    goto :goto_0

    .line 2120
    :cond_6
    const-string v0, "utUseXcapNamespace"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    goto :goto_0

    .line 2123
    :cond_7
    const-string v0, "utKsnafUseBase64"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2124
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    goto :goto_0

    .line 2126
    :cond_8
    const-string v0, "utUseTmpi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2127
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :cond_9
    :goto_0
    monitor-exit p0

    return-void

    .line 2098
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2131
    :try_start_0
    const-string v0, "missedCallTips"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    goto/16 :goto_0

    .line 2134
    :cond_0
    const-string v0, "missedCallDisplay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2135
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    goto/16 :goto_0

    .line 2137
    :cond_1
    const-string v0, "missedCallTipsDelay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2138
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    goto/16 :goto_0

    .line 2140
    :cond_2
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2141
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    goto/16 :goto_0

    .line 2143
    :cond_3
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2144
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    goto/16 :goto_0

    .line 2146
    :cond_4
    const-string v0, "imsSsBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2147
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    goto :goto_0

    .line 2149
    :cond_5
    const-string v0, "hangUpWhenLostNet"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2150
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    goto :goto_0

    .line 2153
    :cond_6
    const-string v0, "utCanUseWifi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2154
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    goto :goto_0

    .line 2158
    :cond_7
    const-string v0, "utBsfAuthBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2159
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    goto :goto_0

    .line 2162
    :cond_8
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2163
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    goto :goto_0

    .line 2167
    :cond_9
    const-string v0, "volte_lowbattery_endcall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2168
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    :cond_a
    :goto_0
    monitor-exit p0

    return-void

    .line 2130
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2177
    if-nez p2, :cond_0

    .line 2178
    monitor-exit p0

    return-void

    .line 2182
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    :goto_0
    goto :goto_1

    .line 2176
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2186
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2187
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "handleIntTypeConfig Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2184
    :catch_1
    move-exception v0

    .line 2185
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "handleIntTypeConfig RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2189
    :goto_1
    monitor-exit p0

    return-void

    .line 2176
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2191
    :try_start_0
    const-string v0, "setDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2194
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2198
    :goto_0
    goto/16 :goto_6

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v1, "handleIntTypeConfigPartOne :  mDefaultNoReplyTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2197
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 2200
    :cond_0
    const-string v0, "ContentTypeMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 2202
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2206
    :goto_1
    goto/16 :goto_6

    .line 2203
    :catch_1
    move-exception v0

    .line 2204
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v1, "handleIntTypeConfigPartOne : mContentTypeMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2205
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2208
    :cond_1
    const-string v0, "callWaitingMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 2210
    :try_start_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2214
    :goto_2
    goto/16 :goto_6

    .line 2211
    :catch_2
    move-exception v0

    .line 2212
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v1, "handleIntTypeConfigPartOne : mCallWaitingMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2213
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 2216
    :cond_2
    const-string v0, "utNafPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    .line 2218
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2222
    :goto_3
    goto :goto_6

    .line 2219
    :catch_3
    move-exception v0

    .line 2220
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v1, "handleIntTypeConfigPartOne : mUtNafPort NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2221
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 2224
    :cond_3
    const-string v0, "utBsfPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_4

    .line 2226
    :try_start_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2230
    :goto_4
    goto :goto_6

    .line 2227
    :catch_4
    move-exception v0

    .line 2228
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v1, "handleIntTypeConfigPartOne : mUtBsfPort NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2229
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 2232
    :cond_4
    const-string v0, "utGbaType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_5

    .line 2234
    :try_start_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2238
    :goto_5
    goto :goto_6

    .line 2235
    :catch_5
    move-exception v0

    .line 2236
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v1, "handleIntTypeConfigPartOne : mUtGbaType NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2237
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 2241
    :cond_5
    const-string v0, "utBearType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_6

    .line 2243
    :try_start_d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2247
    goto :goto_6

    .line 2244
    :catch_6
    move-exception v0

    .line 2245
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_e
    const-string v1, "handleIntTypeConfigPartOne : mUtBearerType NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2246
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2250
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 2190
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2252
    :try_start_0
    const-string v0, "missedCallTipsRingTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2254
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2258
    :goto_0
    goto/16 :goto_8

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v1, "handleIntTypeConfigPartTwo : mMissedCallTipsRingTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2257
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 2260
    :cond_0
    const-string v0, "missedCallTipsDelayTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 2262
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2266
    :goto_1
    goto/16 :goto_8

    .line 2263
    :catch_1
    move-exception v0

    .line 2264
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v1, "handleIntTypeConfigPartTwo : mMissedCallTipsDelayTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2265
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2268
    :cond_1
    const-string v0, "utUseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 2270
    :try_start_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2274
    :goto_2
    goto/16 :goto_8

    .line 2271
    :catch_2
    move-exception v0

    .line 2272
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v1, "handleIntTypeConfigPartTwo : mUtUseApn NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2273
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 2277
    :cond_2
    const-string v0, "utOIRSourceMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    .line 2279
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2283
    :goto_3
    goto/16 :goto_8

    .line 2280
    :catch_3
    move-exception v0

    .line 2281
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v1, "handleIntTypeConfigPartTwo : mUtOIRSourceMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2282
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 2287
    :cond_3
    const-string v0, "utOIRDefaultMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_4

    .line 2289
    :try_start_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2293
    :goto_4
    goto/16 :goto_8

    .line 2290
    :catch_4
    move-exception v0

    .line 2291
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v1, "handleIntTypeConfigPartTwo : mUtOIRDefaultMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2292
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 2297
    :cond_4
    const-string v0, "utImsDataDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_5

    .line 2299
    :try_start_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2303
    :goto_5
    goto :goto_8

    .line 2300
    :catch_5
    move-exception v0

    .line 2301
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v1, "handleIntTypeConfigPartTwo : mUtImsDataDelayEndTime NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2302
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 2307
    :cond_5
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_6

    .line 2309
    :try_start_d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2313
    :goto_6
    goto :goto_8

    .line 2310
    :catch_6
    move-exception v0

    .line 2311
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_e
    const-string v1, "handleIntTypeConfigPartTwo : mDefaultNeedNoReplyTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2312
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_6

    .line 2317
    :cond_6
    const-string v0, "utVoWifiDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v0, :cond_7

    .line 2319
    :try_start_f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2323
    :goto_7
    goto :goto_8

    .line 2320
    :catch_7
    move-exception v0

    .line 2321
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v1, "handleIntTypeConfigPartTwo : mUtVoWifiDelayEndTime NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2322
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7

    .line 2328
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown config, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2330
    :goto_8
    monitor-exit p0

    return-void

    .line 2251
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2336
    if-nez p2, :cond_0

    .line 2337
    monitor-exit p0

    return-void

    .line 2341
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :goto_0
    goto :goto_1

    .line 2335
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2346
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2347
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "handleStringTypeConfig Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2344
    :catch_1
    move-exception v0

    .line 2345
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "handleStringTypeConfig RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 2349
    :goto_1
    monitor-exit p0

    return-void

    .line 2335
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2352
    :try_start_0
    const-string v0, "cardTypePreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    goto :goto_0

    .line 2355
    :cond_0
    const-string v0, "cardMccMncPreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    goto :goto_0

    .line 2358
    :cond_1
    const-string v0, "ssTypeForbidFallbackCS"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2359
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    goto :goto_0

    .line 2361
    :cond_2
    const-string v0, "ssNotSupportMMICode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2362
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    goto :goto_0

    .line 2364
    :cond_3
    const-string v0, "ssTypeUseCsOnly"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2365
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    goto :goto_0

    .line 2367
    :cond_4
    const-string v0, "utNafSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2368
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    goto :goto_0

    .line 2370
    :cond_5
    const-string v0, "utBsfSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2371
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 2351
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private final declared-synchronized handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2375
    :try_start_0
    const-string v0, "utX3gppIntendId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    goto/16 :goto_0

    .line 2378
    :cond_0
    const-string v0, "utIMPU"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    goto :goto_0

    .line 2381
    :cond_1
    const-string v0, "utIMPI"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2382
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    goto :goto_0

    .line 2384
    :cond_2
    const-string v0, "utRetryInterval"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2385
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    goto :goto_0

    .line 2388
    :cond_3
    const-string v0, "utParamsCfg"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2389
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    goto :goto_0

    .line 2393
    :cond_4
    const-string v0, "utXcapRootUri"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2394
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    goto :goto_0

    .line 2398
    :cond_5
    const-string v0, "dcFailCauseForNonVolteSim"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2399
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    goto :goto_0

    .line 2403
    :cond_6
    const-string v0, "dcFailCauseToReleaseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2404
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 2405
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2408
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    .line 2374
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method private static hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 2672
    invoke-static {p0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1884
    const-string v0, "init enter"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1888
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 1889
    .local v2, "result":Z
    const/4 v3, 0x0

    move-object v4, v3

    .line 1892
    .local v4, "file":Ljava/io/File;
    :try_start_0
    const-string v5, "/xml/hw_ims_config.xml"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/huawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    move-object v4, v5

    .line 1894
    if-eqz v4, :cond_0

    .line 1897
    const-string v5, "get file successfully"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1900
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 1901
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v1, v5

    .line 1902
    const-string v5, "UTF-8"

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1903
    invoke-direct {p0, p1, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    const/4 v2, 0x1

    .line 1909
    nop

    .line 1910
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1911
    const/4 v0, 0x0

    .line 1914
    if-eqz v1, :cond_2

    const-class v5, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1915
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1895
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "File \'/xml/hw_ims_config.xml\' does not exist"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1908
    :catchall_0
    move-exception v5

    goto :goto_9

    .line 1905
    :catch_0
    move-exception v5

    .line 1906
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "Exception"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1909
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1910
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1911
    const/4 v0, 0x0

    goto :goto_0

    .line 1918
    :catch_1
    move-exception v5

    goto :goto_2

    .line 1914
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-class v5, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1915
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1916
    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    .line 1918
    :goto_2
    nop

    .line 1919
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v6, "Exception failed."

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1921
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1920
    :cond_2
    :goto_3
    nop

    .line 1923
    :goto_4
    if-nez v2, :cond_5

    .line 1924
    const-string v5, "ImsConfig load from R.xml.hw_ims_config"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1926
    nop

    .line 1930
    .local v3, "xmlParser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f020000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 1931
    if-eqz v3, :cond_3

    .line 1932
    invoke-direct {p0, p1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1938
    :cond_3
    if-eqz v3, :cond_5

    .line 1939
    :goto_5
    const/4 v3, 0x0

    goto :goto_7

    .line 1938
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 1935
    :catch_2
    move-exception v5

    .line 1936
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "load R.xml.hw_ims_config caught"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1938
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_4

    .line 1939
    const/4 v3, 0x0

    :cond_4
    throw v5

    .line 1945
    .end local v3    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :cond_5
    :goto_7
    :try_start_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1948
    goto :goto_8

    .line 1946
    :catch_3
    move-exception v3

    .line 1947
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "can\'t resolve call waiting mode"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1950
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_8
    const-string v3, "init finish"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1951
    return-void

    .line 1908
    :goto_9
    nop

    .line 1909
    if-eqz v0, :cond_6

    .line 1910
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1911
    const/4 v0, 0x0

    goto :goto_a

    .line 1918
    :catch_4
    move-exception v3

    goto :goto_b

    .line 1914
    :cond_6
    :goto_a
    if-eqz v1, :cond_7

    const-class v6, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1915
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1916
    const/4 v1, 0x0

    goto :goto_c

    .line 1918
    :goto_b
    nop

    .line 1919
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "Exception failed."

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 1920
    :cond_7
    :goto_c
    throw v5
.end method

.method private isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propType"    # Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .line 2644
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2646
    .local v0, "keyLength":I
    const/16 v1, 0x1f

    if-ge v1, v0, :cond_0

    .line 2647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the prop name length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2649
    const/4 v1, 0x0

    return v1

    .line 2652
    :cond_0
    const/4 v1, 0x0

    .line 2654
    .local v1, "hasConfigInProp":Z
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$3;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CONFIG_TYPE:[I

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2664
    const-string v2, "can\'t recognise this prop type"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2658
    :pswitch_0
    const-string v2, ""

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2659
    .local v2, "propValue":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2660
    const/4 v1, 0x1

    .line 2668
    .end local v2    # "propValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isContainInIMSConfig([II)Z
    .locals 4
    .param p1, "imsConfig"    # [I
    .param p2, "serviceValue"    # I

    .line 2464
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2470
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "number":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2471
    aget v3, p1, v2

    if-ne p2, v3, :cond_1

    .line 2472
    const-string v1, "Current SS type or card type is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2474
    return v0

    .line 2470
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2478
    .end local v2    # "number":I
    :cond_2
    return v1

    .line 2465
    :cond_3
    :goto_1
    const-string v1, "ims config is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2467
    return v0
.end method

.method private isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "imsConfig"    # [Ljava/lang/String;
    .param p2, "serviceValue"    # Ljava/lang/String;

    .line 2482
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2483
    const-string v1, "ims config is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2485
    return v0

    .line 2488
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "number":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2491
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 2492
    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2493
    const-string v1, "serviceValue is contained by ims config."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2495
    return v0

    .line 2488
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2500
    .end local v2    # "number":I
    :cond_2
    return v1
.end method

.method private final isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cfgTag"    # Ljava/lang/String;
    .param p2, "xmlTag"    # Ljava/lang/String;

    .line 2036
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2038
    .local v0, "cfgLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2039
    return v2

    .line 2042
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2043
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2044
    return v2

    .line 2042
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2048
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 2413
    :try_start_0
    const-string v0, "ims_config"

    invoke-direct {p0, p2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2416
    :goto_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2417
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2420
    nop

    .line 2449
    .end local v0    # "tag":Ljava/lang/String;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_0

    .line 2450
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2453
    :cond_0
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2455
    :try_start_1
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 2423
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 2424
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 2425
    .local v1, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2427
    .local v3, "text":Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 2428
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 2431
    :cond_2
    const-string v4, "name"

    invoke-direct {p0, v4, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2432
    const-string v4, "bool"

    invoke-direct {p0, v4, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2434
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2435
    :cond_3
    const-string v4, "int"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2437
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2438
    :cond_4
    const-string v4, "string"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2440
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2443
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    :goto_1
    goto :goto_0

    .line 2449
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2446
    :catch_0
    move-exception v0

    .line 2447
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "loadImsConfig Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2449
    .end local v0    # "e":Ljava/lang/Exception;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_6

    .line 2450
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2453
    :cond_6
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2455
    :try_start_4
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2444
    :catch_1
    move-exception v0

    .line 2445
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v1, "loadImsConfig RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2449
    .end local v0    # "e":Ljava/lang/RuntimeException;
    instance-of v0, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_7

    .line 2450
    move-object v0, p2

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2453
    :cond_7
    instance-of v0, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v0, :cond_8

    .line 2455
    :try_start_6
    move-object v0, p2

    check-cast v0, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v0}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 2456
    :catch_2
    move-exception v0

    .line 2457
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2458
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 2461
    :cond_8
    return-void

    .line 2449
    :goto_3
    instance-of v1, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_9

    .line 2450
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2453
    :cond_9
    instance-of v1, p2, Lorg/kxml2/io/KXmlParser;

    if-eqz v1, :cond_a

    .line 2455
    :try_start_7
    move-object v1, p2

    check-cast v1, Lorg/kxml2/io/KXmlParser;

    invoke-virtual {v1}, Lorg/kxml2/io/KXmlParser;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2458
    goto :goto_4

    .line 2456
    :catch_3
    move-exception v1

    .line 2457
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2458
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_4
    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

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

    .line 2682
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    return-void
.end method

.method private final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .end local v1    # "type":I
    goto :goto_0

    .line 2077
    .restart local v1    # "type":I
    :cond_0
    return-void
.end method

.method private readBoolCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1819
    if-nez p1, :cond_0

    .line 1820
    return-void

    .line 1823
    :cond_0
    const-string v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCSBeUsed:Z

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z

    .line 1824
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCFNRcChangeWithCFNL:Z

    :goto_1
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z

    .line 1825
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsStateFollowVoiceDomain:Z

    :goto_2
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z

    .line 1826
    const-string v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtHrsLog:Z

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z

    .line 1827
    const-string v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafUseHttps:Z

    :goto_4
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z

    .line 1828
    const-string v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_6
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfUseHttps:Z

    :goto_5
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z

    .line 1829
    const-string v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_7
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseNodeSelector:Z

    :goto_6
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z

    .line 1830
    const-string v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_8
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseXcapNamespace:Z

    :goto_7
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z

    .line 1831
    const-string v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :cond_9
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtKsnafUseBase64:Z

    :goto_8
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z

    .line 1832
    const-string v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    :cond_a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseTmpi:Z

    :goto_9
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z

    .line 1833
    const-string v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTips:Z

    :goto_a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z

    .line 1834
    const-string v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_c
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallDisplay:Z

    :goto_b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z

    .line 1835
    const-string v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    :cond_d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelay:Z

    :goto_c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z

    .line 1836
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCheckServiceWhenIncomingCall:Z

    :goto_d
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z

    .line 1837
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtForbiddenWhenVolteSwitchOff:Z

    :goto_e
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z

    .line 1838
    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f

    :cond_10
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImsSsBeUsed:Z

    :goto_f
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z

    .line 1840
    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    :cond_11
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefPreferToUseUt:Z

    :goto_10
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    .line 1842
    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_11

    :cond_12
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtCanUseWifi:Z

    :goto_11
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z

    .line 1844
    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :cond_13
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefHangUpWhenLostNet:Z

    :goto_12
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z

    .line 1846
    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_14
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfAuthBeUsed:Z

    :goto_13
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z

    .line 1849
    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    :cond_15
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultVowifiUtSwitch:Z

    :goto_14
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z

    .line 1851
    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_15

    :cond_16
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefBuildVersionCarrier:Z

    :goto_15
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    .line 1852
    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    :cond_17
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUse403ForLocalCW:Z

    :goto_16
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z

    .line 1854
    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_17

    :cond_18
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUt409ShowPhrase:Z

    :goto_17
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z

    .line 1856
    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_18

    :cond_19
    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z

    .line 1857
    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19

    :cond_1a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUseMultCondition:Z

    :goto_19
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    .line 1859
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1a

    :cond_1b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtQueryDnsIgnoreNetId:Z

    :goto_1a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z

    .line 1862
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    :cond_1c
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z

    .line 1865
    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    :cond_1d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefVolteLowbatteryEndcall:Z

    :goto_1b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z

    .line 1868
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1869
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c

    :cond_1e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefEmergencyUnderWifi:Z

    :goto_1c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    .line 1872
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1873
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d

    :cond_1f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferVowifiWhenVowifiReg:Z

    :goto_1d
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z

    .line 1875
    return-void
.end method

.method private readIntCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1775
    if-nez p1, :cond_0

    .line 1776
    return-void

    .line 1779
    :cond_0
    const-string v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    :goto_0
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 1780
    const-string v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    :goto_1
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 1781
    const-string v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    :goto_2
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 1782
    const-string v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    :goto_3
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 1783
    const-string v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    :goto_4
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 1784
    const-string v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    :goto_5
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 1786
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_7
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    :goto_6
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 1790
    const-string v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    :goto_7
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 1793
    const-string v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_9
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    :goto_8
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 1794
    const-string v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    :cond_a
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    :goto_9
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 1795
    const-string v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_b
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    :goto_a
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 1797
    const-string v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b

    :cond_c
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRSourceMode:I

    :goto_b
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I

    .line 1800
    const-string v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_d
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOIRDefaultMode:I

    :goto_c
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I

    .line 1803
    const-string v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    :cond_e
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    :goto_d
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 1807
    const-string v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1808
    const-string v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_f
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    :goto_e
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 1811
    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    :cond_10
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    :goto_f
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    .line 1814
    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_10

    :cond_11
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    :goto_10
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    .line 1816
    return-void
.end method

.method private readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 1757
    if-nez p1, :cond_0

    .line 1758
    return-void

    .line 1761
    :cond_0
    const-string v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 1762
    const-string v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 1763
    const-string v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 1764
    const-string v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPU:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    .line 1765
    const-string v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtIMPI:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    .line 1767
    const-string v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 1770
    const-string v0, "impiDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "impiDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    .line 1772
    return-void
.end method

.method private resolveCallWaitingMode()V
    .locals 4

    .line 2585
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingMode()I

    move-result v0

    .line 2587
    .local v0, "callWaitingMode":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2588
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    goto :goto_0

    .line 2590
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 2593
    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2594
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    goto :goto_1

    .line 2596
    :cond_1
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 2599
    :goto_1
    and-int/lit8 v1, v0, 0xc

    shr-int/lit8 v1, v1, 0x2

    .line 2601
    .local v1, "callWaitingSource":I
    packed-switch v1, :pswitch_data_0

    .line 2612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call waiting source is not exist, source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2609
    :pswitch_0
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2610
    goto :goto_2

    .line 2606
    :pswitch_1
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2607
    goto :goto_2

    .line 2603
    :pswitch_2
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 2604
    nop

    .line 2616
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveCallWaitingMode finished, callWaitingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCallWaitingSyncToImsSdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCallWaitingSyncToCs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCallWaitingSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2620
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVoWifiStatus(I)V
    .locals 4
    .param p1, "value"    # I

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoWifiStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2865
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2866
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_1

    .line 2869
    const-string v0, "mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2870
    return-void

    .line 2874
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2878
    .local v0, "phoneId":I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2880
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    .line 2881
    const-string v2, "set vowifi on successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2883
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2884
    const-string v2, "HwImsConfigImpl"

    const-string v3, "Wifi-Call HwImsConfigImpl set vowifi on successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V

    goto :goto_0

    .line 2892
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    .line 2893
    const-string v2, "set vowifi off successful"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2895
    sget-boolean v2, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v2, :cond_2

    .line 2896
    const-string v2, "HwImsConfigImpl"

    const-string v3, "Wifi-Call HwImsConfigImpl set vowifi off successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2906
    :catch_0
    move-exception v1

    .line 2907
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "set vowifi status failed"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 2908
    :cond_2
    :goto_0
    nop

    .line 2909
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startPositionOfIMSConfigXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .end local v1    # "type":I
    goto :goto_0

    .line 2060
    .restart local v1    # "type":I
    :cond_0
    if-ne v1, v2, :cond_2

    .line 2064
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    return-void

    .line 2065
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2061
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stringToIntArray(Ljava/lang/String;)[I
    .locals 7
    .param p1, "stringText"    # Ljava/lang/String;

    .line 2504
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2505
    const-string v1, "stringText is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2507
    new-array v0, v0, [I

    return-object v0

    .line 2511
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2513
    .local v1, "stringReplaceSpace":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2514
    const-string v2, "stringText is null after replace space. "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2516
    new-array v0, v0, [I

    return-object v0

    .line 2519
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2521
    .local v2, "stringTextArray":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 2522
    const-string v3, "stringTextArray length is 0 after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2524
    new-array v0, v0, [I

    return-object v0

    .line 2527
    :cond_2
    array-length v3, v2

    new-array v3, v3, [I

    .line 2529
    .local v3, "intArray":[I
    nop

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 2530
    const-string v4, ""

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, -0x1e240

    if-nez v4, :cond_3

    .line 2533
    :try_start_0
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    goto :goto_1

    .line 2534
    :catch_0
    move-exception v4

    .line 2535
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "stringToIntArray : NumberFormatException "

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2536
    aput v5, v3, v0

    .line 2540
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArray[i] =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 2542
    :cond_3
    aput v5, v3, v0

    .line 2529
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2546
    .end local v0    # "i":I
    :cond_4
    return-object v3
.end method

.method private stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "stringText"    # Ljava/lang/String;

    .line 2550
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2551
    const-string v1, "stringText is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2553
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2557
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2559
    .local v1, "stringReplaceSpace":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2560
    const-string v2, "stringText is null after replace space."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2562
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2565
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2567
    .local v2, "stringArray":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 2568
    const-string v3, "stringArray length is 0 after replace space."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 2570
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 2573
    :cond_2
    nop

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 2574
    const-string v3, ""

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2575
    const-string v3, "SNIT"

    aput-object v3, v2, v0

    .line 2578
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stringArray[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2581
    .end local v0    # "i":I
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getBoolCarrierBuildVersion()Z
    .locals 1

    .line 2912
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBuildVersionCarrier:Z

    return v0
.end method

.method declared-synchronized getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    monitor-enter p0

    .line 1622
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1624
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1621
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "defValue":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getBsfAddrFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1466
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1467
    const-string v0, "bsf."

    .line 1469
    .local v0, "sBsf":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1470
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    monitor-exit p0

    return-object v0

    .line 1476
    .end local v0    # "sBsf":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v0, "getBsfAddrFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1478
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getCallWaitingMode()I
    .locals 4

    monitor-enter p0

    .line 891
    :try_start_0
    const-string v0, "persist.ims.cwlocalset"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "callWaitingMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingMode, callWaitingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 894
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    .local v1, "callWaitingModeInt":I
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 899
    goto :goto_0

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "getCallWaitingMode : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 901
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    .line 890
    .end local v0    # "callWaitingMode":Ljava/lang/String;
    .end local v1    # "callWaitingModeInt":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    monitor-enter p0

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getConfigInt(I)I
    .locals 2
    .param p1, "item"    # I

    .line 2740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2741
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2742
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2744
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .line 2749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2750
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2751
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2753
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method declared-synchronized getContentTypeMode()I
    .locals 1

    monitor-enter p0

    .line 877
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefUtImsDataDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1522
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefaultNeedNoReplyTimer()I
    .locals 1

    monitor-enter p0

    .line 869
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDefaultNoReplyTimer()I
    .locals 1

    monitor-enter p0

    .line 861
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getDomainName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIMSI()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIccId()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1413
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 1415
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1416
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    .line 1412
    .end local v0    # "phoneId":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getImpiFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1444
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@ims."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, "sImpi":Ljava/lang/String;
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sImpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    monitor-exit p0

    return-object v0

    .line 1455
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v0, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1457
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getImpuFromSIM()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1422
    :try_start_0
    const-string v0, "sip:"

    .line 1424
    .local v0, "sIMPU":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@ims."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assemble IMPU from SIM, sIMPU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    monitor-exit p0

    return-object v0

    .line 1433
    :cond_0
    :try_start_1
    const-string v1, "getSimIMPU error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1421
    .end local v0    # "sIMPU":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsConfig, configKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2837
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 2838
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_3

    .line 2839
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x111c7745

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x1420b6aa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "getDMUSER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "getSmsConfig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsConfig, configKey not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2848
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "dm_user_ims_value"

    .line 2849
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2848
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2850
    .local v1, "dmUserValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, dmUserValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2851
    const-string v2, "getDMUSER"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    goto :goto_1

    .line 2841
    .end local v1    # "dmUserValue":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "sms_ims_set_value"

    .line 2842
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 2841
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2844
    .local v1, "smsConfigValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, smsConfigValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2845
    const-string v2, "getSmsConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 2846
    nop

    .line 2855
    .end local v1    # "smsConfigValue":I
    :goto_1
    goto :goto_2

    .line 2858
    :cond_3
    const-string v1, "getImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2860
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized getIntFromSP(Ljava/lang/String;Landroid/content/Context;I)I
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # I

    monitor-enter p0

    .line 1638
    :try_start_0
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1640
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1637
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "defValue":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getIsEmergencyUnderWifi()Z
    .locals 1

    monitor-enter p0

    .line 2930
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getIsUseMultCondition()Z
    .locals 1

    monitor-enter p0

    .line 787
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getMissedCallTipsDelayTimer()I
    .locals 1

    monitor-enter p0

    .line 1325
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getMissedCallTipsRingTimer()I
    .locals 1

    monitor-enter p0

    .line 1321
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getOIRDefaultMode()I
    .locals 1

    monitor-enter p0

    .line 1510
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRDefaultMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getOIRSourceMode()I
    .locals 1

    monitor-enter p0

    .line 1501
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOIRSourceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1556
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter getSharedPreferences, spKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1565
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1566
    const-string v1, "value is already stored in map."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    monitor-exit p0

    return-object v0

    .line 1571
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1575
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1576
    .local v2, "sKey":Ljava/lang/String;
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1579
    .local v3, "sParam":Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, "spValueEncrypt":Ljava/lang/String;
    invoke-direct {p0, v4, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1583
    .local v5, "valueInSp":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    monitor-exit p0

    return-object v5

    .line 1555
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "sKey":Ljava/lang/String;
    .end local v3    # "sParam":Ljava/lang/String;
    .end local v4    # "spValueEncrypt":Ljava/lang/String;
    .end local v5    # "valueInSp":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getSimOperator()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1403
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 1406
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1407
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    .line 1402
    .end local v0    # "phoneId":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUt409ShowPhrase()Z
    .locals 1

    monitor-enter p0

    .line 1528
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUt409ShowPhrase:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBearerType()I
    .locals 4

    monitor-enter p0

    .line 1107
    :try_start_0
    const-string v0, "persist.ut.bearType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "utBearerType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtBearerType, utBearerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1110
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    .local v1, "utBearerTypeInt":I
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1115
    goto :goto_0

    .line 1113
    :catch_0
    move-exception v2

    .line 1114
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "getUtBearerType : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1117
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    .line 1106
    .end local v0    # "utBearerType":Ljava/lang/String;
    .end local v1    # "utBearerTypeInt":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBsfPort()I
    .locals 4

    monitor-enter p0

    .line 1046
    :try_start_0
    const-string v0, "persist.ut.bsfport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "utBsfPort":Ljava/lang/String;
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .local v1, "utBsfPortInt":I
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 1053
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "getUtBsfPort : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1055
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    .line 1045
    .end local v0    # "utBsfPort":Ljava/lang/String;
    .end local v1    # "utBsfPortInt":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtBsfSrvAddr()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 994
    :try_start_0
    const-string v0, "persist.ut.bsfsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "utBsfSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    const-string v1, "use bsf addr from prop, bsf"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    monitor-exit p0

    return-object v0

    .line 1002
    :cond_0
    :try_start_1
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1003
    const-string v1, "use bsf addr from xml, bsf addr"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1008
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getBsfAddrFromSIM()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "bsfAddr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1011
    const-string v2, "use bsf addr from sim, bsf"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    monitor-exit p0

    return-object v1

    .line 1016
    :cond_2
    :try_start_3
    const-string v2, "pick bsf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1018
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 993
    .end local v0    # "utBsfSrvAddr":Ljava/lang/String;
    .end local v1    # "bsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public getUtForbiddenTimer()I
    .locals 1

    .line 1748
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    return v0
.end method

.method declared-synchronized getUtGbaType()I
    .locals 2

    monitor-enter p0

    .line 1099
    :try_start_0
    const-string v0, "persist.ut.gbatype"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtIMPI()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1230
    :try_start_0
    const-string v0, "persist.ut.authusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impi from prop, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1233
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1236
    :cond_0
    :try_start_1
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impi from xml, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1244
    :cond_1
    :try_start_2
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impi from sim already exist, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1247
    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1252
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin to assemble impi from imsi, mSpliceMncMcc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "sImpi":Ljava/lang/String;
    const-string v2, ""

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1259
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@ims."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1262
    :goto_0
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after assemble, impi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1266
    monitor-exit p0

    return-object v0

    .line 1270
    .end local v0    # "sImpi":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v0, "getImpiFromSIM error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1272
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1187
    :try_start_0
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impu from prop, impu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1190
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1193
    :cond_0
    :try_start_1
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impu from xml, impu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1199
    :cond_1
    const/4 v0, 0x0

    .line 1202
    .local v0, "impu":Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1205
    if-eqz v0, :cond_2

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use impu from network, impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1208
    monitor-exit p0

    return-object v0

    .line 1212
    :cond_2
    :try_start_3
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1215
    if-eqz v0, :cond_3

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use impu from imsi, impu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1218
    monitor-exit p0

    return-object v0

    .line 1221
    :cond_3
    :try_start_4
    const-string v1, "pick impu fail."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1223
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1186
    .end local v0    # "impu":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1179
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtImsDataDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1516
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtNafPort()I
    .locals 4

    monitor-enter p0

    .line 968
    :try_start_0
    const-string v0, "persist.ut.nafport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "utNafPort":Ljava/lang/String;
    const-string v1, "getUtNafPort "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 971
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    .local v1, "utNafPortInt":I
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 976
    goto :goto_0

    .line 974
    :catch_0
    move-exception v2

    .line 975
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v3, "getUtNafPort : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 978
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v2

    .line 967
    .end local v0    # "utNafPort":Ljava/lang/String;
    .end local v1    # "utNafPortInt":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtNafSrvAddr()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 937
    :try_start_0
    const-string v0, "persist.ut.nafsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "utNafSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    const-string v1, "use naf addr from prop"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    monitor-exit p0

    return-object v0

    .line 945
    :cond_0
    :try_start_1
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 946
    const-string v1, "use naf addr from xml, naf "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 951
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getRootUriFromSim()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "nafAddr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 954
    const-string v2, "use naf addr from sim, naf "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 956
    monitor-exit p0

    return-object v1

    .line 959
    :cond_2
    :try_start_3
    const-string v2, "pick naf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 961
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 936
    .end local v0    # "utNafSrvAddr":Ljava/lang/String;
    .end local v1    # "nafAddr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtParamsCfg()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtPreferOption()I
    .locals 1

    monitor-enter p0

    .line 1092
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtRetryInterval(I)I
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 1292
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 1293
    monitor-exit p0

    return v0

    .line 1296
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v1, v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1297
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 1291
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized getUtRetryMaxCounts()I
    .locals 1

    monitor-enter p0

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1282
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1284
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtUseApn()I
    .locals 1

    monitor-enter p0

    .line 722
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtVoWifiDelayEndTime()I
    .locals 1

    monitor-enter p0

    .line 1538
    :try_start_0
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtX3gppIntendId()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1170
    :try_start_0
    const-string v0, "persist.ut.x3gppintendid"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getUtXcapRootUri()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1036
    :try_start_0
    const-string v0, "persist.ut.xcapRootUri"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "utXcapRootUri":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 1035
    .end local v0    # "utXcapRootUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized getVowifiUtSwitch()Z
    .locals 1

    monitor-enter p0

    .line 1032
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVowifiUtSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCFNRcChangeWithCFNL()Z
    .locals 1

    monitor-enter p0

    .line 854
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCFNRcChangeWithCFNL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToCs()Z
    .locals 1

    monitor-enter p0

    .line 916
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToImsSdk()Z
    .locals 1

    monitor-enter p0

    .line 909
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    monitor-enter p0

    .line 760
    :try_start_0
    const-string v0, "persist.ut.preferToUseUT"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "preferToUseUt":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 766
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 768
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mPreferToUseUt:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVoWifi()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    .line 773
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    .line 777
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 774
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    .line 759
    .end local v0    # "preferToUseUt":Ljava/lang/String;
    .end local p1    # "cardMccMnc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isCardTypePreferToUseUT(I)Z
    .locals 2
    .param p1, "cardType"    # I

    monitor-enter p0

    .line 742
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCardTypePreferToUseUT, Card type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 745
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mCardTypePreferToUseUT is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 741
    .end local p1    # "cardType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isCarrierSupportVoWifi()Z
    .locals 1

    monitor-enter p0

    .line 782
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVoWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCarrierSupportVolte()Z
    .locals 1

    monitor-enter p0

    .line 729
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCarrierSupportVolte:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isCheckServiceWhenIncomingCall()Z
    .locals 1

    monitor-enter p0

    .line 1329
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCheckServiceWhenIncomingCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1141
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mDcFailCause is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1139
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isDcFailCauseToReleaseApn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1151
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1152
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1150
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isHangUpWhenLostNet()Z
    .locals 1

    monitor-enter p0

    .line 1483
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHangUpWhenLostNet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isIMPUConfigured()Z
    .locals 2

    monitor-enter p0

    .line 1341
    :try_start_0
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtIMPU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1342
    :cond_1
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1340
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isImsSsBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 704
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsSsBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isImsStateFollowVoiceDomain()Z
    .locals 1

    monitor-enter p0

    .line 884
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImsStateFollowVoiceDomain:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallDisplay()Z
    .locals 1

    monitor-enter p0

    .line 1313
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallDisplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTips()Z
    .locals 1

    monitor-enter p0

    .line 1305
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTipsDelay()Z
    .locals 1

    monitor-enter p0

    .line 1317
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isMissedCallTipsInternal()Z
    .locals 1

    monitor-enter p0

    .line 1309
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTips:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public isProtocolIR92V10orGreater()Z
    .locals 1

    .line 1753
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    return v0
.end method

.method declared-synchronized isSSForbidFallbackCS(I)Z
    .locals 2
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 838
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSForbidFallbackCS, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 841
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mSSForbidFallbackCS is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 837
    .end local p1    # "ssType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isSSUseCsOnly(I)Z
    .locals 3
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 795
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSUseCsOnly, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 797
    const-string v0, "persist.ut.ssTypeUseCsOnly"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "SSTypeUseCsOnly":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSSUseCsOnly, SSTypeUseCsOnly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 800
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    :goto_0
    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 803
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 804
    :cond_2
    :goto_1
    :try_start_1
    const-string v1, "mSSTypeUseCsOnly is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 794
    .end local v0    # "SSTypeUseCsOnly":Ljava/lang/String;
    .end local p1    # "ssType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "MMIcode"    # Ljava/lang/String;

    monitor-enter p0

    .line 816
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMI code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInIMSConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 819
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mNotSupportMMICode is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 815
    .end local p1    # "MMIcode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized isUse403ForLocalCW()Z
    .locals 1

    monitor-enter p0

    .line 726
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUse403ForLocalCW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtBsfAuthBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 1495
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfAuthBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtBsfUseHttps()Z
    .locals 2

    monitor-enter p0

    .line 1063
    :try_start_0
    const-string v0, "persist.ut.bsfusehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_BSF_USE_HTTPS:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfUseHttps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :goto_0
    monitor-exit p0

    return v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtCSBeUsed()Z
    .locals 2

    monitor-enter p0

    .line 831
    :try_start_0
    const-string v0, "persist.ut.csbeused"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_CS_BE_USED:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCSBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtCanUseWifi()Z
    .locals 1

    monitor-enter p0

    .line 733
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtCanUseWifi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtForbiddenWhenVolteSwitchOff()Z
    .locals 3

    monitor-enter p0

    .line 711
    :try_start_0
    const-string v0, "persist.ut.forbiddenWVSO"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utForbiddenWhenVolteSwitchOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 714
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenWhenVolteSwitchOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :goto_0
    monitor-exit p0

    return v1

    .line 710
    .end local v0    # "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtGbaLifetimeBeUsed()Z
    .locals 1

    monitor-enter p0

    .line 1534
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtKsnafEncodedByBase64()Z
    .locals 2

    monitor-enter p0

    .line 1087
    :try_start_0
    const-string v0, "persist.ut.ksnafbase64"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_KSNAF_USE_BASE64:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtKsnafUseBase64:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :goto_0
    monitor-exit p0

    return v0

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtNafUseHttps()Z
    .locals 2

    monitor-enter p0

    .line 986
    :try_start_0
    const-string v0, "persist.ut.usehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_NAF_USE_HTTPS:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafUseHttps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :goto_0
    monitor-exit p0

    return v0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtOpenHrsLog()Z
    .locals 2

    monitor-enter p0

    .line 930
    :try_start_0
    const-string v0, "persist.ut.hrslog"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_HRS_LOG:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtHrsLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtPreferVowifiWhenVowifiReg()Z
    .locals 1

    monitor-enter p0

    .line 1022
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferVowifiWhenVowifiReg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtQueryDnsIgnoreNetId()Z
    .locals 1

    monitor-enter p0

    .line 1544
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtQueryDnsIgnoreNetId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseNodeSelector()Z
    .locals 2

    monitor-enter p0

    .line 1071
    :try_start_0
    const-string v0, "persist.ut.usenodeselector"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_NODE_SELECTOR:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseNodeSelector:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :goto_0
    monitor-exit p0

    return v0

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseTmpi()Z
    .locals 2

    monitor-enter p0

    .line 1163
    :try_start_0
    const-string v0, "persist.ut.usetmpi"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_TMPI:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseTmpi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isUtUseXcapNameSpace()Z
    .locals 2

    monitor-enter p0

    .line 1079
    :try_start_0
    const-string v0, "persist.ut.usexcapnamespace"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_USE_XCAP_NAMESPACE:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseXcapNamespace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_0
    monitor-exit p0

    return v0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method declared-synchronized isVolteLowbatteryEndcall()Z
    .locals 1

    monitor-enter p0

    .line 2925
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mVolteLowbatteryEndcall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOnTransact , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 683
    const/16 v0, 0xbb9

    if-eq p1, v0, :cond_0

    .line 698
    const/4 v0, 0x0

    return v0

    .line 686
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "mmiCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 688
    .local v1, "result":I
    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUnSupportMMICode(Ljava/lang/String;)Z

    move-result v2

    .line 690
    .local v2, "isUnSupportMMICode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnSupportMMICode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 691
    move v1, v2

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v3, 0x1

    return v3
.end method

.method declared-synchronized readCarrierConfig(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1662
    :try_start_0
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1664
    :cond_0
    :try_start_1
    const-string v0, "readCarrierConfig begin"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1665
    const-string v0, "carrier_config"

    .line 1666
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1669
    .local v0, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    .line 1671
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1673
    .local v2, "b":Landroid/os/PersistableBundle;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readBoolCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1674
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readIntCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 1675
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1678
    :try_start_2
    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUT:[I

    :goto_0
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUT:[I

    .line 1679
    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSForbidFallbackCS:[I

    :goto_1
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSForbidFallbackCS:[I

    .line 1680
    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSSTypeUseCsOnly:[I

    :goto_2
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSSTypeUseCsOnly:[I

    .line 1681
    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    :goto_3
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 1684
    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    :goto_4
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 1685
    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMMICode:[Ljava/lang/String;

    :goto_5
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMMICode:[Ljava/lang/String;

    .line 1687
    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    :goto_6
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 1690
    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    :goto_7
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 1691
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 1694
    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 1695
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1699
    :catch_0
    move-exception v3

    .line 1700
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Exception"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 1697
    :catch_1
    move-exception v3

    .line 1698
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "RuntimeException"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1701
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_9
    nop

    .line 1705
    :goto_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V

    .line 1708
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    move v3, v5

    goto :goto_b

    :cond_a
    move v3, v4

    :goto_b
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIR92V10orGreater:Z

    .line 1710
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    if-ne v3, v5, :cond_b

    move v4, v5

    nop

    :cond_b
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaLifetimeBeUsed:Z

    .line 1712
    const-string v3, "readCarrierConfig end"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1713
    monitor-exit p0

    return-void

    .line 1661
    .end local v0    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "subId":I
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2917
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2918
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2919
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2920
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2921
    return-void
.end method

.method declared-synchronized setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1628
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1630
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1632
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1633
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    monitor-exit p0

    return-void

    .line 1627
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":Z
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "bsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 1363
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    monitor-exit p0

    return-void

    .line 1362
    .end local p1    # "bsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setConfig(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 2692
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_0

    .line 2693
    const/4 v0, 0x0

    return v0

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_1

    .line 2697
    const-string v0, "setProvisionedValue,mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2698
    const/4 v0, -0x1

    return v0

    .line 2702
    :cond_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSubId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2705
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 2706
    .local v1, "ret":I
    const/16 v2, 0x1a

    if-ne v2, p1, :cond_2

    .line 2708
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_ROAMING,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2709
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->notifyRoaming(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2710
    :catch_0
    move-exception v2

    .line 2711
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_ROAMING failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2712
    const/4 v1, 0x1

    .line 2713
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2714
    :cond_2
    const/16 v2, 0x1b

    if-ne v2, p1, :cond_3

    .line 2716
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_MODE,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2717
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0, p2}, Lcom/hisi/mapcon/IMapconService;->setDomain(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2721
    goto :goto_1

    .line 2718
    :catch_1
    move-exception v2

    .line 2719
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_MODE failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2720
    const/4 v1, 0x1

    .line 2724
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2725
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    :cond_4
    return v1
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 2733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2734
    .local v0, "it":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    const/4 v1, 0x0

    return v1
.end method

.method declared-synchronized setCurrentImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1349
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    monitor-exit p0

    return-void

    .line 1348
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setDomainNameFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1360
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    monitor-exit p0

    return-void

    .line 1359
    .end local p1    # "domainName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFeatureValue feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2780
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2793
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsConfigImpl;->setVoWifiStatus(I)V

    .line 2794
    goto :goto_0

    .line 2791
    :pswitch_1
    goto :goto_0

    .line 2782
    :pswitch_2
    nop

    .line 2798
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized setIMSI(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1337
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentIMSI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    monitor-exit p0

    return-void

    .line 1336
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setImpiFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "impi"    # Ljava/lang/String;

    monitor-enter p0

    .line 1357
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    monitor-exit p0

    return-void

    .line 1356
    .end local p1    # "impi":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsConfig, configKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configValue = *** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2803
    const/4 v0, 0x1

    .line 2804
    .local v0, "ret":I
    if-eqz p1, :cond_4

    .line 2805
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x54049995

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x6d7037b9

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "setSmsConfig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v2, "setImsRegErrorReport"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2825
    const-string v1, "setImsConfig, configKey not exist!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2816
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v1, :cond_3

    .line 2817
    const-string v1, "setImsRegErrorReport"

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {p2, v1, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2819
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsServiceImpl;->setVoWiFiRegErrReportEnable(I)V

    .line 2820
    const/4 v0, 0x0

    .line 2821
    .end local v1    # "enabled":I
    goto :goto_1

    .line 2807
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v1, :cond_3

    .line 2808
    const-string v1, "setSmsConfig"

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {p2, v1, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2810
    .local v1, "smsConfig":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsServiceImpl;->setImsSmsConfig(I)V

    .line 2811
    const/4 v0, 0x0

    .line 2812
    .end local v1    # "smsConfig":I
    nop

    .line 2826
    :cond_3
    :goto_1
    goto :goto_2

    .line 2829
    :cond_4
    const-string v1, "setImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2831
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized setIntToSP(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1644
    :try_start_0
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1646
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1648
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1649
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    monitor-exit p0

    return-void

    .line 1643
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":I
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 0
    .param p1, "nsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 1367
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootURIFromSim:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    monitor-exit p0

    return-void

    .line 1366
    .end local p1    # "nsfAddr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1595
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setSharedPreferences, spKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1604
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    const-string v1, "value is not changed, need not to store in SP again."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    monitor-exit p0

    return-void

    .line 1610
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1613
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1615
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsConfigImpl;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1617
    .local v3, "spValueEncrypt":Ljava/lang/String;
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1618
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    monitor-exit p0

    return-void

    .line 1594
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spValueEncrypt":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized setSpliceMncMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    monitor-enter p0

    .line 1353
    :try_start_0
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    monitor-exit p0

    return-void

    .line 1352
    .end local p1    # "spliceMncMcc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw p1
.end method

.method declared-synchronized spliceMncMcc()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 1371
    const/4 v0, 0x0

    .line 1373
    .local v0, "spMncMcc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v4, v3, :cond_0

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v4, v3, :cond_1

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1389
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spMCCMNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    monitor-exit p0

    return-object v0

    .line 1384
    :cond_1
    :try_start_1
    const-string v3, "spliceMncMcc error: Get wrong MCC MNC"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    monitor-exit p0

    return-object v2

    .line 1396
    :cond_2
    :try_start_2
    const-string v3, "spliceMncMcc error: Cannot get sim MCC MNC "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1398
    monitor-exit p0

    return-object v2

    .line 1370
    .end local v0    # "spMncMcc":Ljava/lang/String;
    .end local v1    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    throw v0
.end method
