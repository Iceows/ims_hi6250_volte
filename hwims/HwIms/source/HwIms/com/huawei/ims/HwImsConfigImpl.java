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
import com.hisi.mapcon.IMapconService;
import com.huawei.cust.HwCfgFilePolicy;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.kxml2.io.KXmlParser;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: HwImsConfigImpl.class */
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
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_UT_GBA_LIFETIME_BE_USED = false;
    private static final int DEFAULT_UT_VOWIFI_DELAY_END_TIME = 60000;
    public static final boolean FEATURE_VOLTE_DYN;
    public static final String FILE_PATH = "/xml/hw_ims_config.xml";
    public static final String HANG_UP_WHEN_LOST_NET = "hangUpWhenLostNet";
    public static final String IMPI_DOMAIN = "impiDomain";
    public static final String IMS_CONFIG_KEY_GETDMUSER = "getDMUSER";
    public static final String IMS_CONFIG_KEY_GETSMSCONFIG = "getSmsConfig";
    public static final String IMS_CONFIG_KEY_SETSMSCONFIG = "setSmsConfig";
    private static final int IMS_DATA_DELAY_END_IN_MS = 1000;
    public static final String IMS_DATA_DELAY_END_XML_KEY = "utImsDataDelayEndTime";
    public static final String IMS_SS_BE_USED_XML_KEY = "imsSsBeUsed";
    public static final String IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY = "ImsStateFollowVoiceDomain";
    private static final boolean IS_ATT_WF;
    private static final boolean IS_VOWIFI_PROP_ON;
    public static final String KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL = "keep_vowifi_feature_under_emergencycall";
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
    private static final int NODE_CFNR_USE_IR92V10_OR_GREATER = 17;
    public static final String NULL_STRING_VALUE = "";
    public static final int OIR_SOURCE_FROM_LOCAL = 1;
    public static final int OIR_SOURCE_FROM_UT = 0;
    public static final String PREFER_TO_USE_UT_XML_KEY = "preferToUseUT";
    public static final int PROP_NAME_MAX = 31;
    public static final String SEPARATOR_TAG = ",";
    public static final String SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY = "setDeactDefaultNoReplyTimer";
    public static final String SET_DEFAULT_NO_REPLY_TIMER_XML_KEY = "setDefaultNoReplyTimer";
    public static final String SS_NOT_SUPPORT_MMI_CODE_XML_KEY = "ssNotSupportMMICode";
    public static final String SS_TYPE_FORBID_FALLBACK_CS_XML_KEY = "ssTypeForbidFallbackCS";
    public static final String SS_TYPE_USE_CS_ONLY_PROP_KEY = "persist.ut.ssTypeUseCsOnly";
    public static final String SS_TYPE_USE_CS_ONLY_XML_KEY = "ssTypeUseCsOnly";
    public static final String STRING_NOT_INITIALIZED = "SNIT";
    public static final String TRUE_VALUE = "true";
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
    public static final boolean UT_BSF_USE_HTTPS;
    public static final String UT_BSF_USE_HTTPS_PROP_KEY = "persist.ut.bsfusehttps";
    public static final String UT_BSF_USE_HTTPS_XML_KEY = "utBsfUsehttps";
    public static final String UT_CAN_USE_WIFI_XML_KEY = "utCanUseWifi";
    public static final boolean UT_CS_BE_USED;
    public static final String UT_CS_BE_USED_PROP_KEY = "persist.ut.csbeused";
    public static final String UT_CS_BE_USED_XML_KEY = "utCSBeUsed";
    public static final String UT_FORBIDDEN_TIME_XML_KEY = "utForbiddenTimer";
    public static final String UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF = "utForbiddenWhenVolteSwitchOff";
    public static final String UT_FORBIDDEN_WVSO_PROP_KEY = "persist.ut.forbiddenWVSO";
    public static final int UT_GBA_ME_TYPE = 0;
    public static final int UT_GBA_TYPE;
    public static final String UT_GBA_TYPE_PROP_KEY = "persist.ut.gbatype";
    public static final String UT_GBA_TYPE_XML_KEY = "utGbaType";
    public static final boolean UT_HRS_LOG;
    public static final String UT_HRS_LOG_PROP_KEY = "persist.ut.hrslog";
    public static final String UT_HRS_LOG_XML_KEY = "utHrsLog";
    public static final String UT_IMPI;
    public static final String UT_IMPI_PROP_KEY = "persist.ut.authusername";
    public static final String UT_IMPI_XML_KEY = "utIMPI";
    public static final String UT_IMPU;
    public static final String UT_IMPU_PROP_KEY = "persist.ut.localusername";
    public static final String UT_IMPU_XML_KEY = "utIMPU";
    public static final boolean UT_KSNAF_USE_BASE64;
    public static final String UT_KSNAF_USE_BASE64_PROP_KEY = "persist.ut.ksnafbase64";
    public static final String UT_KSNAF_USE_BASE64_XML_KEY = "utKsnafUseBase64";
    public static final int UT_NAF_PORT_DEFAULT = 80;
    public static final String UT_NAF_PORT_PROP_KEY = "persist.ut.nafport";
    public static final String UT_NAF_PORT_XML_KEY = "utNafPort";
    public static final String UT_NAF_SRV_ADDR_PROP_KEY = "persist.ut.nafsrvaddr";
    public static final String UT_NAF_SRV_ADDR_XML_KEY = "utNafSrvAddr";
    public static final boolean UT_NAF_USE_HTTPS;
    public static final String UT_NAF_USE_HTTPS_PROP_KEY = "persist.ut.usehttps";
    public static final String UT_NAF_USE_HTTPS_XML_KEY = "utNafUseHttps";
    public static final String UT_OIR_DEFAULT_MODE_XML_KEY = "utOIRDefaultMode";
    public static final String UT_OIR_SOURCE_MODE_XML_KEY = "utOIRSourceMode";
    public static final int UT_PARAMS_CFG_LENGTH = 2;
    public static final String UT_PARAMS_CONFIG_XML_KEY = "utParamsCfg";
    private static final int UT_PARAMS_KEY_GBA_LIFETIME_BE_USED = 19;
    private static final int UT_PARAMS_VALUE_GBA_LIFETIME_BE_USED = 1;
    public static final String UT_PREFER_OPTION_KEY = "utPreferOption";
    public static final String UT_PREFER_TO_USE_UT_PROP_KEY = "persist.ut.preferToUseUT";
    public static final int UT_PREFER_USE_DEFAULT_MODE = 0;
    public static final int UT_PREFER_USE_VOLTE_MODE = 1;
    public static final String UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY = "ut_prefer_vowifi_when_vowifi_registered";
    public static final String UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY = "utQueryDnsIgnoreNetId";
    public static final String UT_RETRY_INTERVAL_XML_KEY = "utRetryInterval";
    public static final String UT_USE_APN_XML_KEY = "utUseApn";
    public static final int UT_USE_DEFAULT_DATA_APN = 0;
    public static final int UT_USE_IMS_APN = 2;
    public static final String UT_USE_MULTI_CF = "utUseMultiCF";
    public static final boolean UT_USE_NODE_SELECTOR;
    public static final String UT_USE_NODE_SELECTOR_PROP_KEY = "persist.ut.usenodeselector";
    public static final String UT_USE_NODE_SELECTOR_XML_KEY = "utUseNodeSelector";
    public static final boolean UT_USE_TMPI;
    public static final String UT_USE_TMPI_PROP_KEY = "persist.ut.usetmpi";
    public static final String UT_USE_TMPI_XML_KEY = "utUseTmpi";
    public static final int UT_USE_UT_COMPLEX_APN = 3;
    public static final int UT_USE_UT_RESERVED_APN = 1;
    public static final boolean UT_USE_XCAP_NAMESPACE;
    public static final String UT_USE_XCAP_NAMESPACE_PROP_KEY = "persist.ut.usexcapnamespace";
    public static final String UT_USE_XCAP_NAMESPACE_XML_KEY = "utUseXcapNamespace";
    public static final String UT_VOWIFI_DELAY_END_TIME_XML_KEY = "utVoWifiDelayEndTime";
    public static final String UT_XCAP_ROOT_URI_PROP_KEY = "persist.ut.xcapRootUri";
    public static final String UT_XCAP_ROOT_XML_KEY = "utXcapRootUri";
    public static final String UT_X_3GPP_INTEND_ID;
    public static final String UT_X_3GPP_INTEND_ID_PROP_KEY = "persist.ut.x3gppintendid";
    public static final String UT_X_3GPP_INTEND_ID_XML_KEY = "utX3gppIntendId";
    public static final String VOLTE_LOWBATTERY_ENDCALL_XML_KEY = "volte_lowbattery_endcall";
    public static final String VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT = "setImsRegErrorReport";
    public static final String VOWIFI_UT_SWITCH_XML_KEY = "vowifi_ut_switch";
    public static final boolean isATT;
    private ImsRIL mCi;
    private Context mContext;
    private HwImsServiceImpl mHwImsServiceImpl;
    private IMapconService mMapconService;
    private int mSubId;
    static final String[] SIM_IMSI_KEY = {"sim_imsi_key", "sim_imsi_key2"};
    static final String[] IMPU_FROM_NETWORK_KEY = {"impu_from_network_key", "impu_from_network_key2"};
    static final String[] IMPU_FROM_SIM_IMSI_KEY = {"impu_from_sim_imsi_key", "impu_from_sim_imsi_key2"};
    static final String[] LOCAL_CALL_WAITING_KEY = {"local_call_waiting_key", "local_call_waiting_key2"};
    static final String[] LOCAL_OIR_KEY = {"local_OIR_key", "local_OIR_key2"};
    static final String[] SHARED_PREFERENCES_PROFILE_KEY = {"profile_key", "profile_key2"};
    static final String[] SHARED_PREFERENCES_PROFILE_PARAM = {"profile_param", "profile_param2"};
    private boolean mImsSsBeUsed = true;
    private boolean mDefImsSsBeUsed = true;
    private boolean mUtForbiddenWhenVolteSwitchOff = true;
    private boolean mDefUtForbiddenWhenVolteSwitchOff = true;
    private int mUtUseApn = 0;
    private int mDefUtUseApn = 0;
    private boolean mUtCanUseWifi = true;
    private boolean mDefUtCanUseWifi = true;
    private int[] mCardTypePreferToUseUT = null;
    private int[] mDefCardTypePreferToUseUT = null;
    private String[] mCardMccMncPreferToUseUt = null;
    private String[] mDefCardMccMncPreferToUseUt = null;
    private int[] mSSTypeUseCsOnly = null;
    private int[] mDefSSTypeUseCsOnly = null;
    private String[] mNotSupportMMICode = null;
    private String[] mDefNotSupportMMICode = null;
    private boolean mUtCSBeUsed = true;
    private boolean mDefUtCSBeUsed = true;
    private boolean mIsProtocolIR92V10orGreater = false;
    private int[] mSSForbidFallbackCS = null;
    private int[] mDefSSForbidFallbackCS = null;
    private boolean mCFNRcChangeWithCFNL = true;
    private boolean mDefCFNRcChangeWithCFNL = true;
    private int mDefaultNoReplyTimer = 0;
    private int mDefDefaultNoReplyTimer = 0;
    private int mDefaultNeedNoReplyTimer = 0;
    private int mDefDefaultNeedNoReplyTimer = 0;
    private int mContentTypeMode = 0;
    private int mDefContentTypeMode = 0;
    private boolean mImsStateFollowVoiceDomain = true;
    private boolean mDefImsStateFollowVoiceDomain = true;
    private int mCallWaitingMode = 0;
    private int mDefCallWaitingMode = 0;
    private boolean mUtHrsLog = false;
    private boolean mDefUtHrsLog = false;
    private String mUtNafSrvAddr = NULL_STRING_VALUE;
    private String mDefUtNafSrvAddr = NULL_STRING_VALUE;
    private int mUtNafPort = 80;
    private int mDefUtNafPort = 80;
    private boolean mUtNafUseHttps = false;
    private boolean mDefUtNafUseHttps = false;
    private String mUtBsfSrvAddr = NULL_STRING_VALUE;
    private String mDefUtBsfSrvAddr = NULL_STRING_VALUE;
    private int mUtBsfPort = UT_BSF_PORT_DEFAULT;
    private int mDefUtBsfPort = UT_BSF_PORT_DEFAULT;
    private boolean mUtBsfUseHttps = false;
    private boolean mDefUtBsfUseHttps = false;
    private boolean mUtUseNodeSelector = true;
    private boolean mDefUtUseNodeSelector = true;
    private boolean mUtUseXcapNamespace = true;
    private boolean mDefUtUseXcapNamespace = true;
    private boolean mUtKsnafUseBase64 = true;
    private boolean mDefUtKsnafUseBase64 = true;
    private int mUtPreferOption = 0;
    private int mDefUtPreferOption = 0;
    private int mUtGbaType = 0;
    private int mDefUtGbaType = 0;
    private boolean mUtUseTmpi = false;
    private boolean mDefUtUseTmpi = false;
    private String mUtX3gppIntendId = NULL_STRING_VALUE;
    private String mDefUtX3gppIntendId = NULL_STRING_VALUE;
    private String mUtIMPU = NULL_STRING_VALUE;
    private String mDefUtIMPU = NULL_STRING_VALUE;
    private String mUtIMPI = NULL_STRING_VALUE;
    private String mDefUtIMPI = NULL_STRING_VALUE;
    private int[] mUtRetryInterval = null;
    private int[] mDefUtRetryInterval = null;
    private boolean mMissedCallTips = false;
    private boolean mDefMissedCallTips = false;
    private boolean mMissedCallTipsDelay = false;
    private boolean mDefMissedCallTipsDelay = false;
    private boolean mMissedCallDisplay = false;
    private boolean mDefMissedCallDisplay = false;
    private int mMissedCallTipsRingTimer = MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
    private int mDefMissedCallTipsRingTimer = MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
    private int mMissedCallTipsDelayTimer = MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
    private int mDefMissedCallTipsDelayTimer = MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
    private boolean mCheckServiceWhenIncomingCall = false;
    private boolean mDefCheckServiceWhenIncomingCall = false;
    private boolean mHangUpWhenLostNet = false;
    private boolean mDefHangUpWhenLostNet = false;
    private String[] mUtParamsCfg = null;
    private String[] mDefUtParamsCfg = null;
    private String mUtXcapRootUri = NULL_STRING_VALUE;
    private String mDefUtXcapRootUri = NULL_STRING_VALUE;
    private boolean mUtBsfAuthBeUsed = true;
    private boolean mDefUtBsfAuthBeUsed = true;
    private int mUtOIRSourceMode = 0;
    private int mDefUtOIRSourceMode = 0;
    private int mUtOIRDefaultMode = 0;
    private int mDefUtOIRDefaultMode = 0;
    private boolean mUt409ShowPhrase = false;
    private boolean mDefUt409ShowPhrase = false;
    private int mUtImsDataDelayEndTime = 1000;
    private int mDefUtImsDataDelayEndTime = 1000;
    private int mUtBearerType = 0;
    private int mDefUtBearerType = 0;
    private int[] mDcFailCode = null;
    private int[] mDefDcFailCode = null;
    private String[] mDcFailCause = null;
    private int[] mDcFailCodeToReleaseApn = null;
    private String[] mDcFailCauseToReleaseApn = null;
    private boolean mUtGbaLifetimeBeUsed = false;
    private int mUtVoWifiDelayEndTime = DEFAULT_UT_VOWIFI_DELAY_END_TIME;
    private int mDefUtVoWifiDelayEndTime = DEFAULT_UT_VOWIFI_DELAY_END_TIME;
    private boolean mUtPreferVowifiWhenVowifiReg = false;
    private boolean mDefUtPreferVowifiWhenVowifiReg = false;
    private boolean mUtQueryDnsIgnoreNetId = false;
    private boolean mDefUtQueryDnsIgnoreNetId = false;
    private boolean mVowifiUtSwitch = false;
    private boolean mDefaultVowifiUtSwitch = false;
    private boolean mPreferToUseUt = false;
    private boolean mDefPreferToUseUt = false;
    private boolean mBuildVersionCarrier = false;
    private boolean mDefBuildVersionCarrier = false;
    private boolean mUse403ForLocalCW = false;
    private boolean mDefUse403ForLocalCW = false;
    private boolean mCarrierSupportVolte = false;
    private boolean mIsUseMultCondition = false;
    private boolean mDefUseMultCondition = false;
    private int mUtForbiddenTimer = -1;
    private int mDefaultUtForbiddenTimer = -1;
    private boolean mIsEmergencyUnderWifi = false;
    private boolean mDefEmergencyUnderWifi = false;
    private boolean mCarrierSupportVoWifi = false;
    private String mXcapRootURIFromSim = null;
    private String mImpiFromSim = null;
    private String mBsfAddrFromSim = null;
    private String mCurrentIMSI = null;
    private String mSpliceMncMcc = null;
    private String mDomainNameFromSim = null;
    private String mImpiDomain = NULL_STRING_VALUE;
    private String mDefImpiDomain = NULL_STRING_VALUE;
    private HashMap<Integer, Integer> mConfigIntValue = new HashMap<>();
    private HashMap<Integer, String> mConfigStringValue = new HashMap<>();
    private boolean mIsCallWaitingSyncToImsSdk = false;
    private boolean mIsCallWaitingSyncToCs = false;
    private CALL_WAITING_SOURCE mCallWaitingSource = CALL_WAITING_SOURCE.CALL_WAITING_FROM_UT;
    private boolean mVolteLowbatteryEndcall = false;
    private boolean mDefVolteLowbatteryEndcall = false;
    private HashMap<String, String> mSpValueMap = new HashMap<>();
    private BroadcastReceiver mBroadCastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsConfigImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HwImsConfigImpl hwImsConfigImpl = HwImsConfigImpl.this;
            hwImsConfigImpl.logd("mBroadCastReceiver: action " + intent.getAction());
            if (HwImsConfigImpl.MAPCON_SERVICE_STARTED.equals(intent.getAction()) && HwImsConfigImpl.this.mMapconService == null) {
                HwImsConfigImpl.this.bindMapconService();
            }
        }
    };

    /* loaded from: HwImsConfigImpl$CALL_WAITING_SOURCE.class */
    public enum CALL_WAITING_SOURCE {
        CALL_WAITING_FROM_UT,
        CALL_WAITING_FROM_CS,
        CALL_WAITING_FROM_LOCAL
    }

    /* loaded from: HwImsConfigImpl$CONFIG_TYPE.class */
    public enum CONFIG_TYPE {
        CONFIG_TYPE_BOOL,
        CONFIG_TYPE_INT,
        CONFIG_TYPE_STRING
    }

    static {
        isATT = "07".equals(SystemProperties.get("ro.config.hw_opta")) && "840".equals(SystemProperties.get("ro.config.hw_optb"));
        UT_CS_BE_USED = SystemProperties.getBoolean(UT_CS_BE_USED_PROP_KEY, true);
        UT_HRS_LOG = SystemProperties.getBoolean(UT_HRS_LOG_PROP_KEY, false);
        UT_NAF_USE_HTTPS = SystemProperties.getBoolean(UT_NAF_USE_HTTPS_PROP_KEY, false);
        UT_BSF_USE_HTTPS = SystemProperties.getBoolean(UT_BSF_USE_HTTPS_PROP_KEY, false);
        UT_USE_NODE_SELECTOR = SystemProperties.getBoolean(UT_USE_NODE_SELECTOR_PROP_KEY, true);
        UT_USE_XCAP_NAMESPACE = SystemProperties.getBoolean(UT_USE_XCAP_NAMESPACE_PROP_KEY, true);
        UT_KSNAF_USE_BASE64 = SystemProperties.getBoolean(UT_KSNAF_USE_BASE64_PROP_KEY, true);
        UT_GBA_TYPE = SystemProperties.getInt(UT_GBA_TYPE_PROP_KEY, 0);
        UT_USE_TMPI = SystemProperties.getBoolean(UT_USE_TMPI_PROP_KEY, false);
        UT_X_3GPP_INTEND_ID = SystemProperties.get(UT_X_3GPP_INTEND_ID_PROP_KEY, NULL_STRING_VALUE);
        UT_IMPU = SystemProperties.get(UT_IMPU_PROP_KEY, NULL_STRING_VALUE);
        UT_IMPI = SystemProperties.get(UT_IMPI_PROP_KEY, NULL_STRING_VALUE);
        IS_ATT_WF = SystemProperties.getBoolean("ro.config.hw_att_wificall", false);
        FEATURE_VOLTE_DYN = SystemProperties.getBoolean("ro.config.hw_volte_dyn", false);
        IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
    }

    public HwImsConfigImpl(HwImsServiceImpl hwImsServiceImpl, int i) {
        this.mSubId = -1;
        this.mCi = null;
        this.mSubId = i;
        logd("HwImsConfigImpl construtor");
        if (!ImsCallProviderUtils.isValidServiceSubIndex(this.mSubId)) {
            loge("subId is invalid");
        } else if (hwImsServiceImpl == null || hwImsServiceImpl.mCi == null) {
            loge("hwImsServiceImpl or imsRIL is null");
        } else if (hwImsServiceImpl.mContext == null) {
            loge("context is null");
        } else {
            this.mHwImsServiceImpl = hwImsServiceImpl;
            this.mContext = hwImsServiceImpl.mContext;
            init(this.mContext);
            this.mCi = hwImsServiceImpl.mCi;
            if (IS_VOWIFI_PROP_ON) {
                bindMapconService();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(MAPCON_SERVICE_STARTED);
                this.mContext.registerReceiver(this.mBroadCastReceiver, intentFilter, MAPCON_BROADCAST_PERMISSION, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMapconService() {
        if (IS_VOWIFI_PROP_ON) {
            ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsConfigImpl.2
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    HwImsConfigImpl.this.logd("onServiceConnected");
                    HwImsConfigImpl.this.mMapconService = IMapconService.Stub.asInterface(iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    HwImsConfigImpl.this.mMapconService = null;
                }
            };
            this.mContext.bindServiceAsUser(new Intent().setClassName("com.hisi.mapcon", "com.hisi.mapcon.MapconService"), serviceConnection, 1, UserHandle.OWNER);
        }
    }

    private String decrypt(String str, String str2, String str3) {
        String decodeAESParam;
        if (str.equals(NULL_STRING_VALUE) || str2.equals(NULL_STRING_VALUE) || str3.equals(NULL_STRING_VALUE)) {
            logd("value or key is not exist");
            return null;
        }
        String decodeAESKey = EncryptUtils.decodeAESKey(str2, 256);
        if (decodeAESKey == null || (decodeAESParam = EncryptUtils.decodeAESParam(decodeAESKey, str3)) == null) {
            return null;
        }
        return AESEncrypter.decrypt(str, decodeAESKey, decodeAESParam);
    }

    private String encrypt(String str, Context context) {
        String generateRandomString;
        String generateRandomString2;
        if (str == null) {
            logd("spValue is null, do not encrypt");
            return null;
        }
        SharedPreferences defaultSharedPreferencesDE = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor edit = defaultSharedPreferencesDE.edit();
        String string = defaultSharedPreferencesDE.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], NULL_STRING_VALUE);
        String string2 = defaultSharedPreferencesDE.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], NULL_STRING_VALUE);
        if (string.equals(NULL_STRING_VALUE) || string2.equals(NULL_STRING_VALUE)) {
            logd("create AES key");
            generateRandomString = EncryptUtils.generateRandomString(256);
            generateRandomString2 = EncryptUtils.generateRandomString(16);
            edit.putString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], EncryptUtils.encodeAESKey(generateRandomString, 256));
            edit.putString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], EncryptUtils.encodeAESParam(generateRandomString, generateRandomString2));
            edit.apply();
        } else {
            generateRandomString = EncryptUtils.decodeAESKey(string, 256);
            if (generateRandomString == null) {
                return null;
            }
            String decodeAESParam = EncryptUtils.decodeAESParam(generateRandomString, string2);
            generateRandomString2 = decodeAESParam;
            if (decodeAESParam == null) {
                return null;
            }
        }
        return AESEncrypter.encrypt(str, generateRandomString, generateRandomString2);
    }

    private String[] getDcFailCause(int[] iArr) {
        String[] strArr = null;
        if (iArr != null) {
            strArr = null;
            if (iArr.length != 0) {
                String[] strArr2 = new String[iArr.length];
                int i = 0;
                int length = iArr.length;
                int i2 = 0;
                while (true) {
                    strArr = strArr2;
                    if (i2 >= length) {
                        break;
                    }
                    int i3 = iArr[i2];
                    String dcFailCause = DcFailCause.fromInt(i3).toString();
                    strArr2[i] = dcFailCause;
                    logd("initDcFailCause code:" + i3 + " cause : " + dcFailCause);
                    i2++;
                    i++;
                }
            }
        }
        return strArr;
    }

    private int getParamFromUtParamsCfg(int i) {
        String[] utParamsCfg = getUtParamsCfg();
        int i2 = 0;
        if (utParamsCfg != null) {
            int i3 = 0;
            while (true) {
                i2 = 0;
                if (i3 >= utParamsCfg.length) {
                    break;
                }
                String[] split = utParamsCfg[i3].split(":");
                if (split.length != 2 || TextUtils.isEmpty(split[0]) || TextUtils.isEmpty(split[1])) {
                    loge("getParamFromUtParamsCfg : config param not right");
                } else {
                    try {
                        int parseInt = Integer.parseInt(split[0]);
                        i2 = Integer.parseInt(split[1]);
                        if (i == parseInt) {
                            break;
                        }
                    } catch (NumberFormatException e) {
                        loge("getParamFromUtParamsCfg : NumberFormatException ");
                    }
                }
                i3++;
            }
        }
        logd("getParamFromUtParamsCfg: key =" + i + " , result = " + i2);
        return i2;
    }

    private String getRootUriFromSim() {
        if (this.mXcapRootURIFromSim != null) {
            return this.mXcapRootURIFromSim;
        }
        if (this.mSpliceMncMcc == null) {
            loge("getRootURI error: Get wrong MCC MNC ");
            return null;
        }
        String str = "xcap.ims." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
        this.mXcapRootURIFromSim = str;
        return str;
    }

    private final void handleBoolTypeConfig(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                return;
            }
            try {
                handleBoolTypeConfigPartOne(str, str2);
                handleBoolTypeConfigPartTwo(str, str2);
            } catch (RuntimeException e) {
                loge("handleBoolTypeConfig RuntimeException");
            } catch (Exception e2) {
                loge("handleBoolTypeConfig Exception");
            }
        }
    }

    private final void handleBoolTypeConfigPartOne(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(UT_CS_BE_USED_XML_KEY, str)) {
                boolean equalsIgnoreCase = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtCSBeUsed = equalsIgnoreCase;
                this.mUtCSBeUsed = equalsIgnoreCase;
            } else if (isStringEqual(CFNRC_CHANGE_WITH_CFNL_XML_KEY, str)) {
                boolean equalsIgnoreCase2 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefCFNRcChangeWithCFNL = equalsIgnoreCase2;
                this.mCFNRcChangeWithCFNL = equalsIgnoreCase2;
            } else if (isStringEqual(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY, str)) {
                boolean equalsIgnoreCase3 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefImsStateFollowVoiceDomain = equalsIgnoreCase3;
                this.mImsStateFollowVoiceDomain = equalsIgnoreCase3;
            } else if (isStringEqual(UT_HRS_LOG_XML_KEY, str)) {
                boolean equalsIgnoreCase4 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtHrsLog = equalsIgnoreCase4;
                this.mUtHrsLog = equalsIgnoreCase4;
            } else if (isStringEqual(UT_NAF_USE_HTTPS_XML_KEY, str)) {
                boolean equalsIgnoreCase5 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtNafUseHttps = equalsIgnoreCase5;
                this.mUtNafUseHttps = equalsIgnoreCase5;
            } else if (isStringEqual(UT_BSF_USE_HTTPS_XML_KEY, str)) {
                boolean equalsIgnoreCase6 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtBsfUseHttps = equalsIgnoreCase6;
                this.mUtBsfUseHttps = equalsIgnoreCase6;
            } else if (isStringEqual(UT_USE_NODE_SELECTOR_XML_KEY, str)) {
                boolean equalsIgnoreCase7 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtUseNodeSelector = equalsIgnoreCase7;
                this.mUtUseNodeSelector = equalsIgnoreCase7;
            } else if (isStringEqual(UT_USE_XCAP_NAMESPACE_XML_KEY, str)) {
                boolean equalsIgnoreCase8 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtUseXcapNamespace = equalsIgnoreCase8;
                this.mUtUseXcapNamespace = equalsIgnoreCase8;
            } else if (isStringEqual(UT_KSNAF_USE_BASE64_XML_KEY, str)) {
                boolean equalsIgnoreCase9 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtKsnafUseBase64 = equalsIgnoreCase9;
                this.mUtKsnafUseBase64 = equalsIgnoreCase9;
            } else if (isStringEqual(UT_USE_TMPI_XML_KEY, str)) {
                boolean equalsIgnoreCase10 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtUseTmpi = equalsIgnoreCase10;
                this.mUtUseTmpi = equalsIgnoreCase10;
            }
        }
    }

    private final void handleBoolTypeConfigPartTwo(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(MISSED_CALL_TIPS_XML_KEY, str)) {
                boolean equalsIgnoreCase = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefMissedCallTips = equalsIgnoreCase;
                this.mMissedCallTips = equalsIgnoreCase;
            } else if (isStringEqual(MISSED_CALL_DISPLAY_XML_KEY, str)) {
                boolean equalsIgnoreCase2 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefMissedCallDisplay = equalsIgnoreCase2;
                this.mMissedCallDisplay = equalsIgnoreCase2;
            } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_XML_KEY, str)) {
                boolean equalsIgnoreCase3 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefMissedCallTipsDelay = equalsIgnoreCase3;
                this.mMissedCallTipsDelay = equalsIgnoreCase3;
            } else if (isStringEqual(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY, str)) {
                boolean equalsIgnoreCase4 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefCheckServiceWhenIncomingCall = equalsIgnoreCase4;
                this.mCheckServiceWhenIncomingCall = equalsIgnoreCase4;
            } else if (isStringEqual(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF, str)) {
                boolean equalsIgnoreCase5 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtForbiddenWhenVolteSwitchOff = equalsIgnoreCase5;
                this.mUtForbiddenWhenVolteSwitchOff = equalsIgnoreCase5;
            } else if (isStringEqual(IMS_SS_BE_USED_XML_KEY, str)) {
                boolean equalsIgnoreCase6 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefImsSsBeUsed = equalsIgnoreCase6;
                this.mImsSsBeUsed = equalsIgnoreCase6;
            } else if (isStringEqual(HANG_UP_WHEN_LOST_NET, str)) {
                boolean equalsIgnoreCase7 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefHangUpWhenLostNet = equalsIgnoreCase7;
                this.mHangUpWhenLostNet = equalsIgnoreCase7;
            } else if (isStringEqual(UT_CAN_USE_WIFI_XML_KEY, str)) {
                boolean equalsIgnoreCase8 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtCanUseWifi = equalsIgnoreCase8;
                this.mUtCanUseWifi = equalsIgnoreCase8;
            } else if (isStringEqual(UT_BSF_AUTH_BE_USED_XML_KEY, str)) {
                boolean equalsIgnoreCase9 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtBsfAuthBeUsed = equalsIgnoreCase9;
                this.mUtBsfAuthBeUsed = equalsIgnoreCase9;
            } else if (isStringEqual(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY, str)) {
                boolean equalsIgnoreCase10 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefUtQueryDnsIgnoreNetId = equalsIgnoreCase10;
                this.mUtQueryDnsIgnoreNetId = equalsIgnoreCase10;
            } else if (isStringEqual(VOLTE_LOWBATTERY_ENDCALL_XML_KEY, str)) {
                boolean equalsIgnoreCase11 = TRUE_VALUE.equalsIgnoreCase(str2);
                this.mDefVolteLowbatteryEndcall = equalsIgnoreCase11;
                this.mVolteLowbatteryEndcall = equalsIgnoreCase11;
            }
        }
    }

    private final void handleIntTypeConfig(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                return;
            }
            try {
                handleIntTypeConfigPartOne(str, str2);
                handleIntTypeConfigPartTwo(str, str2);
            } catch (RuntimeException e) {
                loge("handleIntTypeConfig RuntimeException");
            } catch (Exception e2) {
                loge("handleIntTypeConfig Exception");
            }
        }
    }

    private final void handleIntTypeConfigPartOne(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY, str)) {
                try {
                    int parseInt = Integer.parseInt(str2);
                    this.mDefDefaultNoReplyTimer = parseInt;
                    this.mDefaultNoReplyTimer = parseInt;
                } catch (NumberFormatException e) {
                    loge("handleIntTypeConfigPartOne :  mDefaultNoReplyTimer NumberFormatException");
                    this.mDefaultNoReplyTimer = this.mDefDefaultNoReplyTimer;
                }
            } else if (isStringEqual(CONTENT_TYPE_MODE_XML_KEY, str)) {
                try {
                    int parseInt2 = Integer.parseInt(str2);
                    this.mDefContentTypeMode = parseInt2;
                    this.mContentTypeMode = parseInt2;
                } catch (NumberFormatException e2) {
                    loge("handleIntTypeConfigPartOne : mContentTypeMode NumberFormatException");
                    this.mContentTypeMode = this.mDefContentTypeMode;
                }
            } else if (isStringEqual(CALL_WAITING_MODE_XML_KEY, str)) {
                try {
                    int parseInt3 = Integer.parseInt(str2);
                    this.mDefCallWaitingMode = parseInt3;
                    this.mCallWaitingMode = parseInt3;
                } catch (NumberFormatException e3) {
                    loge("handleIntTypeConfigPartOne : mCallWaitingMode NumberFormatException");
                    this.mCallWaitingMode = this.mDefCallWaitingMode;
                }
            } else if (isStringEqual(UT_NAF_PORT_XML_KEY, str)) {
                try {
                    int parseInt4 = Integer.parseInt(str2);
                    this.mDefUtNafPort = parseInt4;
                    this.mUtNafPort = parseInt4;
                } catch (NumberFormatException e4) {
                    loge("handleIntTypeConfigPartOne : mUtNafPort NumberFormatException");
                    this.mUtNafPort = this.mDefUtNafPort;
                }
            } else if (isStringEqual(UT_BSF_PORT_XML_KEY, str)) {
                try {
                    int parseInt5 = Integer.parseInt(str2);
                    this.mDefUtBsfPort = parseInt5;
                    this.mUtBsfPort = parseInt5;
                } catch (NumberFormatException e5) {
                    loge("handleIntTypeConfigPartOne : mUtBsfPort NumberFormatException");
                    this.mUtBsfPort = this.mDefUtBsfPort;
                }
            } else if (isStringEqual(UT_GBA_TYPE_XML_KEY, str)) {
                try {
                    int parseInt6 = Integer.parseInt(str2);
                    this.mDefUtGbaType = parseInt6;
                    this.mUtGbaType = parseInt6;
                } catch (NumberFormatException e6) {
                    loge("handleIntTypeConfigPartOne : mUtGbaType NumberFormatException");
                    this.mUtGbaType = this.mDefUtGbaType;
                }
            } else if (isStringEqual(UT_BEARER_TYPE_XML_KEY, str)) {
                try {
                    int parseInt7 = Integer.parseInt(str2);
                    this.mDefUtBearerType = parseInt7;
                    this.mUtBearerType = parseInt7;
                } catch (NumberFormatException e7) {
                    loge("handleIntTypeConfigPartOne : mUtBearerType NumberFormatException");
                    this.mUtBearerType = this.mDefUtBearerType;
                }
            }
        }
    }

    private final void handleIntTypeConfigPartTwo(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(MISSED_CALL_TIPS_RING_TIMER_XML_KEY, str)) {
                try {
                    int parseInt = Integer.parseInt(str2);
                    this.mDefMissedCallTipsRingTimer = parseInt;
                    this.mMissedCallTipsRingTimer = parseInt;
                } catch (NumberFormatException e) {
                    loge("handleIntTypeConfigPartTwo : mMissedCallTipsRingTimer NumberFormatException");
                    this.mMissedCallTipsRingTimer = this.mDefMissedCallTipsRingTimer;
                }
            } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY, str)) {
                try {
                    int parseInt2 = Integer.parseInt(str2);
                    this.mDefMissedCallTipsDelayTimer = parseInt2;
                    this.mMissedCallTipsDelayTimer = parseInt2;
                } catch (NumberFormatException e2) {
                    loge("handleIntTypeConfigPartTwo : mMissedCallTipsDelayTimer NumberFormatException");
                    this.mMissedCallTipsDelayTimer = this.mDefMissedCallTipsDelayTimer;
                }
            } else if (isStringEqual(UT_USE_APN_XML_KEY, str)) {
                try {
                    int parseInt3 = Integer.parseInt(str2);
                    this.mDefUtUseApn = parseInt3;
                    this.mUtUseApn = parseInt3;
                } catch (NumberFormatException e3) {
                    loge("handleIntTypeConfigPartTwo : mUtUseApn NumberFormatException");
                    this.mUtUseApn = this.mDefUtUseApn;
                }
            } else if (isStringEqual(UT_OIR_SOURCE_MODE_XML_KEY, str)) {
                try {
                    int parseInt4 = Integer.parseInt(str2);
                    this.mDefUtOIRSourceMode = parseInt4;
                    this.mUtOIRSourceMode = parseInt4;
                } catch (NumberFormatException e4) {
                    loge("handleIntTypeConfigPartTwo : mUtOIRSourceMode NumberFormatException");
                    this.mUtOIRSourceMode = this.mDefUtOIRSourceMode;
                }
            } else if (isStringEqual(UT_OIR_DEFAULT_MODE_XML_KEY, str)) {
                try {
                    int parseInt5 = Integer.parseInt(str2);
                    this.mDefUtOIRDefaultMode = parseInt5;
                    this.mUtOIRDefaultMode = parseInt5;
                } catch (NumberFormatException e5) {
                    loge("handleIntTypeConfigPartTwo : mUtOIRDefaultMode NumberFormatException");
                    this.mUtOIRDefaultMode = this.mDefUtOIRDefaultMode;
                }
            } else if (isStringEqual(IMS_DATA_DELAY_END_XML_KEY, str)) {
                try {
                    int parseInt6 = Integer.parseInt(str2);
                    this.mDefUtImsDataDelayEndTime = parseInt6;
                    this.mUtImsDataDelayEndTime = parseInt6;
                } catch (NumberFormatException e6) {
                    loge("handleIntTypeConfigPartTwo : mUtImsDataDelayEndTime NumberFormatException");
                    this.mUtImsDataDelayEndTime = this.mDefUtImsDataDelayEndTime;
                }
            } else if (isStringEqual(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY, str)) {
                try {
                    int parseInt7 = Integer.parseInt(str2);
                    this.mDefDefaultNeedNoReplyTimer = parseInt7;
                    this.mDefaultNeedNoReplyTimer = parseInt7;
                } catch (NumberFormatException e7) {
                    loge("handleIntTypeConfigPartTwo : mDefaultNeedNoReplyTimer NumberFormatException");
                    this.mDefaultNeedNoReplyTimer = this.mDefDefaultNeedNoReplyTimer;
                }
            } else if (isStringEqual(UT_VOWIFI_DELAY_END_TIME_XML_KEY, str)) {
                try {
                    int parseInt8 = Integer.parseInt(str2);
                    this.mDefUtVoWifiDelayEndTime = parseInt8;
                    this.mUtVoWifiDelayEndTime = parseInt8;
                } catch (NumberFormatException e8) {
                    loge("handleIntTypeConfigPartTwo : mUtVoWifiDelayEndTime NumberFormatException");
                    this.mUtVoWifiDelayEndTime = this.mDefUtVoWifiDelayEndTime;
                }
            } else {
                loge("unknown config, value=" + str + ", text=" + str2);
            }
        }
    }

    private final void handleStringTypeConfig(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                return;
            }
            try {
                handleStringTypeConfigPartOne(str, str2);
                handleStringTypeConfigPartTwo(str, str2);
            } catch (RuntimeException e) {
                loge("handleStringTypeConfig RuntimeException");
            } catch (Exception e2) {
                loge("handleStringTypeConfig Exception");
            }
        }
    }

    private final void handleStringTypeConfigPartOne(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY, str)) {
                int[] stringToIntArray = stringToIntArray(str2);
                this.mDefCardTypePreferToUseUT = stringToIntArray;
                this.mCardTypePreferToUseUT = stringToIntArray;
            } else if (isStringEqual(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY, str)) {
                String[] stringToStringArray = stringToStringArray(str2);
                this.mDefCardMccMncPreferToUseUt = stringToStringArray;
                this.mCardMccMncPreferToUseUt = stringToStringArray;
            } else if (isStringEqual(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY, str)) {
                int[] stringToIntArray2 = stringToIntArray(str2);
                this.mDefSSForbidFallbackCS = stringToIntArray2;
                this.mSSForbidFallbackCS = stringToIntArray2;
            } else if (isStringEqual(SS_NOT_SUPPORT_MMI_CODE_XML_KEY, str)) {
                String[] stringToStringArray2 = stringToStringArray(str2);
                this.mDefNotSupportMMICode = stringToStringArray2;
                this.mNotSupportMMICode = stringToStringArray2;
            } else if (isStringEqual(SS_TYPE_USE_CS_ONLY_XML_KEY, str)) {
                int[] stringToIntArray3 = stringToIntArray(str2);
                this.mDefSSTypeUseCsOnly = stringToIntArray3;
                this.mSSTypeUseCsOnly = stringToIntArray3;
            } else if (isStringEqual(UT_NAF_SRV_ADDR_XML_KEY, str)) {
                this.mDefUtNafSrvAddr = str2;
                this.mUtNafSrvAddr = str2;
            } else if (isStringEqual(UT_BSF_SRV_ADDR_XML_KEY, str)) {
                this.mDefUtBsfSrvAddr = str2;
                this.mUtBsfSrvAddr = str2;
            }
        }
    }

    private final void handleStringTypeConfigPartTwo(String str, String str2) {
        synchronized (this) {
            if (isStringEqual(UT_X_3GPP_INTEND_ID_XML_KEY, str)) {
                this.mDefUtX3gppIntendId = str2;
                this.mUtX3gppIntendId = str2;
            } else if (isStringEqual(UT_IMPU_XML_KEY, str)) {
                this.mDefUtIMPU = str2;
                this.mUtIMPU = str2;
            } else if (isStringEqual(UT_IMPI_XML_KEY, str)) {
                this.mDefUtIMPI = str2;
                this.mUtIMPI = str2;
            } else if (isStringEqual(UT_RETRY_INTERVAL_XML_KEY, str)) {
                int[] stringToIntArray = stringToIntArray(str2);
                this.mDefUtRetryInterval = stringToIntArray;
                this.mUtRetryInterval = stringToIntArray;
            } else if (isStringEqual(UT_PARAMS_CONFIG_XML_KEY, str)) {
                String[] stringToStringArray = stringToStringArray(str2);
                this.mDefUtParamsCfg = stringToStringArray;
                this.mUtParamsCfg = stringToStringArray;
            } else if (isStringEqual(UT_XCAP_ROOT_XML_KEY, str)) {
                this.mDefUtXcapRootUri = str2;
                this.mUtXcapRootUri = str2;
            } else if (isStringEqual(DC_FAIL_CAUSE_XML_KEY, str)) {
                int[] stringToIntArray2 = stringToIntArray(str2);
                this.mDefDcFailCode = stringToIntArray2;
                this.mDcFailCode = stringToIntArray2;
            } else if (isStringEqual(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY, str)) {
                this.mDcFailCodeToReleaseApn = stringToIntArray(str2);
                this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
            }
        }
    }

    private static String hiddenPrivacyInfo(String str, int i) {
        return HiddenPrivacyInfo.putMosaic(str, i);
    }

    /* JADX WARN: Not initialized variable reg: 21, insn: 0x0197: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r21 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:55:0x0190 */
    private void init(Context context) {
        boolean z;
        boolean z2;
        File cfgFile;
        logd("init enter");
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        XmlPullParser xmlPullParser = null;
        XmlPullParser xmlPullParser2 = null;
        try {
            try {
                try {
                    cfgFile = HwCfgFilePolicy.getCfgFile(FILE_PATH, 0);
                } catch (Exception e) {
                    loge("Exception");
                    if (0 != 0) {
                        inputStream.close();
                    }
                    z = false;
                    if (0 != 0) {
                        z = false;
                        if (!XmlResourceParser.class.isInstance(null)) {
                            xmlPullParser.setInput(null);
                            z = false;
                        }
                    }
                }
            } catch (Exception e2) {
                loge("Exception failed.");
                z = z2;
            }
            if (cfgFile == null) {
                throw new FileNotFoundException("File '/xml/hw_ims_config.xml' does not exist");
            }
            logd("get file successfully");
            FileInputStream fileInputStream = new FileInputStream(cfgFile);
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setInput(fileInputStream, "UTF-8");
            loadImsConfig(context, newPullParser);
            fileInputStream.close();
            z = true;
            if (newPullParser != null) {
                z = true;
                if (!XmlResourceParser.class.isInstance(newPullParser)) {
                    newPullParser.setInput(null);
                    z = true;
                }
            }
            if (!z) {
                logd("ImsConfig load from R.xml.hw_ims_config");
                XmlResourceParser xmlResourceParser = null;
                XmlResourceParser xmlResourceParser2 = null;
                try {
                    try {
                        XmlResourceParser xml = context.getResources().getXml(R.xml.hw_ims_config);
                        if (xml != null) {
                            xmlResourceParser = xml;
                            xmlResourceParser2 = xml;
                            loadImsConfig(context, xml);
                        }
                        if (xml != null) {
                        }
                    } catch (Throwable th) {
                        if (xmlResourceParser != null) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    xmlResourceParser = xmlResourceParser2;
                    loge("load R.xml.hw_ims_config caught");
                    if (xmlResourceParser2 != null) {
                    }
                }
            }
            try {
                resolveCallWaitingMode();
            } catch (Exception e4) {
                loge("can't resolve call waiting mode");
            }
            logd("init finish");
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    inputStream2.close();
                } catch (Exception e5) {
                    loge("Exception failed.");
                    throw th2;
                }
            }
            if (0 != 0 && !XmlResourceParser.class.isInstance(null)) {
                xmlPullParser2.setInput(null);
            }
            throw th2;
        }
    }

    private boolean isConfigInProp(String str, CONFIG_TYPE config_type) {
        int length = str.length();
        if (31 < length) {
            loge("the prop name length=" + length);
            return false;
        }
        boolean z = false;
        switch (config_type) {
            case CONFIG_TYPE_BOOL:
            case CONFIG_TYPE_STRING:
            case CONFIG_TYPE_INT:
                if (!NULL_STRING_VALUE.equals(SystemProperties.get(str, NULL_STRING_VALUE))) {
                    z = true;
                    break;
                }
                break;
            default:
                loge("can't recognise this prop type");
                break;
        }
        return z;
    }

    private boolean isContainInIMSConfig(int[] iArr, int i) {
        if (iArr == null || iArr.length == 0) {
            logw("ims config is null.");
            return true;
        }
        for (int i2 : iArr) {
            if (i == i2) {
                logd("Current SS type or card type is contained by ims config.");
                return true;
            }
        }
        return false;
    }

    private boolean isContainInIMSConfig(String[] strArr, String str) {
        if (strArr == null) {
            logd("ims config is null. ");
            return true;
        }
        for (int i = 0; i < strArr.length; i++) {
            logd("imsConfig=" + strArr[i] + ", number=" + i);
            if (strArr[i] != null && strArr[i].equals(str)) {
                logd("serviceValue is contained by ims config.");
                return true;
            }
        }
        return false;
    }

    private final boolean isStringEqual(String str, String str2) {
        int length = str.length();
        if (length != str2.length()) {
            return false;
        }
        while (true) {
            length--;
            if (length < 0) {
                return true;
            }
            if (str.charAt(length) != str2.charAt(length)) {
                return false;
            }
        }
    }

    private void loadImsConfig(Context context, XmlPullParser xmlPullParser) {
        try {
            try {
                try {
                    try {
                        startPositionOfIMSConfigXML(xmlPullParser, "ims_config");
                        while (true) {
                            nextElement(xmlPullParser);
                            String name = xmlPullParser.getName();
                            if (name == null) {
                                break;
                            }
                            String attributeName = xmlPullParser.getAttributeName(0);
                            String attributeValue = xmlPullParser.getAttributeValue(0);
                            String str = null;
                            if (xmlPullParser.next() == 4) {
                                str = xmlPullParser.getText();
                            }
                            if (isStringEqual("name", attributeName)) {
                                if (isStringEqual("bool", name)) {
                                    handleBoolTypeConfig(attributeValue, str);
                                } else if ("int".equals(name)) {
                                    handleIntTypeConfig(attributeValue, str);
                                } else if ("string".equals(name)) {
                                    handleStringTypeConfig(attributeValue, str);
                                }
                            }
                        }
                        if (xmlPullParser instanceof XmlResourceParser) {
                            ((XmlResourceParser) xmlPullParser).close();
                        }
                        if (xmlPullParser instanceof KXmlParser) {
                            ((KXmlParser) xmlPullParser).close();
                        }
                    } catch (Throwable th) {
                        if (xmlPullParser instanceof XmlResourceParser) {
                            ((XmlResourceParser) xmlPullParser).close();
                        }
                        if (xmlPullParser instanceof KXmlParser) {
                            try {
                                ((KXmlParser) xmlPullParser).close();
                            } catch (Exception e) {
                                loge("Exception");
                            }
                        }
                        throw th;
                    }
                } catch (RuntimeException e2) {
                    loge("loadImsConfig RuntimeException");
                    if (xmlPullParser instanceof XmlResourceParser) {
                        ((XmlResourceParser) xmlPullParser).close();
                    }
                    if (xmlPullParser instanceof KXmlParser) {
                        ((KXmlParser) xmlPullParser).close();
                    }
                }
            } catch (Exception e3) {
                loge("loadImsConfig Exception");
                if (xmlPullParser instanceof XmlResourceParser) {
                    ((XmlResourceParser) xmlPullParser).close();
                }
                if (xmlPullParser instanceof KXmlParser) {
                    ((KXmlParser) xmlPullParser).close();
                }
            }
        } catch (Exception e4) {
            loge("Exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String str) {
        Rlog.d("HwImsConfigImpl[" + this.mSubId + "]", str);
    }

    private void loge(String str) {
        Rlog.e("HwImsConfigImpl[" + this.mSubId + "]", "[ERROR] " + str);
    }

    private void logw(String str) {
        Rlog.w("HwImsConfigImpl[" + this.mSubId + "]", "[WARN] " + str);
    }

    private final void nextElement(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                return;
            }
        } while (next != 1);
    }

    private void readBoolCarrierConfig(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            return;
        }
        this.mUtCSBeUsed = persistableBundle.get(UT_CS_BE_USED_XML_KEY) != null ? persistableBundle.getBoolean(UT_CS_BE_USED_XML_KEY) : this.mDefUtCSBeUsed;
        this.mCFNRcChangeWithCFNL = persistableBundle.get(CFNRC_CHANGE_WITH_CFNL_XML_KEY) != null ? persistableBundle.getBoolean(CFNRC_CHANGE_WITH_CFNL_XML_KEY) : this.mDefCFNRcChangeWithCFNL;
        this.mImsStateFollowVoiceDomain = persistableBundle.get(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) != null ? persistableBundle.getBoolean(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) : this.mDefImsStateFollowVoiceDomain;
        this.mUtHrsLog = persistableBundle.get(UT_HRS_LOG_XML_KEY) != null ? persistableBundle.getBoolean(UT_HRS_LOG_XML_KEY) : this.mDefUtHrsLog;
        this.mUtNafUseHttps = persistableBundle.get(UT_NAF_USE_HTTPS_XML_KEY) != null ? persistableBundle.getBoolean(UT_NAF_USE_HTTPS_XML_KEY) : this.mDefUtNafUseHttps;
        this.mUtBsfUseHttps = persistableBundle.get(UT_BSF_USE_HTTPS_XML_KEY) != null ? persistableBundle.getBoolean(UT_BSF_USE_HTTPS_XML_KEY) : this.mDefUtBsfUseHttps;
        this.mUtUseNodeSelector = persistableBundle.get(UT_USE_NODE_SELECTOR_XML_KEY) != null ? persistableBundle.getBoolean(UT_USE_NODE_SELECTOR_XML_KEY) : this.mDefUtUseNodeSelector;
        this.mUtUseXcapNamespace = persistableBundle.get(UT_USE_XCAP_NAMESPACE_XML_KEY) != null ? persistableBundle.getBoolean(UT_USE_XCAP_NAMESPACE_XML_KEY) : this.mDefUtUseXcapNamespace;
        this.mUtKsnafUseBase64 = persistableBundle.get(UT_KSNAF_USE_BASE64_XML_KEY) != null ? persistableBundle.getBoolean(UT_KSNAF_USE_BASE64_XML_KEY) : this.mDefUtKsnafUseBase64;
        this.mUtUseTmpi = persistableBundle.get(UT_USE_TMPI_XML_KEY) != null ? persistableBundle.getBoolean(UT_USE_TMPI_XML_KEY) : this.mDefUtUseTmpi;
        this.mMissedCallTips = persistableBundle.get(MISSED_CALL_TIPS_XML_KEY) != null ? persistableBundle.getBoolean(MISSED_CALL_TIPS_XML_KEY) : this.mDefMissedCallTips;
        this.mMissedCallDisplay = persistableBundle.get(MISSED_CALL_DISPLAY_XML_KEY) != null ? persistableBundle.getBoolean(MISSED_CALL_DISPLAY_XML_KEY) : this.mDefMissedCallDisplay;
        this.mMissedCallTipsDelay = persistableBundle.get(MISSED_CALL_TIPS_DELAY_XML_KEY) != null ? persistableBundle.getBoolean(MISSED_CALL_TIPS_DELAY_XML_KEY) : this.mDefMissedCallTipsDelay;
        this.mCheckServiceWhenIncomingCall = persistableBundle.get(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) != null ? persistableBundle.getBoolean(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) : this.mDefCheckServiceWhenIncomingCall;
        this.mUtForbiddenWhenVolteSwitchOff = persistableBundle.get(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) != null ? persistableBundle.getBoolean(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) : this.mDefUtForbiddenWhenVolteSwitchOff;
        this.mImsSsBeUsed = persistableBundle.get(IMS_SS_BE_USED_XML_KEY) != null ? persistableBundle.getBoolean(IMS_SS_BE_USED_XML_KEY) : this.mDefImsSsBeUsed;
        this.mPreferToUseUt = persistableBundle.get(PREFER_TO_USE_UT_XML_KEY) != null ? persistableBundle.getBoolean(PREFER_TO_USE_UT_XML_KEY) : this.mDefPreferToUseUt;
        this.mUtCanUseWifi = persistableBundle.get(UT_CAN_USE_WIFI_XML_KEY) != null ? persistableBundle.getBoolean(UT_CAN_USE_WIFI_XML_KEY) : this.mDefUtCanUseWifi;
        this.mHangUpWhenLostNet = persistableBundle.get(HANG_UP_WHEN_LOST_NET) != null ? persistableBundle.getBoolean(HANG_UP_WHEN_LOST_NET) : this.mDefHangUpWhenLostNet;
        this.mUtBsfAuthBeUsed = persistableBundle.get(UT_BSF_AUTH_BE_USED_XML_KEY) != null ? persistableBundle.getBoolean(UT_BSF_AUTH_BE_USED_XML_KEY) : this.mDefUtBsfAuthBeUsed;
        this.mVowifiUtSwitch = persistableBundle.get(VOWIFI_UT_SWITCH_XML_KEY) != null ? persistableBundle.getBoolean(VOWIFI_UT_SWITCH_XML_KEY) : this.mDefaultVowifiUtSwitch;
        this.mBuildVersionCarrier = persistableBundle.get(CARRIER_BUILD_VERSION_BOOL) != null ? persistableBundle.getBoolean(CARRIER_BUILD_VERSION_BOOL) : this.mDefBuildVersionCarrier;
        this.mUse403ForLocalCW = persistableBundle.get(USE_403_FOR_LOCAL_CW) != null ? persistableBundle.getBoolean(USE_403_FOR_LOCAL_CW) : this.mDefUse403ForLocalCW;
        this.mUt409ShowPhrase = persistableBundle.get(UT_409_SHOW_PHRASE) != null ? persistableBundle.getBoolean(UT_409_SHOW_PHRASE) : this.mDefUt409ShowPhrase;
        this.mCarrierSupportVolte = persistableBundle.get(CARRIER_SUPPORT_VOLTE) != null ? persistableBundle.getBoolean(CARRIER_SUPPORT_VOLTE) : false;
        this.mIsUseMultCondition = persistableBundle.get(UT_USE_MULTI_CF) != null ? persistableBundle.getBoolean(UT_USE_MULTI_CF) : this.mDefUseMultCondition;
        this.mUtQueryDnsIgnoreNetId = persistableBundle.get(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) != null ? persistableBundle.getBoolean(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) : this.mDefUtQueryDnsIgnoreNetId;
        boolean z = false;
        if (persistableBundle.get(CARRIER_SUPPORT_VOWIFI) != null) {
            z = persistableBundle.getBoolean(CARRIER_SUPPORT_VOWIFI);
        }
        this.mCarrierSupportVoWifi = z;
        this.mVolteLowbatteryEndcall = persistableBundle.get(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) != null ? persistableBundle.getBoolean(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) : this.mDefVolteLowbatteryEndcall;
        this.mIsEmergencyUnderWifi = persistableBundle.get(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) != null ? persistableBundle.getBoolean(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) : this.mDefEmergencyUnderWifi;
        this.mUtPreferVowifiWhenVowifiReg = persistableBundle.get(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) != null ? persistableBundle.getBoolean(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) : this.mDefUtPreferVowifiWhenVowifiReg;
    }

    private void readIntCarrierConfig(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            return;
        }
        this.mDefaultNoReplyTimer = persistableBundle.get(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? persistableBundle.getInt(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNoReplyTimer;
        this.mContentTypeMode = persistableBundle.get(CONTENT_TYPE_MODE_XML_KEY) != null ? persistableBundle.getInt(CONTENT_TYPE_MODE_XML_KEY) : this.mDefContentTypeMode;
        this.mCallWaitingMode = persistableBundle.get(CALL_WAITING_MODE_XML_KEY) != null ? persistableBundle.getInt(CALL_WAITING_MODE_XML_KEY) : this.mDefCallWaitingMode;
        this.mUtNafPort = persistableBundle.get(UT_NAF_PORT_XML_KEY) != null ? persistableBundle.getInt(UT_NAF_PORT_XML_KEY) : this.mDefUtNafPort;
        this.mUtBsfPort = persistableBundle.get(UT_BSF_PORT_XML_KEY) != null ? persistableBundle.getInt(UT_BSF_PORT_XML_KEY) : this.mDefUtBsfPort;
        this.mUtGbaType = persistableBundle.get(UT_GBA_TYPE_XML_KEY) != null ? persistableBundle.getInt(UT_GBA_TYPE_XML_KEY) : this.mDefUtGbaType;
        this.mDefaultNeedNoReplyTimer = persistableBundle.get(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? persistableBundle.getInt(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNeedNoReplyTimer;
        this.mUtBearerType = persistableBundle.get(UT_BEARER_TYPE_XML_KEY) != null ? persistableBundle.getInt(UT_BEARER_TYPE_XML_KEY) : this.mDefUtBearerType;
        this.mMissedCallTipsRingTimer = persistableBundle.get(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) != null ? persistableBundle.getInt(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) : this.mDefMissedCallTipsRingTimer;
        this.mMissedCallTipsDelayTimer = persistableBundle.get(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) != null ? persistableBundle.getInt(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) : this.mDefMissedCallTipsDelayTimer;
        this.mUtUseApn = persistableBundle.get(UT_USE_APN_XML_KEY) != null ? persistableBundle.getInt(UT_USE_APN_XML_KEY) : this.mDefUtUseApn;
        this.mUtOIRSourceMode = persistableBundle.get(UT_OIR_SOURCE_MODE_XML_KEY) != null ? persistableBundle.getInt(UT_OIR_SOURCE_MODE_XML_KEY) : this.mDefUtOIRSourceMode;
        this.mUtOIRDefaultMode = persistableBundle.get(UT_OIR_DEFAULT_MODE_XML_KEY) != null ? persistableBundle.getInt(UT_OIR_DEFAULT_MODE_XML_KEY) : this.mDefUtOIRDefaultMode;
        this.mUtImsDataDelayEndTime = persistableBundle.get(IMS_DATA_DELAY_END_XML_KEY) != null ? persistableBundle.getInt(IMS_DATA_DELAY_END_XML_KEY) : this.mDefUtImsDataDelayEndTime;
        this.mUtVoWifiDelayEndTime = persistableBundle.get(UT_VOWIFI_DELAY_END_TIME_XML_KEY) != null ? persistableBundle.getInt(UT_VOWIFI_DELAY_END_TIME_XML_KEY) : this.mDefUtVoWifiDelayEndTime;
        this.mUtForbiddenTimer = persistableBundle.get(UT_FORBIDDEN_TIME_XML_KEY) != null ? persistableBundle.getInt(UT_FORBIDDEN_TIME_XML_KEY) : this.mDefaultUtForbiddenTimer;
        this.mUtPreferOption = persistableBundle.get(UT_PREFER_OPTION_KEY) != null ? persistableBundle.getInt(UT_PREFER_OPTION_KEY) : this.mDefUtPreferOption;
    }

    private void readStringCarrierConfig(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            return;
        }
        this.mUtNafSrvAddr = persistableBundle.get(UT_NAF_SRV_ADDR_XML_KEY) != null ? persistableBundle.getString(UT_NAF_SRV_ADDR_XML_KEY) : this.mDefUtNafSrvAddr;
        this.mUtBsfSrvAddr = persistableBundle.get(UT_BSF_SRV_ADDR_XML_KEY) != null ? persistableBundle.getString(UT_BSF_SRV_ADDR_XML_KEY) : this.mDefUtBsfSrvAddr;
        this.mUtX3gppIntendId = persistableBundle.get(UT_X_3GPP_INTEND_ID_XML_KEY) != null ? persistableBundle.getString(UT_X_3GPP_INTEND_ID_XML_KEY) : this.mDefUtX3gppIntendId;
        this.mUtIMPU = persistableBundle.get(UT_IMPU_XML_KEY) != null ? persistableBundle.getString(UT_IMPU_XML_KEY) : this.mDefUtIMPU;
        this.mUtIMPI = persistableBundle.get(UT_IMPI_XML_KEY) != null ? persistableBundle.getString(UT_IMPI_XML_KEY) : this.mDefUtIMPI;
        this.mUtXcapRootUri = persistableBundle.get(UT_XCAP_ROOT_XML_KEY) != null ? persistableBundle.getString(UT_XCAP_ROOT_XML_KEY) : this.mDefUtXcapRootUri;
        this.mImpiDomain = persistableBundle.get(IMPI_DOMAIN) != null ? persistableBundle.getString(IMPI_DOMAIN) : this.mDefImpiDomain;
    }

    private void resolveCallWaitingMode() {
        int callWaitingMode = getCallWaitingMode();
        if ((callWaitingMode & 1) != 0) {
            this.mIsCallWaitingSyncToImsSdk = true;
        } else {
            this.mIsCallWaitingSyncToImsSdk = false;
        }
        if ((callWaitingMode & 2) != 0) {
            this.mIsCallWaitingSyncToCs = true;
        } else {
            this.mIsCallWaitingSyncToCs = false;
        }
        switch ((callWaitingMode & 12) >> 2) {
            case 0:
                this.mCallWaitingSource = CALL_WAITING_SOURCE.CALL_WAITING_FROM_UT;
                break;
            case 1:
                this.mCallWaitingSource = CALL_WAITING_SOURCE.CALL_WAITING_FROM_CS;
                break;
            case 2:
                this.mCallWaitingSource = CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL;
                break;
            default:
                loge("call waiting source is not exist, source=" + this.mCallWaitingSource);
                break;
        }
        logd("resolveCallWaitingMode finished, callWaitingMode=" + callWaitingMode + ", mIsCallWaitingSyncToImsSdk=" + this.mIsCallWaitingSyncToImsSdk + ", mIsCallWaitingSyncToCs=" + this.mIsCallWaitingSyncToCs + ", mCallWaitingSource=" + this.mCallWaitingSource);
    }

    private void setVoWifiStatus(int i) {
        logd("setVoWifiStatus value=" + i);
        if (IS_VOWIFI_PROP_ON) {
            if (this.mMapconService == null) {
                logd("mMapconService is null");
                return;
            }
            int subId = ImsCallProviderUtils.getSubId(this.mSubId);
            try {
                switch (i) {
                    case 0:
                        this.mMapconService.setVoWifiOff(subId);
                        logd("set vowifi off successful");
                        if (IS_ATT_WF) {
                            Rlog.d(LOG_TAG, "Wifi-Call HwImsConfigImpl set vowifi off successful");
                            this.mCi.setWifiEmergencyAid(false, null);
                            break;
                        }
                        break;
                    case 1:
                        this.mMapconService.setVoWifiOn(subId);
                        logd("set vowifi on successful");
                        if (IS_ATT_WF) {
                            Rlog.d(LOG_TAG, "Wifi-Call HwImsConfigImpl set vowifi on successful");
                            this.mCi.setWifiEmergencyAid(true, null);
                            break;
                        }
                        break;
                    default:
                        return;
                }
            } catch (RemoteException e) {
                loge("set vowifi status failed");
            }
        }
    }

    private final void startPositionOfIMSConfigXML(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName() == null || !xmlPullParser.getName().equals(str)) {
            throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
        }
    }

    private int[] stringToIntArray(String str) {
        if (str == null) {
            logw("stringText is null. ");
            return new int[0];
        }
        String replaceAll = str.replaceAll(" ", NULL_STRING_VALUE);
        if (NULL_STRING_VALUE.equals(replaceAll)) {
            logw("stringText is null after replace space. ");
            return new int[0];
        }
        String[] split = replaceAll.split(SEPARATOR_TAG);
        if (split.length == 0) {
            logw("stringTextArray length is 0 after replace space.");
            return new int[0];
        }
        int[] iArr = new int[split.length];
        for (int i = 0; i < split.length; i++) {
            if (NULL_STRING_VALUE.equals(split[i])) {
                iArr[i] = -123456;
            } else {
                try {
                    iArr[i] = Integer.parseInt(split[i]);
                } catch (NumberFormatException e) {
                    loge("stringToIntArray : NumberFormatException ");
                    iArr[i] = -123456;
                }
                logd("intArray[i] =  " + iArr[i]);
            }
        }
        return iArr;
    }

    private String[] stringToStringArray(String str) {
        if (str == null) {
            logw("stringText is null.");
            return new String[0];
        }
        String replaceAll = str.replaceAll(" ", NULL_STRING_VALUE);
        if (NULL_STRING_VALUE.equals(replaceAll)) {
            logw("stringText is null after replace space.");
            return new String[0];
        }
        String[] split = replaceAll.split(SEPARATOR_TAG);
        if (split.length == 0) {
            logw("stringArray length is 0 after replace space.");
            return new String[0];
        }
        for (int i = 0; i < split.length; i++) {
            if (NULL_STRING_VALUE.equals(split[i])) {
                split[i] = STRING_NOT_INITIALIZED;
            }
            logd("stringArray[i]=" + split[i]);
        }
        return split;
    }

    public boolean getBoolCarrierBuildVersion() {
        return this.mBuildVersionCarrier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean getBoolFromSP(String str, Context context, boolean z) {
        boolean z2;
        synchronized (this) {
            z2 = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).getBoolean(str, z);
        }
        return z2;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    String getBsfAddrFromSIM() {
        synchronized (this) {
            if (this.mBsfAddrFromSim != null) {
                return this.mBsfAddrFromSim;
            } else if (this.mSpliceMncMcc == null) {
                loge("getBsfAddrFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
                return null;
            } else {
                String str = "bsf." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
                this.mBsfAddrFromSim = str;
                return str;
            }
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    int getCallWaitingMode() {
        int i;
        synchronized (this) {
            String str = SystemProperties.get(CALL_WAITING_MODE_PROP_KEY, NULL_STRING_VALUE);
            logd("getCallWaitingMode, callWaitingMode = " + str);
            int i2 = this.mCallWaitingMode;
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("getCallWaitingMode : NumberFormatException ");
                i = i2;
            }
            if (NULL_STRING_VALUE.equals(str)) {
                i = this.mCallWaitingMode;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public CALL_WAITING_SOURCE getCallWaitingSource() {
        CALL_WAITING_SOURCE call_waiting_source;
        synchronized (this) {
            call_waiting_source = this.mCallWaitingSource;
        }
        return call_waiting_source;
    }

    public int getConfigInt(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.mConfigIntValue.containsKey(valueOf)) {
            return this.mConfigIntValue.get(valueOf).intValue();
        }
        return -1;
    }

    public String getConfigString(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.mConfigStringValue.containsKey(valueOf)) {
            return this.mConfigStringValue.get(valueOf);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getContentTypeMode() {
        int i;
        synchronized (this) {
            i = this.mContentTypeMode;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDefUtImsDataDelayEndTime() {
        int i;
        synchronized (this) {
            i = this.mDefUtImsDataDelayEndTime;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDefaultNeedNoReplyTimer() {
        int i;
        synchronized (this) {
            i = this.mDefaultNeedNoReplyTimer;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getDefaultNoReplyTimer() {
        int i;
        synchronized (this) {
            i = this.mDefaultNoReplyTimer;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDomainName() {
        String str;
        synchronized (this) {
            str = this.mDomainNameFromSim;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getIMSI() {
        String str;
        synchronized (this) {
            str = this.mCurrentIMSI;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getIccId() {
        String iccId;
        synchronized (this) {
            IccRecords iccRecords = UiccController.getInstance().getIccRecords(ImsCallProviderUtils.getSubId(this.mSubId), 1);
            iccId = iccRecords != null ? iccRecords.getIccId() : null;
        }
        return iccId;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    String getImpiFromSIM() {
        synchronized (this) {
            if (this.mImpiFromSim != null) {
                return this.mImpiFromSim;
            } else if (this.mSpliceMncMcc == null || this.mCurrentIMSI == null) {
                loge("getImpiFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
                return null;
            } else {
                String str = this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
                this.mImpiFromSim = str;
                logd("sImpi = " + hiddenPrivacyInfo(str, 2));
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getImpuFromSIM() {
        synchronized (this) {
            if (this.mSpliceMncMcc == null || this.mCurrentIMSI == null) {
                loge("getSimIMPU error: Cannot splice sim MCC MNC or can't get imsi from sim.");
                return null;
            }
            String str = "sip:" + this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            logd("assemble IMPU from SIM, sIMPU = " + hiddenPrivacyInfo(str, 2));
            return str;
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public PersistableBundle getImsConfig(String str) {
        logd("getImsConfig, configKey = " + str);
        PersistableBundle persistableBundle = new PersistableBundle();
        if (str != null) {
            boolean z = true;
            int hashCode = str.hashCode();
            if (hashCode != 287078213) {
                if (hashCode == 337688234 && str.equals(IMS_CONFIG_KEY_GETDMUSER)) {
                    z = true;
                }
            } else if (str.equals(IMS_CONFIG_KEY_GETSMSCONFIG)) {
                z = false;
            }
            switch (z) {
                case false:
                    ContentResolver contentResolver = this.mContext.getContentResolver();
                    int i = this.mSubId;
                    HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
                    String imsStoredKeyWithSubId = ImsCallProviderUtils.getImsStoredKeyWithSubId(i, HwImsServiceImpl.SMS_IMS_SET_VALUE);
                    HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
                    int i2 = Settings.Secure.getInt(contentResolver, imsStoredKeyWithSubId, 1);
                    logd("getImsConfig, smsConfigValue = " + i2);
                    persistableBundle.putInt(IMS_CONFIG_KEY_GETSMSCONFIG, i2);
                    break;
                case true:
                    ContentResolver contentResolver2 = this.mContext.getContentResolver();
                    int i3 = this.mSubId;
                    HwImsServiceImpl hwImsServiceImpl3 = this.mHwImsServiceImpl;
                    String string = Settings.Secure.getString(contentResolver2, ImsCallProviderUtils.getImsStoredKeyWithSubId(i3, HwImsServiceImpl.DM_USER_IMS_VALUE));
                    logd("getImsConfig, dmUserValue = " + string);
                    persistableBundle.putString(IMS_CONFIG_KEY_GETDMUSER, string);
                    break;
                default:
                    logd("getImsConfig, configKey not exist!" + str);
                    break;
            }
        } else {
            logd("getImsConfig, configKey is null!");
        }
        return persistableBundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIntFromSP(String str, Context context, int i) {
        int i2;
        synchronized (this) {
            i2 = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).getInt(str, i);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getIsEmergencyUnderWifi() {
        boolean z;
        synchronized (this) {
            z = this.mIsEmergencyUnderWifi;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getIsUseMultCondition() {
        boolean z;
        synchronized (this) {
            z = this.mIsUseMultCondition;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getMissedCallTipsDelayTimer() {
        int i;
        synchronized (this) {
            i = this.mMissedCallTipsDelayTimer;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getMissedCallTipsRingTimer() {
        int i;
        synchronized (this) {
            i = this.mMissedCallTipsRingTimer;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOIRDefaultMode() {
        int i;
        synchronized (this) {
            i = this.mUtOIRDefaultMode;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOIRSourceMode() {
        int i;
        synchronized (this) {
            i = this.mUtOIRSourceMode;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getSharedPreferences(String str, Context context) {
        synchronized (this) {
            logd("enter getSharedPreferences, spKey=" + str);
            String str2 = this.mSpValueMap.get(str);
            if (str2 != null) {
                logd("value is already stored in map.");
                return str2;
            }
            SharedPreferences defaultSharedPreferencesDE = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
            String decrypt = decrypt(defaultSharedPreferencesDE.getString(str, NULL_STRING_VALUE), defaultSharedPreferencesDE.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], NULL_STRING_VALUE), defaultSharedPreferencesDE.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], NULL_STRING_VALUE));
            this.mSpValueMap.put(str, decrypt);
            return decrypt;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSimOperator() {
        String operatorNumeric;
        synchronized (this) {
            IccRecords iccRecords = UiccController.getInstance().getIccRecords(ImsCallProviderUtils.getSubId(this.mSubId), 1);
            operatorNumeric = iccRecords != null ? iccRecords.getOperatorNumeric() : null;
        }
        return operatorNumeric;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getUt409ShowPhrase() {
        boolean z;
        synchronized (this) {
            z = this.mUt409ShowPhrase;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUtBearerType() {
        int i;
        synchronized (this) {
            String str = SystemProperties.get(UT_BEARER_TYPE_PROP_KEY, NULL_STRING_VALUE);
            logd("getUtBearerType, utBearerType " + str);
            int i2 = this.mUtBearerType;
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("getUtBearerType : NumberFormatException ");
                i = i2;
            }
            if (NULL_STRING_VALUE.equals(str)) {
                i = this.mUtBearerType;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtBsfPort() {
        int i;
        synchronized (this) {
            String str = SystemProperties.get(UT_BSF_PORT_PROP_KEY, NULL_STRING_VALUE);
            int i2 = this.mUtBsfPort;
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("getUtBsfPort : NumberFormatException ");
                i = i2;
            }
            if (NULL_STRING_VALUE.equals(str)) {
                i = this.mUtBsfPort;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtBsfSrvAddr() {
        synchronized (this) {
            String str = SystemProperties.get(UT_BSF_SRV_ADDR_PROP_KEY, NULL_STRING_VALUE);
            if (!NULL_STRING_VALUE.equals(str)) {
                logd("use bsf addr from prop, bsf");
                return str;
            } else if (!NULL_STRING_VALUE.equals(this.mUtBsfSrvAddr)) {
                logd("use bsf addr from xml, bsf addr");
                return this.mUtBsfSrvAddr;
            } else {
                String bsfAddrFromSIM = getBsfAddrFromSIM();
                if (bsfAddrFromSIM != null) {
                    logd("use bsf addr from sim, bsf");
                    return bsfAddrFromSIM;
                }
                loge("pick bsf addr fail.");
                return null;
            }
        }
    }

    public int getUtForbiddenTimer() {
        return this.mUtForbiddenTimer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtGbaType() {
        int i;
        synchronized (this) {
            i = isConfigInProp(UT_GBA_TYPE_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_INT) ? UT_GBA_TYPE : this.mUtGbaType;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtIMPI() {
        String str;
        synchronized (this) {
            if (isConfigInProp(UT_IMPI_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
                logd("use impi from prop, impi=" + hiddenPrivacyInfo(UT_IMPI, 2));
                return UT_IMPI;
            } else if (!NULL_STRING_VALUE.equals(this.mUtIMPI)) {
                logd("use impi from xml, impi=" + hiddenPrivacyInfo(this.mUtIMPI, 2));
                return this.mUtIMPI;
            } else if (NULL_STRING_VALUE.equals(this.mImpiDomain) && this.mImpiFromSim != null) {
                logd("impi from sim already exist, impi=" + hiddenPrivacyInfo(this.mImpiFromSim, 2));
                return this.mImpiFromSim;
            } else if (this.mSpliceMncMcc == null || this.mCurrentIMSI == null) {
                loge("getImpiFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
                return null;
            } else {
                logd("begin to assemble impi from imsi, mSpliceMncMcc=" + this.mSpliceMncMcc);
                if (NULL_STRING_VALUE.equals(this.mImpiDomain)) {
                    str = this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
                } else {
                    str = this.mCurrentIMSI + "@" + this.mImpiDomain;
                }
                this.mImpiFromSim = str;
                logd("after assemble, impi=" + hiddenPrivacyInfo(str, 2));
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtIMPU(Context context) {
        synchronized (this) {
            if (isConfigInProp(UT_IMPU_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
                logd("use impu from prop, impu=" + hiddenPrivacyInfo(UT_IMPU, 2));
                return UT_IMPU;
            } else if (!NULL_STRING_VALUE.equals(this.mUtIMPU)) {
                logd("use impu from xml, impu=" + hiddenPrivacyInfo(this.mUtIMPU, 2));
                return this.mUtIMPU;
            } else {
                String sharedPreferences = getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSubId], context);
                if (sharedPreferences != null) {
                    logd("use impu from network, impu=" + hiddenPrivacyInfo(sharedPreferences, 2));
                    return sharedPreferences;
                }
                String sharedPreferences2 = getSharedPreferences(IMPU_FROM_SIM_IMSI_KEY[this.mSubId], context);
                if (sharedPreferences2 == null) {
                    loge("pick impu fail.");
                    return null;
                }
                logd("use impu from imsi, impu=" + hiddenPrivacyInfo(sharedPreferences2, 2));
                return sharedPreferences2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtIMPUFromNetwork() {
        String sharedPreferences;
        synchronized (this) {
            sharedPreferences = getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSubId], this.mContext);
        }
        return sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUtImsDataDelayEndTime() {
        int i;
        synchronized (this) {
            i = this.mUtImsDataDelayEndTime;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtNafPort() {
        int i;
        synchronized (this) {
            String str = SystemProperties.get(UT_NAF_PORT_PROP_KEY, NULL_STRING_VALUE);
            logd("getUtNafPort ");
            int i2 = this.mUtNafPort;
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("getUtNafPort : NumberFormatException ");
                i = i2;
            }
            if (NULL_STRING_VALUE.equals(str)) {
                i = this.mUtNafPort;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtNafSrvAddr() {
        synchronized (this) {
            String str = SystemProperties.get(UT_NAF_SRV_ADDR_PROP_KEY, NULL_STRING_VALUE);
            if (!NULL_STRING_VALUE.equals(str)) {
                logd("use naf addr from prop");
                return str;
            } else if (!NULL_STRING_VALUE.equals(this.mUtNafSrvAddr)) {
                logd("use naf addr from xml, naf ");
                return this.mUtNafSrvAddr;
            } else {
                String rootUriFromSim = getRootUriFromSim();
                if (rootUriFromSim != null) {
                    logd("use naf addr from sim, naf ");
                    return rootUriFromSim;
                }
                loge("pick naf addr fail.");
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String[] getUtParamsCfg() {
        String[] strArr;
        synchronized (this) {
            strArr = this.mUtParamsCfg;
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUtPreferOption() {
        int i;
        synchronized (this) {
            i = this.mUtPreferOption;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtRetryInterval(int i) {
        synchronized (this) {
            if (i < 0) {
                return -1;
            }
            if (this.mUtRetryInterval != null && this.mUtRetryInterval.length > i) {
                return this.mUtRetryInterval[i];
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtRetryMaxCounts() {
        synchronized (this) {
            if (this.mUtRetryInterval == null) {
                return -1;
            }
            return this.mUtRetryInterval.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public int getUtUseApn() {
        int i;
        synchronized (this) {
            i = this.mUtUseApn;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUtVoWifiDelayEndTime() {
        int i;
        synchronized (this) {
            i = this.mUtVoWifiDelayEndTime;
        }
        return i;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    String getUtX3gppIntendId() {
        String str;
        synchronized (this) {
            str = isConfigInProp(UT_X_3GPP_INTEND_ID_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING) ? UT_X_3GPP_INTEND_ID : this.mUtX3gppIntendId;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String getUtXcapRootUri() {
        String str;
        synchronized (this) {
            str = SystemProperties.get(UT_XCAP_ROOT_URI_PROP_KEY, NULL_STRING_VALUE);
            if (NULL_STRING_VALUE.equals(str)) {
                str = this.mUtXcapRootUri;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getVowifiUtSwitch() {
        boolean z;
        synchronized (this) {
            z = this.mVowifiUtSwitch;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCFNRcChangeWithCFNL() {
        boolean z;
        synchronized (this) {
            z = this.mCFNRcChangeWithCFNL;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCallWaitingSyncToCs() {
        boolean z;
        synchronized (this) {
            z = this.mIsCallWaitingSyncToCs;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCallWaitingSyncToImsSdk() {
        boolean z;
        synchronized (this) {
            z = this.mIsCallWaitingSyncToImsSdk;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCardMccMncPreferToUseUT(String str) {
        synchronized (this) {
            String str2 = SystemProperties.get(UT_PREFER_TO_USE_UT_PROP_KEY, NULL_STRING_VALUE);
            if (!NULL_STRING_VALUE.equals(str2)) {
                return Boolean.parseBoolean(str2);
            }
            boolean z = true;
            if (FEATURE_VOLTE_DYN) {
                if (!this.mPreferToUseUt || (!isCarrierSupportVolte() && !isCarrierSupportVoWifi())) {
                    z = false;
                }
                return z;
            } else if (this.mCardMccMncPreferToUseUt == null || this.mCardMccMncPreferToUseUt.length == 0 || str == null) {
                return true;
            } else {
                return isContainInIMSConfig(this.mCardMccMncPreferToUseUt, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCardTypePreferToUseUT(int i) {
        synchronized (this) {
            logd("isCardTypePreferToUseUT, Card type is " + i);
            if (this.mCardTypePreferToUseUT != null && this.mCardTypePreferToUseUT.length != 0) {
                return isContainInIMSConfig(this.mCardTypePreferToUseUT, i);
            }
            logw("mCardTypePreferToUseUT is null");
            return true;
        }
    }

    boolean isCarrierSupportVoWifi() {
        boolean z;
        synchronized (this) {
            z = this.mCarrierSupportVoWifi;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isCarrierSupportVolte() {
        boolean z;
        synchronized (this) {
            z = this.mCarrierSupportVolte;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isCheckServiceWhenIncomingCall() {
        boolean z;
        synchronized (this) {
            z = this.mCheckServiceWhenIncomingCall;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDcFailCauseForNonVolteSim(String str) {
        synchronized (this) {
            if (this.mDcFailCause != null && this.mDcFailCause.length != 0) {
                return isContainInIMSConfig(this.mDcFailCause, str);
            }
            logw("mDcFailCause is null.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDcFailCauseToReleaseApn(String str) {
        synchronized (this) {
            if (this.mDcFailCauseToReleaseApn != null && this.mDcFailCauseToReleaseApn.length != 0) {
                return isContainInIMSConfig(this.mDcFailCauseToReleaseApn, str);
            }
            logw("isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isHangUpWhenLostNet() {
        boolean z;
        synchronized (this) {
            z = this.mHangUpWhenLostNet;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isIMPUConfigured() {
        synchronized (this) {
            if (!isConfigInProp(UT_IMPU_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
                if (NULL_STRING_VALUE.equals(this.mUtIMPU)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isImsSsBeUsed() {
        boolean z;
        synchronized (this) {
            z = this.mImsSsBeUsed;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isImsStateFollowVoiceDomain() {
        boolean z;
        synchronized (this) {
            z = this.mImsStateFollowVoiceDomain;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isMissedCallDisplay() {
        boolean z;
        synchronized (this) {
            z = this.mMissedCallDisplay;
        }
        return z;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    boolean isMissedCallTips() {
        boolean isMissedCallTipsInternal;
        synchronized (this) {
            isMissedCallTipsInternal = isMissedCallTipsInternal();
        }
        return isMissedCallTipsInternal;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    boolean isMissedCallTipsDelay() {
        boolean z;
        synchronized (this) {
            z = this.mMissedCallTipsDelay;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isMissedCallTipsInternal() {
        boolean z;
        synchronized (this) {
            z = this.mMissedCallTips;
        }
        return z;
    }

    public boolean isProtocolIR92V10orGreater() {
        return this.mIsProtocolIR92V10orGreater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isSSForbidFallbackCS(int i) {
        synchronized (this) {
            logd("isSSForbidFallbackCS, ss type is " + i);
            if (this.mSSForbidFallbackCS != null && this.mSSForbidFallbackCS.length != 0) {
                return isContainInIMSConfig(this.mSSForbidFallbackCS, i);
            }
            logw("mSSForbidFallbackCS is null.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isSSUseCsOnly(int i) {
        synchronized (this) {
            logd("isSSUseCsOnly, ss type is " + i);
            String str = SystemProperties.get(SS_TYPE_USE_CS_ONLY_PROP_KEY, NULL_STRING_VALUE);
            logd("isSSUseCsOnly, SSTypeUseCsOnly " + str);
            this.mSSTypeUseCsOnly = !NULL_STRING_VALUE.equals(str) ? stringToIntArray(str) : this.mSSTypeUseCsOnly;
            if (this.mSSTypeUseCsOnly != null && this.mSSTypeUseCsOnly.length != 0) {
                return isContainInIMSConfig(this.mSSTypeUseCsOnly, i);
            }
            logw("mSSTypeUseCsOnly is null.");
            return false;
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    boolean isUnSupportMMICode(String str) {
        synchronized (this) {
            logd("MMI code is " + HiddenPrivacyInfo.putMosaic(str, 5));
            if (this.mNotSupportMMICode != null && this.mNotSupportMMICode.length != 0) {
                return isContainInIMSConfig(this.mNotSupportMMICode, str);
            }
            logw("mNotSupportMMICode is null.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUse403ForLocalCW() {
        boolean z;
        synchronized (this) {
            z = this.mUse403ForLocalCW;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtBsfAuthBeUsed() {
        boolean z;
        synchronized (this) {
            z = this.mUtBsfAuthBeUsed;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtBsfUseHttps() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_BSF_USE_HTTPS_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_BSF_USE_HTTPS : this.mUtBsfUseHttps;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtCSBeUsed() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_CS_BE_USED_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_CS_BE_USED : this.mUtCSBeUsed;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtCanUseWifi() {
        boolean z;
        synchronized (this) {
            z = this.mUtCanUseWifi;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtForbiddenWhenVolteSwitchOff() {
        boolean parseBoolean;
        synchronized (this) {
            String str = SystemProperties.get(UT_FORBIDDEN_WVSO_PROP_KEY, NULL_STRING_VALUE);
            logd("utForbiddenWhenVolteSwitchOff = " + str);
            parseBoolean = !NULL_STRING_VALUE.equals(str) ? Boolean.parseBoolean(str) : this.mUtForbiddenWhenVolteSwitchOff;
        }
        return parseBoolean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtGbaLifetimeBeUsed() {
        boolean z;
        synchronized (this) {
            z = this.mUtGbaLifetimeBeUsed;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtKsnafEncodedByBase64() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_KSNAF_USE_BASE64_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_KSNAF_USE_BASE64 : this.mUtKsnafUseBase64;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtNafUseHttps() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_NAF_USE_HTTPS_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_NAF_USE_HTTPS : this.mUtNafUseHttps;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtOpenHrsLog() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_HRS_LOG_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_HRS_LOG : this.mUtHrsLog;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtPreferVowifiWhenVowifiReg() {
        boolean z;
        synchronized (this) {
            z = this.mUtPreferVowifiWhenVowifiReg;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtQueryDnsIgnoreNetId() {
        boolean z;
        synchronized (this) {
            z = this.mUtQueryDnsIgnoreNetId;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtUseNodeSelector() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_USE_NODE_SELECTOR_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_NODE_SELECTOR : this.mUtUseNodeSelector;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtUseTmpi() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_USE_TMPI_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_TMPI : this.mUtUseTmpi;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public boolean isUtUseXcapNameSpace() {
        boolean z;
        synchronized (this) {
            z = isConfigInProp(UT_USE_XCAP_NAMESPACE_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_XCAP_NAMESPACE : this.mUtUseXcapNamespace;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVolteLowbatteryEndcall() {
        boolean z;
        synchronized (this) {
            z = this.mVolteLowbatteryEndcall;
        }
        return z;
    }

    public boolean processOnTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        logd("processOnTransact , code = " + i);
        if (i != 3001) {
            return false;
        }
        boolean isUnSupportMMICode = isUnSupportMMICode(parcel.readString());
        logd("isUnSupportMMICode = " + isUnSupportMMICode);
        parcel2.writeNoException();
        parcel2.writeInt(isUnSupportMMICode ? 1 : 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void readCarrierConfig(Context context) {
        synchronized (this) {
            if (FEATURE_VOLTE_DYN) {
                logd("readCarrierConfig begin");
                PersistableBundle configForSubId = ((CarrierConfigManager) context.getSystemService("carrier_config")).getConfigForSubId(ImsCallProviderUtils.getSubId(this.mSubId));
                readBoolCarrierConfig(configForSubId);
                readIntCarrierConfig(configForSubId);
                readStringCarrierConfig(configForSubId);
                try {
                    this.mCardTypePreferToUseUT = configForSubId.get(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY) != null ? stringToIntArray(configForSubId.getString(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY)) : this.mDefCardTypePreferToUseUT;
                    this.mSSForbidFallbackCS = configForSubId.get(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY) != null ? stringToIntArray(configForSubId.getString(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY)) : this.mDefSSForbidFallbackCS;
                    this.mSSTypeUseCsOnly = configForSubId.get(SS_TYPE_USE_CS_ONLY_XML_KEY) != null ? stringToIntArray(configForSubId.getString(SS_TYPE_USE_CS_ONLY_XML_KEY)) : this.mDefSSTypeUseCsOnly;
                    this.mUtRetryInterval = configForSubId.get(UT_RETRY_INTERVAL_XML_KEY) != null ? stringToIntArray(configForSubId.getString(UT_RETRY_INTERVAL_XML_KEY)) : this.mDefUtRetryInterval;
                    this.mCardMccMncPreferToUseUt = configForSubId.get(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY) != null ? stringToStringArray(configForSubId.getString(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY)) : this.mDefCardMccMncPreferToUseUt;
                    this.mNotSupportMMICode = configForSubId.get(SS_NOT_SUPPORT_MMI_CODE_XML_KEY) != null ? stringToStringArray(configForSubId.getString(SS_NOT_SUPPORT_MMI_CODE_XML_KEY)) : this.mDefNotSupportMMICode;
                    this.mUtParamsCfg = configForSubId.get(UT_PARAMS_CONFIG_XML_KEY) != null ? stringToStringArray(configForSubId.getString(UT_PARAMS_CONFIG_XML_KEY)) : this.mDefUtParamsCfg;
                    this.mDcFailCode = configForSubId.get(DC_FAIL_CAUSE_XML_KEY) != null ? stringToIntArray(configForSubId.getString(DC_FAIL_CAUSE_XML_KEY)) : this.mDefDcFailCode;
                    this.mDcFailCause = getDcFailCause(this.mDcFailCode);
                    this.mDcFailCodeToReleaseApn = configForSubId.get(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY) != null ? stringToIntArray(configForSubId.getString(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY)) : null;
                    this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
                } catch (RuntimeException e) {
                    loge("RuntimeException");
                } catch (Exception e2) {
                    loge("Exception");
                }
                resolveCallWaitingMode();
                this.mIsProtocolIR92V10orGreater = getParamFromUtParamsCfg(17) == 1;
                boolean z = false;
                if (getParamFromUtParamsCfg(19) == 1) {
                    z = true;
                }
                this.mUtGbaLifetimeBeUsed = z;
                logd("readCarrierConfig end");
            }
        }
    }

    public void removeKeyInSp(String str, Context context) {
        SharedPreferences.Editor edit = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).edit();
        edit.remove(str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setBoolToSP(String str, boolean z, Context context) {
        synchronized (this) {
            SharedPreferences.Editor edit = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).edit();
            edit.putBoolean(str, z);
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setBsfAddrFromSIM(String str) {
        synchronized (this) {
            this.mBsfAddrFromSim = str;
        }
    }

    public int setConfig(int i, int i2) {
        if (IS_VOWIFI_PROP_ON) {
            if (this.mMapconService == null) {
                loge("setProvisionedValue,mMapconService is null");
                return -1;
            }
            int subId = ImsCallProviderUtils.getSubId(this.mSubId);
            int i3 = 0;
            if (26 == i) {
                try {
                    logd("set VOICE_OVER_WIFI_ROAMING,value:" + i2);
                    this.mMapconService.notifyRoaming(subId);
                } catch (RemoteException e) {
                    logd("set VOICE_OVER_WIFI_ROAMING failed");
                    i3 = 1;
                }
            } else {
                i3 = 0;
                if (27 == i) {
                    try {
                        logd("set VOICE_OVER_WIFI_MODE,value:" + i2);
                        this.mMapconService.setDomain(subId, i2);
                        i3 = 0;
                    } catch (RemoteException e2) {
                        logd("set VOICE_OVER_WIFI_MODE failed");
                        i3 = 1;
                    }
                }
            }
            if (i3 == 0) {
                this.mConfigIntValue.put(Integer.valueOf(i), Integer.valueOf(i2));
            }
            return i3;
        }
        return 0;
    }

    public int setConfig(int i, String str) {
        this.mConfigStringValue.put(Integer.valueOf(i), str);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setCurrentImsi(String str) {
        synchronized (this) {
            this.mCurrentIMSI = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDomainNameFromSIM(String str) {
        synchronized (this) {
            this.mDomainNameFromSim = str;
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public void setFeatureValue(int i, int i2, int i3, ImsConfigListener imsConfigListener) {
        logd("setFeatureValue feature=" + i + ",network=" + i2 + ",value=" + i3);
        switch (i) {
            case 0:
            case 1:
            default:
                return;
            case 2:
                setVoWifiStatus(i3);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setIMSI(String str) {
        synchronized (this) {
            this.mCurrentIMSI = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setImpiFromSIM(String str) {
        synchronized (this) {
            this.mImpiFromSim = str;
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public int setImsConfig(String str, PersistableBundle persistableBundle) {
        logd("setImsConfig, configKey = " + str + ", configValue = *** ");
        int i = 1;
        if (str != null) {
            boolean z = true;
            int hashCode = str.hashCode();
            if (hashCode != 1409587605) {
                if (hashCode == 1836070841 && str.equals(IMS_CONFIG_KEY_SETSMSCONFIG)) {
                    z = false;
                }
            } else if (str.equals(VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT)) {
                z = true;
            }
            switch (z) {
                case false:
                    i = 1;
                    if (this.mHwImsServiceImpl != null) {
                        HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
                        this.mHwImsServiceImpl.setImsSmsConfig(persistableBundle.getInt(IMS_CONFIG_KEY_SETSMSCONFIG, 1));
                        i = 0;
                        break;
                    }
                    break;
                case true:
                    i = 1;
                    if (this.mHwImsServiceImpl != null) {
                        HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
                        this.mHwImsServiceImpl.setVoWiFiRegErrReportEnable(persistableBundle.getInt(VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT, 0));
                        i = 0;
                        break;
                    }
                    break;
                default:
                    logd("setImsConfig, configKey not exist!");
                    i = 1;
                    break;
            }
        } else {
            logd("setImsConfig, configKey is null!");
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIntToSP(String str, int i, Context context) {
        synchronized (this) {
            SharedPreferences.Editor edit = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).edit();
            edit.putInt(str, i);
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setNafAddrFromSIM(String str) {
        synchronized (this) {
            this.mXcapRootURIFromSim = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setSharedPreferences(String str, String str2, Context context) {
        synchronized (this) {
            logd("enter setSharedPreferences, spKey=" + str);
            String str3 = this.mSpValueMap.get(str);
            if (str3 != null && str3.equals(str2)) {
                logd("value is not changed, need not to store in SP again.");
                return;
            }
            this.mSpValueMap.put(str, str2);
            SharedPreferences.Editor edit = SharePreferenceUtil.getDefaultSharedPreferencesDE(context).edit();
            edit.putString(str, encrypt(str2, context));
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public void setSpliceMncMcc(String str) {
        synchronized (this) {
            this.mSpliceMncMcc = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public String spliceMncMcc() {
        String str;
        synchronized (this) {
            String simOperator = getSimOperator();
            if (simOperator == null) {
                loge("spliceMncMcc error: Cannot get sim MCC MNC ");
                return null;
            }
            logd("simOperator=" + simOperator);
            if (5 == simOperator.length()) {
                str = "mnc0" + simOperator.substring(3, 5);
            } else if (6 != simOperator.length()) {
                loge("spliceMncMcc error: Get wrong MCC MNC");
                return null;
            } else {
                str = "mnc" + simOperator.substring(3, 6);
            }
            String str2 = str + ".mcc" + simOperator.substring(0, 3);
            logd("spMCCMNC = " + str2);
            return str2;
        }
    }
}
