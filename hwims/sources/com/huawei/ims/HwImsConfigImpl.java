package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import android.os.IBinder;
import android.os.Parcel;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.Rlog;
import android.text.TextUtils;
import android.util.Xml;
import com.android.ims.ImsConfigListener;
import com.android.internal.telephony.dataconnection.DcFailCause;
import com.android.internal.telephony.uicc.IccRecords;
import com.android.internal.telephony.uicc.UiccController;
import com.android.org.kxml2.io.KXmlParser;
import com.hisi.mapcon.IMapconService;
import com.huawei.cust.HwCfgFilePolicy;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsConfigImpl extends ImsConfigImpl {
    public static final int CALL_WAITING_FROM_CS = 1;
    public static final int CALL_WAITING_FROM_LOCAL = 2;
    public static final int CALL_WAITING_FROM_UT = 0;
    public static final int CALL_WAITING_FROM_UT_AND_NOT_SYNC_TO_CS_OR_IMS_SDK = 0;
    public static final String CALL_WAITING_MODE_PROP_KEY = "persist.ims.cwlocalset";
    public static final String CALL_WAITING_MODE_XML_KEY = "callWaitingMode";
    public static final int CALL_WAITING_SOURCE_MASK = 12;
    public static final int CALL_WAITING_SOURCE_OFFSET = 2;
    public static final int CALL_WAITING_SYNC_TO_CS_MASK = 2;
    public static final int CALL_WAITING_SYNC_TO_IMS_SDK_MASK = 1;
    public static final String CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY = "cardMccMncPreferToUseUT";
    public static final String CARD_TYPE_PREFER_TO_USE_UT_XML_KEY = "cardTypePreferToUseUT";
    public static final String CARRIER_BUILD_VERSION_BOOL = "carrier_build_version_bool";
    public static final String CARRIER_SUPPORT_VOLTE = "carrier_volte_available_bool";
    public static final String CARRIER_SUPPORT_VOWIFI = "carrier_wfc_ims_available_bool";
    public static final String CFNRC_CHANGE_WITH_CFNL_XML_KEY = "CFNRcChangeWithCFNL";
    private static final int CFNR_USE_IR92V10_OR_GREATER = 1;
    public static final String CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY = "checkServiceWhenIncomingCall";
    public static final int CONFIG_NOT_INITIALIZED = -123456;
    public static final int CONTENT_TYPE_MODE_AUTO = 0;
    public static final int CONTENT_TYPE_MODE_FIXED = 1;
    public static final String CONTENT_TYPE_MODE_XML_KEY = "ContentTypeMode";
    public static final String DC_FAIL_CAUSE_RELEASE_APN_XML_KEY = "dcFailCauseToReleaseApn";
    public static final String DC_FAIL_CAUSE_XML_KEY = "dcFailCauseForNonVolteSim";
    private static final int DEFAULT_UT_VOWIFI_DELAY_END_TIME = 60000;
    public static final String FILE_PATH = "/xml/hw_ims_config.xml";
    public static final String HANG_UP_WHEN_LOST_NET = "hangUpWhenLostNet";
    public static final String IMPI_DOMAIN = "impiDomain";
    static final String[] IMPU_FROM_NETWORK_KEY;
    static final String[] IMPU_FROM_SIM_IMSI_KEY;
    public static final String IMS_CONFIG_KEY_GETDMUSER = "getDMUSER";
    public static final String IMS_CONFIG_KEY_GETSMSCONFIG = "getSmsConfig";
    public static final String IMS_CONFIG_KEY_SETSMSCONFIG = "setSmsConfig";
    private static final int IMS_DATA_DELAY_END_IN_MS = 1000;
    public static final String IMS_DATA_DELAY_END_XML_KEY = "utImsDataDelayEndTime";
    public static final String IMS_SS_BE_USED_XML_KEY = "imsSsBeUsed";
    public static final String IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY = "ImsStateFollowVoiceDomain";
    private static final int INVALID_VALUE = -1;
    public static final boolean IS_ATT;
    private static final boolean IS_ATT_WF;
    private static final boolean IS_DEFAULT_UT_GBA_LIFETIME_BE_USED = false;
    public static final boolean IS_FEATURE_VOLTE_DYN;
    private static final boolean IS_JP;
    private static final boolean IS_UT_BSF_USE_HTTPS;
    private static final boolean IS_UT_CS_BE_USED;
    private static final boolean IS_UT_HRS_LOG;
    private static final boolean IS_UT_KSNAF_USE_BASE64;
    private static final boolean IS_UT_NAF_USE_HTTPS;
    private static final boolean IS_UT_USE_NODE_SELECTOR;
    private static final boolean IS_UT_USE_TMPI;
    private static final boolean IS_UT_USE_XCAP_NAMESPACE;
    private static final boolean IS_VOWIFI_PROP_ON;
    public static final String KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL = "keep_vowifi_feature_under_emergencycall";
    static final String[] LOCAL_CALL_WAITING_KEY;
    static final String[] LOCAL_OIR_KEY;
    private static final String LOG_TAG = "HwImsConfigImpl";
    private static final String MAPCON_BROADCAST_PERMISSION = "com.hisi.permission.VOWIFI_SPECIAL";
    private static final String MAPCON_SERVICE_STARTED = "com.hisi.vowifi.started";
    public static final int MCCMNC_MAX_LTH = 6;
    public static final int MCC_LTH = 3;
    public static final String MISSED_CALL_DISPLAY_XML_KEY = "missedCallDisplay";
    public static final int MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT = 128000;
    public static final String MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY = "missedCallTipsDelayTimer";
    public static final String MISSED_CALL_TIPS_DELAY_XML_KEY = "missedCallTipsDelay";
    public static final int MISSED_CALL_TIPS_RING_TIMER_DEFAULT = 12000;
    public static final String MISSED_CALL_TIPS_RING_TIMER_XML_KEY = "missedCallTipsRingTimer";
    public static final String MISSED_CALL_TIPS_XML_KEY = "missedCallTips";
    public static final String MMI_002004_NONE_CSFB = "mmi_002_004_none_csfb_bool";
    private static final int NODE_CFNR_USE_IR92V10_OR_GREATER = 17;
    public static final int OIR_SOURCE_FROM_LOCAL = 1;
    public static final int OIR_SOURCE_FROM_UT = 0;
    public static final String PREFER_TO_USE_UT_XML_KEY = "preferToUseUT";
    public static final int PROP_NAME_MAX = 31;
    public static final String REMOVE_VOWIFI_ICON_UNDER_CSCYCALL = "remove_vowifi_icon_under_cscall";
    public static final String SEPARATOR_TAG = ",";
    public static final String SET_CALLWAITING_TO_ACTIVE = "set_callwaiting_to_active_bool";
    public static final String SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY = "setDeactDefaultNoReplyTimer";
    public static final String SET_DEFAULT_NO_REPLY_TIMER_XML_KEY = "setDefaultNoReplyTimer";
    static final String[] SHARED_PREFERENCES_PROFILE_KEY;
    static final String[] SHARED_PREFERENCES_PROFILE_PARAM;
    static final String[] SIM_IMSI_KEY;
    private static final int SLOT_0 = 0;
    public static final String SS_NOT_SUPPORT_MMI_CODE_XML_KEY = "ssNotSupportMMICode";
    public static final String SS_TYPE_FORBID_FALLBACK_CS_XML_KEY = "ssTypeForbidFallbackCS";
    public static final String SS_TYPE_USE_CS_ONLY_PROP_KEY = "persist.ut.ssTypeUseCsOnly";
    public static final String SS_TYPE_USE_CS_ONLY_XML_KEY = "ssTypeUseCsOnly";
    public static final String STRING_NOT_INITIALIZED = "SNIT";
    public static final String TRUE_VALUE = "true";
    private static final String UPDATE_SIM_IMSI_INFO_SETTINGS_0 = "update_sim_imsi_info_settings_0";
    private static final String UPDATE_SIM_IMSI_INFO_SETTINGS_1 = "update_sim_imsi_info_settings_1";
    public static final String USE_403_FOR_LOCAL_CW = "use_403_for_local_cw";
    public static final String UT_409_SHOW_PHRASE = "ut409ShowPhrase";
    public static final int UT_BEARER_DEFAULT = 0;
    public static final int UT_BEARER_IMS = 2;
    public static final int UT_BEARER_LTE = 1;
    public static final int UT_BEARER_LTE_AND_IMS = 3;
    public static final String UT_BEARER_TYPE_PROP_KEY = "persist.ut.bearType";
    public static final String UT_BEARER_TYPE_XML_KEY = "utBearType";
    public static final String UT_BSF_AUTH_BE_USED_XML_KEY = "utBsfAuthBeUsed";
    public static final int UT_BSF_PORT_DEFAULT = 8080;
    public static final String UT_BSF_PORT_PROP_KEY = "persist.ut.bsfport";
    public static final String UT_BSF_PORT_XML_KEY = "utBsfPort";
    public static final String UT_BSF_SRV_ADDR_PROP_KEY = "persist.ut.bsfsrvaddr";
    public static final String UT_BSF_SRV_ADDR_XML_KEY = "utBsfSrvAddr";
    public static final String UT_BSF_USE_HTTPS_PROP_KEY = "persist.ut.bsfusehttps";
    public static final String UT_BSF_USE_HTTPS_XML_KEY = "utBsfUsehttps";
    public static final String UT_CAN_USE_WIFI_XML_KEY = "utCanUseWifi";
    public static final String UT_CS_BE_USED_PROP_KEY = "persist.ut.csbeused";
    public static final String UT_CS_BE_USED_XML_KEY = "utCSBeUsed";
    public static final String UT_FORBIDDEN_TIME_XML_KEY = "utForbiddenTimer";
    public static final String UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF = "utForbiddenWhenVolteSwitchOff";
    public static final String UT_FORBIDDEN_WVSO_PROP_KEY = "persist.ut.forbiddenWVSO";
    public static final int UT_GBA_ME_TYPE = 0;
    private static final int UT_GBA_TYPE;
    public static final String UT_GBA_TYPE_PROP_KEY = "persist.ut.gbatype";
    public static final String UT_GBA_TYPE_XML_KEY = "utGbaType";
    public static final String UT_HRS_LOG_PROP_KEY = "persist.ut.hrslog";
    public static final String UT_HRS_LOG_XML_KEY = "utHrsLog";
    private static final String UT_IMPI;
    public static final String UT_IMPI_PROP_KEY = "persist.ut.authusername";
    public static final String UT_IMPI_XML_KEY = "utIMPI";
    private static final String UT_IMPU;
    public static final String UT_IMPU_PROP_KEY = "persist.ut.localusername";
    public static final String UT_IMPU_XML_KEY = "utIMPU";
    public static final String UT_KSNAF_USE_BASE64_PROP_KEY = "persist.ut.ksnafbase64";
    public static final String UT_KSNAF_USE_BASE64_XML_KEY = "utKsnafUseBase64";
    public static final int UT_NAF_PORT_DEFAULT = 80;
    public static final String UT_NAF_PORT_PROP_KEY = "persist.ut.nafport";
    public static final String UT_NAF_PORT_XML_KEY = "utNafPort";
    public static final String UT_NAF_SRV_ADDR_PROP_KEY = "persist.ut.nafsrvaddr";
    public static final String UT_NAF_SRV_ADDR_XML_KEY = "utNafSrvAddr";
    public static final String UT_NAF_USE_HTTPS_PROP_KEY = "persist.ut.usehttps";
    public static final String UT_NAF_USE_HTTPS_XML_KEY = "utNafUseHttps";
    public static final String UT_OIR_DEFAULT_MODE_XML_KEY = "utOIRDefaultMode";
    public static final String UT_OIR_SOURCE_MODE_XML_KEY = "utOIRSourceMode";
    public static final int UT_PARAMS_CFG_LENGTH = 2;
    public static final String UT_PARAMS_CONFIG_XML_KEY = "utParamsCfg";
    private static final int UT_PARAMS_KEY_GBA_LIFETIME_BE_USED = 19;
    private static final String UT_PARAMS_TLS_CONFIG_XML_KEY = "utParamsTLSConfig";
    private static final int UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED = 1;
    public static final String UT_PREFER_OPTION_KEY = "utPreferOption";
    public static final String UT_PREFER_TO_USE_UT_PROP_KEY = "persist.ut.preferToUseUT";
    public static final int UT_PREFER_USE_DEFAULT_MODE = 0;
    public static final int UT_PREFER_USE_VOLTE_MODE = 1;
    public static final String UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY = "ut_prefer_vowifi_when_vowifi_registered";
    public static final String UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY = "utQueryDnsIgnoreNetId";
    private static final boolean UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE = true;
    private static final String UT_QUERY_XCAP_APN_EXACT_KEY = "utQueryXcapApnExact";
    public static final String UT_RETRY_INTERVAL_XML_KEY = "utRetryInterval";
    public static final String UT_USE_APN_XML_KEY = "utUseApn";
    public static final int UT_USE_DEFAULT_DATA_APN = 0;
    public static final int UT_USE_IMS_APN = 2;
    public static final String UT_USE_MULTI_CF = "utUseMultiCF";
    public static final String UT_USE_NODE_SELECTOR_PROP_KEY = "persist.ut.usenodeselector";
    public static final String UT_USE_NODE_SELECTOR_XML_KEY = "utUseNodeSelector";
    public static final String UT_USE_TMPI_PROP_KEY = "persist.ut.usetmpi";
    public static final String UT_USE_TMPI_XML_KEY = "utUseTmpi";
    public static final int UT_USE_UT_COMPLEX_APN = 3;
    public static final int UT_USE_UT_RESERVED_APN = 1;
    public static final String UT_USE_XCAP_NAMESPACE_PROP_KEY = "persist.ut.usexcapnamespace";
    public static final String UT_USE_XCAP_NAMESPACE_XML_KEY = "utUseXcapNamespace";
    public static final String UT_VOWIFI_DELAY_END_TIME_XML_KEY = "utVoWifiDelayEndTime";
    public static final String UT_XCAP_ROOT_URI_PROP_KEY = "persist.ut.xcapRootUri";
    public static final String UT_XCAP_ROOT_XML_KEY = "utXcapRootUri";
    private static final String UT_X_3GPP_INTEND_ID;
    public static final String UT_X_3GPP_INTEND_ID_PROP_KEY = "persist.ut.x3gppintendid";
    public static final String UT_X_3GPP_INTEND_ID_XML_KEY = "utX3gppIntendId";
    public static final String VOLTE_LOWBATTERY_ENDCALL_XML_KEY = "volte_lowbattery_endcall";
    public static final String VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT = "setImsRegErrorReport";
    public static final String VOWIFI_UT_SWITCH_XML_KEY = "vowifi_ut_switch";
    private ImsRIL mCi;
    private Context mContext;
    private HwImsServiceImpl mHwImsServiceImpl;
    private IMapconService mMapconService;
    private int mSlotId;
    private boolean mIsImsSsBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefImsSsBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsUtForbiddenWhenVolteSwitchOff = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtForbiddenWhenVolteSwitchOff = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int mUtUseApn = 0;
    private int mDefUtUseApn = 0;
    private boolean mIsUtCanUseWifi = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtCanUseWifi = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int[] mCardTypePreferToUseUt = null;
    private int[] mDefCardTypePreferToUseUt = null;
    private String[] mCardMccMncPreferToUseUt = null;
    private String[] mDefCardMccMncPreferToUseUt = null;
    private int[] mSsTypeUseCsOnly = null;
    private int[] mDefSsTypeUseCsOnly = null;
    private String[] mNotSupportMmiCode = null;
    private String[] mDefNotSupportMmiCode = null;
    private boolean mIsUtCsBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtCsBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsProtocolIr92V10orGreater = false;
    private int[] mSsForbidFallbackCs = null;
    private int[] mDefSsForbidFallbackCs = null;
    private boolean mIsCfnrcChangeWithCfnl = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefCfnrcChangeWithCfnl = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int mDefaultNoReplyTimer = 0;
    private int mDefDefaultNoReplyTimer = 0;
    private int mDefaultNeedNoReplyTimer = 0;
    private int mDefDefaultNeedNoReplyTimer = 0;
    private int mContentTypeMode = 0;
    private int mDefContentTypeMode = 0;
    private boolean mIsImsStateFollowVoiceDomain = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefImsStateFollowVoiceDomain = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int mCallWaitingMode = 0;
    private int mDefCallWaitingMode = 0;
    private boolean mIsUtHrsLog = false;
    private boolean mIsDefUtHrsLog = false;
    private String mUtNafSrvAddr = "";
    private String mDefUtNafSrvAddr = "";
    private int mUtNafPort = 80;
    private int mDefUtNafPort = 80;
    private boolean mIsUtNafUseHttps = false;
    private boolean mIsDefUtNafUseHttps = false;
    private String mUtBsfSrvAddr = "";
    private String mDefUtBsfSrvAddr = "";
    private int mUtBsfPort = UT_BSF_PORT_DEFAULT;
    private int mDefUtBsfPort = UT_BSF_PORT_DEFAULT;
    private boolean mIsUtBsfUseHttps = false;
    private boolean mIsDefUtBsfUseHttps = false;
    private boolean mIsUtUseNodeSelector = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtUseNodeSelector = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsUtUseXcapNamespace = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtUseXcapNamespace = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsUtKsnafUseBase64 = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtKsnafUseBase64 = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int mUtPreferOption = 0;
    private int mDefUtPreferOption = 0;
    private int mUtGbaType = 0;
    private int mDefUtGbaType = 0;
    private boolean mIsUtUseTmpi = false;
    private boolean mIsDefUtUseTmpi = false;
    private String mUtX3gppIntendId = "";
    private String mDefUtX3gppIntendId = "";
    private String mUtImpu = "";
    private String mDefUtImpu = "";
    private String mUtImpi = "";
    private String mDefUtImpi = "";
    private int[] mUtRetryInterval = null;
    private int[] mDefUtRetryInterval = null;
    private boolean mIsMissedCallTips = false;
    private boolean mIsDefMissedCallTips = false;
    private boolean mIsMissedCallTipsDelay = false;
    private boolean mIsDefMissedCallTipsDelay = false;
    private boolean mIsMissedCallDisplay = false;
    private boolean mIsDefMissedCallDisplay = false;
    private int mMissedCallTipsRingTimer = MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
    private int mDefMissedCallTipsRingTimer = MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
    private int mMissedCallTipsDelayTimer = MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
    private int mDefMissedCallTipsDelayTimer = MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
    private boolean mIsCheckServiceWhenIncomingCall = false;
    private boolean mIsDefCheckServiceWhenIncomingCall = false;
    private boolean mIsHangUpWhenLostNet = false;
    private boolean mIsDefHangUpWhenLostNet = false;
    private String[] mUtParamsCfg = null;
    private String[] mDefUtParamsCfg = null;
    private String mUtParamsTlsConfig = null;
    private String mUtXcapRootUri = "";
    private String mDefUtXcapRootUri = "";
    private boolean mIsUtBsfAuthBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private boolean mIsDefUtBsfAuthBeUsed = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private int mUtOirSourceMode = 0;
    private int mDefUtOirSourceMode = 0;
    private int mUtOirDefaultMode = 0;
    private int mDefUtOirDefaultMode = 0;
    private boolean mIsUt409ShowPhrase = false;
    private boolean mIsDefUt409ShowPhrase = false;
    private int mUtImsDataDelayEndTime = 1000;
    private int mDefUtImsDataDelayEndTime = 1000;
    private int mUtBearerType = 0;
    private int mDefUtBearerType = 0;
    private int[] mDcFailCode = null;
    private int[] mDefDcFailCode = null;
    private String[] mDcFailCause = null;
    private int[] mDcFailCodeToReleaseApn = null;
    private String[] mDcFailCauseToReleaseApn = null;
    private boolean mIsUtGbaLifetimeBeUsed = false;
    private int mUtVoWifiDelayEndTime = DEFAULT_UT_VOWIFI_DELAY_END_TIME;
    private int mDefUtVoWifiDelayEndTime = DEFAULT_UT_VOWIFI_DELAY_END_TIME;
    private boolean mIsUtPreferVowifiWhenVowifiReg = false;
    private boolean mIsDefUtPreferVowifiWhenVowifiReg = false;
    private boolean mIsActiveCallwaitingFromCs = false;
    private boolean mIsDefActiveCallwaitingFromCs = false;
    private boolean mIsUtQueryDnsIgnoreNetId = false;
    private boolean mIsDefUtQueryDnsIgnoreNetId = false;
    private boolean mIsMmi002004NoneCsfb = false;
    private boolean mIsDefMmi002004NoneCsfb = false;
    private boolean mIsPreferToUseUt = false;
    private boolean mIsDefPreferToUseUt = false;
    private boolean mIsBuildVersionCarrier = false;
    private boolean mIsDefBuildVersionCarrier = false;
    private boolean mIsUse403ForLocalCw = false;
    private boolean mIsDefUse403ForLocalCw = false;
    private boolean mIsCarrierSupportVolte = false;
    private boolean mIsUseMultCondition = false;
    private boolean mIsDefUseMultCondition = false;
    private boolean mIsVowifiUtSwitch = false;
    private boolean mIsDefaultVowifiUtSwitch = false;
    private int mUtForbiddenTimer = -1;
    private int mDefaultUtForbiddenTimer = -1;
    private boolean mIsEmergencyUnderWifi = false;
    private boolean mIsDefEmergencyUnderWifi = false;
    private boolean mIsCarrierSupportVoWifi = false;
    private boolean mIsRemoveVowifiIconUnderCsCall = false;
    private boolean mIsDefRemoveVowifiIconUnderCsCall = false;
    private String mXcapRootUriFromSim = null;
    private String mImpiFromSim = null;
    private String mBsfAddrFromSim = null;
    private String mCurrentImsi = null;
    private String mSpliceMncMcc = null;
    private String mDomainNameFromSim = null;
    private String mImpiDomain = "";
    private String mDefImpiDomain = "";
    private HashMap<Integer, Integer> mConfigIntValue = new HashMap<>();
    private HashMap<Integer, String> mConfigStringValue = new HashMap<>();
    private boolean mIsCallWaitingSyncToImsSdk = false;
    private boolean mIsCallWaitingSyncToCs = false;
    private CallWaitingSource mCallWaitingSource = CallWaitingSource.CALL_WAITING_FROM_UT;
    private boolean mIsVolteLowbatteryEndcall = false;
    private boolean mIsDefVolteLowbatteryEndcall = false;
    private boolean mIsUtQueryXcapApnExact = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    private HashMap<String, String> mSpValueMap = new HashMap<>();
    private BroadcastReceiver mBroadCastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsConfigImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                HwImsConfigImpl.this.logd("HwImsConfigImpl onReceive: intent or intent.getAction() is null");
                return;
            }
            HwImsConfigImpl.this.logd("mBroadCastReceiver: action " + intent.getAction());
            if (HwImsConfigImpl.MAPCON_SERVICE_STARTED.equals(intent.getAction()) && HwImsConfigImpl.this.mMapconService == null) {
                HwImsConfigImpl.this.bindMapconService();
            }
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum CallWaitingSource {
        CALL_WAITING_FROM_UT,
        CALL_WAITING_FROM_CS,
        CALL_WAITING_FROM_LOCAL
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum ConfigType {
        CONFIG_TYPE_BOOL,
        CONFIG_TYPE_INT,
        CONFIG_TYPE_STRING
    }

    static {
        IS_ATT = "07".equals(SystemProperties.get("ro.config.hw_opta")) && "840".equals(SystemProperties.get("ro.config.hw_optb"));
        IS_FEATURE_VOLTE_DYN = SystemProperties.getBoolean("ro.config.hw_volte_dyn", false);
        SIM_IMSI_KEY = new String[]{"sim_imsi_key", "sim_imsi_key2"};
        IMPU_FROM_NETWORK_KEY = new String[]{"impu_from_network_key", "impu_from_network_key2"};
        IMPU_FROM_SIM_IMSI_KEY = new String[]{"impu_from_sim_imsi_key", "impu_from_sim_imsi_key2"};
        SHARED_PREFERENCES_PROFILE_KEY = new String[]{"profile_key", "profile_key2"};
        SHARED_PREFERENCES_PROFILE_PARAM = new String[]{"profile_param", "profile_param2"};
        LOCAL_CALL_WAITING_KEY = new String[]{"local_call_waiting_key", "local_call_waiting_key2"};
        LOCAL_OIR_KEY = new String[]{"local_OIR_key", "local_OIR_key2"};
        IS_ATT_WF = SystemProperties.getBoolean("ro.config.hw_att_wificall", false);
        IS_UT_CS_BE_USED = SystemProperties.getBoolean(UT_CS_BE_USED_PROP_KEY, UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE);
        IS_UT_HRS_LOG = SystemProperties.getBoolean(UT_HRS_LOG_PROP_KEY, false);
        IS_UT_NAF_USE_HTTPS = SystemProperties.getBoolean(UT_NAF_USE_HTTPS_PROP_KEY, false);
        IS_UT_BSF_USE_HTTPS = SystemProperties.getBoolean(UT_BSF_USE_HTTPS_PROP_KEY, false);
        IS_UT_USE_NODE_SELECTOR = SystemProperties.getBoolean(UT_USE_NODE_SELECTOR_PROP_KEY, UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE);
        IS_UT_USE_XCAP_NAMESPACE = SystemProperties.getBoolean(UT_USE_XCAP_NAMESPACE_PROP_KEY, UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE);
        IS_UT_KSNAF_USE_BASE64 = SystemProperties.getBoolean(UT_KSNAF_USE_BASE64_PROP_KEY, UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE);
        UT_GBA_TYPE = SystemProperties.getInt(UT_GBA_TYPE_PROP_KEY, 0);
        IS_UT_USE_TMPI = SystemProperties.getBoolean(UT_USE_TMPI_PROP_KEY, false);
        UT_X_3GPP_INTEND_ID = SystemProperties.get(UT_X_3GPP_INTEND_ID_PROP_KEY, "");
        UT_IMPU = SystemProperties.get(UT_IMPU_PROP_KEY, "");
        UT_IMPI = SystemProperties.get(UT_IMPI_PROP_KEY, "");
        IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
        IS_JP = "jp".equals(SystemProperties.get("ro.hw.country"));
    }

    public HwImsConfigImpl(HwImsServiceImpl hwImsServiceImpl, int slotId) {
        this.mSlotId = -1;
        this.mCi = null;
        this.mSlotId = slotId;
        logd("HwImsConfigImpl construtor");
        if (!ImsCallProviderUtils.isValidServiceSubIndex(this.mSlotId)) {
            loge("slotId is invalid");
            return;
        }
        if (hwImsServiceImpl == null || hwImsServiceImpl.mCi == null) {
            loge("hwImsServiceImpl or imsRIL is null");
            return;
        }
        if (hwImsServiceImpl.mContext == null) {
            loge("context is null");
            return;
        }
        this.mHwImsServiceImpl = hwImsServiceImpl;
        this.mContext = hwImsServiceImpl.mContext;
        init(this.mContext);
        this.mCi = hwImsServiceImpl.mCi;
        if (IS_VOWIFI_PROP_ON) {
            bindMapconService();
            IntentFilter filter = new IntentFilter();
            filter.addAction(MAPCON_SERVICE_STARTED);
            this.mContext.registerReceiver(this.mBroadCastReceiver, filter, MAPCON_BROADCAST_PERMISSION, null);
        }
    }

    public boolean processOnTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        logd("processOnTransact , code = " + i);
        if (parcel == null || parcel2 == null || i != 3001) {
            return false;
        }
        boolean isUnSupportMmiCode = isUnSupportMmiCode(parcel.readString());
        logd("isUnSupportMmiCode = " + isUnSupportMmiCode);
        parcel2.writeNoException();
        parcel2.writeInt(isUnSupportMmiCode ? 1 : 0);
        return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isImsSsBeUsed() {
        return this.mIsImsSsBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtForbiddenWhenVolteSwitchOff() {
        String utForbiddenWhenVolteSwitchOff;
        utForbiddenWhenVolteSwitchOff = SystemProperties.get(UT_FORBIDDEN_WVSO_PROP_KEY, "");
        logd("utForbiddenWhenVolteSwitchOff = " + utForbiddenWhenVolteSwitchOff);
        return !"".equals(utForbiddenWhenVolteSwitchOff) ? Boolean.parseBoolean(utForbiddenWhenVolteSwitchOff) : this.mIsUtForbiddenWhenVolteSwitchOff;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtUseApn() {
        return this.mUtUseApn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUse403ForLocalCw() {
        return this.mIsUse403ForLocalCw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isCarrierSupportVolte() {
        return this.mIsCarrierSupportVolte;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtCanUseWifi() {
        return this.mIsUtCanUseWifi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCardTypePreferToUseUt(int cardType) {
        logd("isCardTypePreferToUseUt, Card type is " + cardType);
        if (this.mCardTypePreferToUseUt != null && this.mCardTypePreferToUseUt.length != 0) {
            return isContainInImsConfig(this.mCardTypePreferToUseUt, cardType);
        }
        logw("mCardTypePreferToUseUt is null");
        return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCardMccMncPreferToUseUt(String cardMccMnc) {
        String preferToUseUt = SystemProperties.get(UT_PREFER_TO_USE_UT_PROP_KEY, "");
        if (!"".equals(preferToUseUt)) {
            return Boolean.parseBoolean(preferToUseUt);
        }
        boolean z = IS_FEATURE_VOLTE_DYN;
        boolean z2 = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        if (z) {
            if (!this.mIsPreferToUseUt || (!isCarrierSupportVolte() && !isCarrierSupportVoWifi())) {
                z2 = false;
            }
            return z2;
        }
        if (this.mCardMccMncPreferToUseUt != null && this.mCardMccMncPreferToUseUt.length != 0 && cardMccMnc != null) {
            return isContainInImsConfig(this.mCardMccMncPreferToUseUt, cardMccMnc);
        }
        return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    }

    synchronized boolean isCarrierSupportVoWifi() {
        return this.mIsCarrierSupportVoWifi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getIsUseMultCondition() {
        return this.mIsUseMultCondition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isSsUseCsOnly(int ssType) {
        logd("isSsUseCsOnly, ss type is " + ssType);
        String suppServiceTypeUseCsOnly = SystemProperties.get(SS_TYPE_USE_CS_ONLY_PROP_KEY, "");
        logd("isSsUseCsOnly, SSTypeUseCsOnly " + suppServiceTypeUseCsOnly);
        this.mSsTypeUseCsOnly = !"".equals(suppServiceTypeUseCsOnly) ? stringToIntArray(suppServiceTypeUseCsOnly) : this.mSsTypeUseCsOnly;
        if (this.mSsTypeUseCsOnly != null && this.mSsTypeUseCsOnly.length != 0) {
            return isContainInImsConfig(this.mSsTypeUseCsOnly, ssType);
        }
        logw("mSsTypeUseCsOnly is null.");
        return false;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized boolean isUnSupportMmiCode(String mmicode) {
        logd("MMI code is " + HiddenPrivacyInfo.putMosaic(mmicode, 5));
        if (this.mNotSupportMmiCode != null && this.mNotSupportMmiCode.length != 0) {
            return isContainInImsConfig(this.mNotSupportMmiCode, mmicode);
        }
        logw("mNotSupportMmiCode is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtCsBeUsed() {
        return isConfigInProp(UT_CS_BE_USED_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_CS_BE_USED : this.mIsUtCsBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isSsForbidFallbackCs(int ssType) {
        logd("isSSForbidFallbackCS, ss type is " + ssType);
        if (this.mSsForbidFallbackCs != null && this.mSsForbidFallbackCs.length != 0) {
            return isContainInImsConfig(this.mSsForbidFallbackCs, ssType);
        }
        logw("mSsForbidFallbackCs is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCfnrcChangeWithCfnl() {
        return this.mIsCfnrcChangeWithCfnl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getDefaultNoReplyTimer() {
        return this.mDefaultNoReplyTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getDefaultNeedNoReplyTimer() {
        return this.mDefaultNeedNoReplyTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getContentTypeMode() {
        return this.mContentTypeMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isImsStateFollowVoiceDomain() {
        return this.mIsImsStateFollowVoiceDomain;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized int getCallWaitingMode() {
        String callWaitingMode;
        int callWaitingModeInt;
        callWaitingMode = SystemProperties.get(CALL_WAITING_MODE_PROP_KEY, "");
        logd("getCallWaitingMode, callWaitingMode = " + callWaitingMode);
        callWaitingModeInt = this.mCallWaitingMode;
        try {
            callWaitingModeInt = Integer.parseInt(callWaitingMode);
        } catch (NumberFormatException e) {
            loge("getCallWaitingMode : NumberFormatException ");
        }
        return !"".equals(callWaitingMode) ? callWaitingModeInt : this.mCallWaitingMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCallWaitingSyncToImsSdk() {
        return this.mIsCallWaitingSyncToImsSdk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCallWaitingSyncToCs() {
        return this.mIsCallWaitingSyncToCs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized CallWaitingSource getCallWaitingSource() {
        return this.mCallWaitingSource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtOpenHrsLog() {
        return isConfigInProp(UT_HRS_LOG_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_HRS_LOG : this.mIsUtHrsLog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtNafSrvAddr() {
        String utNafSrvAddr = SystemProperties.get(UT_NAF_SRV_ADDR_PROP_KEY, "");
        if (!"".equals(utNafSrvAddr)) {
            logd("use naf addr from prop");
            return utNafSrvAddr;
        }
        if (!"".equals(this.mUtNafSrvAddr)) {
            logd("use naf addr from xml, naf ");
            return this.mUtNafSrvAddr;
        }
        String nafAddr = getRootUriFromSim();
        if (nafAddr != null) {
            logd("use naf addr from sim, naf ");
            return nafAddr;
        }
        loge("pick naf addr fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtNafPort() {
        String utNafPort;
        int utNafPortInt;
        utNafPort = SystemProperties.get(UT_NAF_PORT_PROP_KEY, "");
        logd("getUtNafPort ");
        utNafPortInt = this.mUtNafPort;
        try {
            utNafPortInt = Integer.parseInt(utNafPort);
        } catch (NumberFormatException e) {
            loge("getUtNafPort : NumberFormatException ");
        }
        return !"".equals(utNafPort) ? utNafPortInt : this.mUtNafPort;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtNafUseHttps() {
        return isConfigInProp(UT_NAF_USE_HTTPS_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_NAF_USE_HTTPS : this.mIsUtNafUseHttps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtBsfSrvAddr() {
        String utBsfSrvAddr = SystemProperties.get(UT_BSF_SRV_ADDR_PROP_KEY, "");
        if (!"".equals(utBsfSrvAddr)) {
            logd("use bsf addr from prop, bsf");
            return utBsfSrvAddr;
        }
        if (!"".equals(this.mUtBsfSrvAddr)) {
            logd("use bsf addr from xml, bsf addr");
            return this.mUtBsfSrvAddr;
        }
        String bsfAddr = getBsfAddrFromSim();
        if (bsfAddr != null) {
            logd("use bsf addr from sim, bsf");
            return bsfAddr;
        }
        loge("pick bsf addr fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtPreferVowifiWhenVowifiReg() {
        return this.mIsUtPreferVowifiWhenVowifiReg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getVowifiUtSwitch() {
        return this.mIsVowifiUtSwitch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtXcapRootUri() {
        String utXcapRootUri;
        utXcapRootUri = SystemProperties.get(UT_XCAP_ROOT_URI_PROP_KEY, "");
        return !"".equals(utXcapRootUri) ? utXcapRootUri : this.mUtXcapRootUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtBsfPort() {
        String utBsfPort;
        int utBsfPortInt;
        utBsfPort = SystemProperties.get(UT_BSF_PORT_PROP_KEY, "");
        utBsfPortInt = this.mUtBsfPort;
        try {
            utBsfPortInt = Integer.parseInt(utBsfPort);
        } catch (NumberFormatException e) {
            loge("getUtBsfPort : NumberFormatException ");
        }
        return !"".equals(utBsfPort) ? utBsfPortInt : this.mUtBsfPort;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtBsfUseHttps() {
        return isConfigInProp(UT_BSF_USE_HTTPS_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_BSF_USE_HTTPS : this.mIsUtBsfUseHttps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseNodeSelector() {
        return isConfigInProp(UT_USE_NODE_SELECTOR_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_USE_NODE_SELECTOR : this.mIsUtUseNodeSelector;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseXcapNameSpace() {
        return isConfigInProp(UT_USE_XCAP_NAMESPACE_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_USE_XCAP_NAMESPACE : this.mIsUtUseXcapNamespace;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtKsNafEncodedByBase64() {
        return isConfigInProp(UT_KSNAF_USE_BASE64_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_KSNAF_USE_BASE64 : this.mIsUtKsnafUseBase64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtPreferOption() {
        return this.mUtPreferOption;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtGbaType() {
        return isConfigInProp(UT_GBA_TYPE_PROP_KEY, ConfigType.CONFIG_TYPE_INT) ? UT_GBA_TYPE : this.mUtGbaType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtBearerType() {
        String utBearerType;
        int utBearerTypeInt;
        utBearerType = SystemProperties.get(UT_BEARER_TYPE_PROP_KEY, "");
        logd("getUtBearerType, utBearerType " + utBearerType);
        utBearerTypeInt = this.mUtBearerType;
        try {
            utBearerTypeInt = Integer.parseInt(utBearerType);
        } catch (NumberFormatException e) {
            loge("getUtBearerType : NumberFormatException ");
        }
        return !"".equals(utBearerType) ? utBearerTypeInt : this.mUtBearerType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isActiveCallwaitingFromCs() {
        return this.mIsActiveCallwaitingFromCs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isMmi002004NoneCsfb() {
        return this.mIsMmi002004NoneCsfb;
    }

    private String[] getDcFailCause(int[] codes) {
        String[] failCauses = null;
        if (codes != null && codes.length != 0) {
            int size = codes.length;
            failCauses = new String[size];
            int i = 0;
            int length = codes.length;
            int i2 = 0;
            while (i2 < length) {
                int code = codes[i2];
                String cause = DcFailCause.fromInt(code).toString();
                failCauses[i] = cause;
                logd("initDcFailCause code:" + code + " cause : " + cause);
                i2++;
                i++;
            }
        }
        return failCauses;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isDcFailCauseForNonVolteSim(String cause) {
        if (this.mDcFailCause != null && this.mDcFailCause.length != 0) {
            return isContainInImsConfig(this.mDcFailCause, cause);
        }
        logw("mDcFailCause is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isDcFailCauseToReleaseApn(String cause) {
        if (this.mDcFailCauseToReleaseApn != null && this.mDcFailCauseToReleaseApn.length != 0) {
            return isContainInImsConfig(this.mDcFailCauseToReleaseApn, cause);
        }
        logw("isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseTmpi() {
        return isConfigInProp(UT_USE_TMPI_PROP_KEY, ConfigType.CONFIG_TYPE_BOOL) ? IS_UT_USE_TMPI : this.mIsUtUseTmpi;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getUtX3gppIntendId() {
        return isConfigInProp(UT_X_3GPP_INTEND_ID_PROP_KEY, ConfigType.CONFIG_TYPE_STRING) ? UT_X_3GPP_INTEND_ID : this.mUtX3gppIntendId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtIMPUFromNetwork() {
        if (this.mHwImsServiceImpl != null && this.mCurrentImsi != null && this.mCurrentImsi.equals(this.mHwImsServiceImpl.getSubscriberId())) {
            return getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSlotId], this.mContext);
        }
        logd("getUtIMPUFromNetwork imsi not equals return null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtImpu(Context context) {
        if (isConfigInProp(UT_IMPU_PROP_KEY, ConfigType.CONFIG_TYPE_STRING)) {
            logd("use impu from prop, impu=" + hiddenPrivacyInfo(UT_IMPU, 2));
            return UT_IMPU;
        }
        if (!"".equals(this.mUtImpu)) {
            logd("use impu from xml, impu=" + hiddenPrivacyInfo(this.mUtImpu, 2));
            return this.mUtImpu;
        }
        String impu = getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSlotId], context);
        if (impu != null) {
            logd("use impu from network, impu=" + hiddenPrivacyInfo(impu, 2));
            return impu;
        }
        String impu2 = getSharedPreferences(IMPU_FROM_SIM_IMSI_KEY[this.mSlotId], context);
        if (impu2 != null) {
            logd("use impu from imsi, impu=" + hiddenPrivacyInfo(impu2, 2));
            return impu2;
        }
        loge("pick impu fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtImpi() {
        String impi;
        if (isConfigInProp(UT_IMPI_PROP_KEY, ConfigType.CONFIG_TYPE_STRING)) {
            logd("use impi from prop, impi=" + hiddenPrivacyInfo(UT_IMPI, 2));
            return UT_IMPI;
        }
        if (!"".equals(this.mUtImpi)) {
            logd("use impi from xml, impi=" + hiddenPrivacyInfo(this.mUtImpi, 2));
            return this.mUtImpi;
        }
        if ("".equals(this.mImpiDomain) && this.mImpiFromSim != null) {
            logd("impi from sim already exist, impi=" + hiddenPrivacyInfo(this.mImpiFromSim, 2));
            return this.mImpiFromSim;
        }
        if (this.mSpliceMncMcc != null && this.mCurrentImsi != null) {
            logd("begin to assemble impi from imsi, mSpliceMncMcc=" + HiddenPrivacyInfo.transMccMncToMosaic(this.mSpliceMncMcc));
            if (!"".equals(this.mImpiDomain)) {
                impi = this.mCurrentImsi + "@" + this.mImpiDomain;
            } else {
                impi = this.mCurrentImsi + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            }
            this.mImpiFromSim = impi;
            logd("after assemble, impi=" + hiddenPrivacyInfo(impi, 2));
            return impi;
        }
        loge("getImpiFromSim error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getDomainName() {
        return this.mDomainNameFromSim;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtRetryMaxCounts() {
        if (this.mUtRetryInterval == null) {
            return -1;
        }
        return this.mUtRetryInterval.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtRetryInterval(int index) {
        if (index < 0) {
            return -1;
        }
        if (this.mUtRetryInterval != null && this.mUtRetryInterval.length > index) {
            return this.mUtRetryInterval[index];
        }
        return -1;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized boolean isMissedCallTips() {
        return isMissedCallTipsInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isMissedCallTipsInternal() {
        return this.mIsMissedCallTips;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isMissedCallDisplay() {
        return this.mIsMissedCallDisplay;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized boolean isMissedCallTipsDelay() {
        return this.mIsMissedCallTipsDelay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getMissedCallTipsRingTimer() {
        return this.mMissedCallTipsRingTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getMissedCallTipsDelayTimer() {
        return this.mMissedCallTipsDelayTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCheckServiceWhenIncomingCall() {
        return this.mIsCheckServiceWhenIncomingCall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getImsi() {
        return this.mCurrentImsi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setImsi(String imsi) {
        this.mCurrentImsi = imsi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isImpuConfigured() {
        if (!isConfigInProp(UT_IMPU_PROP_KEY, ConfigType.CONFIG_TYPE_STRING)) {
            if ("".equals(this.mUtImpu)) {
                return false;
            }
        }
        return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setCurrentImsi(String imsi) {
        this.mCurrentImsi = imsi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setSpliceMncMcc(String spliceMncMcc) {
        this.mSpliceMncMcc = spliceMncMcc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setImpiFromSim(String impi) {
        this.mImpiFromSim = impi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setDomainNameFromSim(String domainName) {
        this.mDomainNameFromSim = domainName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setBsfAddrFromSim(String bsfAddr) {
        this.mBsfAddrFromSim = bsfAddr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setNafAddrFromSim(String nsfAddr) {
        this.mXcapRootUriFromSim = nsfAddr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String spliceMncMcc() {
        String spMncMcc;
        String simOperator = getSimOperator();
        if (simOperator != null) {
            logd("simOperator=******");
            if (5 == simOperator.length()) {
                spMncMcc = "mnc0" + simOperator.substring(3, 5);
            } else if (simOperator.length() == 6) {
                spMncMcc = "mnc" + simOperator.substring(3, 6);
            } else {
                loge("spliceMncMcc error: Get wrong MCC MNC");
                return null;
            }
            String spMncMcc2 = spMncMcc + ".mcc" + simOperator.substring(0, 3);
            logd("spMCCMNC = xxxxxx");
            return spMncMcc2;
        }
        loge("spliceMncMcc error: Cannot get sim MCC MNC ");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getSimOperator() {
        IccRecords record;
        int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        record = UiccController.getInstance().getIccRecords(phoneId, 1);
        return record != null ? record.getOperatorNumeric() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getIccId() {
        IccRecords record;
        int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        record = UiccController.getInstance().getIccRecords(phoneId, 1);
        return record != null ? record.getIccId() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getImpuFromSim() {
        if (this.mSpliceMncMcc != null && this.mCurrentImsi != null) {
            String impu = "sip:" + this.mCurrentImsi + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            logd("assemble IMPU from SIM, impu = " + hiddenPrivacyInfo(impu, 2));
            return impu;
        }
        loge("getSimIMPU error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getImpiFromSim() {
        if (this.mImpiFromSim != null) {
            return this.mImpiFromSim;
        }
        if (this.mSpliceMncMcc != null && this.mCurrentImsi != null) {
            String impu = this.mCurrentImsi + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            this.mImpiFromSim = impu;
            logd("impu = " + hiddenPrivacyInfo(impu, 2));
            return impu;
        }
        loge("getImpiFromSim error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getBsfAddrFromSim() {
        if (this.mBsfAddrFromSim != null) {
            return this.mBsfAddrFromSim;
        }
        if (this.mSpliceMncMcc != null) {
            String bsf = "bsf." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
            this.mBsfAddrFromSim = bsf;
            return bsf;
        }
        loge("getBsfAddrFromSim error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isHangUpWhenLostNet() {
        return this.mIsHangUpWhenLostNet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String[] getUtParamsCfg() {
        return this.mUtParamsCfg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getUtParamsTlsConfig() {
        return this.mUtParamsTlsConfig;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtBsfAuthBeUsed() {
        return this.mIsUtBsfAuthBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getOirSourceMode() {
        return this.mUtOirSourceMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getOirDefaultMode() {
        return this.mUtOirDefaultMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtImsDataDelayEndTime() {
        return this.mUtImsDataDelayEndTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getDefUtImsDataDelayEndTime() {
        return this.mDefUtImsDataDelayEndTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getUt409ShowPhrase() {
        return this.mIsUt409ShowPhrase;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtGbaLifetimeBeUsed() {
        return this.mIsUtGbaLifetimeBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtVoWifiDelayEndTime() {
        return this.mUtVoWifiDelayEndTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtQueryDnsIgnoreNetId() {
        return this.mIsUtQueryDnsIgnoreNetId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getSharedPreferences(String spKey, Context context) {
        logd("enter getSharedPreferences, spKey");
        String valueInMap = this.mSpValueMap.get(spKey);
        if (valueInMap != null) {
            logd("value is already stored in map.");
            return valueInMap;
        }
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        String key = Settings.Secure.getString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId]);
        String param = Settings.Secure.getString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId]);
        if (key == null || "".equals(key) || param == null || "".equals(param)) {
            logd("getSharedPreferences from SP.");
            key = sp.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId], "");
            param = sp.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId], "");
            if (!"".equals(key) && !"".equals(param)) {
                logd("getSharedPreferences moveKeyFromSpToDb.");
                moveKeyFromSpToDb(sp, key, param);
            }
        }
        String spValueEncrypt = sp.getString(spKey, "");
        String valueInSp = decrypt(spValueEncrypt, key, param);
        this.mSpValueMap.put(spKey, valueInSp);
        return valueInSp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setSharedPreferences(String spKey, String spValue, Context context) {
        logd("enter setSharedPreferences, spKey=" + spKey);
        String valueInMap = this.mSpValueMap.get(spKey);
        if (valueInMap != null && valueInMap.equals(spValue)) {
            logd("value is not changed, need not to store in SP again.");
            return;
        }
        this.mSpValueMap.put(spKey, spValue);
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        SharedPreferences.Editor editor = sp.edit();
        String spValueEncrypt = encrypt(spValue, context);
        editor.putString(spKey, spValueEncrypt);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean getBoolFromSp(String spKey, Context context, boolean isDefValue) {
        SharedPreferences sp;
        sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        return sp.getBoolean(spKey, isDefValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setBoolToSp(String spKey, boolean isSpValue, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.putBoolean(spKey, isSpValue);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getIntFromSp(String spKey, Context context, int defValue) {
        SharedPreferences sp;
        sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        return sp.getInt(spKey, defValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setIntToSp(String spKey, int spValue, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.putInt(spKey, spValue);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void readCarrierConfig(Context context) {
        String[] strArr;
        if (IS_FEATURE_VOLTE_DYN) {
            logd("readCarrierConfig begin");
            if (context.getSystemService("carrier_config") != null && (context.getSystemService("carrier_config") instanceof CarrierConfigManager)) {
                CarrierConfigManager cfgMgr = (CarrierConfigManager) context.getSystemService("carrier_config");
                int subId = ImsCallProviderUtils.getSubIdUsingSlotId(ImsCallProviderUtils.getSlotId(this.mSlotId));
                PersistableBundle bundle = cfgMgr.getConfigForSubId(subId);
                readBoolCarrierConfig(bundle);
                readIntCarrierConfig(bundle);
                readStringCarrierConfig(bundle);
                try {
                    this.mCardTypePreferToUseUt = bundle.get(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY) != null ? stringToIntArray(bundle.getString(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY)) : this.mDefCardTypePreferToUseUt;
                    this.mSsForbidFallbackCs = bundle.get(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY) != null ? stringToIntArray(bundle.getString(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY)) : this.mDefSsForbidFallbackCs;
                    this.mSsTypeUseCsOnly = bundle.get(SS_TYPE_USE_CS_ONLY_XML_KEY) != null ? stringToIntArray(bundle.getString(SS_TYPE_USE_CS_ONLY_XML_KEY)) : this.mDefSsTypeUseCsOnly;
                    this.mUtRetryInterval = bundle.get(UT_RETRY_INTERVAL_XML_KEY) != null ? stringToIntArray(bundle.getString(UT_RETRY_INTERVAL_XML_KEY)) : this.mDefUtRetryInterval;
                    if (bundle.get(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY) != null) {
                        strArr = stringToStringArray(bundle.getString(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY));
                    } else {
                        strArr = this.mDefCardMccMncPreferToUseUt;
                    }
                    this.mCardMccMncPreferToUseUt = strArr;
                    this.mNotSupportMmiCode = bundle.get(SS_NOT_SUPPORT_MMI_CODE_XML_KEY) != null ? stringToStringArray(bundle.getString(SS_NOT_SUPPORT_MMI_CODE_XML_KEY)) : this.mDefNotSupportMmiCode;
                    this.mUtParamsCfg = bundle.get(UT_PARAMS_CONFIG_XML_KEY) != null ? stringToStringArray(bundle.getString(UT_PARAMS_CONFIG_XML_KEY)) : this.mDefUtParamsCfg;
                    this.mUtParamsTlsConfig = bundle.get(UT_PARAMS_TLS_CONFIG_XML_KEY) != null ? bundle.getString(UT_PARAMS_TLS_CONFIG_XML_KEY) : null;
                    this.mDcFailCode = bundle.get(DC_FAIL_CAUSE_XML_KEY) != null ? stringToIntArray(bundle.getString(DC_FAIL_CAUSE_XML_KEY)) : this.mDefDcFailCode;
                    this.mDcFailCause = getDcFailCause(this.mDcFailCode);
                    this.mDcFailCodeToReleaseApn = bundle.get(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY) != null ? stringToIntArray(bundle.getString(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY)) : null;
                    this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
                } catch (NumberFormatException e) {
                    loge("RuntimeException");
                }
                resolveCallWaitingMode();
                this.mIsProtocolIr92V10orGreater = getParamFromUtParamsCfg(17) == 1;
                this.mIsUtGbaLifetimeBeUsed = getParamFromUtParamsCfg(19) == 1;
                logd("readCarrierConfig end");
                return;
            }
            loge("get CarrierConfigManager fail");
        }
    }

    private int getParamFromUtParamsCfg(int key) {
        int result = 0;
        String[] utParamsCfgArray = getUtParamsCfg();
        if (utParamsCfgArray != null) {
            int i = 0;
            while (true) {
                if (i >= utParamsCfgArray.length) {
                    break;
                }
                String[] utParamsCfg = utParamsCfgArray[i].split(":");
                if (utParamsCfg.length != 2 || TextUtils.isEmpty(utParamsCfg[0]) || TextUtils.isEmpty(utParamsCfg[1])) {
                    loge("getParamFromUtParamsCfg : config param not right");
                } else {
                    try {
                        int utParam0 = Integer.parseInt(utParamsCfg[0]);
                        int utParam1 = Integer.parseInt(utParamsCfg[1]);
                        if (key == utParam0) {
                            result = utParam1;
                            break;
                        }
                    } catch (NumberFormatException e) {
                        loge("getParamFromUtParamsCfg : NumberFormatException ");
                    }
                }
                i++;
            }
        }
        logd("getParamFromUtParamsCfg: key =" + key + " , result = " + result);
        return result;
    }

    public int getUtForbiddenTimer() {
        return this.mUtForbiddenTimer;
    }

    public boolean isProtocolIr92V10orGreater() {
        return this.mIsProtocolIr92V10orGreater;
    }

    private void readStringCarrierConfig(PersistableBundle bundle) {
        if (bundle == null) {
            return;
        }
        this.mUtNafSrvAddr = bundle.get(UT_NAF_SRV_ADDR_XML_KEY) != null ? bundle.getString(UT_NAF_SRV_ADDR_XML_KEY) : this.mDefUtNafSrvAddr;
        this.mUtBsfSrvAddr = bundle.get(UT_BSF_SRV_ADDR_XML_KEY) != null ? bundle.getString(UT_BSF_SRV_ADDR_XML_KEY) : this.mDefUtBsfSrvAddr;
        this.mUtX3gppIntendId = bundle.get(UT_X_3GPP_INTEND_ID_XML_KEY) != null ? bundle.getString(UT_X_3GPP_INTEND_ID_XML_KEY) : this.mDefUtX3gppIntendId;
        this.mUtImpu = bundle.get(UT_IMPU_XML_KEY) != null ? bundle.getString(UT_IMPU_XML_KEY) : this.mDefUtImpu;
        this.mUtImpi = bundle.get(UT_IMPI_XML_KEY) != null ? bundle.getString(UT_IMPI_XML_KEY) : this.mDefUtImpi;
        this.mUtXcapRootUri = bundle.get(UT_XCAP_ROOT_XML_KEY) != null ? bundle.getString(UT_XCAP_ROOT_XML_KEY) : this.mDefUtXcapRootUri;
        this.mImpiDomain = bundle.get(IMPI_DOMAIN) != null ? bundle.getString(IMPI_DOMAIN) : this.mDefImpiDomain;
    }

    private void readIntCarrierConfig(PersistableBundle bundle) {
        if (bundle == null) {
            return;
        }
        this.mDefaultNoReplyTimer = bundle.get(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? bundle.getInt(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNoReplyTimer;
        this.mContentTypeMode = bundle.get(CONTENT_TYPE_MODE_XML_KEY) != null ? bundle.getInt(CONTENT_TYPE_MODE_XML_KEY) : this.mDefContentTypeMode;
        this.mCallWaitingMode = bundle.get(CALL_WAITING_MODE_XML_KEY) != null ? bundle.getInt(CALL_WAITING_MODE_XML_KEY) : this.mDefCallWaitingMode;
        this.mUtNafPort = bundle.get(UT_NAF_PORT_XML_KEY) != null ? bundle.getInt(UT_NAF_PORT_XML_KEY) : this.mDefUtNafPort;
        this.mUtBsfPort = bundle.get(UT_BSF_PORT_XML_KEY) != null ? bundle.getInt(UT_BSF_PORT_XML_KEY) : this.mDefUtBsfPort;
        this.mUtGbaType = bundle.get(UT_GBA_TYPE_XML_KEY) != null ? bundle.getInt(UT_GBA_TYPE_XML_KEY) : this.mDefUtGbaType;
        this.mDefaultNeedNoReplyTimer = bundle.get(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? bundle.getInt(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNeedNoReplyTimer;
        this.mUtBearerType = bundle.get(UT_BEARER_TYPE_XML_KEY) != null ? bundle.getInt(UT_BEARER_TYPE_XML_KEY) : this.mDefUtBearerType;
        this.mMissedCallTipsRingTimer = bundle.get(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) != null ? bundle.getInt(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) : this.mDefMissedCallTipsRingTimer;
        this.mMissedCallTipsDelayTimer = bundle.get(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) != null ? bundle.getInt(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) : this.mDefMissedCallTipsDelayTimer;
        this.mUtUseApn = bundle.get(UT_USE_APN_XML_KEY) != null ? bundle.getInt(UT_USE_APN_XML_KEY) : this.mDefUtUseApn;
        this.mUtOirSourceMode = bundle.get(UT_OIR_SOURCE_MODE_XML_KEY) != null ? bundle.getInt(UT_OIR_SOURCE_MODE_XML_KEY) : this.mDefUtOirSourceMode;
        this.mUtOirDefaultMode = bundle.get(UT_OIR_DEFAULT_MODE_XML_KEY) != null ? bundle.getInt(UT_OIR_DEFAULT_MODE_XML_KEY) : this.mDefUtOirDefaultMode;
        this.mUtImsDataDelayEndTime = bundle.get(IMS_DATA_DELAY_END_XML_KEY) != null ? bundle.getInt(IMS_DATA_DELAY_END_XML_KEY) : this.mDefUtImsDataDelayEndTime;
        this.mUtVoWifiDelayEndTime = bundle.get(UT_VOWIFI_DELAY_END_TIME_XML_KEY) != null ? bundle.getInt(UT_VOWIFI_DELAY_END_TIME_XML_KEY) : this.mDefUtVoWifiDelayEndTime;
        this.mUtForbiddenTimer = bundle.get(UT_FORBIDDEN_TIME_XML_KEY) != null ? bundle.getInt(UT_FORBIDDEN_TIME_XML_KEY) : this.mDefaultUtForbiddenTimer;
        this.mUtPreferOption = bundle.get(UT_PREFER_OPTION_KEY) != null ? bundle.getInt(UT_PREFER_OPTION_KEY) : this.mDefUtPreferOption;
    }

    private void readBoolCarrierConfig(PersistableBundle bundle) {
        if (bundle == null) {
            return;
        }
        this.mIsUtCsBeUsed = bundle.get(UT_CS_BE_USED_XML_KEY) != null ? bundle.getBoolean(UT_CS_BE_USED_XML_KEY) : this.mIsDefUtCsBeUsed;
        this.mIsCfnrcChangeWithCfnl = bundle.get(CFNRC_CHANGE_WITH_CFNL_XML_KEY) != null ? bundle.getBoolean(CFNRC_CHANGE_WITH_CFNL_XML_KEY) : this.mIsDefCfnrcChangeWithCfnl;
        this.mIsImsStateFollowVoiceDomain = bundle.get(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) != null ? bundle.getBoolean(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) : this.mIsDefImsStateFollowVoiceDomain;
        this.mIsUtHrsLog = bundle.get(UT_HRS_LOG_XML_KEY) != null ? bundle.getBoolean(UT_HRS_LOG_XML_KEY) : this.mIsDefUtHrsLog;
        this.mIsUtNafUseHttps = bundle.get(UT_NAF_USE_HTTPS_XML_KEY) != null ? bundle.getBoolean(UT_NAF_USE_HTTPS_XML_KEY) : this.mIsDefUtNafUseHttps;
        this.mIsUtBsfUseHttps = bundle.get(UT_BSF_USE_HTTPS_XML_KEY) != null ? bundle.getBoolean(UT_BSF_USE_HTTPS_XML_KEY) : this.mIsDefUtBsfUseHttps;
        this.mIsUtUseNodeSelector = bundle.get(UT_USE_NODE_SELECTOR_XML_KEY) != null ? bundle.getBoolean(UT_USE_NODE_SELECTOR_XML_KEY) : this.mIsDefUtUseNodeSelector;
        this.mIsUtUseXcapNamespace = bundle.get(UT_USE_XCAP_NAMESPACE_XML_KEY) != null ? bundle.getBoolean(UT_USE_XCAP_NAMESPACE_XML_KEY) : this.mIsDefUtUseXcapNamespace;
        this.mIsUtKsnafUseBase64 = bundle.get(UT_KSNAF_USE_BASE64_XML_KEY) != null ? bundle.getBoolean(UT_KSNAF_USE_BASE64_XML_KEY) : this.mIsDefUtKsnafUseBase64;
        this.mIsUtUseTmpi = bundle.get(UT_USE_TMPI_XML_KEY) != null ? bundle.getBoolean(UT_USE_TMPI_XML_KEY) : this.mIsDefUtUseTmpi;
        this.mIsMissedCallTips = bundle.get(MISSED_CALL_TIPS_XML_KEY) != null ? bundle.getBoolean(MISSED_CALL_TIPS_XML_KEY) : this.mIsDefMissedCallTips;
        this.mIsMissedCallDisplay = bundle.get(MISSED_CALL_DISPLAY_XML_KEY) != null ? bundle.getBoolean(MISSED_CALL_DISPLAY_XML_KEY) : this.mIsDefMissedCallDisplay;
        this.mIsMissedCallTipsDelay = bundle.get(MISSED_CALL_TIPS_DELAY_XML_KEY) != null ? bundle.getBoolean(MISSED_CALL_TIPS_DELAY_XML_KEY) : this.mIsDefMissedCallTipsDelay;
        this.mIsCheckServiceWhenIncomingCall = bundle.get(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) != null ? bundle.getBoolean(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) : this.mIsDefCheckServiceWhenIncomingCall;
        this.mIsUtForbiddenWhenVolteSwitchOff = bundle.get(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) != null ? bundle.getBoolean(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) : this.mIsDefUtForbiddenWhenVolteSwitchOff;
        this.mIsImsSsBeUsed = bundle.get(IMS_SS_BE_USED_XML_KEY) != null ? bundle.getBoolean(IMS_SS_BE_USED_XML_KEY) : this.mIsDefImsSsBeUsed;
        this.mIsPreferToUseUt = bundle.get(PREFER_TO_USE_UT_XML_KEY) != null ? bundle.getBoolean(PREFER_TO_USE_UT_XML_KEY) : this.mIsDefPreferToUseUt;
        this.mIsUtCanUseWifi = bundle.get(UT_CAN_USE_WIFI_XML_KEY) != null ? bundle.getBoolean(UT_CAN_USE_WIFI_XML_KEY) : this.mIsDefUtCanUseWifi;
        this.mIsHangUpWhenLostNet = bundle.get(HANG_UP_WHEN_LOST_NET) != null ? bundle.getBoolean(HANG_UP_WHEN_LOST_NET) : this.mIsDefHangUpWhenLostNet;
        this.mIsUtBsfAuthBeUsed = bundle.get(UT_BSF_AUTH_BE_USED_XML_KEY) != null ? bundle.getBoolean(UT_BSF_AUTH_BE_USED_XML_KEY) : this.mIsDefUtBsfAuthBeUsed;
        this.mIsVowifiUtSwitch = bundle.get(VOWIFI_UT_SWITCH_XML_KEY) != null ? bundle.getBoolean(VOWIFI_UT_SWITCH_XML_KEY) : this.mIsDefaultVowifiUtSwitch;
        this.mIsBuildVersionCarrier = bundle.get(CARRIER_BUILD_VERSION_BOOL) != null ? bundle.getBoolean(CARRIER_BUILD_VERSION_BOOL) : this.mIsDefBuildVersionCarrier;
        this.mIsUse403ForLocalCw = bundle.get(USE_403_FOR_LOCAL_CW) != null ? bundle.getBoolean(USE_403_FOR_LOCAL_CW) : this.mIsDefUse403ForLocalCw;
        this.mIsUt409ShowPhrase = bundle.get(UT_409_SHOW_PHRASE) != null ? bundle.getBoolean(UT_409_SHOW_PHRASE) : this.mIsDefUt409ShowPhrase;
        this.mIsCarrierSupportVolte = bundle.get(CARRIER_SUPPORT_VOLTE) != null ? bundle.getBoolean(CARRIER_SUPPORT_VOLTE) : false;
        this.mIsUseMultCondition = bundle.get(UT_USE_MULTI_CF) != null ? bundle.getBoolean(UT_USE_MULTI_CF) : this.mIsDefUseMultCondition;
        this.mIsUtQueryDnsIgnoreNetId = bundle.get(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) != null ? bundle.getBoolean(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) : this.mIsDefUtQueryDnsIgnoreNetId;
        this.mIsCarrierSupportVoWifi = bundle.get(CARRIER_SUPPORT_VOWIFI) != null ? bundle.getBoolean(CARRIER_SUPPORT_VOWIFI) : false;
        this.mIsVolteLowbatteryEndcall = bundle.get(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) != null ? bundle.getBoolean(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) : this.mIsDefVolteLowbatteryEndcall;
        this.mIsEmergencyUnderWifi = bundle.get(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) != null ? bundle.getBoolean(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) : this.mIsDefEmergencyUnderWifi;
        this.mIsUtPreferVowifiWhenVowifiReg = bundle.get(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) != null ? bundle.getBoolean(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) : this.mIsDefUtPreferVowifiWhenVowifiReg;
        this.mIsActiveCallwaitingFromCs = bundle.get(SET_CALLWAITING_TO_ACTIVE) != null ? bundle.getBoolean(SET_CALLWAITING_TO_ACTIVE) : this.mIsDefActiveCallwaitingFromCs;
        this.mIsMmi002004NoneCsfb = bundle.get(MMI_002004_NONE_CSFB) != null ? bundle.getBoolean(MMI_002004_NONE_CSFB) : this.mIsDefMmi002004NoneCsfb;
        this.mIsRemoveVowifiIconUnderCsCall = bundle.get(REMOVE_VOWIFI_ICON_UNDER_CSCYCALL) != null ? bundle.getBoolean(REMOVE_VOWIFI_ICON_UNDER_CSCYCALL) : this.mIsDefRemoveVowifiIconUnderCsCall;
        this.mIsUtQueryXcapApnExact = bundle.getBoolean(UT_QUERY_XCAP_APN_EXACT_KEY, UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0086, code lost:
    
        if (r0 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0092, code lost:
    
        if (r0 == null) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void init(Context context) {
        File file;
        logd("init enter");
        InputStream is = null;
        XmlPullParser parser = null;
        boolean isExist = false;
        try {
            try {
                try {
                    file = HwCfgFilePolicy.getCfgFile(FILE_PATH, 0);
                } catch (Exception e) {
                    loge("Exception failed.");
                }
            } catch (Exception e2) {
                loge("Exception");
                if (0 != 0) {
                    is.close();
                }
                if (0 != 0 && !XmlResourceParser.class.isInstance(null)) {
                    parser.setInput(null);
                }
            }
            if (file == null) {
                throw new FileNotFoundException("File does not exist");
            }
            logd("get file successfully");
            InputStream is2 = new FileInputStream(file);
            XmlPullParser parser2 = Xml.newPullParser();
            parser2.setInput(is2, "UTF-8");
            loadImsConfig(context, parser2);
            isExist = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
            is2.close();
            if (!XmlResourceParser.class.isInstance(parser2)) {
                parser2.setInput(null);
            }
            if (!isExist) {
                logd("ImsConfig load from ims file");
                XmlResourceParser xmlParser = null;
                try {
                    try {
                        xmlParser = context.getResources().getXml(R.xml.hw_ims_config);
                        if (xmlParser != null) {
                            loadImsConfig(context, xmlParser);
                        }
                    } catch (Throwable th) {
                        if (xmlParser != null) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    loge("load file exception caught");
                }
            }
            try {
                resolveCallWaitingMode();
            } catch (NumberFormatException e4) {
                loge("can't resolve call waiting mode");
            }
            logd("init finish");
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    is.close();
                } catch (Exception e5) {
                    loge("Exception failed.");
                    throw th2;
                }
            }
            if (0 != 0 && !XmlResourceParser.class.isInstance(null)) {
                parser.setInput(null);
            }
            throw th2;
        }
    }

    private void moveKeyFromSpToDb(SharedPreferences sp, String key, String param) {
        logd("moveKeyFromSpToDb enter.");
        Settings.Secure.putString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId], EncryptUtils.encodeAesKey(key, 256));
        Settings.Secure.putString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId], EncryptUtils.encodeAesParam(key, param));
        SharedPreferences.Editor editor = sp.edit();
        editor.remove(SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId]);
        editor.remove(SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId]);
        editor.commit();
    }

    private String encrypt(String spValue, Context context) {
        String key;
        String param;
        if (spValue == null) {
            logd("spValue is null, do not encrypt");
            return null;
        }
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        String key2 = Settings.Secure.getString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId]);
        String param2 = Settings.Secure.getString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId]);
        if (key2 == null || "".equals(key2) || param2 == null || "".equals(param2)) {
            logd("encrypt from SP");
            String key3 = sp.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId], "");
            String param3 = sp.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId], "");
            if ("".equals(key3) || "".equals(param3)) {
                logd("create AES key");
                key = EncryptUtils.generateRandomString(256);
                param = EncryptUtils.generateRandomString(16);
                Settings.Secure.putString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_KEY[this.mSlotId], EncryptUtils.encodeAesKey(key, 256));
                Settings.Secure.putString(this.mContext.getContentResolver(), SHARED_PREFERENCES_PROFILE_PARAM[this.mSlotId], EncryptUtils.encodeAesParam(key, param));
            } else {
                key = EncryptUtils.decodeAesKey(key3, 256);
                if (key == null || (param = EncryptUtils.decodeAesParam(key, param3)) == null) {
                    return null;
                }
                logd("encrypt moveKeyFromSpToDb");
                moveKeyFromSpToDb(sp, key, param);
            }
        } else {
            key = EncryptUtils.decodeAesKey(key2, 256);
            if (key == null || (param = EncryptUtils.decodeAesParam(key, param2)) == null) {
                return null;
            }
        }
        return AesEncrypter.encrypt(spValue, key, param);
    }

    private String decrypt(String spValueEncrypt, String key, String param) {
        String newParam;
        if ("".equals(spValueEncrypt) || "".equals(key) || "".equals(param)) {
            logd("value or key is not exist");
            return null;
        }
        String newKey = EncryptUtils.decodeAesKey(key, 256);
        if (newKey == null || (newParam = EncryptUtils.decodeAesParam(newKey, param)) == null) {
            return null;
        }
        String valueInSp = AesEncrypter.decrypt(spValueEncrypt, newKey, newParam);
        if (IS_JP) {
            boolean isUpdateSp = isNeedUpdateSp(this.mSlotId);
            logd("enter decrypt, isUpdateSp = " + isUpdateSp);
            if (valueInSp == null && isUpdateSp) {
                logd("enter decryptWithSha1");
                String valueInSp2 = AesEncrypter.decryptWithSha1(spValueEncrypt, newKey, newParam);
                setSharedPreferences(SIM_IMSI_KEY[this.mSlotId], valueInSp2, this.mContext);
                setSharedPreferences(IMPU_FROM_SIM_IMSI_KEY[this.mSlotId], getImpuFromSim(), this.mContext);
                setDbValue(this.mSlotId, -1);
                return valueInSp2;
            }
            return valueInSp;
        }
        return valueInSp;
    }

    private boolean isNeedUpdateSp(int slotId) {
        if (slotId == 0) {
            if (Settings.Secure.getInt(this.mContext.getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_0, 0) == 0) {
                return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
            }
            return false;
        }
        if (Settings.Secure.getInt(this.mContext.getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_1, 0) == 0) {
            return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        }
        return false;
    }

    private void setDbValue(int slotId, int value) {
        if (slotId == 0) {
            Settings.Secure.putInt(this.mContext.getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_0, value);
        } else {
            Settings.Secure.putInt(this.mContext.getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_1, value);
        }
    }

    private boolean isStringEqual(String cfgTag, String xmlTag) {
        int cfgLen = cfgTag.length();
        if (cfgLen != xmlTag.length()) {
            return false;
        }
        for (int i = cfgLen - 1; i >= 0; i--) {
            if (cfgTag.charAt(i) != xmlTag.charAt(i)) {
                return false;
            }
        }
        return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
    }

    private void startPositionOfImsConfigXml(XmlPullParser parser, String firstElementName) throws XmlPullParserException, IOException {
        int type = parser.next();
        while (type != 2 && type != 1) {
            type = parser.next();
        }
        if (type != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (parser.getName() == null || !parser.getName().equals(firstElementName)) {
            throw new XmlPullParserException("Unexpected start tag: found");
        }
    }

    private void nextElement(XmlPullParser parser) throws XmlPullParserException, IOException {
        int type = parser.next();
        while (type != 2 && type != 1) {
            type = parser.next();
        }
    }

    private synchronized void handleBoolTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleBoolTypeConfigPartOne(value, text);
            handleBoolTypeConfigPartTwo(value, text);
        } catch (NumberFormatException e) {
            loge("handleBoolTypeConfig NumberFormatException");
        }
    }

    private synchronized void handleBoolTypeConfigPartOne(String value, String text) {
        if (isStringEqual(UT_CS_BE_USED_XML_KEY, value)) {
            this.mIsUtCsBeUsed = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtCsBeUsed = this.mIsUtCsBeUsed;
        } else if (isStringEqual(CFNRC_CHANGE_WITH_CFNL_XML_KEY, value)) {
            this.mIsCfnrcChangeWithCfnl = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefCfnrcChangeWithCfnl = this.mIsCfnrcChangeWithCfnl;
        } else if (isStringEqual(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY, value)) {
            this.mIsImsStateFollowVoiceDomain = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefImsStateFollowVoiceDomain = this.mIsImsStateFollowVoiceDomain;
        } else if (isStringEqual(UT_HRS_LOG_XML_KEY, value)) {
            this.mIsUtHrsLog = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtHrsLog = this.mIsUtHrsLog;
        } else if (isStringEqual(UT_NAF_USE_HTTPS_XML_KEY, value)) {
            this.mIsUtNafUseHttps = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtNafUseHttps = this.mIsUtNafUseHttps;
        } else if (isStringEqual(UT_BSF_USE_HTTPS_XML_KEY, value)) {
            this.mIsUtBsfUseHttps = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtBsfUseHttps = this.mIsUtBsfUseHttps;
        } else if (isStringEqual(UT_USE_NODE_SELECTOR_XML_KEY, value)) {
            this.mIsUtUseNodeSelector = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtUseNodeSelector = this.mIsUtUseNodeSelector;
        } else if (isStringEqual(UT_USE_XCAP_NAMESPACE_XML_KEY, value)) {
            this.mIsUtUseXcapNamespace = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtUseXcapNamespace = this.mIsUtUseXcapNamespace;
        } else if (isStringEqual(UT_KSNAF_USE_BASE64_XML_KEY, value)) {
            this.mIsUtKsnafUseBase64 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtKsnafUseBase64 = this.mIsUtKsnafUseBase64;
        } else if (isStringEqual(UT_USE_TMPI_XML_KEY, value)) {
            this.mIsUtUseTmpi = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtUseTmpi = this.mIsUtUseTmpi;
        } else {
            loge("handleBoolTypeConfigPartOne unsupport value.");
        }
    }

    private synchronized void handleBoolTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(MISSED_CALL_TIPS_XML_KEY, value)) {
            this.mIsMissedCallTips = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefMissedCallTips = this.mIsMissedCallTips;
        } else if (isStringEqual(MISSED_CALL_DISPLAY_XML_KEY, value)) {
            this.mIsMissedCallDisplay = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefMissedCallDisplay = this.mIsMissedCallDisplay;
        } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_XML_KEY, value)) {
            this.mIsMissedCallTipsDelay = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefMissedCallTipsDelay = this.mIsMissedCallTipsDelay;
        } else if (isStringEqual(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY, value)) {
            this.mIsCheckServiceWhenIncomingCall = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefCheckServiceWhenIncomingCall = this.mIsCheckServiceWhenIncomingCall;
        } else if (isStringEqual(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF, value)) {
            this.mIsUtForbiddenWhenVolteSwitchOff = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtForbiddenWhenVolteSwitchOff = this.mIsUtForbiddenWhenVolteSwitchOff;
        } else if (isStringEqual(IMS_SS_BE_USED_XML_KEY, value)) {
            this.mIsImsSsBeUsed = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefImsSsBeUsed = this.mIsImsSsBeUsed;
        } else if (isStringEqual(HANG_UP_WHEN_LOST_NET, value)) {
            this.mIsHangUpWhenLostNet = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefHangUpWhenLostNet = this.mIsHangUpWhenLostNet;
        } else if (isStringEqual(UT_CAN_USE_WIFI_XML_KEY, value)) {
            this.mIsUtCanUseWifi = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtCanUseWifi = this.mIsUtCanUseWifi;
        } else if (isStringEqual(UT_BSF_AUTH_BE_USED_XML_KEY, value)) {
            this.mIsUtBsfAuthBeUsed = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtBsfAuthBeUsed = this.mIsUtBsfAuthBeUsed;
        } else if (isStringEqual(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY, value)) {
            this.mIsUtQueryDnsIgnoreNetId = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefUtQueryDnsIgnoreNetId = this.mIsUtQueryDnsIgnoreNetId;
        } else if (isStringEqual(VOLTE_LOWBATTERY_ENDCALL_XML_KEY, value)) {
            this.mIsVolteLowbatteryEndcall = TRUE_VALUE.equalsIgnoreCase(text);
            this.mIsDefVolteLowbatteryEndcall = this.mIsVolteLowbatteryEndcall;
        } else {
            loge("handleBoolTypeConfigPartTwo unsupport value.");
        }
    }

    private synchronized void handleIntTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleIntTypeConfigPartOne(value, text);
            handleIntTypeConfigPartTwo(value, text);
        } catch (NumberFormatException e) {
            loge("handleStringTypeConfig NumberFormatException");
        }
    }

    private synchronized void handleIntTypeConfigPartOne(String value, String text) {
        if (isStringEqual(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY, value)) {
            try {
                this.mDefaultNoReplyTimer = Integer.parseInt(text);
                this.mDefDefaultNoReplyTimer = this.mDefaultNoReplyTimer;
            } catch (NumberFormatException e) {
                loge("handleIntTypeConfigPartOne : mDefaultNoReplyTimer NumberFormatException");
                this.mDefaultNoReplyTimer = this.mDefDefaultNoReplyTimer;
            }
        } else if (isStringEqual(CONTENT_TYPE_MODE_XML_KEY, value)) {
            try {
                this.mContentTypeMode = Integer.parseInt(text);
                this.mDefContentTypeMode = this.mContentTypeMode;
            } catch (NumberFormatException e2) {
                loge("handleIntTypeConfigPartOne : mContentTypeMode NumberFormatException");
                this.mContentTypeMode = this.mDefContentTypeMode;
            }
        } else if (isStringEqual(CALL_WAITING_MODE_XML_KEY, value)) {
            try {
                this.mCallWaitingMode = Integer.parseInt(text);
                this.mDefCallWaitingMode = this.mCallWaitingMode;
            } catch (NumberFormatException e3) {
                loge("handleIntTypeConfigPartOne : mCallWaitingMode NumberFormatException");
                this.mCallWaitingMode = this.mDefCallWaitingMode;
            }
        } else if (isStringEqual(UT_NAF_PORT_XML_KEY, value)) {
            try {
                this.mUtNafPort = Integer.parseInt(text);
                this.mDefUtNafPort = this.mUtNafPort;
            } catch (NumberFormatException e4) {
                loge("handleIntTypeConfigPartOne : mUtNafPort NumberFormatException");
                this.mUtNafPort = this.mDefUtNafPort;
            }
        } else if (isStringEqual(UT_BSF_PORT_XML_KEY, value)) {
            try {
                this.mUtBsfPort = Integer.parseInt(text);
                this.mDefUtBsfPort = this.mUtBsfPort;
            } catch (NumberFormatException e5) {
                loge("handleIntTypeConfigPartOne : mUtBsfPort NumberFormatException");
                this.mUtBsfPort = this.mDefUtBsfPort;
            }
        } else if (isStringEqual(UT_GBA_TYPE_XML_KEY, value)) {
            try {
                this.mUtGbaType = Integer.parseInt(text);
                this.mDefUtGbaType = this.mUtGbaType;
            } catch (NumberFormatException e6) {
                loge("handleIntTypeConfigPartOne : mUtGbaType NumberFormatException");
                this.mUtGbaType = this.mDefUtGbaType;
            }
        } else if (isStringEqual(UT_BEARER_TYPE_XML_KEY, value)) {
            try {
                this.mUtBearerType = Integer.parseInt(text);
                this.mDefUtBearerType = this.mUtBearerType;
            } catch (NumberFormatException e7) {
                loge("handleIntTypeConfigPartOne : mUtBearerType NumberFormatException");
                this.mUtBearerType = this.mDefUtBearerType;
            }
        } else {
            loge("handleIntTypeConfigPartOne unsupport value.");
        }
    }

    private synchronized void handleIntTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(MISSED_CALL_TIPS_RING_TIMER_XML_KEY, value)) {
            try {
                this.mMissedCallTipsRingTimer = Integer.parseInt(text);
                this.mDefMissedCallTipsRingTimer = this.mMissedCallTipsRingTimer;
            } catch (NumberFormatException e) {
                loge("handleIntTypeConfigPartTwo : mMissedCallTipsRingTimer NumberFormatException");
                this.mMissedCallTipsRingTimer = this.mDefMissedCallTipsRingTimer;
            }
        } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY, value)) {
            try {
                this.mMissedCallTipsDelayTimer = Integer.parseInt(text);
                this.mDefMissedCallTipsDelayTimer = this.mMissedCallTipsDelayTimer;
            } catch (NumberFormatException e2) {
                loge("handleIntTypeConfigPartTwo : mMissedCallTipsDelayTimer NumberFormatException");
                this.mMissedCallTipsDelayTimer = this.mDefMissedCallTipsDelayTimer;
            }
        } else if (isStringEqual(UT_USE_APN_XML_KEY, value)) {
            try {
                this.mUtUseApn = Integer.parseInt(text);
                this.mDefUtUseApn = this.mUtUseApn;
            } catch (NumberFormatException e3) {
                loge("handleIntTypeConfigPartTwo : mUtUseApn NumberFormatException");
                this.mUtUseApn = this.mDefUtUseApn;
            }
        } else if (isStringEqual(UT_OIR_SOURCE_MODE_XML_KEY, value)) {
            try {
                this.mUtOirSourceMode = Integer.parseInt(text);
                this.mDefUtOirSourceMode = this.mUtOirSourceMode;
            } catch (NumberFormatException e4) {
                loge("handleIntTypeConfigPartTwo : mUtOirSourceMode NumberFormatException");
                this.mUtOirSourceMode = this.mDefUtOirSourceMode;
            }
        } else if (isStringEqual(UT_OIR_DEFAULT_MODE_XML_KEY, value)) {
            try {
                this.mUtOirDefaultMode = Integer.parseInt(text);
                this.mDefUtOirDefaultMode = this.mUtOirDefaultMode;
            } catch (NumberFormatException e5) {
                loge("handleIntTypeConfigPartTwo : mUtOirDefaultMode NumberFormatException");
                this.mUtOirDefaultMode = this.mDefUtOirDefaultMode;
            }
        } else if (isStringEqual(IMS_DATA_DELAY_END_XML_KEY, value)) {
            try {
                this.mUtImsDataDelayEndTime = Integer.parseInt(text);
                this.mDefUtImsDataDelayEndTime = this.mUtImsDataDelayEndTime;
            } catch (NumberFormatException e6) {
                loge("handleIntTypeConfigPartTwo : mUtImsDataDelayEndTime NumberFormatException");
                this.mUtImsDataDelayEndTime = this.mDefUtImsDataDelayEndTime;
            }
        } else if (isStringEqual(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY, value)) {
            try {
                this.mDefaultNeedNoReplyTimer = Integer.parseInt(text);
                this.mDefDefaultNeedNoReplyTimer = this.mDefaultNeedNoReplyTimer;
            } catch (NumberFormatException e7) {
                loge("handleIntTypeConfigPartTwo : mDefaultNeedNoReplyTimer NumberFormatException");
                this.mDefaultNeedNoReplyTimer = this.mDefDefaultNeedNoReplyTimer;
            }
        } else if (isStringEqual(UT_VOWIFI_DELAY_END_TIME_XML_KEY, value)) {
            try {
                this.mUtVoWifiDelayEndTime = Integer.parseInt(text);
                this.mDefUtVoWifiDelayEndTime = this.mUtVoWifiDelayEndTime;
            } catch (NumberFormatException e8) {
                loge("handleIntTypeConfigPartTwo : mUtVoWifiDelayEndTime NumberFormatException");
                this.mUtVoWifiDelayEndTime = this.mDefUtVoWifiDelayEndTime;
            }
        } else {
            loge("handleIntTypeConfigPartTwo unsupport value.");
        }
    }

    private synchronized void handleStringTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleStringTypeConfigPartOne(value, text);
            handleStringTypeConfigPartTwo(value, text);
        } catch (NumberFormatException e) {
            loge("handleStringTypeConfig NumberFormatException");
        }
    }

    private synchronized void handleStringTypeConfigPartOne(String value, String text) {
        if (isStringEqual(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY, value)) {
            this.mCardTypePreferToUseUt = stringToIntArray(text);
            this.mDefCardTypePreferToUseUt = this.mCardTypePreferToUseUt;
        } else if (isStringEqual(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY, value)) {
            this.mCardMccMncPreferToUseUt = stringToStringArray(text);
            this.mDefCardMccMncPreferToUseUt = this.mCardMccMncPreferToUseUt;
        } else if (isStringEqual(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY, value)) {
            this.mSsForbidFallbackCs = stringToIntArray(text);
            this.mDefSsForbidFallbackCs = this.mSsForbidFallbackCs;
        } else if (isStringEqual(SS_NOT_SUPPORT_MMI_CODE_XML_KEY, value)) {
            this.mNotSupportMmiCode = stringToStringArray(text);
            this.mDefNotSupportMmiCode = this.mNotSupportMmiCode;
        } else if (isStringEqual(SS_TYPE_USE_CS_ONLY_XML_KEY, value)) {
            this.mSsTypeUseCsOnly = stringToIntArray(text);
            this.mDefSsTypeUseCsOnly = this.mSsTypeUseCsOnly;
        } else if (isStringEqual(UT_NAF_SRV_ADDR_XML_KEY, value)) {
            this.mUtNafSrvAddr = text;
            this.mDefUtNafSrvAddr = this.mUtNafSrvAddr;
        } else if (isStringEqual(UT_BSF_SRV_ADDR_XML_KEY, value)) {
            this.mUtBsfSrvAddr = text;
            this.mDefUtBsfSrvAddr = this.mUtBsfSrvAddr;
        } else {
            loge("handleStringTypeConfigPartOne unsupport value.");
        }
    }

    private synchronized void handleStringTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(UT_X_3GPP_INTEND_ID_XML_KEY, value)) {
            this.mUtX3gppIntendId = text;
            this.mDefUtX3gppIntendId = this.mUtX3gppIntendId;
        } else if (isStringEqual(UT_IMPU_XML_KEY, value)) {
            this.mUtImpu = text;
            this.mDefUtImpu = this.mUtImpu;
        } else if (isStringEqual(UT_IMPI_XML_KEY, value)) {
            this.mUtImpi = text;
            this.mDefUtImpi = this.mUtImpi;
        } else if (isStringEqual(UT_RETRY_INTERVAL_XML_KEY, value)) {
            this.mUtRetryInterval = stringToIntArray(text);
            this.mDefUtRetryInterval = this.mUtRetryInterval;
        } else if (isStringEqual(UT_PARAMS_CONFIG_XML_KEY, value)) {
            this.mUtParamsCfg = stringToStringArray(text);
            this.mDefUtParamsCfg = this.mUtParamsCfg;
        } else if (isStringEqual(UT_XCAP_ROOT_XML_KEY, value)) {
            this.mUtXcapRootUri = text;
            this.mDefUtXcapRootUri = this.mUtXcapRootUri;
        } else if (isStringEqual(DC_FAIL_CAUSE_XML_KEY, value)) {
            this.mDcFailCode = stringToIntArray(text);
            this.mDefDcFailCode = this.mDcFailCode;
        } else if (isStringEqual(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY, value)) {
            this.mDcFailCodeToReleaseApn = stringToIntArray(text);
            this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
        } else {
            loge("handleStringTypeConfigPartTwo unsupport value.");
        }
    }

    private void loadImsConfig(Context context, XmlPullParser parser) {
        try {
            try {
                try {
                    try {
                        startPositionOfImsConfigXml(parser, "ims_config");
                        while (true) {
                            nextElement(parser);
                            String tag = parser.getName();
                            if (tag == null) {
                                break;
                            }
                            String name = parser.getAttributeName(0);
                            String value = parser.getAttributeValue(0);
                            String text = parser.next() == 4 ? parser.getText() : null;
                            if (isStringEqual("name", name)) {
                                if (isStringEqual("bool", tag)) {
                                    handleBoolTypeConfig(value, text);
                                } else if ("int".equals(tag)) {
                                    handleIntTypeConfig(value, text);
                                } else if ("string".equals(tag)) {
                                    handleStringTypeConfig(value, text);
                                } else {
                                    loge("loadImsConfig unsupport value.");
                                }
                            }
                        }
                        if (parser instanceof XmlResourceParser) {
                            ((XmlResourceParser) parser).close();
                        }
                        if (parser instanceof KXmlParser) {
                            ((KXmlParser) parser).close();
                        }
                    } catch (Throwable th) {
                        if (parser instanceof XmlResourceParser) {
                            ((XmlResourceParser) parser).close();
                        }
                        if (parser instanceof KXmlParser) {
                            try {
                                ((KXmlParser) parser).close();
                            } catch (IOException e) {
                                loge("parser close error");
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    loge("loadImsConfig IOException occur.");
                    if (parser instanceof XmlResourceParser) {
                        ((XmlResourceParser) parser).close();
                    }
                    if (parser instanceof KXmlParser) {
                        ((KXmlParser) parser).close();
                    }
                }
            } catch (XmlPullParserException e3) {
                loge("loadImsConfig parse xml error.");
                if (parser instanceof XmlResourceParser) {
                    ((XmlResourceParser) parser).close();
                }
                if (parser instanceof KXmlParser) {
                    ((KXmlParser) parser).close();
                }
            }
        } catch (IOException e4) {
            loge("parser close error");
        }
    }

    private boolean isContainInImsConfig(int[] imsConfig, int serviceValue) {
        if (imsConfig == null || imsConfig.length == 0) {
            logw("ims config is null.");
            return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        }
        for (int i : imsConfig) {
            if (serviceValue == i) {
                logd("Current SS type or card type is contained by ims config.");
                return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
            }
        }
        return false;
    }

    private boolean isContainInImsConfig(String[] imsConfig, String serviceValue) {
        if (imsConfig == null) {
            logd("ims config is null. ");
            return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        }
        for (int number = 0; number < imsConfig.length; number++) {
            logd("imsConfig=" + imsConfig[number] + ", number=" + number);
            if (imsConfig[number] != null && imsConfig[number].equals(serviceValue)) {
                logd("serviceValue is contained by ims config.");
                return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
            }
        }
        return false;
    }

    private int[] stringToIntArray(String stringText) {
        if (stringText == null) {
            logw("stringText is null. ");
            return new int[0];
        }
        String stringReplaceSpace = stringText.replaceAll(" ", "");
        if ("".equals(stringReplaceSpace)) {
            logw("stringText is null after replace space. ");
            return new int[0];
        }
        String[] stringTextArray = stringReplaceSpace.split(SEPARATOR_TAG);
        if (stringTextArray.length == 0) {
            logw("stringTextArray length is 0 after replace space.");
            return new int[0];
        }
        int[] intArray = new int[stringTextArray.length];
        for (int i = 0; i < stringTextArray.length; i++) {
            if (!"".equals(stringTextArray[i])) {
                try {
                    intArray[i] = Integer.parseInt(stringTextArray[i]);
                } catch (NumberFormatException e) {
                    loge("stringToIntArray : NumberFormatException ");
                    intArray[i] = -123456;
                }
                logd("intArray[i] =  " + intArray[i]);
            } else {
                intArray[i] = -123456;
            }
        }
        return intArray;
    }

    private String[] stringToStringArray(String stringText) {
        if (stringText == null) {
            logw("stringText is null.");
            return new String[0];
        }
        String stringReplaceSpace = stringText.replaceAll(" ", "");
        if ("".equals(stringReplaceSpace)) {
            logw("stringText is null after replace space.");
            return new String[0];
        }
        String[] stringArray = stringReplaceSpace.split(SEPARATOR_TAG);
        if (stringArray.length == 0) {
            logw("stringArray length is 0 after replace space.");
            return new String[0];
        }
        for (int i = 0; i < stringArray.length; i++) {
            if ("".equals(stringArray[i])) {
                stringArray[i] = STRING_NOT_INITIALIZED;
            }
            logd("stringArray[i]=" + stringArray[i]);
        }
        return stringArray;
    }

    private void resolveCallWaitingMode() {
        int callWaitingMode = getCallWaitingMode();
        if ((callWaitingMode & 1) != 0) {
            this.mIsCallWaitingSyncToImsSdk = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        } else {
            this.mIsCallWaitingSyncToImsSdk = false;
        }
        if ((callWaitingMode & 2) != 0) {
            this.mIsCallWaitingSyncToCs = UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        } else {
            this.mIsCallWaitingSyncToCs = false;
        }
        int callWaitingSource = (callWaitingMode & 12) >> 2;
        if (callWaitingSource == 0) {
            this.mCallWaitingSource = CallWaitingSource.CALL_WAITING_FROM_UT;
        } else if (callWaitingSource == 1) {
            this.mCallWaitingSource = CallWaitingSource.CALL_WAITING_FROM_CS;
        } else if (callWaitingSource == 2) {
            this.mCallWaitingSource = CallWaitingSource.CALL_WAITING_FROM_LOCAL;
        } else {
            loge("call waiting source is not exist, source=" + this.mCallWaitingSource);
        }
        logd("resolveCallWaitingMode finished, callWaitingMode=" + callWaitingMode + ", mIsCallWaitingSyncToImsSdk=" + this.mIsCallWaitingSyncToImsSdk + ", mIsCallWaitingSyncToCs=" + this.mIsCallWaitingSyncToCs + ", mCallWaitingSource=" + this.mCallWaitingSource);
    }

    private String getRootUriFromSim() {
        String str = this.mXcapRootUriFromSim;
        if (str != null) {
            return str;
        }
        if (this.mSpliceMncMcc != null) {
            String rootUri = "xcap.ims." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
            this.mXcapRootUriFromSim = rootUri;
            return rootUri;
        }
        loge("getRootURI error: Get wrong MCC MNC ");
        return null;
    }

    private boolean isConfigInProp(String key, ConfigType propType) {
        int keyLength = key.length();
        if (keyLength > 31) {
            loge("the prop name length=" + keyLength);
            return false;
        }
        int i = AnonymousClass3.$SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType[propType.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            String propValue = SystemProperties.get(key, "");
            if ("".equals(propValue)) {
                return false;
            }
            return UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE;
        }
        loge("can't recognise this prop type");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.huawei.ims.HwImsConfigImpl$3, reason: invalid class name */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType = new int[ConfigType.values().length];

        static {
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType[ConfigType.CONFIG_TYPE_BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType[ConfigType.CONFIG_TYPE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$ConfigType[ConfigType.CONFIG_TYPE_INT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private static String hiddenPrivacyInfo(String info, int type) {
        return HiddenPrivacyInfo.putMosaic(info, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String msg) {
        Rlog.i("HwImsConfigImpl[" + this.mSlotId + "]", msg);
    }

    private void loge(String msg) {
        Rlog.e("HwImsConfigImpl[" + this.mSlotId + "]", "[ERROR] " + msg);
    }

    private void logw(String msg) {
        Rlog.w("HwImsConfigImpl[" + this.mSlotId + "]", "[WARN] " + msg);
    }

    public int setConfig(int item, int value) {
        if (!IS_VOWIFI_PROP_ON) {
            return 0;
        }
        if (this.mMapconService == null) {
            loge("setProvisionedValue,mMapconService is null");
            return -1;
        }
        int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int ret = 0;
        if (item == 26) {
            try {
                logd("set VOICE_OVER_WIFI_ROAMING,value:" + value);
                this.mMapconService.notifyRoaming(phoneId);
            } catch (RemoteException e) {
                logd("set VOICE_OVER_WIFI_ROAMING failed");
                ret = 1;
            }
        } else if (item == 27) {
            try {
                logd("set VOICE_OVER_WIFI_MODE,value:" + value);
                this.mMapconService.setDomain(phoneId, value);
            } catch (RemoteException e2) {
                logd("set VOICE_OVER_WIFI_MODE failed");
                ret = 1;
            }
        } else {
            loge("setConfig unsupport value.");
        }
        if (ret == 0) {
            this.mConfigIntValue.put(Integer.valueOf(item), Integer.valueOf(value));
        }
        return ret;
    }

    public int setConfig(int item, String value) {
        this.mConfigStringValue.put(Integer.valueOf(item), value);
        return 0;
    }

    public int getConfigInt(int item) {
        if (this.mConfigIntValue.containsKey(Integer.valueOf(item))) {
            return this.mConfigIntValue.get(Integer.valueOf(item)).intValue();
        }
        return -1;
    }

    public String getConfigString(int item) {
        if (this.mConfigStringValue.containsKey(Integer.valueOf(item))) {
            return this.mConfigStringValue.get(Integer.valueOf(item));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMapconService() {
        if (IS_VOWIFI_PROP_ON) {
            ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsConfigImpl.2
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName className, IBinder service) {
                    HwImsConfigImpl.this.logd("onServiceConnected");
                    if (IMapconService.Stub.asInterface(service) instanceof IMapconService) {
                        HwImsConfigImpl.this.mMapconService = IMapconService.Stub.asInterface(service);
                    }
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName className) {
                    HwImsConfigImpl.this.mMapconService = null;
                }
            };
            Intent intent = new Intent().setClassName("com.hisi.mapcon", "com.hisi.mapcon.MapconService");
            this.mContext.bindServiceAsUser(intent, mConnection, 1, UserHandle.OWNER);
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) {
        logd("setFeatureValue feature=" + feature + ",network=" + network + ",value=" + value);
        if (feature != 0 && feature != 1 && feature == 2) {
            setVoWifiStatus(value);
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public int setImsConfig(String configKey, PersistableBundle configValue) {
        logd("setImsConfig, configKey = " + configKey + ", configValue = *** ");
        if (configValue == null) {
            return 1;
        }
        if (configKey != null) {
            char c = 65535;
            int hashCode = configKey.hashCode();
            if (hashCode != 1409587605) {
                if (hashCode == 1836070841 && configKey.equals(IMS_CONFIG_KEY_SETSMSCONFIG)) {
                    c = 0;
                }
            } else if (configKey.equals(VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT)) {
                c = 1;
            }
            if (c == 0) {
                if (this.mHwImsServiceImpl == null) {
                    return 1;
                }
                int smsConfig = configValue.getInt(IMS_CONFIG_KEY_SETSMSCONFIG, 1);
                this.mHwImsServiceImpl.setImsSmsConfig(smsConfig);
                return 0;
            }
            if (c == 1) {
                if (this.mHwImsServiceImpl == null) {
                    return 1;
                }
                int enabled = configValue.getInt(VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT, 0);
                this.mHwImsServiceImpl.setVoWiFiRegErrReportEnable(enabled);
                return 0;
            }
            logd("setImsConfig, configKey not exist!");
            return 1;
        }
        logd("setImsConfig, configKey is null!");
        return 1;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public PersistableBundle getImsConfig(String configKey) {
        logd("getImsConfig, configKey = " + configKey);
        PersistableBundle bundle = new PersistableBundle();
        if (configKey != null) {
            char c = 65535;
            int hashCode = configKey.hashCode();
            if (hashCode != 287078213) {
                if (hashCode == 337688234 && configKey.equals(IMS_CONFIG_KEY_GETDMUSER)) {
                    c = 1;
                }
            } else if (configKey.equals(IMS_CONFIG_KEY_GETSMSCONFIG)) {
                c = 0;
            }
            if (c == 0) {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                int i = this.mSlotId;
                HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
                String imsStoredKeyWithSubId = ImsCallProviderUtils.getImsStoredKeyWithSubId(i, HwImsServiceImpl.SMS_IMS_SET_VALUE);
                HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
                int smsConfigValue = Settings.Secure.getInt(contentResolver, imsStoredKeyWithSubId, 1);
                logd("getImsConfig, smsConfigValue = " + smsConfigValue);
                bundle.putInt(IMS_CONFIG_KEY_GETSMSCONFIG, smsConfigValue);
            } else if (c == 1) {
                ContentResolver contentResolver2 = this.mContext.getContentResolver();
                int i2 = this.mSlotId;
                HwImsServiceImpl hwImsServiceImpl3 = this.mHwImsServiceImpl;
                String dmUserValue = Settings.Secure.getString(contentResolver2, ImsCallProviderUtils.getImsStoredKeyWithSubId(i2, HwImsServiceImpl.DM_USER_IMS_VALUE));
                logd("getImsConfig, dmUserValue = " + dmUserValue);
                bundle.putString(IMS_CONFIG_KEY_GETDMUSER, dmUserValue);
            } else {
                logd("getImsConfig, configKey not exist!" + configKey);
            }
        } else {
            logd("getImsConfig, configKey is null!");
        }
        return bundle;
    }

    private void setVoWifiStatus(int value) {
        logd("setVoWifiStatus value=" + value);
        if (!IS_VOWIFI_PROP_ON) {
            return;
        }
        if (this.mMapconService == null) {
            logd("mMapconService is null");
            return;
        }
        int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        try {
            if (value == 0) {
                this.mMapconService.setVoWifiOff(phoneId);
                logd("set vowifi off successful");
                if (IS_ATT_WF) {
                    Rlog.i(LOG_TAG, "Wifi-Call HwImsConfigImpl set vowifi off successful");
                    this.mCi.setWifiEmergencyAid(false, null);
                }
            } else if (value == 1) {
                this.mMapconService.setVoWifiOn(phoneId);
                logd("set vowifi on successful");
                if (IS_ATT_WF) {
                    Rlog.i(LOG_TAG, "Wifi-Call HwImsConfigImpl set vowifi on successful");
                    this.mCi.setWifiEmergencyAid(UT_QUERY_XCAP_APN_EXACT_DEFAULT_VALUE, null);
                }
            }
        } catch (RemoteException e) {
            loge("set vowifi status failed");
        }
    }

    public boolean getBoolCarrierBuildVersion() {
        return this.mIsBuildVersionCarrier;
    }

    public void removeKeyInSp(String key, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultDevSharedPreferences(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.remove(key);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isVolteLowbatteryEndcall() {
        return this.mIsVolteLowbatteryEndcall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getIsEmergencyUnderWifi() {
        return this.mIsEmergencyUnderWifi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isRemoveVowifiIconUnderCsCall() {
        return this.mIsRemoveVowifiIconUnderCsCall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtQueryXcapApnExact() {
        return this.mIsUtQueryXcapApnExact;
    }
}
