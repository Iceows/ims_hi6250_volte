.class public Lcom/huawei/ims/HwImsConfigImpl;
.super Lcom/huawei/ims/ImsConfigImpl;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsConfigImpl$ConfigType;,
        Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
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

.field private static final DEFAULT_UT_VOWIFI_DELAY_END_TIME:I = 0xea60

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

.field private static final INVALID_VALUE:I = -0x1

.field public static final IS_ATT:Z

.field private static final IS_ATT_WF:Z

.field private static final IS_DEFAULT_UT_GBA_LIFETIME_BE_USED:Z = false

.field public static final IS_FEATURE_VOLTE_DYN:Z

.field private static final IS_JP:Z

.field private static final IS_UT_BSF_USE_HTTPS:Z

.field private static final IS_UT_CS_BE_USED:Z

.field private static final IS_UT_HRS_LOG:Z

.field private static final IS_UT_KSNAF_USE_BASE64:Z

.field private static final IS_UT_NAF_USE_HTTPS:Z

.field private static final IS_UT_USE_NODE_SELECTOR:Z

.field private static final IS_UT_USE_TMPI:Z

.field private static final IS_UT_USE_XCAP_NAMESPACE:Z

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

.field public static final MMI_002004_NONE_CSFB:Ljava/lang/String; = "mmi_002_004_none_csfb_bool"

.field private static final NODE_CFNR_USE_IR92V10_OR_GREATER:I = 0x11

.field public static final OIR_SOURCE_FROM_LOCAL:I = 0x1

.field public static final OIR_SOURCE_FROM_UT:I = 0x0

.field public static final PREFER_TO_USE_UT_XML_KEY:Ljava/lang/String; = "preferToUseUT"

.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final REMOVE_VOWIFI_ICON_UNDER_CSCYCALL:Ljava/lang/String; = "remove_vowifi_icon_under_cscall"

.field public static final SEPARATOR_TAG:Ljava/lang/String; = ","

.field public static final SET_CALLWAITING_TO_ACTIVE:Ljava/lang/String; = "set_callwaiting_to_active_bool"

.field public static final SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDeactDefaultNoReplyTimer"

.field public static final SET_DEFAULT_NO_REPLY_TIMER_XML_KEY:Ljava/lang/String; = "setDefaultNoReplyTimer"

.field static final SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

.field static final SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

.field static final SIM_IMSI_KEY:[Ljava/lang/String;

.field private static final SLOT_0:I = 0x0

.field public static final SS_NOT_SUPPORT_MMI_CODE_XML_KEY:Ljava/lang/String; = "ssNotSupportMMICode"

.field public static final SS_TYPE_FORBID_FALLBACK_CS_XML_KEY:Ljava/lang/String; = "ssTypeForbidFallbackCS"

.field public static final SS_TYPE_USE_CS_ONLY_PROP_KEY:Ljava/lang/String; = "persist.ut.ssTypeUseCsOnly"

.field public static final SS_TYPE_USE_CS_ONLY_XML_KEY:Ljava/lang/String; = "ssTypeUseCsOnly"

.field public static final STRING_NOT_INITIALIZED:Ljava/lang/String; = "SNIT"

.field public static final TRUE_VALUE:Ljava/lang/String; = "true"

.field private static final UPDATE_SIM_IMSI_INFO_SETTINGS_0:Ljava/lang/String; = "update_sim_imsi_info_settings_0"

.field private static final UPDATE_SIM_IMSI_INFO_SETTINGS_1:Ljava/lang/String; = "update_sim_imsi_info_settings_1"

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

.field public static final UT_BSF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.bsfusehttps"

.field public static final UT_BSF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utBsfUsehttps"

.field public static final UT_CAN_USE_WIFI_XML_KEY:Ljava/lang/String; = "utCanUseWifi"

.field public static final UT_CS_BE_USED_PROP_KEY:Ljava/lang/String; = "persist.ut.csbeused"

.field public static final UT_CS_BE_USED_XML_KEY:Ljava/lang/String; = "utCSBeUsed"

.field public static final UT_FORBIDDEN_TIME_XML_KEY:Ljava/lang/String; = "utForbiddenTimer"

.field public static final UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF:Ljava/lang/String; = "utForbiddenWhenVolteSwitchOff"

.field public static final UT_FORBIDDEN_WVSO_PROP_KEY:Ljava/lang/String; = "persist.ut.forbiddenWVSO"

.field public static final UT_GBA_ME_TYPE:I = 0x0

.field private static final UT_GBA_TYPE:I

.field public static final UT_GBA_TYPE_PROP_KEY:Ljava/lang/String; = "persist.ut.gbatype"

.field public static final UT_GBA_TYPE_XML_KEY:Ljava/lang/String; = "utGbaType"

.field public static final UT_HRS_LOG_PROP_KEY:Ljava/lang/String; = "persist.ut.hrslog"

.field public static final UT_HRS_LOG_XML_KEY:Ljava/lang/String; = "utHrsLog"

.field private static final UT_IMPI:Ljava/lang/String;

.field public static final UT_IMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.authusername"

.field public static final UT_IMPI_XML_KEY:Ljava/lang/String; = "utIMPI"

.field private static final UT_IMPU:Ljava/lang/String;

.field public static final UT_IMPU_PROP_KEY:Ljava/lang/String; = "persist.ut.localusername"

.field public static final UT_IMPU_XML_KEY:Ljava/lang/String; = "utIMPU"

.field public static final UT_KSNAF_USE_BASE64_PROP_KEY:Ljava/lang/String; = "persist.ut.ksnafbase64"

.field public static final UT_KSNAF_USE_BASE64_XML_KEY:Ljava/lang/String; = "utKsnafUseBase64"

.field public static final UT_NAF_PORT_DEFAULT:I = 0x50

.field public static final UT_NAF_PORT_PROP_KEY:Ljava/lang/String; = "persist.ut.nafport"

.field public static final UT_NAF_PORT_XML_KEY:Ljava/lang/String; = "utNafPort"

.field public static final UT_NAF_SRV_ADDR_PROP_KEY:Ljava/lang/String; = "persist.ut.nafsrvaddr"

.field public static final UT_NAF_SRV_ADDR_XML_KEY:Ljava/lang/String; = "utNafSrvAddr"

.field public static final UT_NAF_USE_HTTPS_PROP_KEY:Ljava/lang/String; = "persist.ut.usehttps"

.field public static final UT_NAF_USE_HTTPS_XML_KEY:Ljava/lang/String; = "utNafUseHttps"

.field public static final UT_OIR_DEFAULT_MODE_XML_KEY:Ljava/lang/String; = "utOIRDefaultMode"

.field public static final UT_OIR_SOURCE_MODE_XML_KEY:Ljava/lang/String; = "utOIRSourceMode"

.field public static final UT_PARAMS_CFG_LENGTH:I = 0x2

.field public static final UT_PARAMS_CONFIG_XML_KEY:Ljava/lang/String; = "utParamsCfg"

.field private static final UT_PARAMS_KEY_GBA_LIFETIME_BE_USED:I = 0x13

.field private static final UT_PARAMS_TLS_CONFIG_XML_KEY:Ljava/lang/String; = "utParamsTLSConfig"

.field private static final UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED:I = 0x1

.field public static final UT_PREFER_OPTION_KEY:Ljava/lang/String; = "utPreferOption"

.field public static final UT_PREFER_TO_USE_UT_PROP_KEY:Ljava/lang/String; = "persist.ut.preferToUseUT"

.field public static final UT_PREFER_USE_DEFAULT_MODE:I = 0x0

.field public static final UT_PREFER_USE_VOLTE_MODE:I = 0x1

.field public static final UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY:Ljava/lang/String; = "ut_prefer_vowifi_when_vowifi_registered"

.field public static final UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY:Ljava/lang/String; = "utQueryDnsIgnoreNetId"

.field private static final UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE:Z = true

.field private static final UT_QUERY_XCAP_APN_EXACT_KEY:Ljava/lang/String; = "utQueryXcapApnExact"

.field public static final UT_RETRY_INTERVAL_XML_KEY:Ljava/lang/String; = "utRetryInterval"

.field public static final UT_USE_APN_XML_KEY:Ljava/lang/String; = "utUseApn"

.field public static final UT_USE_DEFAULT_DATA_APN:I = 0x0

.field public static final UT_USE_IMS_APN:I = 0x2

.field public static final UT_USE_MULTI_CF:Ljava/lang/String; = "utUseMultiCF"

.field public static final UT_USE_NODE_SELECTOR_PROP_KEY:Ljava/lang/String; = "persist.ut.usenodeselector"

.field public static final UT_USE_NODE_SELECTOR_XML_KEY:Ljava/lang/String; = "utUseNodeSelector"

.field public static final UT_USE_TMPI_PROP_KEY:Ljava/lang/String; = "persist.ut.usetmpi"

.field public static final UT_USE_TMPI_XML_KEY:Ljava/lang/String; = "utUseTmpi"

.field public static final UT_USE_UT_COMPLEX_APN:I = 0x3

.field public static final UT_USE_UT_RESERVED_APN:I = 0x1

.field public static final UT_USE_XCAP_NAMESPACE_PROP_KEY:Ljava/lang/String; = "persist.ut.usexcapnamespace"

.field public static final UT_USE_XCAP_NAMESPACE_XML_KEY:Ljava/lang/String; = "utUseXcapNamespace"

.field public static final UT_VOWIFI_DELAY_END_TIME_XML_KEY:Ljava/lang/String; = "utVoWifiDelayEndTime"

.field public static final UT_XCAP_ROOT_URI_PROP_KEY:Ljava/lang/String; = "persist.ut.xcapRootUri"

.field public static final UT_XCAP_ROOT_XML_KEY:Ljava/lang/String; = "utXcapRootUri"

.field private static final UT_X_3GPP_INTEND_ID:Ljava/lang/String;

.field public static final UT_X_3GPP_INTEND_ID_PROP_KEY:Ljava/lang/String; = "persist.ut.x3gppintendid"

.field public static final UT_X_3GPP_INTEND_ID_XML_KEY:Ljava/lang/String; = "utX3gppIntendId"

.field public static final VOLTE_LOWBATTERY_ENDCALL_XML_KEY:Ljava/lang/String; = "volte_lowbattery_endcall"

.field public static final VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT:Ljava/lang/String; = "setImsRegErrorReport"

.field public static final VOWIFI_UT_SWITCH_XML_KEY:Ljava/lang/String; = "vowifi_ut_switch"


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBsfAddrFromSim:Ljava/lang/String;

.field private mCallWaitingMode:I

.field private mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

.field private mCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mCardTypePreferToUseUt:[I

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

.field private mCurrentImsi:Ljava/lang/String;

.field private mDcFailCause:[Ljava/lang/String;

.field private mDcFailCauseToReleaseApn:[Ljava/lang/String;

.field private mDcFailCode:[I

.field private mDcFailCodeToReleaseApn:[I

.field private mDefCallWaitingMode:I

.field private mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

.field private mDefCardTypePreferToUseUt:[I

.field private mDefContentTypeMode:I

.field private mDefDcFailCode:[I

.field private mDefDefaultNeedNoReplyTimer:I

.field private mDefDefaultNoReplyTimer:I

.field private mDefImpiDomain:Ljava/lang/String;

.field private mDefMissedCallTipsDelayTimer:I

.field private mDefMissedCallTipsRingTimer:I

.field private mDefNotSupportMmiCode:[Ljava/lang/String;

.field private mDefSsForbidFallbackCs:[I

.field private mDefSsTypeUseCsOnly:[I

.field private mDefUtBearerType:I

.field private mDefUtBsfPort:I

.field private mDefUtBsfSrvAddr:Ljava/lang/String;

.field private mDefUtGbaType:I

.field private mDefUtImpi:Ljava/lang/String;

.field private mDefUtImpu:Ljava/lang/String;

.field private mDefUtImsDataDelayEndTime:I

.field private mDefUtNafPort:I

.field private mDefUtNafSrvAddr:Ljava/lang/String;

.field private mDefUtOirDefaultMode:I

.field private mDefUtOirSourceMode:I

.field private mDefUtParamsCfg:[Ljava/lang/String;

.field private mDefUtPreferOption:I

.field private mDefUtRetryInterval:[I

.field private mDefUtUseApn:I

.field private mDefUtVoWifiDelayEndTime:I

.field private mDefUtX3gppIntendId:Ljava/lang/String;

.field private mDefUtXcapRootUri:Ljava/lang/String;

.field private mDefaultNeedNoReplyTimer:I

.field private mDefaultNoReplyTimer:I

.field private mDefaultUtForbiddenTimer:I

.field private mDomainNameFromSim:Ljava/lang/String;

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImpiDomain:Ljava/lang/String;

.field private mImpiFromSim:Ljava/lang/String;

.field private mIsActiveCallwaitingFromCs:Z

.field private mIsBuildVersionCarrier:Z

.field private mIsCallWaitingSyncToCs:Z

.field private mIsCallWaitingSyncToImsSdk:Z

.field private mIsCarrierSupportVoWifi:Z

.field private mIsCarrierSupportVolte:Z

.field private mIsCfnrcChangeWithCfnl:Z

.field private mIsCheckServiceWhenIncomingCall:Z

.field private mIsDefActiveCallwaitingFromCs:Z

.field private mIsDefBuildVersionCarrier:Z

.field private mIsDefCfnrcChangeWithCfnl:Z

.field private mIsDefCheckServiceWhenIncomingCall:Z

.field private mIsDefEmergencyUnderWifi:Z

.field private mIsDefHangUpWhenLostNet:Z

.field private mIsDefImsSsBeUsed:Z

.field private mIsDefImsStateFollowVoiceDomain:Z

.field private mIsDefMissedCallDisplay:Z

.field private mIsDefMissedCallTips:Z

.field private mIsDefMissedCallTipsDelay:Z

.field private mIsDefMmi002004NoneCsfb:Z

.field private mIsDefPreferToUseUt:Z

.field private mIsDefRemoveVowifiIconUnderCsCall:Z

.field private mIsDefUse403ForLocalCw:Z

.field private mIsDefUseMultCondition:Z

.field private mIsDefUt409ShowPhrase:Z

.field private mIsDefUtBsfAuthBeUsed:Z

.field private mIsDefUtBsfUseHttps:Z

.field private mIsDefUtCanUseWifi:Z

.field private mIsDefUtCsBeUsed:Z

.field private mIsDefUtForbiddenWhenVolteSwitchOff:Z

.field private mIsDefUtHrsLog:Z

.field private mIsDefUtKsnafUseBase64:Z

.field private mIsDefUtNafUseHttps:Z

.field private mIsDefUtPreferVowifiWhenVowifiReg:Z

.field private mIsDefUtQueryDnsIgnoreNetId:Z

.field private mIsDefUtUseNodeSelector:Z

.field private mIsDefUtUseTmpi:Z

.field private mIsDefUtUseXcapNamespace:Z

.field private mIsDefVolteLowbatteryEndcall:Z

.field private mIsDefaultVowifiUtSwitch:Z

.field private mIsEmergencyUnderWifi:Z

.field private mIsHangUpWhenLostNet:Z

.field private mIsImsSsBeUsed:Z

.field private mIsImsStateFollowVoiceDomain:Z

.field private mIsMissedCallDisplay:Z

.field private mIsMissedCallTips:Z

.field private mIsMissedCallTipsDelay:Z

.field private mIsMmi002004NoneCsfb:Z

.field private mIsPreferToUseUt:Z

.field private mIsProtocolIr92V10orGreater:Z

.field private mIsRemoveVowifiIconUnderCsCall:Z

.field private mIsUse403ForLocalCw:Z

.field private mIsUseMultCondition:Z

.field private mIsUt409ShowPhrase:Z

.field private mIsUtBsfAuthBeUsed:Z

.field private mIsUtBsfUseHttps:Z

.field private mIsUtCanUseWifi:Z

.field private mIsUtCsBeUsed:Z

.field private mIsUtForbiddenWhenVolteSwitchOff:Z

.field private mIsUtGbaLifetimeBeUsed:Z

.field private mIsUtHrsLog:Z

.field private mIsUtKsnafUseBase64:Z

.field private mIsUtNafUseHttps:Z

.field private mIsUtPreferVowifiWhenVowifiReg:Z

.field private mIsUtQueryDnsIgnoreNetId:Z

.field private mIsUtQueryXcapApnExact:Z

.field private mIsUtUseNodeSelector:Z

.field private mIsUtUseTmpi:Z

.field private mIsUtUseXcapNamespace:Z

.field private mIsVolteLowbatteryEndcall:Z

.field private mIsVowifiUtSwitch:Z

.field private mMapconService:Lcom/hisi/mapcon/IMapconService;

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mNotSupportMmiCode:[Ljava/lang/String;

.field private mSlotId:I

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

.field private mSsForbidFallbackCs:[I

.field private mSsTypeUseCsOnly:[I

.field private mUtBearerType:I

.field private mUtBsfPort:I

.field private mUtBsfSrvAddr:Ljava/lang/String;

.field private mUtForbiddenTimer:I

.field private mUtGbaType:I

.field private mUtImpi:Ljava/lang/String;

.field private mUtImpu:Ljava/lang/String;

.field private mUtImsDataDelayEndTime:I

.field private mUtNafPort:I

.field private mUtNafSrvAddr:Ljava/lang/String;

.field private mUtOirDefaultMode:I

.field private mUtOirSourceMode:I

.field private mUtParamsCfg:[Ljava/lang/String;

.field private mUtParamsTlsConfig:Ljava/lang/String;

.field private mUtPreferOption:I

.field private mUtRetryInterval:[I

.field private mUtUseApn:I

.field private mUtVoWifiDelayEndTime:I

.field private mUtX3gppIntendId:Ljava/lang/String;

.field private mUtXcapRootUri:Ljava/lang/String;

.field private mXcapRootUriFromSim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 159
    const-string v0, "ro.config.hw_opta"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "07"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 160
    const-string v0, "ro.config.hw_optb"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "840"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT:Z

    .line 719
    const-string v0, "ro.config.hw_volte_dyn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_FEATURE_VOLTE_DYN:Z

    .line 726
    const-string v0, "sim_imsi_key"

    const-string v3, "sim_imsi_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    .line 728
    const-string v0, "impu_from_network_key"

    const-string v3, "impu_from_network_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    .line 730
    const-string v0, "impu_from_sim_imsi_key"

    const-string v3, "impu_from_sim_imsi_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    .line 732
    const-string v0, "profile_key"

    const-string v3, "profile_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    .line 734
    const-string v0, "profile_param"

    const-string v3, "profile_param2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    .line 737
    const-string v0, "local_call_waiting_key"

    const-string v3, "local_call_waiting_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    .line 740
    const-string v0, "local_OIR_key"

    const-string v3, "local_OIR_key2"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    .line 764
    const-string v0, "ro.config.hw_att_wificall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    .line 774
    const-string v0, "persist.ut.csbeused"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_CS_BE_USED:Z

    .line 779
    const-string v0, "persist.ut.hrslog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_HRS_LOG:Z

    .line 784
    const-string v0, "persist.ut.usehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_NAF_USE_HTTPS:Z

    .line 789
    const-string v0, "persist.ut.bsfusehttps"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_BSF_USE_HTTPS:Z

    .line 794
    nop

    .line 795
    const-string v0, "persist.ut.usenodeselector"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_NODE_SELECTOR:Z

    .line 800
    nop

    .line 801
    const-string v0, "persist.ut.usexcapnamespace"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_XCAP_NAMESPACE:Z

    .line 806
    nop

    .line 807
    const-string v0, "persist.ut.ksnafbase64"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_KSNAF_USE_BASE64:Z

    .line 812
    const-string v0, "persist.ut.gbatype"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    .line 817
    const-string v0, "persist.ut.usetmpi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_TMPI:Z

    .line 822
    nop

    .line 823
    const-string v0, ""

    const-string v1, "persist.ut.x3gppintendid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    .line 828
    const-string v1, "persist.ut.localusername"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;

    .line 833
    const-string v1, "persist.ut.authusername"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;

    .line 837
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    .line 854
    const-string v0, "ro.hw.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_JP:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;I)V
    .registers 8
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "slotId"    # I

    .line 1269
    invoke-direct {p0}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsSsBeUsed:Z

    .line 906
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsSsBeUsed:Z

    .line 908
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtForbiddenWhenVolteSwitchOff:Z

    .line 910
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtForbiddenWhenVolteSwitchOff:Z

    .line 912
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 914
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    .line 916
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCanUseWifi:Z

    .line 918
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCanUseWifi:Z

    .line 920
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    .line 922
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUt:[I

    .line 924
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 926
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 928
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    .line 930
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsTypeUseCsOnly:[I

    .line 932
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    .line 934
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMmiCode:[Ljava/lang/String;

    .line 936
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCsBeUsed:Z

    .line 938
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCsBeUsed:Z

    .line 940
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIr92V10orGreater:Z

    .line 942
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    .line 944
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsForbidFallbackCs:[I

    .line 946
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCfnrcChangeWithCfnl:Z

    .line 948
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCfnrcChangeWithCfnl:Z

    .line 950
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 952
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    .line 955
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 957
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    .line 959
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 961
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    .line 965
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsStateFollowVoiceDomain:Z

    .line 967
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsStateFollowVoiceDomain:Z

    .line 969
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 971
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    .line 973
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtHrsLog:Z

    .line 975
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtHrsLog:Z

    .line 977
    const-string v3, ""

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 979
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    .line 981
    const/16 v4, 0x50

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 983
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    .line 985
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtNafUseHttps:Z

    .line 987
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtNafUseHttps:Z

    .line 989
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 991
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    .line 993
    const/16 v4, 0x1f90

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 995
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    .line 997
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfUseHttps:Z

    .line 999
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfUseHttps:Z

    .line 1001
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseNodeSelector:Z

    .line 1003
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseNodeSelector:Z

    .line 1005
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseXcapNamespace:Z

    .line 1007
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseXcapNamespace:Z

    .line 1009
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtKsnafUseBase64:Z

    .line 1011
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtKsnafUseBase64:Z

    .line 1015
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    .line 1017
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    .line 1019
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 1021
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    .line 1023
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseTmpi:Z

    .line 1025
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseTmpi:Z

    .line 1027
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 1029
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    .line 1031
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    .line 1033
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpu:Ljava/lang/String;

    .line 1035
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    .line 1037
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpi:Ljava/lang/String;

    .line 1039
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 1041
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    .line 1043
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTips:Z

    .line 1045
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTips:Z

    .line 1047
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTipsDelay:Z

    .line 1049
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTipsDelay:Z

    .line 1051
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallDisplay:Z

    .line 1053
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallDisplay:Z

    .line 1055
    const/16 v4, 0x2ee0

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 1057
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    .line 1059
    const v4, 0x1f400

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 1061
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    .line 1063
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCheckServiceWhenIncomingCall:Z

    .line 1065
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCheckServiceWhenIncomingCall:Z

    .line 1068
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsHangUpWhenLostNet:Z

    .line 1070
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefHangUpWhenLostNet:Z

    .line 1073
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 1075
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    .line 1077
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsTlsConfig:Ljava/lang/String;

    .line 1080
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 1082
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    .line 1085
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfAuthBeUsed:Z

    .line 1087
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfAuthBeUsed:Z

    .line 1090
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I

    .line 1092
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirSourceMode:I

    .line 1095
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I

    .line 1097
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirDefaultMode:I

    .line 1100
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUt409ShowPhrase:Z

    .line 1102
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUt409ShowPhrase:Z

    .line 1105
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 1107
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    .line 1110
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 1112
    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    .line 1115
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 1117
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    .line 1119
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 1122
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 1124
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    .line 1127
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtGbaLifetimeBeUsed:Z

    .line 1129
    const v4, 0xea60

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 1131
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    .line 1134
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtPreferVowifiWhenVowifiReg:Z

    .line 1136
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtPreferVowifiWhenVowifiReg:Z

    .line 1139
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsActiveCallwaitingFromCs:Z

    .line 1141
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefActiveCallwaitingFromCs:Z

    .line 1144
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryDnsIgnoreNetId:Z

    .line 1146
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtQueryDnsIgnoreNetId:Z

    .line 1149
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMmi002004NoneCsfb:Z

    .line 1151
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMmi002004NoneCsfb:Z

    .line 1153
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsPreferToUseUt:Z

    .line 1155
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefPreferToUseUt:Z

    .line 1157
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsBuildVersionCarrier:Z

    .line 1159
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefBuildVersionCarrier:Z

    .line 1161
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUse403ForLocalCw:Z

    .line 1163
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUse403ForLocalCw:Z

    .line 1165
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVolte:Z

    .line 1167
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    .line 1169
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUseMultCondition:Z

    .line 1172
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVowifiUtSwitch:Z

    .line 1174
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefaultVowifiUtSwitch:Z

    .line 1177
    const/4 v4, -0x1

    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    .line 1179
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    .line 1182
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    .line 1184
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefEmergencyUnderWifi:Z

    .line 1187
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVoWifi:Z

    .line 1190
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsRemoveVowifiIconUnderCsCall:Z

    .line 1192
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefRemoveVowifiIconUnderCsCall:Z

    .line 1194
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootUriFromSim:Ljava/lang/String;

    .line 1196
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1198
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    .line 1200
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    .line 1202
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    .line 1204
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;

    .line 1207
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    .line 1209
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    .line 1211
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    .line 1213
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    .line 1216
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 1218
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 1220
    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 1222
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVolteLowbatteryEndcall:Z

    .line 1224
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefVolteLowbatteryEndcall:Z

    .line 1226
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryXcapApnExact:Z

    .line 1231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    .line 1234
    iput v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    .line 1245
    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1247
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$1;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1270
    iput p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    .line 1271
    const-string v0, "HwImsConfigImpl construtor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1273
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_172

    .line 1274
    const-string v0, "slotId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1275
    return-void

    .line 1277
    :cond_172
    if-eqz p1, :cond_1ad

    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-nez v0, :cond_179

    goto :goto_1ad

    .line 1281
    :cond_179
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_183

    .line 1282
    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1283
    return-void

    .line 1285
    :cond_183
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1286
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1287
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->init(Landroid/content/Context;)V

    .line 1288
    iget-object v0, p1, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1290
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_1ac

    .line 1291
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    .line 1292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1293
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.hisi.permission.VOWIFI_SPECIAL"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1296
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1ac
    return-void

    .line 1278
    :cond_1ad
    :goto_1ad
    const-string v0, "hwImsServiceImpl or imsRIL is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 55
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p1, "x1"    # Lcom/hisi/mapcon/IMapconService;

    .line 55
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsConfigImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 55
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V

    return-void
.end method

.method private bindMapconService()V
    .registers 6

    .line 3543
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_1e

    .line 3544
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsConfigImpl$2;-><init>(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 3559
    .local v0, "mConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hisi.mapcon"

    const-string v3, "com.hisi.mapcon.MapconService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3560
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 3562
    .end local v0    # "mConnection":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "spValueEncrypt"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .line 2785
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_76

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_76

    .line 2793
    :cond_16
    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2794
    .local v0, "newKey":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 2795
    return-object v2

    .line 2798
    :cond_1f
    invoke-static {v0, p3}, Lcom/huawei/ims/EncryptUtils;->decodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2799
    .local v1, "newParam":Ljava/lang/String;
    if-nez v1, :cond_26

    .line 2800
    return-object v2

    .line 2803
    :cond_26
    invoke-static {p1, v0, v1}, Lcom/huawei/ims/AesEncrypter;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2804
    .local v2, "valueInSp":Ljava/lang/String;
    sget-boolean v3, Lcom/huawei/ims/HwImsConfigImpl;->IS_JP:Z

    if-eqz v3, :cond_75

    .line 2805
    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->isNeedUpdateSp(I)Z

    move-result v3

    .line 2806
    .local v3, "isUpdateSp":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter decrypt, isUpdateSp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2807
    if-nez v2, :cond_75

    if-eqz v3, :cond_75

    .line 2808
    const-string v4, "enter decryptWithSha1"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2809
    invoke-static {p1, v0, v1}, Lcom/huawei/ims/AesEncrypter;->decryptWithSha1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2810
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v2, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2811
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getImpuFromSim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2814
    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setDbValue(II)V

    .line 2818
    .end local v3    # "isUpdateSp":Z
    :cond_75
    return-object v2

    .line 2786
    .end local v0    # "newKey":Ljava/lang/String;
    .end local v1    # "newParam":Ljava/lang/String;
    .end local v2    # "valueInSp":Ljava/lang/String;
    :cond_76
    :goto_76
    const-string v0, "value or key is not exist"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2788
    return-object v2
.end method

.method private encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "spValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2716
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 2717
    const-string v1, "spValue is null, do not encrypt"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2719
    return-object v0

    .line 2722
    :cond_9
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2724
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2726
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2729
    .local v3, "param":Ljava/lang/String;
    const/16 v4, 0x100

    const-string v5, ""

    if-eqz v2, :cond_50

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    if-eqz v3, :cond_50

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_50

    .line 2770
    :cond_42
    invoke-static {v2, v4}, Lcom/huawei/ims/EncryptUtils;->decodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2771
    if-nez v2, :cond_49

    .line 2772
    return-object v0

    .line 2775
    :cond_49
    invoke-static {v2, v3}, Lcom/huawei/ims/EncryptUtils;->decodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2776
    if-nez v3, :cond_c2

    .line 2777
    return-object v0

    .line 2730
    :cond_50
    :goto_50
    const-string v6, "encrypt from SP"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2734
    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v6, v6, v7

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2735
    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v6, v6, v7

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2738
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_8d

    .line 2753
    :cond_76
    invoke-static {v2, v4}, Lcom/huawei/ims/EncryptUtils;->decodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2754
    if-nez v2, :cond_7d

    .line 2755
    return-object v0

    .line 2758
    :cond_7d
    invoke-static {v2, v3}, Lcom/huawei/ims/EncryptUtils;->decodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2759
    if-nez v3, :cond_84

    .line 2760
    return-object v0

    .line 2764
    :cond_84
    const-string v0, "encrypt moveKeyFromSpToDb"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->moveKeyFromSpToDb(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    .line 2739
    :cond_8d
    :goto_8d
    const-string v0, "create AES key"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2742
    invoke-static {v4}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 2743
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/huawei/ims/EncryptUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v3

    .line 2746
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v5, v5, v6

    .line 2747
    invoke-static {v2, v4}, Lcom/huawei/ims/EncryptUtils;->encodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2746
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2748
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    .line 2749
    invoke-static {v2, v3}, Lcom/huawei/ims/EncryptUtils;->encodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2748
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2781
    :cond_c2
    :goto_c2
    invoke-static {p1, v2, v3}, Lcom/huawei/ims/AesEncrypter;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDcFailCause([I)[Ljava/lang/String;
    .registers 11
    .param p1, "codes"    # [I

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "failCauses":[Ljava/lang/String;
    if-eqz p1, :cond_3d

    array-length v1, p1

    if-eqz v1, :cond_3d

    .line 1798
    array-length v1, p1

    .line 1799
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 1800
    const/4 v2, 0x0

    .line 1801
    .local v2, "cause":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1802
    .local v3, "i":I
    array-length v4, p1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_3d

    aget v6, p1, v5

    .line 1803
    .local v6, "code":I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1804
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    aput-object v2, v0, v3

    .line 1805
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

    .line 1802
    .end local v6    # "code":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_d

    .line 1808
    .end local v1    # "size":I
    .end local v2    # "cause":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_3d
    return-object v0
.end method

.method private getParamFromUtParamsCfg(I)I
    .registers 9
    .param p1, "key"    # I

    .line 2425
    const/4 v0, 0x0

    .line 2426
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v1

    .line 2427
    .local v1, "utParamsCfgArray":[Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 2428
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_4b

    .line 2429
    aget-object v3, v1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2430
    .local v3, "utParamsCfg":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    const/4 v5, 0x1

    aget-object v6, v3, v5

    .line 2431
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    goto :goto_42

    .line 2438
    :cond_2a
    :try_start_2a
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2439
    .local v4, "utParam0":I
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_36} :catch_3b

    .line 2443
    .local v5, "utParam1":I
    nop

    .line 2444
    if-ne p1, v4, :cond_48

    .line 2445
    move v0, v5

    .line 2446
    goto :goto_4b

    .line 2440
    .end local v4    # "utParam0":I
    .end local v5    # "utParam1":I
    :catch_3b
    move-exception v4

    .line 2441
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "getParamFromUtParamsCfg : NumberFormatException "

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2442
    goto :goto_48

    .line 2432
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_42
    :goto_42
    const-string v4, "getParamFromUtParamsCfg : config param not right"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2433
    nop

    .line 2428
    .end local v3    # "utParamsCfg":[Ljava/lang/String;
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2450
    .end local v2    # "i":I
    :cond_4b
    :goto_4b
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

    .line 2451
    return v0
.end method

.method private getRootUriFromSim()Ljava/lang/String;
    .registers 4

    .line 3414
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootUriFromSim:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3415
    return-object v0

    .line 3418
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 3419
    const-string v0, "xcap.ims."

    .line 3421
    .local v0, "rootUri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3422
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootUriFromSim:Ljava/lang/String;

    .line 3424
    return-object v0

    .line 3428
    .end local v0    # "rootUri":Ljava/lang/String;
    :cond_24
    const-string v0, "getRootURI error: Get wrong MCC MNC "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3430
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2894
    if-nez p2, :cond_5

    .line 2895
    monitor-exit p0

    return-void

    .line 2899
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    .line 2903
    goto :goto_14

    .line 2893
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_c
    move-exception p1

    goto :goto_16

    .line 2901
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 2902
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v1, "handleBoolTypeConfig NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    .line 2904
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_14
    monitor-exit p0

    return-void

    .line 2893
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_16
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleBoolTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2907
    :try_start_1
    const-string v0, "utCSBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2908
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCsBeUsed:Z

    .line 2909
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCsBeUsed:Z

    goto/16 :goto_dd

    .line 2910
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2911
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCfnrcChangeWithCfnl:Z

    .line 2912
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCfnrcChangeWithCfnl:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCfnrcChangeWithCfnl:Z

    goto/16 :goto_dd

    .line 2913
    :cond_2d
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2914
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsStateFollowVoiceDomain:Z

    .line 2915
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsStateFollowVoiceDomain:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsStateFollowVoiceDomain:Z

    goto/16 :goto_dd

    .line 2916
    :cond_43
    const-string v0, "utHrsLog"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2917
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtHrsLog:Z

    .line 2918
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtHrsLog:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtHrsLog:Z

    goto/16 :goto_dd

    .line 2919
    :cond_59
    const-string v0, "utNafUseHttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2920
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtNafUseHttps:Z

    .line 2921
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtNafUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtNafUseHttps:Z

    goto/16 :goto_dd

    .line 2922
    :cond_6f
    const-string v0, "utBsfUsehttps"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2923
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfUseHttps:Z

    .line 2924
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfUseHttps:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfUseHttps:Z

    goto :goto_dd

    .line 2925
    :cond_84
    const-string v0, "utUseNodeSelector"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2926
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseNodeSelector:Z

    .line 2927
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseNodeSelector:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseNodeSelector:Z

    goto :goto_dd

    .line 2928
    :cond_99
    const-string v0, "utUseXcapNamespace"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2929
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseXcapNamespace:Z

    .line 2930
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseXcapNamespace:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseXcapNamespace:Z

    goto :goto_dd

    .line 2931
    :cond_ae
    const-string v0, "utKsnafUseBase64"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2932
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtKsnafUseBase64:Z

    .line 2933
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtKsnafUseBase64:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtKsnafUseBase64:Z

    goto :goto_dd

    .line 2934
    :cond_c3
    const-string v0, "utUseTmpi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 2935
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseTmpi:Z

    .line 2936
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseTmpi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseTmpi:Z

    goto :goto_dd

    .line 2938
    :cond_d8
    const-string v0, "handleBoolTypeConfigPartOne unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_1 .. :try_end_dd} :catchall_df

    .line 2940
    :goto_dd
    monitor-exit p0

    return-void

    .line 2906
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_df
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleBoolTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2943
    :try_start_1
    const-string v0, "missedCallTips"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2944
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTips:Z

    .line 2945
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTips:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTips:Z

    goto/16 :goto_f3

    .line 2946
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    const-string v0, "missedCallDisplay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2947
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallDisplay:Z

    .line 2948
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallDisplay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallDisplay:Z

    goto/16 :goto_f3

    .line 2949
    :cond_2d
    const-string v0, "missedCallTipsDelay"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2950
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTipsDelay:Z

    .line 2951
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTipsDelay:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTipsDelay:Z

    goto/16 :goto_f3

    .line 2952
    :cond_43
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2953
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCheckServiceWhenIncomingCall:Z

    .line 2954
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCheckServiceWhenIncomingCall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCheckServiceWhenIncomingCall:Z

    goto/16 :goto_f3

    .line 2955
    :cond_59
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2956
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtForbiddenWhenVolteSwitchOff:Z

    .line 2957
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtForbiddenWhenVolteSwitchOff:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtForbiddenWhenVolteSwitchOff:Z

    goto/16 :goto_f3

    .line 2958
    :cond_6f
    const-string v0, "imsSsBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2959
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsSsBeUsed:Z

    .line 2960
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsSsBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsSsBeUsed:Z

    goto/16 :goto_f3

    .line 2961
    :cond_85
    const-string v0, "hangUpWhenLostNet"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2962
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsHangUpWhenLostNet:Z

    .line 2963
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsHangUpWhenLostNet:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefHangUpWhenLostNet:Z

    goto :goto_f3

    .line 2964
    :cond_9a
    const-string v0, "utCanUseWifi"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2965
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCanUseWifi:Z

    .line 2966
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCanUseWifi:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCanUseWifi:Z

    goto :goto_f3

    .line 2967
    :cond_af
    const-string v0, "utBsfAuthBeUsed"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2968
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfAuthBeUsed:Z

    .line 2969
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfAuthBeUsed:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfAuthBeUsed:Z

    goto :goto_f3

    .line 2970
    :cond_c4
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 2971
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryDnsIgnoreNetId:Z

    .line 2972
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryDnsIgnoreNetId:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtQueryDnsIgnoreNetId:Z

    goto :goto_f3

    .line 2973
    :cond_d9
    const-string v0, "volte_lowbattery_endcall"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 2974
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVolteLowbatteryEndcall:Z

    .line 2975
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVolteLowbatteryEndcall:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefVolteLowbatteryEndcall:Z

    goto :goto_f3

    .line 2977
    :cond_ee
    const-string v0, "handleBoolTypeConfigPartTwo unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_1 .. :try_end_f3} :catchall_f5

    .line 2979
    :goto_f3
    monitor-exit p0

    return-void

    .line 2942
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_f5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2984
    if-nez p2, :cond_5

    .line 2985
    monitor-exit p0

    return-void

    .line 2989
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    .line 2993
    goto :goto_14

    .line 2983
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_c
    move-exception p1

    goto :goto_16

    .line 2991
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 2992
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v1, "handleStringTypeConfig NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    .line 2994
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_14
    monitor-exit p0

    return-void

    .line 2983
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_16
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleIntTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 2997
    :try_start_1
    const-string v0, "setDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_de

    if-eqz v0, :cond_21

    .line 2999
    :try_start_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 3000
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_13} :catch_15
    .catchall {:try_start_9 .. :try_end_13} :catchall_de

    .line 3004
    goto/16 :goto_dc

    .line 3001
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_15
    move-exception v0

    .line 3002
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_16
    const-string v1, "handleIntTypeConfigPartOne : mDefaultNoReplyTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3003
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 3004
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_dc

    .line 3005
    :cond_21
    const-string v0, "ContentTypeMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_de

    if-eqz v0, :cond_40

    .line 3007
    :try_start_29
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 3008
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_35
    .catchall {:try_start_29 .. :try_end_33} :catchall_de

    .line 3012
    :goto_33
    goto/16 :goto_dc

    .line 3009
    :catch_35
    move-exception v0

    .line 3010
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_36
    const-string v1, "handleIntTypeConfigPartOne : mContentTypeMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3011
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_33

    .line 3013
    :cond_40
    const-string v0, "callWaitingMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_de

    if-eqz v0, :cond_5f

    .line 3015
    :try_start_48
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 3016
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_52} :catch_54
    .catchall {:try_start_48 .. :try_end_52} :catchall_de

    .line 3020
    :goto_52
    goto/16 :goto_dc

    .line 3017
    :catch_54
    move-exception v0

    .line 3018
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_55
    const-string v1, "handleIntTypeConfigPartOne : mCallWaitingMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3019
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_52

    .line 3021
    :cond_5f
    const-string v0, "utNafPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_de

    if-eqz v0, :cond_7d

    .line 3023
    :try_start_67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 3024
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_71} :catch_72
    .catchall {:try_start_67 .. :try_end_71} :catchall_de

    .line 3028
    :goto_71
    goto :goto_dc

    .line 3025
    :catch_72
    move-exception v0

    .line 3026
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_73
    const-string v1, "handleIntTypeConfigPartOne : mUtNafPort NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3027
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_71

    .line 3029
    :cond_7d
    const-string v0, "utBsfPort"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_de

    if-eqz v0, :cond_9b

    .line 3031
    :try_start_85
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 3032
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_8f} :catch_90
    .catchall {:try_start_85 .. :try_end_8f} :catchall_de

    .line 3036
    :goto_8f
    goto :goto_dc

    .line 3033
    :catch_90
    move-exception v0

    .line 3034
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_91
    const-string v1, "handleIntTypeConfigPartOne : mUtBsfPort NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3035
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_8f

    .line 3037
    :cond_9b
    const-string v0, "utGbaType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_de

    if-eqz v0, :cond_b9

    .line 3039
    :try_start_a3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 3040
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ad} :catch_ae
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_de

    .line 3044
    :goto_ad
    goto :goto_dc

    .line 3041
    :catch_ae
    move-exception v0

    .line 3042
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_af
    const-string v1, "handleIntTypeConfigPartOne : mUtGbaType NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3043
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_ad

    .line 3045
    :cond_b9
    const-string v0, "utBearType"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_de

    if-eqz v0, :cond_d7

    .line 3047
    :try_start_c1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 3048
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_de

    .line 3052
    :goto_cb
    goto :goto_dc

    .line 3049
    :catch_cc
    move-exception v0

    .line 3050
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_cd
    const-string v1, "handleIntTypeConfigPartOne : mUtBearerType NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3051
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_cb

    .line 3054
    :cond_d7
    const-string v0, "handleIntTypeConfigPartOne unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_cd .. :try_end_dc} :catchall_de

    .line 3056
    :goto_dc
    monitor-exit p0

    return-void

    .line 2996
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_de
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleIntTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 3059
    :try_start_1
    const-string v0, "missedCallTipsRingTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_fd

    if-eqz v0, :cond_21

    .line 3061
    :try_start_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 3062
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_13} :catch_15
    .catchall {:try_start_9 .. :try_end_13} :catchall_fd

    .line 3066
    goto/16 :goto_fb

    .line 3063
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_15
    move-exception v0

    .line 3064
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_16
    const-string v1, "handleIntTypeConfigPartTwo : mMissedCallTipsRingTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3065
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 3066
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_fb

    .line 3067
    :cond_21
    const-string v0, "missedCallTipsDelayTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_fd

    if-eqz v0, :cond_40

    .line 3069
    :try_start_29
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 3070
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_35
    .catchall {:try_start_29 .. :try_end_33} :catchall_fd

    .line 3074
    :goto_33
    goto/16 :goto_fb

    .line 3071
    :catch_35
    move-exception v0

    .line 3072
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_36
    const-string v1, "handleIntTypeConfigPartTwo : mMissedCallTipsDelayTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3073
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_33

    .line 3075
    :cond_40
    const-string v0, "utUseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_fd

    if-eqz v0, :cond_5f

    .line 3077
    :try_start_48
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 3078
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_52} :catch_54
    .catchall {:try_start_48 .. :try_end_52} :catchall_fd

    .line 3082
    :goto_52
    goto/16 :goto_fb

    .line 3079
    :catch_54
    move-exception v0

    .line 3080
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_55
    const-string v1, "handleIntTypeConfigPartTwo : mUtUseApn NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3081
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_52

    .line 3083
    :cond_5f
    const-string v0, "utOIRSourceMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_fd

    if-eqz v0, :cond_7e

    .line 3085
    :try_start_67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I

    .line 3086
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirSourceMode:I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_71} :catch_73
    .catchall {:try_start_67 .. :try_end_71} :catchall_fd

    .line 3090
    :goto_71
    goto/16 :goto_fb

    .line 3087
    :catch_73
    move-exception v0

    .line 3088
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_74
    const-string v1, "handleIntTypeConfigPartTwo : mUtOirSourceMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3089
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirSourceMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_71

    .line 3091
    :cond_7e
    const-string v0, "utOIRDefaultMode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_fd

    if-eqz v0, :cond_9c

    .line 3093
    :try_start_86
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I

    .line 3094
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirDefaultMode:I
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_90} :catch_91
    .catchall {:try_start_86 .. :try_end_90} :catchall_fd

    .line 3098
    :goto_90
    goto :goto_fb

    .line 3095
    :catch_91
    move-exception v0

    .line 3096
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_92
    const-string v1, "handleIntTypeConfigPartTwo : mUtOirDefaultMode NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3097
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirDefaultMode:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_90

    .line 3099
    :cond_9c
    const-string v0, "utImsDataDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_a2
    .catchall {:try_start_92 .. :try_end_a2} :catchall_fd

    if-eqz v0, :cond_ba

    .line 3101
    :try_start_a4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 3102
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_ae} :catch_af
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_fd

    .line 3106
    :goto_ae
    goto :goto_fb

    .line 3103
    :catch_af
    move-exception v0

    .line 3104
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_b0
    const-string v1, "handleIntTypeConfigPartTwo : mUtImsDataDelayEndTime NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3105
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_ae

    .line 3107
    :cond_ba
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c0
    .catchall {:try_start_b0 .. :try_end_c0} :catchall_fd

    if-eqz v0, :cond_d8

    .line 3109
    :try_start_c2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 3110
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cc} :catch_cd
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_fd

    .line 3114
    :goto_cc
    goto :goto_fb

    .line 3111
    :catch_cd
    move-exception v0

    .line 3112
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_ce
    const-string v1, "handleIntTypeConfigPartTwo : mDefaultNeedNoReplyTimer NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3113
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_cc

    .line 3115
    :cond_d8
    const-string v0, "utVoWifiDelayEndTime"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_de
    .catchall {:try_start_ce .. :try_end_de} :catchall_fd

    if-eqz v0, :cond_f6

    .line 3117
    :try_start_e0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 3118
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_ea} :catch_eb
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_fd

    .line 3122
    :goto_ea
    goto :goto_fb

    .line 3119
    :catch_eb
    move-exception v0

    .line 3120
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_ec
    const-string v1, "handleIntTypeConfigPartTwo : mUtVoWifiDelayEndTime NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3121
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    iput v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_ea

    .line 3124
    :cond_f6
    const-string v0, "handleIntTypeConfigPartTwo unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_ec .. :try_end_fb} :catchall_fd

    .line 3126
    :goto_fb
    monitor-exit p0

    return-void

    .line 3058
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_fd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 3131
    if-nez p2, :cond_5

    .line 3132
    monitor-exit p0

    return-void

    .line 3136
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_b} :catch_e
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    .line 3141
    goto :goto_14

    .line 3130
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_c
    move-exception p1

    goto :goto_16

    .line 3139
    .restart local p1    # "value":Ljava/lang/String;
    .restart local p2    # "text":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 3140
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v1, "handleStringTypeConfig NumberFormatException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    .line 3142
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_14
    monitor-exit p0

    return-void

    .line 3130
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :goto_16
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleStringTypeConfigPartOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 3145
    :try_start_1
    const-string v0, "cardTypePreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3146
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    .line 3147
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUt:[I

    goto/16 :goto_84

    .line 3148
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_15
    const-string v0, "cardMccMncPreferToUseUT"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3149
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 3150
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    goto :goto_84

    .line 3151
    :cond_28
    const-string v0, "ssTypeForbidFallbackCS"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3152
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    .line 3153
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsForbidFallbackCs:[I

    goto :goto_84

    .line 3154
    :cond_3b
    const-string v0, "ssNotSupportMMICode"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3155
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    .line 3156
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMmiCode:[Ljava/lang/String;

    goto :goto_84

    .line 3157
    :cond_4e
    const-string v0, "ssTypeUseCsOnly"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3158
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    .line 3159
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsTypeUseCsOnly:[I

    goto :goto_84

    .line 3160
    :cond_61
    const-string v0, "utNafSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3161
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 3162
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    goto :goto_84

    .line 3163
    :cond_70
    const-string v0, "utBsfSrvAddr"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3164
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 3165
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    goto :goto_84

    .line 3167
    :cond_7f
    const-string v0, "handleStringTypeConfigPartOne unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_86

    .line 3169
    :goto_84
    monitor-exit p0

    return-void

    .line 3144
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleStringTypeConfigPartTwo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    monitor-enter p0

    .line 3172
    :try_start_1
    const-string v0, "utX3gppIntendId"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3173
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 3174
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    goto/16 :goto_94

    .line 3175
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_11
    const-string v0, "utIMPU"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3176
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    .line 3177
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpu:Ljava/lang/String;

    goto/16 :goto_94

    .line 3178
    :cond_21
    const-string v0, "utIMPI"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3179
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    .line 3180
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpi:Ljava/lang/String;

    goto :goto_94

    .line 3181
    :cond_30
    const-string v0, "utRetryInterval"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3182
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 3183
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    goto :goto_94

    .line 3184
    :cond_43
    const-string v0, "utParamsCfg"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3185
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 3186
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    goto :goto_94

    .line 3187
    :cond_56
    const-string v0, "utXcapRootUri"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3188
    iput-object p2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 3189
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    goto :goto_94

    .line 3190
    :cond_65
    const-string v0, "dcFailCauseForNonVolteSim"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3191
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 3192
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    goto :goto_94

    .line 3193
    :cond_78
    const-string v0, "dcFailCauseToReleaseApn"

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3194
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 3195
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    goto :goto_94

    .line 3197
    :cond_8f
    const-string v0, "handleStringTypeConfigPartTwo unsupport value."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_96

    .line 3199
    :goto_94
    monitor-exit p0

    return-void

    .line 3171
    .end local p1    # "value":Ljava/lang/String;
    .end local p2    # "text":Ljava/lang/String;
    :catchall_96
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 3462
    invoke-static {p0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 2632
    const-string v0, "Exception failed."

    const-string v1, "init enter"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2634
    const/4 v1, 0x0

    .line 2635
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 2636
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 2637
    .local v3, "isExist":Z
    const/4 v4, 0x0

    .line 2640
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    :try_start_c
    const-string v6, "/xml/hw_ims_config.xml"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/huawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    move-object v4, v6

    .line 2642
    if-eqz v4, :cond_40

    .line 2645
    const-string v6, "get file successfully"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2648
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    .line 2649
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    move-object v2, v6

    .line 2650
    const-string v6, "UTF-8"

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2651
    invoke-direct {p0, p1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_4a
    .catchall {:try_start_c .. :try_end_2e} :catchall_48

    .line 2652
    const/4 v3, 0x1

    .line 2657
    nop

    .line 2658
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2659
    const/4 v1, 0x0

    .line 2662
    const-class v6, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 2663
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_57

    goto :goto_66

    .line 2643
    :cond_40
    :try_start_40
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "File does not exist"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "isExist":Z
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v6
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_4a
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    .line 2656
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "isExist":Z
    .restart local v4    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_48
    move-exception v6

    goto :goto_a9

    .line 2653
    :catch_4a
    move-exception v6

    .line 2654
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v7, "Exception"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 2657
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_59

    .line 2658
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2659
    const/4 v1, 0x0

    goto :goto_59

    .line 2666
    :catch_57
    move-exception v5

    goto :goto_69

    .line 2662
    :cond_59
    :goto_59
    if-eqz v2, :cond_6d

    const-class v6, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 2663
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_66} :catch_57

    .line 2664
    :goto_66
    const/4 v0, 0x0

    move-object v2, v0

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_6d

    .line 2667
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "e":Ljava/lang/Exception;
    :goto_69
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2669
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_6e

    .line 2668
    :cond_6d
    :goto_6d
    nop

    .line 2671
    :goto_6e
    if-nez v3, :cond_99

    .line 2672
    const-string v0, "ImsConfig load from ims file"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2674
    const/4 v0, 0x0

    .line 2677
    .local v0, "xmlParser":Landroid/content/res/XmlResourceParser;
    :try_start_76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f030000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v0, v5

    .line 2678
    if-eqz v0, :cond_86

    .line 2679
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_86} :catch_8c
    .catchall {:try_start_76 .. :try_end_86} :catchall_8a

    .line 2684
    :cond_86
    if-eqz v0, :cond_99

    .line 2685
    :goto_88
    const/4 v0, 0x0

    goto :goto_99

    .line 2684
    :catchall_8a
    move-exception v5

    goto :goto_95

    .line 2681
    :catch_8c
    move-exception v5

    .line 2682
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_8d
    const-string v6, "load file exception caught"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_8a

    .line 2684
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_99

    .line 2685
    goto :goto_88

    .line 2684
    :goto_95
    if-eqz v0, :cond_98

    .line 2685
    const/4 v0, 0x0

    :cond_98
    throw v5

    .line 2691
    .end local v0    # "xmlParser":Landroid/content/res/XmlResourceParser;
    :cond_99
    :goto_99
    :try_start_99
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 2694
    goto :goto_a3

    .line 2692
    :catch_9d
    move-exception v0

    .line 2693
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "can\'t resolve call waiting mode"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2696
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_a3
    const-string v0, "init finish"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2697
    return-void

    .line 2657
    :goto_a9
    if-eqz v1, :cond_b2

    .line 2658
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2659
    const/4 v1, 0x0

    goto :goto_b2

    .line 2666
    :catch_b0
    move-exception v5

    goto :goto_c2

    .line 2662
    :cond_b2
    :goto_b2
    if-eqz v2, :cond_c6

    const-class v7, Landroid/content/res/XmlResourceParser;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 2663
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_bf} :catch_b0

    .line 2664
    const/4 v0, 0x0

    move-object v2, v0

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_c6

    .line 2667
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_c2
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_c7

    .line 2668
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c6
    :goto_c6
    nop

    :goto_c7
    throw v6
.end method

.method private isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propType"    # Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    .line 3434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3436
    .local v0, "keyLength":I
    const/16 v1, 0x1f

    if-le v0, v1, :cond_1e

    .line 3437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the prop name length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3439
    const/4 v1, 0x0

    return v1

    .line 3442
    :cond_1e
    const/4 v1, 0x0

    .line 3444
    .local v1, "isConfigInProp":Z
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$3;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType:[I

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_36

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    const/4 v3, 0x3

    if-eq v2, v3, :cond_36

    .line 3454
    const-string v2, "can\'t recognise this prop type"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_43

    .line 3448
    :cond_36
    const-string v2, ""

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3449
    .local v3, "propValue":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 3450
    const/4 v1, 0x1

    .line 3458
    .end local v3    # "propValue":Ljava/lang/String;
    :cond_43
    :goto_43
    return v1
.end method

.method private isContainInImsConfig([II)Z
    .registers 6
    .param p1, "imsConfig"    # [I
    .param p2, "serviceValue"    # I

    .line 3256
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_1a

    .line 3262
    :cond_7
    const/4 v1, 0x0

    .local v1, "number":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 3263
    aget v2, p1, v1

    if-ne p2, v2, :cond_15

    .line 3264
    const-string v2, "Current SS type or card type is contained by ims config."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3266
    return v0

    .line 3262
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3270
    .end local v1    # "number":I
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 3257
    :cond_1a
    :goto_1a
    const-string v1, "ims config is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3259
    return v0
.end method

.method private isContainInImsConfig([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "imsConfig"    # [Ljava/lang/String;
    .param p2, "serviceValue"    # Ljava/lang/String;

    .line 3274
    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 3275
    const-string v1, "ims config is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3277
    return v0

    .line 3280
    :cond_9
    const/4 v1, 0x0

    .local v1, "number":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_40

    .line 3281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3283
    aget-object v2, p1, v1

    if-eqz v2, :cond_3d

    .line 3284
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3285
    const-string v2, "serviceValue is contained by ims config."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3287
    return v0

    .line 3280
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3292
    .end local v1    # "number":I
    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedUpdateSp(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 2829
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_15

    .line 2830
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_sim_imsi_info_settings_0"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0

    .line 2832
    :cond_15
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_sim_imsi_info_settings_1"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method private isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cfgTag"    # Ljava/lang/String;
    .param p2, "xmlTag"    # Ljava/lang/String;

    .line 2852
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2854
    .local v0, "cfgLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 2855
    return v2

    .line 2858
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_1e

    .line 2859
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 2860
    return v2

    .line 2858
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2864
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method private loadImsConfig(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 3203
    const-string v0, "parser close error"

    :try_start_2
    const-string v1, "ims_config"

    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->startPositionOfImsConfigXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3206
    :goto_7
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsConfigImpl;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3207
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_e} :catch_71
    .catchall {:try_start_2 .. :try_end_e} :catchall_6f

    .line 3209
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_27

    .line 3210
    nop

    .line 3241
    .end local v1    # "tag":Ljava/lang/String;
    instance-of v1, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_1b

    .line 3242
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 3245
    :cond_1b
    instance-of v1, p2, Lcom/android/org/kxml2/io/KXmlParser;

    if-eqz v1, :cond_ab

    .line 3247
    :try_start_1f
    move-object v1, p2

    check-cast v1, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_a7

    goto/16 :goto_ab

    .line 3213
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 3214
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 3215
    .local v2, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3217
    .local v4, "text":Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3d

    .line 3218
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3221
    :cond_3d
    const-string v5, "name"

    invoke-direct {p0, v5, v3}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 3222
    const-string v5, "bool"

    invoke-direct {p0, v5, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 3224
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleBoolTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 3225
    :cond_51
    const-string v5, "int"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 3227
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleIntTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 3228
    :cond_5d
    const-string v5, "string"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 3230
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/HwImsConfigImpl;->handleStringTypeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 3232
    :cond_69
    const-string v5, "loadImsConfig unsupport value."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6e} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_6e} :catch_71
    .catchall {:try_start_28 .. :try_end_6e} :catchall_6f

    .line 3235
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_6e
    :goto_6e
    goto :goto_7

    .line 3241
    :catchall_6f
    move-exception v1

    goto :goto_ac

    .line 3238
    :catch_71
    move-exception v1

    .line 3239
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_72
    const-string v2, "loadImsConfig parse xml error."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_6f

    .line 3241
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    instance-of v1, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_81

    .line 3242
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 3245
    :cond_81
    instance-of v1, p2, Lcom/android/org/kxml2/io/KXmlParser;

    if-eqz v1, :cond_ab

    .line 3247
    :try_start_85
    move-object v1, p2

    check-cast v1, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8b} :catch_a7

    goto :goto_ab

    .line 3236
    :catch_8c
    move-exception v1

    .line 3237
    .local v1, "e":Ljava/io/IOException;
    :try_start_8d
    const-string v2, "loadImsConfig IOException occur."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_6f

    .line 3241
    .end local v1    # "e":Ljava/io/IOException;
    instance-of v1, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_9c

    .line 3242
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 3245
    :cond_9c
    instance-of v1, p2, Lcom/android/org/kxml2/io/KXmlParser;

    if-eqz v1, :cond_ab

    .line 3247
    :try_start_a0
    move-object v1, p2

    check-cast v1, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-virtual {v1}, Lcom/android/org/kxml2/io/KXmlParser;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a6} :catch_a7

    goto :goto_ab

    .line 3248
    :catch_a7
    move-exception v1

    .line 3249
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3253
    .end local v1    # "e":Ljava/io/IOException;
    :cond_ab
    :goto_ab
    return-void

    .line 3241
    :goto_ac
    instance-of v2, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_b6

    .line 3242
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 3245
    :cond_b6
    instance-of v2, p2, Lcom/android/org/kxml2/io/KXmlParser;

    if-eqz v2, :cond_c5

    .line 3247
    :try_start_ba
    move-object v2, p2

    check-cast v2, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-virtual {v2}, Lcom/android/org/kxml2/io/KXmlParser;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c0} :catch_c1

    .line 3250
    goto :goto_c5

    .line 3248
    :catch_c1
    move-exception v2

    .line 3249
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3250
    .end local v2    # "e":Ljava/io/IOException;
    :cond_c5
    :goto_c5
    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 3470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

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

    .line 3471
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 3474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

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

    .line 3475
    return-void
.end method

.method private moveKeyFromSpToDb(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .line 2700
    const-string v0, "moveKeyFromSpToDb enter."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2703
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v1, v1, v2

    .line 2704
    const/16 v2, 0x100

    invoke-static {p2, v2}, Lcom/huawei/ims/EncryptUtils;->encodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2703
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2705
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v1, v1, v2

    .line 2706
    invoke-static {p2, p3}, Lcom/huawei/ims/EncryptUtils;->encodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2705
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2709
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2710
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2711
    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2712
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2713
    return-void
.end method

.method private nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2885
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2886
    .local v0, "type":I
    :goto_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 2887
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 2889
    :cond_f
    return-void
.end method

.method private readBoolCarrierConfig(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 2546
    if-nez p1, :cond_3

    .line 2547
    return-void

    .line 2550
    :cond_3
    const-string v0, "utCSBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2551
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :cond_10
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCsBeUsed:Z

    :goto_12
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCsBeUsed:Z

    .line 2552
    const-string v0, "CFNRcChangeWithCFNL"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2553
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_23

    :cond_21
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCfnrcChangeWithCfnl:Z

    :goto_23
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCfnrcChangeWithCfnl:Z

    .line 2554
    const-string v0, "ImsStateFollowVoiceDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2555
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_34

    :cond_32
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsStateFollowVoiceDomain:Z

    :goto_34
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsStateFollowVoiceDomain:Z

    .line 2556
    const-string v0, "utHrsLog"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_45

    :cond_43
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtHrsLog:Z

    :goto_45
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtHrsLog:Z

    .line 2557
    const-string v0, "utNafUseHttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 2558
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_56

    :cond_54
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtNafUseHttps:Z

    :goto_56
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtNafUseHttps:Z

    .line 2559
    const-string v0, "utBsfUsehttps"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 2560
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_67

    :cond_65
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfUseHttps:Z

    :goto_67
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfUseHttps:Z

    .line 2561
    const-string v0, "utUseNodeSelector"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 2562
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_78

    :cond_76
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseNodeSelector:Z

    :goto_78
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseNodeSelector:Z

    .line 2563
    const-string v0, "utUseXcapNamespace"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 2564
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_89

    :cond_87
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseXcapNamespace:Z

    :goto_89
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseXcapNamespace:Z

    .line 2565
    const-string v0, "utKsnafUseBase64"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 2566
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9a

    :cond_98
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtKsnafUseBase64:Z

    :goto_9a
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtKsnafUseBase64:Z

    .line 2567
    const-string v0, "utUseTmpi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 2568
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_ab

    :cond_a9
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtUseTmpi:Z

    :goto_ab
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseTmpi:Z

    .line 2569
    const-string v0, "missedCallTips"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 2570
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_bc

    :cond_ba
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTips:Z

    :goto_bc
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTips:Z

    .line 2571
    const-string v0, "missedCallDisplay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 2572
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_cd

    :cond_cb
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallDisplay:Z

    :goto_cd
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallDisplay:Z

    .line 2573
    const-string v0, "missedCallTipsDelay"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 2574
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_de

    :cond_dc
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMissedCallTipsDelay:Z

    :goto_de
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTipsDelay:Z

    .line 2575
    const-string v0, "checkServiceWhenIncomingCall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ed

    .line 2576
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_ef

    :cond_ed
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefCheckServiceWhenIncomingCall:Z

    :goto_ef
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCheckServiceWhenIncomingCall:Z

    .line 2577
    const-string v0, "utForbiddenWhenVolteSwitchOff"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 2578
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_100

    :cond_fe
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtForbiddenWhenVolteSwitchOff:Z

    :goto_100
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtForbiddenWhenVolteSwitchOff:Z

    .line 2579
    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_111

    .line 2580
    const-string v0, "imsSsBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_113

    :cond_111
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefImsSsBeUsed:Z

    :goto_113
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsSsBeUsed:Z

    .line 2583
    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_124

    .line 2584
    const-string v0, "preferToUseUT"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_126

    :cond_124
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefPreferToUseUt:Z

    :goto_126
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsPreferToUseUt:Z

    .line 2586
    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_137

    .line 2587
    const-string v0, "utCanUseWifi"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_139

    :cond_137
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtCanUseWifi:Z

    :goto_139
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCanUseWifi:Z

    .line 2589
    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14a

    .line 2590
    const-string v0, "hangUpWhenLostNet"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14c

    :cond_14a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefHangUpWhenLostNet:Z

    :goto_14c
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsHangUpWhenLostNet:Z

    .line 2592
    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15d

    .line 2593
    const-string v0, "utBsfAuthBeUsed"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_15f

    :cond_15d
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtBsfAuthBeUsed:Z

    :goto_15f
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfAuthBeUsed:Z

    .line 2594
    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 2595
    const-string v0, "vowifi_ut_switch"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_172

    :cond_170
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefaultVowifiUtSwitch:Z

    :goto_172
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVowifiUtSwitch:Z

    .line 2596
    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 2597
    const-string v0, "carrier_build_version_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_185

    :cond_183
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefBuildVersionCarrier:Z

    :goto_185
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsBuildVersionCarrier:Z

    .line 2598
    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_196

    .line 2599
    const-string v0, "use_403_for_local_cw"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_198

    :cond_196
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUse403ForLocalCw:Z

    :goto_198
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUse403ForLocalCw:Z

    .line 2600
    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a9

    .line 2601
    const-string v0, "ut409ShowPhrase"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1ab

    :cond_1a9
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUt409ShowPhrase:Z

    :goto_1ab
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUt409ShowPhrase:Z

    .line 2602
    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1bc

    .line 2603
    const-string v0, "carrier_volte_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1bd

    :cond_1bc
    const/4 v0, 0x0

    :goto_1bd
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVolte:Z

    .line 2604
    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1ce

    .line 2605
    const-string v0, "utUseMultiCF"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d0

    :cond_1ce
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUseMultCondition:Z

    :goto_1d0
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z

    .line 2606
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 2607
    const-string v0, "utQueryDnsIgnoreNetId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1e3

    :cond_1e1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtQueryDnsIgnoreNetId:Z

    :goto_1e3
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryDnsIgnoreNetId:Z

    .line 2608
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f4

    .line 2609
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1f5

    :cond_1f4
    const/4 v0, 0x0

    :goto_1f5
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVoWifi:Z

    .line 2610
    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_206

    .line 2611
    const-string v0, "volte_lowbattery_endcall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_208

    :cond_206
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefVolteLowbatteryEndcall:Z

    :goto_208
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVolteLowbatteryEndcall:Z

    .line 2612
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_219

    .line 2613
    const-string v0, "keep_vowifi_feature_under_emergencycall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_21b

    :cond_219
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefEmergencyUnderWifi:Z

    :goto_21b
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z

    .line 2614
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22c

    .line 2615
    const-string v0, "ut_prefer_vowifi_when_vowifi_registered"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_22e

    :cond_22c
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefUtPreferVowifiWhenVowifiReg:Z

    :goto_22e
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtPreferVowifiWhenVowifiReg:Z

    .line 2616
    const-string v0, "set_callwaiting_to_active_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23f

    .line 2617
    const-string v0, "set_callwaiting_to_active_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_241

    :cond_23f
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefActiveCallwaitingFromCs:Z

    :goto_241
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsActiveCallwaitingFromCs:Z

    .line 2618
    const-string v0, "mmi_002_004_none_csfb_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_252

    .line 2619
    const-string v0, "mmi_002_004_none_csfb_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_254

    :cond_252
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefMmi002004NoneCsfb:Z

    :goto_254
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMmi002004NoneCsfb:Z

    .line 2620
    const-string v0, "remove_vowifi_icon_under_cscall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_265

    .line 2621
    const-string v0, "remove_vowifi_icon_under_cscall"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_267

    :cond_265
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsDefRemoveVowifiIconUnderCsCall:Z

    :goto_267
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsRemoveVowifiIconUnderCsCall:Z

    .line 2622
    const/4 v0, 0x1

    const-string v1, "utQueryXcapApnExact"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryXcapApnExact:Z

    .line 2623
    return-void
.end method

.method private readIntCarrierConfig(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 2494
    if-nez p1, :cond_3

    .line 2495
    return-void

    .line 2497
    :cond_3
    const-string v0, "setDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2498
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_12

    :cond_10
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNoReplyTimer:I

    :goto_12
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I

    .line 2500
    const-string v0, "ContentTypeMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2501
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_23

    :cond_21
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefContentTypeMode:I

    :goto_23
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I

    .line 2503
    const-string v0, "callWaitingMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2504
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_34

    :cond_32
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCallWaitingMode:I

    :goto_34
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I

    .line 2506
    const-string v0, "utNafPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_45

    :cond_43
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafPort:I

    :goto_45
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I

    .line 2508
    const-string v0, "utBsfPort"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_56

    :cond_54
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfPort:I

    :goto_56
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I

    .line 2510
    const-string v0, "utGbaType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_67

    :cond_65
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtGbaType:I

    :goto_67
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I

    .line 2512
    const-string v0, "setDeactDefaultNoReplyTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 2513
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    :cond_76
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDefaultNeedNoReplyTimer:I

    :goto_78
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I

    .line 2515
    const-string v0, "utBearType"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 2516
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_89

    :cond_87
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBearerType:I

    :goto_89
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I

    .line 2518
    const-string v0, "missedCallTipsRingTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 2519
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_9a

    :cond_98
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsRingTimer:I

    :goto_9a
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I

    .line 2521
    const-string v0, "missedCallTipsDelayTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 2522
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_ab

    :cond_a9
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefMissedCallTipsDelayTimer:I

    :goto_ab
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I

    .line 2524
    const-string v0, "utUseApn"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ba

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_bc

    :cond_ba
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtUseApn:I

    :goto_bc
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I

    .line 2526
    const-string v0, "utOIRSourceMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_cb

    .line 2527
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_cd

    :cond_cb
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirSourceMode:I

    :goto_cd
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I

    .line 2529
    const-string v0, "utOIRDefaultMode"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 2530
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_de

    :cond_dc
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtOirDefaultMode:I

    :goto_de
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I

    .line 2532
    const-string v0, "utImsDataDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ed

    .line 2533
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_ef

    :cond_ed
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I

    :goto_ef
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I

    .line 2535
    const-string v0, "utVoWifiDelayEndTime"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 2536
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_100

    :cond_fe
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtVoWifiDelayEndTime:I

    :goto_100
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I

    .line 2538
    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_111

    .line 2539
    const-string v0, "utForbiddenTimer"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_113

    :cond_111
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultUtForbiddenTimer:I

    :goto_113
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    .line 2541
    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_124

    .line 2542
    const-string v0, "utPreferOption"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_126

    :cond_124
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtPreferOption:I

    :goto_126
    iput v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I

    .line 2543
    return-void
.end method

.method private readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 2473
    if-nez p1, :cond_3

    .line 2474
    return-void

    .line 2476
    :cond_3
    const-string v0, "utNafSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2477
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_10
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtNafSrvAddr:Ljava/lang/String;

    :goto_12
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    .line 2478
    const-string v0, "utBsfSrvAddr"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2479
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_21
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtBsfSrvAddr:Ljava/lang/String;

    :goto_23
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    .line 2480
    const-string v0, "utX3gppIntendId"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2481
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_32
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtX3gppIntendId:Ljava/lang/String;

    :goto_34
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;

    .line 2482
    const-string v0, "utIMPU"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_43
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpu:Ljava/lang/String;

    :goto_45
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    .line 2483
    const-string v0, "utIMPI"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_54
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImpi:Ljava/lang/String;

    :goto_56
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    .line 2485
    const-string v0, "utXcapRootUri"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 2486
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    :cond_65
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtXcapRootUri:Ljava/lang/String;

    :goto_67
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;

    .line 2489
    const-string v0, "impiDomain"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_76
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefImpiDomain:Ljava/lang/String;

    :goto_78
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    .line 2491
    return-void
.end method

.method private resolveCallWaitingMode()V
    .registers 5

    .line 3375
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingMode()I

    move-result v0

    .line 3377
    .local v0, "callWaitingMode":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    .line 3378
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    goto :goto_f

    .line 3380
    :cond_d
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z

    .line 3383
    :goto_f
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_16

    .line 3384
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    goto :goto_18

    .line 3386
    :cond_16
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z

    .line 3389
    :goto_18
    and-int/lit8 v1, v0, 0xc

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    .line 3391
    .local v1, "callWaitingSource":I
    if-eqz v1, :cond_43

    if-eq v1, v3, :cond_3e

    if-eq v1, v2, :cond_39

    .line 3402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call waiting source is not exist, source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_48

    .line 3399
    :cond_39
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 3400
    goto :goto_48

    .line 3396
    :cond_3e
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 3397
    goto :goto_48

    .line 3393
    :cond_43
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    iput-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 3394
    nop

    .line 3406
    :goto_48
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

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3410
    return-void
.end method

.method private setDbValue(II)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    .line 2844
    if-nez p1, :cond_e

    .line 2845
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_sim_imsi_info_settings_0"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_19

    .line 2847
    :cond_e
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_sim_imsi_info_settings_1"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2849
    :goto_19
    return-void
.end method

.method private setVoWifiStatus(I)V
    .registers 7
    .param p1, "value"    # I

    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoWifiStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3647
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_19

    .line 3648
    return-void

    .line 3650
    :cond_19
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_23

    .line 3651
    const-string v0, "mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3652
    return-void

    .line 3656
    :cond_23
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 3660
    .local v0, "phoneId":I
    const/4 v1, 0x0

    const-string v2, "HwImsConfigImpl"

    if-eqz p1, :cond_4b

    const/4 v3, 0x1

    if-eq p1, v3, :cond_32

    goto :goto_64

    .line 3662
    :cond_32
    :try_start_32
    iget-object v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v4, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOn(I)I

    .line 3663
    const-string v4, "set vowifi on successful"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3665
    sget-boolean v4, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v4, :cond_64

    .line 3666
    const-string v4, "Wifi-Call HwImsConfigImpl set vowifi on successful"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V

    goto :goto_64

    .line 3674
    :cond_4b
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v3, v0}, Lcom/hisi/mapcon/IMapconService;->setVoWifiOff(I)I

    .line 3675
    const-string v3, "set vowifi off successful"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3677
    sget-boolean v3, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT_WF:Z

    if-eqz v3, :cond_64

    .line 3678
    const-string v3, "Wifi-Call HwImsConfigImpl set vowifi off successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setWifiEmergencyAid(ZLandroid/os/Message;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_64} :catch_65

    .line 3690
    :cond_64
    :goto_64
    goto :goto_6b

    .line 3688
    :catch_65
    move-exception v1

    .line 3689
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "set vowifi status failed"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3691
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6b
    return-void
.end method

.method private startPositionOfImsConfigXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2869
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2871
    .local v0, "type":I
    :goto_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 2872
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 2875
    :cond_f
    if-ne v0, v1, :cond_2a

    .line 2879
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2882
    return-void

    .line 2880
    :cond_22
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Unexpected start tag: found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2876
    :cond_2a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stringToIntArray(Ljava/lang/String;)[I
    .registers 10
    .param p1, "stringText"    # Ljava/lang/String;

    .line 3296
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 3297
    const-string v1, "stringText is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3299
    new-array v0, v0, [I

    return-object v0

    .line 3303
    :cond_b
    const-string v1, ""

    const-string v2, " "

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3305
    .local v2, "stringReplaceSpace":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3306
    const-string v1, "stringText is null after replace space. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3308
    new-array v0, v0, [I

    return-object v0

    .line 3311
    :cond_21
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3313
    .local v3, "stringTextArray":[Ljava/lang/String;
    array-length v4, v3

    if-nez v4, :cond_32

    .line 3314
    const-string v1, "stringTextArray length is 0 after replace space."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3316
    new-array v0, v0, [I

    return-object v0

    .line 3319
    :cond_32
    array-length v0, v3

    new-array v0, v0, [I

    .line 3321
    .local v0, "intArray":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    array-length v5, v3

    if-ge v4, v5, :cond_71

    .line 3322
    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, -0x1e240

    if-nez v5, :cond_6c

    .line 3324
    :try_start_44
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4c} :catch_4d

    .line 3328
    goto :goto_55

    .line 3325
    :catch_4d
    move-exception v5

    .line 3326
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "stringToIntArray : NumberFormatException "

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3327
    aput v6, v0, v4

    .line 3330
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intArray[i] =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_6e

    .line 3332
    :cond_6c
    aput v6, v0, v4

    .line 3321
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 3336
    .end local v4    # "i":I
    :cond_71
    return-object v0
.end method

.method private stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "stringText"    # Ljava/lang/String;

    .line 3340
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 3341
    const-string v1, "stringText is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3343
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 3347
    :cond_b
    const-string v1, ""

    const-string v2, " "

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3349
    .local v2, "stringReplaceSpace":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3350
    const-string v1, "stringText is null after replace space."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3352
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 3355
    :cond_21
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3357
    .local v3, "stringArray":[Ljava/lang/String;
    array-length v4, v3

    if-nez v4, :cond_32

    .line 3358
    const-string v1, "stringArray length is 0 after replace space."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 3360
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 3363
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    array-length v4, v3

    if-ge v0, v4, :cond_5b

    .line 3364
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3365
    const-string v4, "SNIT"

    aput-object v4, v3, v0

    .line 3368
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stringArray[i]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3363
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 3371
    .end local v0    # "i":I
    :cond_5b
    return-object v3
.end method


# virtual methods
.method public getBoolCarrierBuildVersion()Z
    .registers 2

    .line 3699
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsBuildVersionCarrier:Z

    return v0
.end method

.method declared-synchronized getBoolFromSp(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 6
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isDefValue"    # Z

    monitor-enter p0

    .line 2310
    :try_start_1
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2312
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v1

    .line 2309
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "isDefValue":Z
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getBsfAddrFromSim()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2148
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2149
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_32

    monitor-exit p0

    return-object v0

    .line 2152
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 2153
    const-string v0, "bsf."

    .line 2155
    .local v0, "bsf":Ljava/lang/String;
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

    .line 2156
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_32

    .line 2158
    monitor-exit p0

    return-object v0

    .line 2162
    .end local v0    # "bsf":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    const-string v0, "getBsfAddrFromSim error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_32

    .line 2164
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2147
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCallWaitingMode()I
    .registers 5

    monitor-enter p0

    .line 1543
    :try_start_1
    const-string v0, "persist.ims.cwlocalset"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1544
    .local v0, "callWaitingMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingMode, callWaitingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1545
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_39

    .line 1547
    .local v1, "callWaitingModeInt":I
    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_25
    .catchall {:try_start_1f .. :try_end_23} :catchall_39

    move v1, v2

    .line 1550
    goto :goto_2b

    .line 1548
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_25
    move-exception v2

    .line 1549
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_26
    const-string v3, "getCallWaitingMode : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1552
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2b
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v2, v1

    goto :goto_37

    :cond_35
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingMode:I
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_39

    :goto_37
    monitor-exit p0

    return v2

    .line 1542
    .end local v0    # "callWaitingMode":Ljava/lang/String;
    .end local v1    # "callWaitingModeInt":I
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    .registers 2

    monitor-enter p0

    .line 1579
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCallWaitingSource:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigInt(I)I
    .registers 4
    .param p1, "item"    # I

    .line 3528
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3529
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3531
    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .registers 4
    .param p1, "item"    # I

    .line 3536
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3537
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3539
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getContentTypeMode()I
    .registers 2

    monitor-enter p0

    .line 1525
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContentTypeMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDefUtImsDataDelayEndTime()I
    .registers 2

    monitor-enter p0

    .line 2201
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtImsDataDelayEndTime:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDefaultNeedNoReplyTimer()I
    .registers 2

    monitor-enter p0

    .line 1516
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNeedNoReplyTimer:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDefaultNoReplyTimer()I
    .registers 2

    monitor-enter p0

    .line 1507
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefaultNoReplyTimer:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDomainName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1959
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIccId()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2099
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2102
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2103
    .local v1, "record":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    goto :goto_18

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    const/4 v2, 0x0

    :goto_18
    monitor-exit p0

    return-object v2

    .line 2098
    .end local v0    # "phoneId":I
    .end local v1    # "record":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getImpiFromSim()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2126
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2127
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_53

    monitor-exit p0

    return-object v0

    .line 2130
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@ims."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2133
    .local v0, "impu":Ljava/lang/String;
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_53

    .line 2137
    monitor-exit p0

    return-object v0

    .line 2141
    .end local v0    # "impu":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    const-string v0, "getImpiFromSim error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_53

    .line 2143
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2125
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getImpuFromSim()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2108
    :try_start_1
    const-string v0, "sip:"

    .line 2110
    .local v0, "impu":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 2111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

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

    .line 2113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assemble IMPU from SIM, impu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4f

    .line 2115
    monitor-exit p0

    return-object v0

    .line 2119
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_47
    :try_start_47
    const-string v1, "getSimIMPU error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4f

    .line 2121
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 2107
    .end local v0    # "impu":Ljava/lang/String;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 9
    .param p1, "configKey"    # Ljava/lang/String;

    .line 3618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsConfig, configKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3619
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 3620
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_b3

    .line 3621
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x111c7745

    const-string v4, "getDMUSER"

    const-string v5, "getSmsConfig"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_38

    const v3, 0x1420b6aa

    if-eq v2, v3, :cond_30

    :cond_2f
    goto :goto_3f

    :cond_30
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v1, v6

    goto :goto_3f

    :cond_38
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_84

    if-eq v1, v6, :cond_58

    .line 3636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsConfig, configKey not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_b2

    .line 3630
    :cond_58
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 3631
    const-string v3, "dm_user_ims_value"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3630
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3632
    .local v1, "dmUserValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, dmUserValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    goto :goto_b2

    .line 3623
    .end local v1    # "dmUserValue":Ljava/lang/String;
    :cond_84
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 3624
    const-string v3, "sms_ims_set_value"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 3623
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3626
    .local v1, "smsConfigValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsConfig, smsConfigValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3628
    nop

    .line 3637
    .end local v1    # "smsConfigValue":I
    :goto_b2
    goto :goto_b8

    .line 3640
    :cond_b3
    const-string v1, "getImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3642
    :goto_b8
    return-object v0
.end method

.method declared-synchronized getImsi()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2022
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIntFromSp(Ljava/lang/String;Landroid/content/Context;I)I
    .registers 6
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # I

    monitor-enter p0

    .line 2325
    :try_start_1
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2327
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v1

    .line 2324
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "defValue":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getIsEmergencyUnderWifi()Z
    .registers 2

    monitor-enter p0

    .line 3722
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsEmergencyUnderWifi:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIsUseMultCondition()Z
    .registers 2

    monitor-enter p0

    .line 1418
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUseMultCondition:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMissedCallTipsDelayTimer()I
    .registers 2

    monitor-enter p0

    .line 2014
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsDelayTimer:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMissedCallTipsRingTimer()I
    .registers 2

    monitor-enter p0

    .line 2010
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMissedCallTipsRingTimer:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOirDefaultMode()I
    .registers 2

    monitor-enter p0

    .line 2193
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirDefaultMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOirSourceMode()I
    .registers 2

    monitor-enter p0

    .line 2184
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtOirSourceMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 2229
    :try_start_1
    const-string v0, "enter getSharedPreferences, spKey"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2238
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 2239
    const-string v1, "value is already stored in map."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_97

    .line 2240
    monitor-exit p0

    return-object v0

    .line 2243
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    :try_start_17
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2245
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2247
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2250
    .local v3, "param":Ljava/lang/String;
    if-eqz v2, :cond_4f

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    if-eqz v3, :cond_4f

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 2251
    :cond_4f
    const-string v4, "getSharedPreferences from SP."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2255
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2256
    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SHARED_PREFERENCES_PROFILE_PARAM:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 2259
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 2261
    const-string v4, "getSharedPreferences moveKeyFromSpToDb."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2262
    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->moveKeyFromSpToDb(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :cond_86
    const-string v4, ""

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2268
    .local v4, "spValueEncrypt":Ljava/lang/String;
    invoke-direct {p0, v4, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2270
    .local v5, "valueInSp":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_17 .. :try_end_95} :catchall_97

    .line 2272
    monitor-exit p0

    return-object v5

    .line 2228
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "spValueEncrypt":Ljava/lang/String;
    .end local v5    # "valueInSp":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSimOperator()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2091
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2094
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2095
    .local v1, "record":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    goto :goto_18

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    const/4 v2, 0x0

    :goto_18
    monitor-exit p0

    return-object v2

    .line 2090
    .end local v0    # "phoneId":I
    .end local v1    # "record":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUt409ShowPhrase()Z
    .registers 2

    monitor-enter p0

    .line 2205
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUt409ShowPhrase:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtBearerType()I
    .registers 5

    monitor-enter p0

    .line 1775
    :try_start_1
    const-string v0, "persist.ut.bearType"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, "utBearerType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtBearerType, utBearerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1777
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_39

    .line 1779
    .local v1, "utBearerTypeInt":I
    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_25
    .catchall {:try_start_1f .. :try_end_23} :catchall_39

    move v1, v2

    .line 1782
    goto :goto_2b

    .line 1780
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_25
    move-exception v2

    .line 1781
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_26
    const-string v3, "getUtBearerType : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1784
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2b
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v2, v1

    goto :goto_37

    :cond_35
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBearerType:I
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_39

    :goto_37
    monitor-exit p0

    return v2

    .line 1774
    .end local v0    # "utBearerType":Ljava/lang/String;
    .end local v1    # "utBearerTypeInt":I
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtBsfPort()I
    .registers 5

    monitor-enter p0

    .line 1705
    :try_start_1
    const-string v0, "persist.ut.bsfport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "utBsfPort":Ljava/lang/String;
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    .line 1708
    .local v1, "utBsfPortInt":I
    :try_start_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_11
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    move v1, v2

    .line 1711
    goto :goto_17

    .line 1709
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_11
    move-exception v2

    .line 1710
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_12
    const-string v3, "getUtBsfPort : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1713
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_17
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v2, v1

    goto :goto_23

    :cond_21
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfPort:I
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_25

    :goto_23
    monitor-exit p0

    return v2

    .line 1704
    .end local v0    # "utBsfPort":Ljava/lang/String;
    .end local v1    # "utBsfPortInt":I
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtBsfSrvAddr()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1658
    :try_start_1
    const-string v0, "persist.ut.bsfsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1660
    .local v0, "utBsfSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1661
    const-string v1, "use bsf addr from prop, bsf"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_40

    .line 1663
    monitor-exit p0

    return-object v0

    .line 1666
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_18
    :try_start_18
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1667
    const-string v1, "use bsf addr from xml, bsf addr"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1669
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtBsfSrvAddr:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_40

    monitor-exit p0

    return-object v1

    .line 1672
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getBsfAddrFromSim()Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "bsfAddr":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 1675
    const-string v2, "use bsf addr from sim, bsf"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_40

    .line 1677
    monitor-exit p0

    return-object v1

    .line 1680
    :cond_38
    :try_start_38
    const-string v2, "pick bsf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_40

    .line 1682
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 1657
    .end local v0    # "utBsfSrvAddr":Ljava/lang/String;
    .end local v1    # "bsfAddr":Ljava/lang/String;
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUtForbiddenTimer()I
    .registers 2

    .line 2460
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtForbiddenTimer:I

    return v0
.end method

.method declared-synchronized getUtGbaType()I
    .registers 3

    monitor-enter p0

    .line 1766
    :try_start_1
    const-string v0, "persist.ut.gbatype"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_GBA_TYPE:I

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtGbaType:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1854
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1855
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsServiceImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1856
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2d

    monitor-exit p0

    return-object v0

    .line 1858
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_25
    :try_start_25
    const-string v0, "getUtIMPUFromNetwork imsi not equals return null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2d

    .line 1859
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1853
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtImpi()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 1914
    :try_start_1
    const-string v0, "persist.ut.authusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2a

    .line 1915
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

    .line 1917
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPI:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_107

    monitor-exit p0

    return-object v0

    .line 1920
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2a
    :try_start_2a
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impi from xml, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1923
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpi:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_107

    monitor-exit p0

    return-object v0

    .line 1927
    :cond_52
    :try_start_52
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impi from sim already exist, impi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1929
    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1928
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_107

    monitor-exit p0

    return-object v0

    .line 1934
    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    if-eqz v0, :cond_ff

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin to assemble impi from imsi, mSpliceMncMcc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;

    .line 1936
    invoke-static {v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->transMccMncToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, "impi":Ljava/lang/String;
    const-string v2, ""

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 1940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_e3

    .line 1942
    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;

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

    .line 1945
    :goto_e3
    iput-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;

    .line 1947
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
    :try_end_fd
    .catchall {:try_start_7e .. :try_end_fd} :catchall_107

    .line 1949
    monitor-exit p0

    return-object v0

    .line 1953
    .end local v0    # "impi":Ljava/lang/String;
    :cond_ff
    :try_start_ff
    const-string v0, "getImpiFromSim error: Cannot splice sim MCC MNC or can\'t get imsi from sim."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_ff .. :try_end_104} :catchall_107

    .line 1955
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1913
    :catchall_107
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtImpu(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1869
    :try_start_1
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2a

    .line 1870
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

    .line 1872
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_IMPU:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_a9

    monitor-exit p0

    return-object v0

    .line 1875
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2a
    :try_start_2a
    const-string v0, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use impu from xml, impu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_a9

    monitor-exit p0

    return-object v0

    .line 1881
    :cond_52
    const/4 v0, 0x0

    .line 1884
    .local v0, "impu":Ljava/lang/String;
    :try_start_53
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1887
    if-eqz v0, :cond_7a

    .line 1888
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
    :try_end_78
    .catchall {:try_start_53 .. :try_end_78} :catchall_a9

    .line 1890
    monitor-exit p0

    return-object v0

    .line 1894
    :cond_7a
    :try_start_7a
    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1897
    if-eqz v0, :cond_a1

    .line 1898
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
    :try_end_9f
    .catchall {:try_start_7a .. :try_end_9f} :catchall_a9

    .line 1900
    monitor-exit p0

    return-object v0

    .line 1903
    :cond_a1
    :try_start_a1
    const-string v1, "pick impu fail."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_a9

    .line 1905
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1868
    .end local v0    # "impu":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getUtImsDataDelayEndTime()I
    .registers 2

    monitor-enter p0

    .line 2197
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImsDataDelayEndTime:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtNafPort()I
    .registers 5

    monitor-enter p0

    .line 1630
    :try_start_1
    const-string v0, "persist.ut.nafport"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, "utNafPort":Ljava/lang/String;
    const-string v1, "getUtNafPort "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1632
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    .line 1634
    .local v1, "utNafPortInt":I
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_16
    .catchall {:try_start_10 .. :try_end_14} :catchall_2a

    move v1, v2

    .line 1637
    goto :goto_1c

    .line 1635
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catch_16
    move-exception v2

    .line 1636
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_17
    const-string v3, "getUtNafPort : NumberFormatException "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 1639
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1c
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    move v2, v1

    goto :goto_28

    :cond_26
    iget v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafPort:I
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2a

    :goto_28
    monitor-exit p0

    return v2

    .line 1629
    .end local v0    # "utNafPort":Ljava/lang/String;
    .end local v1    # "utNafPortInt":I
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtNafSrvAddr()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1597
    :try_start_1
    const-string v0, "persist.ut.nafsrvaddr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "utNafSrvAddr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1600
    const-string v1, "use naf addr from prop"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_40

    .line 1602
    monitor-exit p0

    return-object v0

    .line 1605
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_18
    :try_start_18
    const-string v1, ""

    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1606
    const-string v1, "use naf addr from xml, naf "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1608
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtNafSrvAddr:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_40

    monitor-exit p0

    return-object v1

    .line 1611
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getRootUriFromSim()Ljava/lang/String;

    move-result-object v1

    .line 1613
    .local v1, "nafAddr":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 1614
    const-string v2, "use naf addr from sim, naf "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_40

    .line 1616
    monitor-exit p0

    return-object v1

    .line 1619
    :cond_38
    :try_start_38
    const-string v2, "pick naf addr fail."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_40

    .line 1621
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 1596
    .end local v0    # "utNafSrvAddr":Ljava/lang/String;
    .end local v1    # "nafAddr":Ljava/lang/String;
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtParamsCfg()[Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2172
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtParamsTlsConfig()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 2176
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsTlsConfig:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtPreferOption()I
    .registers 2

    monitor-enter p0

    .line 1757
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtPreferOption:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtRetryInterval(I)I
    .registers 4
    .param p1, "index"    # I

    monitor-enter p0

    .line 1982
    const/4 v0, -0x1

    if-gez p1, :cond_6

    .line 1983
    monitor-exit p0

    return v0

    .line 1986
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v1, v1

    if-gt v1, p1, :cond_10

    goto :goto_16

    .line 1990
    :cond_10
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    aget v0, v0, p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    monitor-exit p0

    return v0

    .line 1987
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_16
    :goto_16
    monitor-exit p0

    return v0

    .line 1981
    .end local p1    # "index":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getUtRetryMaxCounts()I
    .registers 2

    monitor-enter p0

    .line 1968
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    .line 1969
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1971
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    array-length v0, v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    .line 1967
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtUseApn()I
    .registers 2

    monitor-enter p0

    .line 1352
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtUseApn:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtVoWifiDelayEndTime()I
    .registers 2

    monitor-enter p0

    .line 2213
    :try_start_1
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtVoWifiDelayEndTime:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtX3gppIntendId()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1844
    :try_start_1
    const-string v0, "persist.ut.x3gppintendid"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1845
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl;->UT_X_3GPP_INTEND_ID:Ljava/lang/String;

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtX3gppIntendId:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1844
    :goto_10
    monitor-exit p0

    return-object v0

    .line 1843
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUtXcapRootUri()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1694
    :try_start_1
    const-string v0, "persist.ut.xcapRootUri"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1696
    .local v0, "utXcapRootUri":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    move-object v1, v0

    goto :goto_15

    :cond_13
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtXcapRootUri:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :goto_15
    monitor-exit p0

    return-object v1

    .line 1693
    .end local v0    # "utXcapRootUri":Ljava/lang/String;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVowifiUtSwitch()Z
    .registers 2

    monitor-enter p0

    .line 1690
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVowifiUtSwitch:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isActiveCallwaitingFromCs()Z
    .registers 2

    monitor-enter p0

    .line 1788
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsActiveCallwaitingFromCs:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToCs()Z
    .registers 2

    monitor-enter p0

    .line 1570
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToCs:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCallWaitingSyncToImsSdk()Z
    .registers 2

    monitor-enter p0

    .line 1561
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCallWaitingSyncToImsSdk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCardMccMncPreferToUseUt(Ljava/lang/String;)Z
    .registers 5
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    monitor-enter p0

    .line 1396
    :try_start_1
    const-string v0, "persist.ut.preferToUseUT"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "preferToUseUt":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1398
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_46

    monitor-exit p0

    return v1

    .line 1402
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_17
    :try_start_17
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->IS_FEATURE_VOLTE_DYN:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    .line 1403
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsPreferToUseUt:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVoWifi()Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_46

    if-eqz v1, :cond_2d

    :cond_2c
    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    monitor-exit p0

    return v2

    .line 1406
    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_44

    if-nez p1, :cond_3c

    goto :goto_44

    .line 1410
    :cond_3c
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_46

    monitor-exit p0

    return v1

    .line 1407
    :cond_44
    :goto_44
    monitor-exit p0

    return v2

    .line 1395
    .end local v0    # "preferToUseUt":Ljava/lang/String;
    .end local p1    # "cardMccMnc":Ljava/lang/String;
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isCardTypePreferToUseUt(I)Z
    .registers 4
    .param p1, "cardType"    # I

    monitor-enter p0

    .line 1375
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCardTypePreferToUseUt, Card type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    array-length v0, v0

    if-nez v0, :cond_1f

    goto :goto_27

    .line 1383
    :cond_1f
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([II)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2f

    monitor-exit p0

    return v0

    .line 1378
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_27
    :goto_27
    :try_start_27
    const-string v0, "mCardTypePreferToUseUt is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    .line 1380
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1374
    .end local p1    # "cardType":I
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isCarrierSupportVoWifi()Z
    .registers 2

    monitor-enter p0

    .line 1414
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVoWifi:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCarrierSupportVolte()Z
    .registers 2

    monitor-enter p0

    .line 1360
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCarrierSupportVolte:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCfnrcChangeWithCfnl()Z
    .registers 2

    monitor-enter p0

    .line 1498
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCfnrcChangeWithCfnl:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCheckServiceWhenIncomingCall()Z
    .registers 2

    monitor-enter p0

    .line 2018
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsCheckServiceWhenIncomingCall:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1812
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 1817
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    monitor-exit p0

    return v0

    .line 1813
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_13
    :goto_13
    :try_start_13
    const-string v0, "mDcFailCause is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1b

    .line 1814
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1811
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isDcFailCauseToReleaseApn(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cause"    # Ljava/lang/String;

    monitor-enter p0

    .line 1821
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 1826
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    monitor-exit p0

    return v0

    .line 1822
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_13
    :goto_13
    :try_start_13
    const-string v0, "isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1b

    .line 1823
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1820
    .end local p1    # "cause":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isHangUpWhenLostNet()Z
    .registers 2

    monitor-enter p0

    .line 2168
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsHangUpWhenLostNet:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isImpuConfigured()Z
    .registers 3

    monitor-enter p0

    .line 2030
    :try_start_1
    const-string v0, "persist.ut.localusername"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, ""

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtImpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1c

    if-nez v0, :cond_16

    goto :goto_19

    .line 2033
    :cond_16
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2031
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_19
    :goto_19
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2029
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isImsSsBeUsed()Z
    .registers 2

    monitor-enter p0

    .line 1330
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsSsBeUsed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isImsStateFollowVoiceDomain()Z
    .registers 2

    monitor-enter p0

    .line 1534
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsImsStateFollowVoiceDomain:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallDisplay()Z
    .registers 2

    monitor-enter p0

    .line 2002
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallDisplay:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTips()Z
    .registers 2

    monitor-enter p0

    .line 1994
    :try_start_1
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTipsDelay()Z
    .registers 2

    monitor-enter p0

    .line 2006
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTipsDelay:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMissedCallTipsInternal()Z
    .registers 2

    monitor-enter p0

    .line 1998
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMissedCallTips:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isMmi002004NoneCsfb()Z
    .registers 2

    monitor-enter p0

    .line 1792
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsMmi002004NoneCsfb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isProtocolIr92V10orGreater()Z
    .registers 2

    .line 2469
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIr92V10orGreater:Z

    return v0
.end method

.method declared-synchronized isRemoveVowifiIconUnderCsCall()Z
    .registers 2

    monitor-enter p0

    .line 3726
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsRemoveVowifiIconUnderCsCall:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSsForbidFallbackCs(I)Z
    .registers 4
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 1480
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSSForbidFallbackCS, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    array-length v0, v0

    if-nez v0, :cond_1f

    goto :goto_27

    .line 1488
    :cond_1f
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([II)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2f

    monitor-exit p0

    return v0

    .line 1483
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_27
    :goto_27
    :try_start_27
    const-string v0, "mSsForbidFallbackCs is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    .line 1485
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1479
    .end local p1    # "ssType":I
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isSsUseCsOnly(I)Z
    .registers 5
    .param p1, "ssType"    # I

    monitor-enter p0

    .line 1429
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSsUseCsOnly, ss type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1431
    const-string v0, "persist.ut.ssTypeUseCsOnly"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "suppServiceTypeUseCsOnly":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSsUseCsOnly, SSTypeUseCsOnly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1434
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1435
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_40

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_3e
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    :goto_40
    iput-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    .line 1437
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    array-length v1, v1

    if-nez v1, :cond_4c

    goto :goto_54

    .line 1443
    :cond_4c
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    invoke-direct {p0, v1, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([II)Z

    move-result v1
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_5c

    monitor-exit p0

    return v1

    .line 1438
    :cond_54
    :goto_54
    :try_start_54
    const-string v1, "mSsTypeUseCsOnly is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5c

    .line 1440
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1428
    .end local v0    # "suppServiceTypeUseCsOnly":Ljava/lang/String;
    .end local p1    # "ssType":I
    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isUnSupportMmiCode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mmicode"    # Ljava/lang/String;

    monitor-enter p0

    .line 1453
    :try_start_1
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

    .line 1455
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_24

    goto :goto_2c

    .line 1461
    :cond_24
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsConfigImpl;->isContainInImsConfig([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    monitor-exit p0

    return v0

    .line 1456
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2c
    :goto_2c
    :try_start_2c
    const-string v0, "mNotSupportMmiCode is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logw(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_34

    .line 1458
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1452
    .end local p1    # "mmicode":Ljava/lang/String;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isUse403ForLocalCw()Z
    .registers 2

    monitor-enter p0

    .line 1356
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUse403ForLocalCw:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtBsfAuthBeUsed()Z
    .registers 2

    monitor-enter p0

    .line 2180
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfAuthBeUsed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtBsfUseHttps()Z
    .registers 3

    monitor-enter p0

    .line 1722
    :try_start_1
    const-string v0, "persist.ut.bsfusehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1723
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_BSF_USE_HTTPS:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtBsfUseHttps:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1722
    :goto_10
    monitor-exit p0

    return v0

    .line 1721
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtCanUseWifi()Z
    .registers 2

    monitor-enter p0

    .line 1364
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCanUseWifi:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtCsBeUsed()Z
    .registers 3

    monitor-enter p0

    .line 1470
    :try_start_1
    const-string v0, "persist.ut.csbeused"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_CS_BE_USED:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtCsBeUsed:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtForbiddenWhenVolteSwitchOff()Z
    .registers 4

    monitor-enter p0

    .line 1339
    :try_start_1
    const-string v0, "persist.ut.forbiddenWVSO"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utForbiddenWhenVolteSwitchOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1342
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1343
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2c

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2a
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtForbiddenWhenVolteSwitchOff:Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 1342
    :goto_2c
    monitor-exit p0

    return v1

    .line 1338
    .end local v0    # "utForbiddenWhenVolteSwitchOff":Ljava/lang/String;
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtGbaLifetimeBeUsed()Z
    .registers 2

    monitor-enter p0

    .line 2209
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtGbaLifetimeBeUsed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtKsNafEncodedByBase64()Z
    .registers 3

    monitor-enter p0

    .line 1752
    :try_start_1
    const-string v0, "persist.ut.ksnafbase64"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1753
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_KSNAF_USE_BASE64:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtKsnafUseBase64:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1752
    :goto_10
    monitor-exit p0

    return v0

    .line 1751
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtNafUseHttps()Z
    .registers 3

    monitor-enter p0

    .line 1648
    :try_start_1
    const-string v0, "persist.ut.usehttps"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1649
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_NAF_USE_HTTPS:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtNafUseHttps:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1648
    :goto_10
    monitor-exit p0

    return v0

    .line 1647
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtOpenHrsLog()Z
    .registers 3

    monitor-enter p0

    .line 1588
    :try_start_1
    const-string v0, "persist.ut.hrslog"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_HRS_LOG:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtHrsLog:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtPreferVowifiWhenVowifiReg()Z
    .registers 2

    monitor-enter p0

    .line 1686
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtPreferVowifiWhenVowifiReg:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtQueryDnsIgnoreNetId()Z
    .registers 2

    monitor-enter p0

    .line 2217
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryDnsIgnoreNetId:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtQueryXcapApnExact()Z
    .registers 2

    monitor-enter p0

    .line 3735
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtQueryXcapApnExact:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseNodeSelector()Z
    .registers 3

    monitor-enter p0

    .line 1732
    :try_start_1
    const-string v0, "persist.ut.usenodeselector"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1733
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_NODE_SELECTOR:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseNodeSelector:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1732
    :goto_10
    monitor-exit p0

    return v0

    .line 1731
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseTmpi()Z
    .registers 3

    monitor-enter p0

    .line 1835
    :try_start_1
    const-string v0, "persist.ut.usetmpi"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_TMPI:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseTmpi:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUtUseXcapNameSpace()Z
    .registers 3

    monitor-enter p0

    .line 1742
    :try_start_1
    const-string v0, "persist.ut.usexcapnamespace"

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isConfigInProp(Ljava/lang/String;Lcom/huawei/ims/HwImsConfigImpl$ConfigType;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1743
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_UT_USE_XCAP_NAMESPACE:Z

    goto :goto_10

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtUseXcapNamespace:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1742
    :goto_10
    monitor-exit p0

    return v0

    .line 1741
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isVolteLowbatteryEndcall()Z
    .registers 2

    monitor-enter p0

    .line 3717
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsVolteLowbatteryEndcall:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOnTransact , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x0

    if-eqz p2, :cond_45

    if-nez p3, :cond_1a

    goto :goto_45

    .line 1312
    :cond_1a
    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_1f

    .line 1325
    return v0

    .line 1314
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "mmiCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1316
    .local v1, "result":I
    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUnSupportMmiCode(Ljava/lang/String;)Z

    move-result v2

    .line 1318
    .local v2, "isUnSupportMmiCode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnSupportMmiCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 1319
    move v1, v2

    .line 1321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    const/4 v3, 0x1

    return v3

    .line 1310
    .end local v0    # "mmiCode":Ljava/lang/String;
    .end local v1    # "result":I
    .end local v2    # "isUnSupportMmiCode":Z
    :cond_45
    :goto_45
    return v0
.end method

.method declared-synchronized readCarrierConfig(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 2349
    :try_start_1
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_FEATURE_VOLTE_DYN:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_166

    if-nez v0, :cond_7

    .line 2350
    monitor-exit p0

    return-void

    .line 2353
    :cond_7
    :try_start_7
    const-string v0, "readCarrierConfig begin"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2354
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15f

    const-string v0, "carrier_config"

    .line 2355
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_20

    goto/16 :goto_15f

    .line 2359
    :cond_20
    const-string v0, "carrier_config"

    .line 2360
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2364
    .local v0, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    iget v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v1

    .line 2366
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2368
    .local v2, "bundle":Landroid/os/PersistableBundle;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readBoolCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 2369
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readIntCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 2370
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->readStringCarrierConfig(Landroid/os/PersistableBundle;)V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_166

    .line 2373
    :try_start_3f
    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 2374
    const-string v3, "cardTypePreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_54

    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_52
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardTypePreferToUseUt:[I

    :goto_54
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardTypePreferToUseUt:[I

    .line 2375
    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 2376
    const-string v3, "ssTypeForbidFallbackCS"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_6b

    :cond_69
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsForbidFallbackCs:[I

    :goto_6b
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsForbidFallbackCs:[I

    .line 2377
    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 2378
    const-string v3, "ssTypeUseCsOnly"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_82

    :cond_80
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefSsTypeUseCsOnly:[I

    :goto_82
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSsTypeUseCsOnly:[I

    .line 2379
    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 2380
    const-string v3, "utRetryInterval"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_99

    :cond_97
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtRetryInterval:[I

    :goto_99
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtRetryInterval:[I

    .line 2383
    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 2384
    const-string v3, "cardMccMncPreferToUseUT"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_b0

    .line 2385
    :cond_ae
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefCardMccMncPreferToUseUt:[Ljava/lang/String;

    :goto_b0
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCardMccMncPreferToUseUt:[Ljava/lang/String;

    .line 2386
    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 2387
    const-string v3, "ssNotSupportMMICode"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_c7

    :cond_c5
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefNotSupportMmiCode:[Ljava/lang/String;

    :goto_c7
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mNotSupportMmiCode:[Ljava/lang/String;

    .line 2389
    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_dc

    .line 2390
    const-string v3, "utParamsCfg"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_de

    :cond_dc
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefUtParamsCfg:[Ljava/lang/String;

    :goto_de
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsCfg:[Ljava/lang/String;

    .line 2393
    const-string v3, "utParamsTLSConfig"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f0

    .line 2394
    const-string v3, "utParamsTLSConfig"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f1

    :cond_f0
    move-object v3, v4

    :goto_f1
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mUtParamsTlsConfig:Ljava/lang/String;

    .line 2397
    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_106

    .line 2398
    const-string v3, "dcFailCauseForNonVolteSim"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_108

    :cond_106
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDefDcFailCode:[I

    :goto_108
    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    .line 2399
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCode:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCause:[Ljava/lang/String;

    .line 2402
    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_125

    .line 2403
    const-string v3, "dcFailCauseToReleaseApn"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_126

    :cond_125
    nop

    :goto_126
    iput-object v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    .line 2404
    iget-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCodeToReleaseApn:[I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getDcFailCause([I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDcFailCauseToReleaseApn:[Ljava/lang/String;
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_130} :catch_131
    .catchall {:try_start_3f .. :try_end_130} :catchall_166

    .line 2408
    goto :goto_137

    .line 2406
    :catch_131
    move-exception v3

    .line 2407
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_132
    const-string v4, "RuntimeException"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 2411
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_137
    invoke-direct {p0}, Lcom/huawei/ims/HwImsConfigImpl;->resolveCallWaitingMode()V

    .line 2413
    nop

    .line 2414
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_147

    .line 2415
    move v3, v5

    goto :goto_148

    :cond_147
    move v3, v4

    :goto_148
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsProtocolIr92V10orGreater:Z

    .line 2418
    nop

    .line 2419
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getParamFromUtParamsCfg(I)I

    move-result v3

    if-ne v3, v5, :cond_155

    .line 2420
    move v4, v5

    goto :goto_156

    :cond_155
    nop

    :goto_156
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsConfigImpl;->mIsUtGbaLifetimeBeUsed:Z

    .line 2421
    const-string v3, "readCarrierConfig end"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_132 .. :try_end_15d} :catchall_166

    .line 2422
    monitor-exit p0

    return-void

    .line 2356
    .end local v0    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "subId":I
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    :cond_15f
    :goto_15f
    :try_start_15f
    const-string v0, "get CarrierConfigManager fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_15f .. :try_end_164} :catchall_166

    .line 2357
    monitor-exit p0

    return-void

    .line 2348
    .end local p1    # "context":Landroid/content/Context;
    :catchall_166
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 3709
    invoke-static {p2}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3710
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3711
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3712
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3713
    return-void
.end method

.method declared-synchronized setBoolToSp(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 6
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "isSpValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 2316
    :try_start_1
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2318
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2320
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2321
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2322
    monitor-exit p0

    return-void

    .line 2315
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "isSpValue":Z
    .end local p3    # "context":Landroid/content/Context;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setBsfAddrFromSim(Ljava/lang/String;)V
    .registers 2
    .param p1, "bsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 2054
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mBsfAddrFromSim:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2055
    monitor-exit p0

    return-void

    .line 2053
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "bsfAddr":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfig(II)I
    .registers 8
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 3479
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_6

    .line 3480
    const/4 v0, 0x0

    return v0

    .line 3483
    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_11

    .line 3484
    const-string v0, "setProvisionedValue,mMapconService is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3485
    const/4 v0, -0x1

    return v0

    .line 3489
    :cond_11
    iget v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 3492
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 3493
    .local v1, "ret":I
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_3e

    .line 3495
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_ROAMING,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3496
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0}, Lcom/hisi/mapcon/IMapconService;->notifyRoaming(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_36

    goto :goto_3d

    .line 3497
    :catch_36
    move-exception v2

    .line 3498
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_ROAMING failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3499
    const/4 v1, 0x1

    .line 3500
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3d
    goto :goto_69

    .line 3501
    :cond_3e
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_64

    .line 3503
    :try_start_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOICE_OVER_WIFI_MODE,value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3504
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;

    invoke-interface {v2, v0, p2}, Lcom/hisi/mapcon/IMapconService;->setDomain(II)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_5b} :catch_5c

    goto :goto_63

    .line 3505
    :catch_5c
    move-exception v2

    .line 3506
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "set VOICE_OVER_WIFI_MODE failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3507
    const/4 v1, 0x1

    .line 3508
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_63
    goto :goto_69

    .line 3510
    :cond_64
    const-string v2, "setConfig unsupport value."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 3513
    :goto_69
    if-nez v1, :cond_78

    .line 3514
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    :cond_78
    return v1
.end method

.method public setConfig(ILjava/lang/String;)I
    .registers 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 3522
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mConfigStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized setCurrentImsi(Ljava/lang/String;)V
    .registers 2
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 2038
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2039
    monitor-exit p0

    return-void

    .line 2037
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDomainNameFromSim(Ljava/lang/String;)V
    .registers 2
    .param p1, "domainName"    # Ljava/lang/String;

    monitor-enter p0

    .line 2050
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mDomainNameFromSim:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2051
    monitor-exit p0

    return-void

    .line 2049
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "domainName":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 7
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 3566
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

    .line 3567
    if-eqz p1, :cond_32

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    goto :goto_33

    .line 3574
    :cond_2d
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsConfigImpl;->setVoWifiStatus(I)V

    .line 3575
    goto :goto_33

    .line 3572
    :cond_31
    goto :goto_33

    .line 3569
    :cond_32
    nop

    .line 3579
    :goto_33
    return-void
.end method

.method declared-synchronized setImpiFromSim(Ljava/lang/String;)V
    .registers 2
    .param p1, "impi"    # Ljava/lang/String;

    monitor-enter p0

    .line 2046
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mImpiFromSim:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2047
    monitor-exit p0

    return-void

    .line 2045
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "impi":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .registers 11
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 3583
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

    .line 3584
    const/4 v0, 0x1

    .line 3585
    .local v0, "ret":I
    if-nez p2, :cond_1d

    .line 3586
    return v0

    .line 3588
    :cond_1d
    if-eqz p1, :cond_6c

    .line 3589
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x54049995

    const/4 v4, 0x0

    const-string v5, "setSmsConfig"

    const-string v6, "setImsRegErrorReport"

    const/4 v7, 0x1

    if-eq v2, v3, :cond_3d

    const v3, 0x6d7037b9

    if-eq v2, v3, :cond_35

    :cond_34
    goto :goto_44

    :cond_35
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v1, v4

    goto :goto_44

    :cond_3d
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v1, v7

    :goto_44
    if-eqz v1, :cond_5d

    if-eq v1, v7, :cond_4e

    .line 3607
    const-string v1, "setImsConfig, configKey not exist!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_6b

    .line 3599
    :cond_4e
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v1, :cond_6b

    .line 3600
    invoke-virtual {p2, v6, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3602
    .local v1, "enabled":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsServiceImpl;->setVoWiFiRegErrReportEnable(I)V

    .line 3603
    const/4 v0, 0x0

    .line 3604
    .end local v1    # "enabled":I
    goto :goto_6b

    .line 3591
    :cond_5d
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v1, :cond_6b

    .line 3592
    invoke-virtual {p2, v5, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3594
    .local v1, "smsConfig":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsConfigImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsServiceImpl;->setImsSmsConfig(I)V

    .line 3595
    const/4 v0, 0x0

    .line 3608
    .end local v1    # "smsConfig":I
    :cond_6b
    :goto_6b
    goto :goto_71

    .line 3611
    :cond_6c
    const-string v1, "setImsConfig, configKey is null!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 3613
    :goto_71
    return v0
.end method

.method declared-synchronized setImsi(Ljava/lang/String;)V
    .registers 2
    .param p1, "imsi"    # Ljava/lang/String;

    monitor-enter p0

    .line 2026
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mCurrentImsi:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2027
    monitor-exit p0

    return-void

    .line 2025
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "imsi":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setIntToSp(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 6
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 2331
    :try_start_1
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2333
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2335
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2336
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2337
    monitor-exit p0

    return-void

    .line 2330
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":I
    .end local p3    # "context":Landroid/content/Context;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setNafAddrFromSim(Ljava/lang/String;)V
    .registers 2
    .param p1, "nsfAddr"    # Ljava/lang/String;

    monitor-enter p0

    .line 2058
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mXcapRootUriFromSim:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2059
    monitor-exit p0

    return-void

    .line 2057
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "nsfAddr":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 2283
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setSharedPreferences, spKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2292
    .local v0, "valueInMap":Ljava/lang/String;
    if-eqz v0, :cond_2c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2293
    const-string v1, "value is not changed, need not to store in SP again."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_45

    .line 2295
    monitor-exit p0

    return-void

    .line 2298
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    invoke-static {p3}, Lcom/huawei/ims/SharePreferenceUtil;->getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2301
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2303
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsConfigImpl;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2305
    .local v3, "spValueEncrypt":Ljava/lang/String;
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2306
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_45

    .line 2307
    monitor-exit p0

    return-void

    .line 2282
    .end local v0    # "valueInMap":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spValueEncrypt":Ljava/lang/String;
    .end local p1    # "spKey":Ljava/lang/String;
    .end local p2    # "spValue":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSpliceMncMcc(Ljava/lang/String;)V
    .registers 2
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    monitor-enter p0

    .line 2042
    :try_start_1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl;->mSpliceMncMcc:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2043
    monitor-exit p0

    return-void

    .line 2041
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    .end local p1    # "spliceMncMcc":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized spliceMncMcc()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 2062
    const/4 v0, 0x0

    .line 2063
    .local v0, "spMncMcc":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_72

    .line 2066
    const-string v3, "simOperator=******"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v4, v3, :cond_2d

    .line 2069
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

    goto :goto_4a

    .line 2070
    .end local p0    # "this":Lcom/huawei/ims/HwImsConfigImpl;
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6b

    .line 2071
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

    .line 2078
    :goto_4a
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

    .line 2080
    const-string v2, "spMCCMNC = xxxxxx"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_2 .. :try_end_69} :catchall_79

    .line 2082
    monitor-exit p0

    return-object v0

    .line 2073
    :cond_6b
    :try_start_6b
    const-string v3, "spliceMncMcc error: Get wrong MCC MNC"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_79

    .line 2075
    monitor-exit p0

    return-object v2

    .line 2085
    :cond_72
    :try_start_72
    const-string v3, "spliceMncMcc error: Cannot get sim MCC MNC "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_79

    .line 2087
    monitor-exit p0

    return-object v2

    .line 2061
    .end local v0    # "spMncMcc":Ljava/lang/String;
    .end local v1    # "simOperator":Ljava/lang/String;
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method
