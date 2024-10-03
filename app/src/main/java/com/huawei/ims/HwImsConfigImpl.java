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
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.Rlog;
import android.text.TextUtils;
import com.android.ims.ImsConfigListener;
import com.android.internal.telephony.dataconnection.DcFailCause;
import com.android.internal.telephony.uicc.IccRecords;
import com.android.internal.telephony.uicc.UiccController;
import com.hisi.mapcon.IMapconService;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-6194448491803390421.dex */
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
            HwImsConfigImpl.this.mylogd("mBroadCastReceiver: action " + intent.getAction());
            if (HwImsConfigImpl.MAPCON_SERVICE_STARTED.equals(intent.getAction()) && HwImsConfigImpl.this.mMapconService == null) {
                HwImsConfigImpl.this.bindMapconService();
            }
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-6194448491803390421.dex */
    public enum CALL_WAITING_SOURCE {
        CALL_WAITING_FROM_UT,
        CALL_WAITING_FROM_CS,
        CALL_WAITING_FROM_LOCAL
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-6194448491803390421.dex */
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

    public HwImsConfigImpl(HwImsServiceImpl hwImsServiceImpl, int subId) {
        this.mSubId = -1;
        this.mCi = null;
        this.mSubId = subId;
        mylogd("HwImsConfigImpl construtor");
        if (!ImsCallProviderUtils.isValidServiceSubIndex(this.mSubId)) {
            myloge("subId is invalid");
            return;
        }
        if (hwImsServiceImpl == null || hwImsServiceImpl.mCi == null) {
            myloge("hwImsServiceImpl or imsRIL is null");
            return;
        }
        if (hwImsServiceImpl.mContext == null) {
            myloge("context is null");
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
        mylogd("processOnTransact , code = " + i);
        if (i == 3001) {
            boolean isUnSupportMMICode = isUnSupportMMICode(parcel.readString());
            mylogd("isUnSupportMMICode = " + isUnSupportMMICode);
            parcel2.writeNoException();
            parcel2.writeInt(isUnSupportMMICode ? 1 : 0);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isImsSsBeUsed() {
        return this.mImsSsBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtForbiddenWhenVolteSwitchOff() {
        String utForbiddenWhenVolteSwitchOff;
        utForbiddenWhenVolteSwitchOff = SystemProperties.get(UT_FORBIDDEN_WVSO_PROP_KEY, NULL_STRING_VALUE);
        mylogd("utForbiddenWhenVolteSwitchOff = " + utForbiddenWhenVolteSwitchOff);
        return !NULL_STRING_VALUE.equals(utForbiddenWhenVolteSwitchOff) ? Boolean.parseBoolean(utForbiddenWhenVolteSwitchOff) : this.mUtForbiddenWhenVolteSwitchOff;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtUseApn() {
        return this.mUtUseApn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUse403ForLocalCW() {
        return this.mUse403ForLocalCW;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isCarrierSupportVolte() {
        return this.mCarrierSupportVolte;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtCanUseWifi() {
        return this.mUtCanUseWifi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCardTypePreferToUseUT(int cardType) {
        mylogd("isCardTypePreferToUseUT, Card type is " + cardType);
        if (this.mCardTypePreferToUseUT != null && this.mCardTypePreferToUseUT.length != 0) {
            return isContainInIMSConfig(this.mCardTypePreferToUseUT, cardType);
        }
        logw("mCardTypePreferToUseUT is null");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCardMccMncPreferToUseUT(String cardMccMnc) {
        String preferToUseUt = SystemProperties.get(UT_PREFER_TO_USE_UT_PROP_KEY, NULL_STRING_VALUE);
        if (!NULL_STRING_VALUE.equals(preferToUseUt)) {
            return Boolean.parseBoolean(preferToUseUt);
        }
        boolean z = true;
        if (FEATURE_VOLTE_DYN) {
            if (!this.mPreferToUseUt || (!isCarrierSupportVolte() && !isCarrierSupportVoWifi())) {
                z = false;
            }
            return z;
        }
        if (this.mCardMccMncPreferToUseUt != null && this.mCardMccMncPreferToUseUt.length != 0 && cardMccMnc != null) {
            return isContainInIMSConfig(this.mCardMccMncPreferToUseUt, cardMccMnc);
        }
        return true;
    }

    synchronized boolean isCarrierSupportVoWifi() {
        return this.mCarrierSupportVoWifi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getIsUseMultCondition() {
        return this.mIsUseMultCondition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isSSUseCsOnly(int ssType) {
        mylogd("isSSUseCsOnly, ss type is " + ssType);
        String SSTypeUseCsOnly = SystemProperties.get(SS_TYPE_USE_CS_ONLY_PROP_KEY, NULL_STRING_VALUE);
        mylogd("isSSUseCsOnly, SSTypeUseCsOnly " + SSTypeUseCsOnly);
        this.mSSTypeUseCsOnly = !NULL_STRING_VALUE.equals(SSTypeUseCsOnly) ? stringToIntArray(SSTypeUseCsOnly) : this.mSSTypeUseCsOnly;
        if (this.mSSTypeUseCsOnly != null && this.mSSTypeUseCsOnly.length != 0) {
            return isContainInIMSConfig(this.mSSTypeUseCsOnly, ssType);
        }
        logw("mSSTypeUseCsOnly is null.");
        return false;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized boolean isUnSupportMMICode(String MMIcode) {
        mylogd("MMI code is " + HiddenPrivacyInfo.putMosaic(MMIcode, 5));
        if (this.mNotSupportMMICode != null && this.mNotSupportMMICode.length != 0) {
            return isContainInIMSConfig(this.mNotSupportMMICode, MMIcode);
        }
        logw("mNotSupportMMICode is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtCSBeUsed() {
        return isConfigInProp(UT_CS_BE_USED_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_CS_BE_USED : this.mUtCSBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isSSForbidFallbackCS(int ssType) {
        mylogd("isSSForbidFallbackCS, ss type is " + ssType);
        if (this.mSSForbidFallbackCS != null && this.mSSForbidFallbackCS.length != 0) {
            return isContainInIMSConfig(this.mSSForbidFallbackCS, ssType);
        }
        logw("mSSForbidFallbackCS is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isCFNRcChangeWithCFNL() {
        return this.mCFNRcChangeWithCFNL;
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
        return this.mImsStateFollowVoiceDomain;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized int getCallWaitingMode() {
        String callWaitingMode;
        int callWaitingModeInt;
        callWaitingMode = SystemProperties.get(CALL_WAITING_MODE_PROP_KEY, NULL_STRING_VALUE);
        mylogd("getCallWaitingMode, callWaitingMode = " + callWaitingMode);
        callWaitingModeInt = this.mCallWaitingMode;
        try {
            callWaitingModeInt = Integer.parseInt(callWaitingMode);
        } catch (NumberFormatException e) {
            myloge("getCallWaitingMode : NumberFormatException ");
        }
        return !NULL_STRING_VALUE.equals(callWaitingMode) ? callWaitingModeInt : this.mCallWaitingMode;
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
    public synchronized CALL_WAITING_SOURCE getCallWaitingSource() {
        return this.mCallWaitingSource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtOpenHrsLog() {
        return isConfigInProp(UT_HRS_LOG_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_HRS_LOG : this.mUtHrsLog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtNafSrvAddr() {
        String utNafSrvAddr = SystemProperties.get(UT_NAF_SRV_ADDR_PROP_KEY, NULL_STRING_VALUE);
        if (!NULL_STRING_VALUE.equals(utNafSrvAddr)) {
            mylogd("use naf addr from prop");
            return utNafSrvAddr;
        }
        if (!NULL_STRING_VALUE.equals(this.mUtNafSrvAddr)) {
            mylogd("use naf addr from xml, naf ");
            return this.mUtNafSrvAddr;
        }
        String nafAddr = getRootUriFromSim();
        if (nafAddr != null) {
            mylogd("use naf addr from sim, naf ");
            return nafAddr;
        }
        myloge("pick naf addr fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtNafPort() {
        String utNafPort;
        int utNafPortInt;
        utNafPort = SystemProperties.get(UT_NAF_PORT_PROP_KEY, NULL_STRING_VALUE);
        mylogd("getUtNafPort ");
        utNafPortInt = this.mUtNafPort;
        try {
            utNafPortInt = Integer.parseInt(utNafPort);
        } catch (NumberFormatException e) {
            myloge("getUtNafPort : NumberFormatException ");
        }
        return !NULL_STRING_VALUE.equals(utNafPort) ? utNafPortInt : this.mUtNafPort;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtNafUseHttps() {
        return isConfigInProp(UT_NAF_USE_HTTPS_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_NAF_USE_HTTPS : this.mUtNafUseHttps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtBsfSrvAddr() {
        String utBsfSrvAddr = SystemProperties.get(UT_BSF_SRV_ADDR_PROP_KEY, NULL_STRING_VALUE);
        if (!NULL_STRING_VALUE.equals(utBsfSrvAddr)) {
            mylogd("use bsf addr from prop, bsf");
            return utBsfSrvAddr;
        }
        if (!NULL_STRING_VALUE.equals(this.mUtBsfSrvAddr)) {
            mylogd("use bsf addr from xml, bsf addr");
            return this.mUtBsfSrvAddr;
        }
        String bsfAddr = getBsfAddrFromSIM();
        if (bsfAddr != null) {
            mylogd("use bsf addr from sim, bsf");
            return bsfAddr;
        }
        myloge("pick bsf addr fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtPreferVowifiWhenVowifiReg() {
        return this.mUtPreferVowifiWhenVowifiReg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getVowifiUtSwitch() {
        return this.mVowifiUtSwitch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtXcapRootUri() {
        String utXcapRootUri;
        utXcapRootUri = SystemProperties.get(UT_XCAP_ROOT_URI_PROP_KEY, NULL_STRING_VALUE);
        return !NULL_STRING_VALUE.equals(utXcapRootUri) ? utXcapRootUri : this.mUtXcapRootUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtBsfPort() {
        String utBsfPort;
        int utBsfPortInt;
        utBsfPort = SystemProperties.get(UT_BSF_PORT_PROP_KEY, NULL_STRING_VALUE);
        utBsfPortInt = this.mUtBsfPort;
        try {
            utBsfPortInt = Integer.parseInt(utBsfPort);
        } catch (NumberFormatException e) {
            myloge("getUtBsfPort : NumberFormatException ");
        }
        return !NULL_STRING_VALUE.equals(utBsfPort) ? utBsfPortInt : this.mUtBsfPort;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtBsfUseHttps() {
        return isConfigInProp(UT_BSF_USE_HTTPS_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_BSF_USE_HTTPS : this.mUtBsfUseHttps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseNodeSelector() {
        return isConfigInProp(UT_USE_NODE_SELECTOR_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_NODE_SELECTOR : this.mUtUseNodeSelector;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseXcapNameSpace() {
        return isConfigInProp(UT_USE_XCAP_NAMESPACE_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_XCAP_NAMESPACE : this.mUtUseXcapNamespace;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtKsnafEncodedByBase64() {
        return isConfigInProp(UT_KSNAF_USE_BASE64_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_KSNAF_USE_BASE64 : this.mUtKsnafUseBase64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtPreferOption() {
        return this.mUtPreferOption;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized int getUtGbaType() {
        return isConfigInProp(UT_GBA_TYPE_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_INT) ? UT_GBA_TYPE : this.mUtGbaType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtBearerType() {
        String utBearerType;
        int utBearerTypeInt;
        utBearerType = SystemProperties.get(UT_BEARER_TYPE_PROP_KEY, NULL_STRING_VALUE);
        mylogd("getUtBearerType, utBearerType " + utBearerType);
        utBearerTypeInt = this.mUtBearerType;
        try {
            utBearerTypeInt = Integer.parseInt(utBearerType);
        } catch (NumberFormatException e) {
            myloge("getUtBearerType : NumberFormatException ");
        }
        return !NULL_STRING_VALUE.equals(utBearerType) ? utBearerTypeInt : this.mUtBearerType;
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
                mylogd("initDcFailCause code:" + code + " cause : " + cause);
                i2++;
                i++;
            }
        }
        return failCauses;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isDcFailCauseForNonVolteSim(String cause) {
        if (this.mDcFailCause != null && this.mDcFailCause.length != 0) {
            return isContainInIMSConfig(this.mDcFailCause, cause);
        }
        logw("mDcFailCause is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isDcFailCauseToReleaseApn(String cause) {
        if (this.mDcFailCauseToReleaseApn != null && this.mDcFailCauseToReleaseApn.length != 0) {
            return isContainInIMSConfig(this.mDcFailCauseToReleaseApn, cause);
        }
        logw("isDcFailCauseToReleaseApn fasle mDcFailCauseToReleaseApn is null.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isUtUseTmpi() {
        return isConfigInProp(UT_USE_TMPI_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_BOOL) ? UT_USE_TMPI : this.mUtUseTmpi;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getUtX3gppIntendId() {
        return isConfigInProp(UT_X_3GPP_INTEND_ID_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING) ? UT_X_3GPP_INTEND_ID : this.mUtX3gppIntendId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtIMPUFromNetwork() {
        return getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSubId], this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtIMPU(Context context) {
        if (isConfigInProp(UT_IMPU_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
            mylogd("use impu from prop, impu=" + hiddenPrivacyInfo(UT_IMPU, 2));
            return UT_IMPU;
        }
        if (!NULL_STRING_VALUE.equals(this.mUtIMPU)) {
            mylogd("use impu from xml, impu=" + hiddenPrivacyInfo(this.mUtIMPU, 2));
            return this.mUtIMPU;
        }
        String impu = getSharedPreferences(IMPU_FROM_NETWORK_KEY[this.mSubId], context);
        if (impu != null) {
            mylogd("use impu from network, impu=" + hiddenPrivacyInfo(impu, 2));
            return impu;
        }
        String impu2 = getSharedPreferences(IMPU_FROM_SIM_IMSI_KEY[this.mSubId], context);
        if (impu2 != null) {
            mylogd("use impu from imsi, impu=" + hiddenPrivacyInfo(impu2, 2));
            return impu2;
        }
        myloge("pick impu fail.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getUtIMPI() {
        String sImpi;
        if (isConfigInProp(UT_IMPI_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
            mylogd("use impi from prop, impi=" + hiddenPrivacyInfo(UT_IMPI, 2));
            return UT_IMPI;
        }
        if (!NULL_STRING_VALUE.equals(this.mUtIMPI)) {
            mylogd("use impi from xml, impi=" + hiddenPrivacyInfo(this.mUtIMPI, 2));
            return this.mUtIMPI;
        }
        if (NULL_STRING_VALUE.equals(this.mImpiDomain) && this.mImpiFromSim != null) {
            mylogd("impi from sim already exist, impi=" + hiddenPrivacyInfo(this.mImpiFromSim, 2));
            return this.mImpiFromSim;
        }
        if (this.mSpliceMncMcc != null && this.mCurrentIMSI != null) {
            mylogd("begin to assemble impi from imsi, mSpliceMncMcc=" + this.mSpliceMncMcc);
            if (!NULL_STRING_VALUE.equals(this.mImpiDomain)) {
                sImpi = this.mCurrentIMSI + "@" + this.mImpiDomain;
            } else {
                sImpi = this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            }
            this.mImpiFromSim = sImpi;
            mylogd("after assemble, impi=" + hiddenPrivacyInfo(sImpi, 2));
            return sImpi;
        }
        myloge("getImpiFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
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
        return this.mMissedCallTips;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isMissedCallDisplay() {
        return this.mMissedCallDisplay;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized boolean isMissedCallTipsDelay() {
        return this.mMissedCallTipsDelay;
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
        return this.mCheckServiceWhenIncomingCall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getIMSI() {
        return this.mCurrentIMSI;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setIMSI(String imsi) {
        this.mCurrentIMSI = imsi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isIMPUConfigured() {
        if (!isConfigInProp(UT_IMPU_PROP_KEY, CONFIG_TYPE.CONFIG_TYPE_STRING)) {
            if (NULL_STRING_VALUE.equals(this.mUtIMPU)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setCurrentImsi(String imsi) {
        this.mCurrentIMSI = imsi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setSpliceMncMcc(String spliceMncMcc) {
        this.mSpliceMncMcc = spliceMncMcc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setImpiFromSIM(String impi) {
        this.mImpiFromSim = impi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setDomainNameFromSIM(String domainName) {
        this.mDomainNameFromSim = domainName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setBsfAddrFromSIM(String bsfAddr) {
        this.mBsfAddrFromSim = bsfAddr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setNafAddrFromSIM(String nsfAddr) {
        this.mXcapRootURIFromSim = nsfAddr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String spliceMncMcc() {
        String spMncMcc;
        String simOperator = getSimOperator();
        if (simOperator != null) {
            mylogd("simOperator=" + simOperator);
            if (5 == simOperator.length()) {
                spMncMcc = "mnc0" + simOperator.substring(3, 5);
            } else if (6 == simOperator.length()) {
                spMncMcc = "mnc" + simOperator.substring(3, 6);
            } else {
                myloge("spliceMncMcc error: Get wrong MCC MNC");
                return null;
            }
            String spMncMcc2 = spMncMcc + ".mcc" + simOperator.substring(0, 3);
            mylogd("spMCCMNC = " + spMncMcc2);
            return spMncMcc2;
        }
        myloge("spliceMncMcc error: Cannot get sim MCC MNC ");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getSimOperator() {
        IccRecords r;
        int phoneId = ImsCallProviderUtils.getSubId(this.mSubId);
        r = UiccController.getInstance().getIccRecords(phoneId, 1);
        return r != null ? r.getOperatorNumeric() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String getIccId() {
        IccRecords r;
        int phoneId = ImsCallProviderUtils.getSubId(this.mSubId);
        r = UiccController.getInstance().getIccRecords(phoneId, 1);
        return r != null ? r.getIccId() : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getImpuFromSIM() {
        if (this.mSpliceMncMcc != null && this.mCurrentIMSI != null) {
            String sIMPU = "sip:" + this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            mylogd("assemble IMPU from SIM, sIMPU = " + hiddenPrivacyInfo(sIMPU, 2));
            return sIMPU;
        }
        myloge("getSimIMPU error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getImpiFromSIM() {
        if (this.mImpiFromSim != null) {
            return this.mImpiFromSim;
        }
        if (this.mSpliceMncMcc != null && this.mCurrentIMSI != null) {
            String sImpi = this.mCurrentIMSI + "@ims." + this.mSpliceMncMcc + ".3gppnetwork.org";
            this.mImpiFromSim = sImpi;
            mylogd("sImpi = " + hiddenPrivacyInfo(sImpi, 2));
            return sImpi;
        }
        myloge("getImpiFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    synchronized String getBsfAddrFromSIM() {
        if (this.mBsfAddrFromSim != null) {
            return this.mBsfAddrFromSim;
        }
        if (this.mSpliceMncMcc != null) {
            String sBsf = "bsf." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
            this.mBsfAddrFromSim = sBsf;
            return sBsf;
        }
        myloge("getBsfAddrFromSIM error: Cannot splice sim MCC MNC or can't get imsi from sim.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean isHangUpWhenLostNet() {
        return this.mHangUpWhenLostNet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String[] getUtParamsCfg() {
        return this.mUtParamsCfg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtBsfAuthBeUsed() {
        return this.mUtBsfAuthBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getOIRSourceMode() {
        return this.mUtOIRSourceMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getOIRDefaultMode() {
        return this.mUtOIRDefaultMode;
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
        return this.mUt409ShowPhrase;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtGbaLifetimeBeUsed() {
        return this.mUtGbaLifetimeBeUsed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getUtVoWifiDelayEndTime() {
        return this.mUtVoWifiDelayEndTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isUtQueryDnsIgnoreNetId() {
        return this.mUtQueryDnsIgnoreNetId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized String getSharedPreferences(String spKey, Context context) {
        mylogd("enter getSharedPreferences, spKey=" + spKey);
        String valueInMap = this.mSpValueMap.get(spKey);
        if (valueInMap != null) {
            mylogd("value is already stored in map.");
            return valueInMap;
        }
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        String sKey = sp.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], NULL_STRING_VALUE);
        String sParam = sp.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], NULL_STRING_VALUE);
        String spValueEncrypt = sp.getString(spKey, NULL_STRING_VALUE);
        String valueInSp = decrypt(spValueEncrypt, sKey, sParam);
        this.mSpValueMap.put(spKey, valueInSp);
        return valueInSp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setSharedPreferences(String spKey, String spValue, Context context) {
        mylogd("enter setSharedPreferences, spKey=" + spKey);
        String valueInMap = this.mSpValueMap.get(spKey);
        if (valueInMap != null && valueInMap.equals(spValue)) {
            mylogd("value is not changed, need not to store in SP again.");
            return;
        }
        this.mSpValueMap.put(spKey, spValue);
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor editor = sp.edit();
        String spValueEncrypt = encrypt(spValue, context);
        editor.putString(spKey, spValueEncrypt);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized boolean getBoolFromSP(String spKey, Context context, boolean defValue) {
        SharedPreferences sp;
        sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        return sp.getBoolean(spKey, defValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsConfigImpl
    public synchronized void setBoolToSP(String spKey, boolean spValue, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.putBoolean(spKey, spValue);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int getIntFromSP(String spKey, Context context, int defValue) {
        SharedPreferences sp;
        sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        return sp.getInt(spKey, defValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setIntToSP(String spKey, int spValue, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.putInt(spKey, spValue);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void readCarrierConfig(Context context) {
        if (FEATURE_VOLTE_DYN) {
            mylogd("readCarrierConfig begin");
            CarrierConfigManager cfgMgr = (CarrierConfigManager) context.getSystemService(Context.CARRIER_CONFIG_SERVICE);
            int subId = ImsCallProviderUtils.getSubId(this.mSubId);
            PersistableBundle b = cfgMgr.getConfigForSubId(subId);
            readBoolCarrierConfig(b);
            readIntCarrierConfig(b);
            readStringCarrierConfig(b);
            try {
                this.mCardTypePreferToUseUT = b.get(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY) != null ? stringToIntArray(b.getString(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY)) : this.mDefCardTypePreferToUseUT;
                this.mSSForbidFallbackCS = b.get(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY) != null ? stringToIntArray(b.getString(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY)) : this.mDefSSForbidFallbackCS;
                this.mSSTypeUseCsOnly = b.get(SS_TYPE_USE_CS_ONLY_XML_KEY) != null ? stringToIntArray(b.getString(SS_TYPE_USE_CS_ONLY_XML_KEY)) : this.mDefSSTypeUseCsOnly;
                this.mUtRetryInterval = b.get(UT_RETRY_INTERVAL_XML_KEY) != null ? stringToIntArray(b.getString(UT_RETRY_INTERVAL_XML_KEY)) : this.mDefUtRetryInterval;
                this.mCardMccMncPreferToUseUt = b.get(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY) != null ? stringToStringArray(b.getString(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY)) : this.mDefCardMccMncPreferToUseUt;
                this.mNotSupportMMICode = b.get(SS_NOT_SUPPORT_MMI_CODE_XML_KEY) != null ? stringToStringArray(b.getString(SS_NOT_SUPPORT_MMI_CODE_XML_KEY)) : this.mDefNotSupportMMICode;
                this.mUtParamsCfg = b.get(UT_PARAMS_CONFIG_XML_KEY) != null ? stringToStringArray(b.getString(UT_PARAMS_CONFIG_XML_KEY)) : this.mDefUtParamsCfg;
                this.mDcFailCode = b.get(DC_FAIL_CAUSE_XML_KEY) != null ? stringToIntArray(b.getString(DC_FAIL_CAUSE_XML_KEY)) : this.mDefDcFailCode;
                this.mDcFailCause = getDcFailCause(this.mDcFailCode);
                this.mDcFailCodeToReleaseApn = b.get(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY) != null ? stringToIntArray(b.getString(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY)) : null;
                this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
            } catch (RuntimeException e) {
                myloge("RuntimeException");
            } catch (Exception e2) {
                myloge("Exception");
            }
            resolveCallWaitingMode();
            this.mIsProtocolIR92V10orGreater = getParamFromUtParamsCfg(17) == 1;
            this.mUtGbaLifetimeBeUsed = getParamFromUtParamsCfg(19) == 1;
            mylogd("readCarrierConfig end");
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
                    myloge("getParamFromUtParamsCfg : config param not right");
                } else {
                    try {
                        int utParam0 = Integer.parseInt(utParamsCfg[0]);
                        int utParam1 = Integer.parseInt(utParamsCfg[1]);
                        if (key == utParam0) {
                            result = utParam1;
                            break;
                        }
                    } catch (NumberFormatException e) {
                        myloge("getParamFromUtParamsCfg : NumberFormatException ");
                    }
                }
                i++;
            }
        }
        mylogd("getParamFromUtParamsCfg: key =" + key + " , result = " + result);
        return result;
    }

    public int getUtForbiddenTimer() {
        return this.mUtForbiddenTimer;
    }

    public boolean isProtocolIR92V10orGreater() {
        return this.mIsProtocolIR92V10orGreater;
    }

    private void readStringCarrierConfig(PersistableBundle b) {
        if (b == null) {
            return;
        }
        this.mUtNafSrvAddr = b.get(UT_NAF_SRV_ADDR_XML_KEY) != null ? b.getString(UT_NAF_SRV_ADDR_XML_KEY) : this.mDefUtNafSrvAddr;
        this.mUtBsfSrvAddr = b.get(UT_BSF_SRV_ADDR_XML_KEY) != null ? b.getString(UT_BSF_SRV_ADDR_XML_KEY) : this.mDefUtBsfSrvAddr;
        this.mUtX3gppIntendId = b.get(UT_X_3GPP_INTEND_ID_XML_KEY) != null ? b.getString(UT_X_3GPP_INTEND_ID_XML_KEY) : this.mDefUtX3gppIntendId;
        this.mUtIMPU = b.get(UT_IMPU_XML_KEY) != null ? b.getString(UT_IMPU_XML_KEY) : this.mDefUtIMPU;
        this.mUtIMPI = b.get(UT_IMPI_XML_KEY) != null ? b.getString(UT_IMPI_XML_KEY) : this.mDefUtIMPI;
        this.mUtXcapRootUri = b.get(UT_XCAP_ROOT_XML_KEY) != null ? b.getString(UT_XCAP_ROOT_XML_KEY) : this.mDefUtXcapRootUri;
        this.mImpiDomain = b.get(IMPI_DOMAIN) != null ? b.getString(IMPI_DOMAIN) : this.mDefImpiDomain;
    }

    private void readIntCarrierConfig(PersistableBundle b) {
        if (b == null) {
            return;
        }
        this.mDefaultNoReplyTimer = b.get(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? b.getInt(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNoReplyTimer;
        this.mContentTypeMode = b.get(CONTENT_TYPE_MODE_XML_KEY) != null ? b.getInt(CONTENT_TYPE_MODE_XML_KEY) : this.mDefContentTypeMode;
        this.mCallWaitingMode = b.get(CALL_WAITING_MODE_XML_KEY) != null ? b.getInt(CALL_WAITING_MODE_XML_KEY) : this.mDefCallWaitingMode;
        this.mUtNafPort = b.get(UT_NAF_PORT_XML_KEY) != null ? b.getInt(UT_NAF_PORT_XML_KEY) : this.mDefUtNafPort;
        this.mUtBsfPort = b.get(UT_BSF_PORT_XML_KEY) != null ? b.getInt(UT_BSF_PORT_XML_KEY) : this.mDefUtBsfPort;
        this.mUtGbaType = b.get(UT_GBA_TYPE_XML_KEY) != null ? b.getInt(UT_GBA_TYPE_XML_KEY) : this.mDefUtGbaType;
        this.mDefaultNeedNoReplyTimer = b.get(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) != null ? b.getInt(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY) : this.mDefDefaultNeedNoReplyTimer;
        this.mUtBearerType = b.get(UT_BEARER_TYPE_XML_KEY) != null ? b.getInt(UT_BEARER_TYPE_XML_KEY) : this.mDefUtBearerType;
        this.mMissedCallTipsRingTimer = b.get(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) != null ? b.getInt(MISSED_CALL_TIPS_RING_TIMER_XML_KEY) : this.mDefMissedCallTipsRingTimer;
        this.mMissedCallTipsDelayTimer = b.get(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) != null ? b.getInt(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY) : this.mDefMissedCallTipsDelayTimer;
        this.mUtUseApn = b.get(UT_USE_APN_XML_KEY) != null ? b.getInt(UT_USE_APN_XML_KEY) : this.mDefUtUseApn;
        this.mUtOIRSourceMode = b.get(UT_OIR_SOURCE_MODE_XML_KEY) != null ? b.getInt(UT_OIR_SOURCE_MODE_XML_KEY) : this.mDefUtOIRSourceMode;
        this.mUtOIRDefaultMode = b.get(UT_OIR_DEFAULT_MODE_XML_KEY) != null ? b.getInt(UT_OIR_DEFAULT_MODE_XML_KEY) : this.mDefUtOIRDefaultMode;
        this.mUtImsDataDelayEndTime = b.get(IMS_DATA_DELAY_END_XML_KEY) != null ? b.getInt(IMS_DATA_DELAY_END_XML_KEY) : this.mDefUtImsDataDelayEndTime;
        this.mUtVoWifiDelayEndTime = b.get(UT_VOWIFI_DELAY_END_TIME_XML_KEY) != null ? b.getInt(UT_VOWIFI_DELAY_END_TIME_XML_KEY) : this.mDefUtVoWifiDelayEndTime;
        this.mUtForbiddenTimer = b.get(UT_FORBIDDEN_TIME_XML_KEY) != null ? b.getInt(UT_FORBIDDEN_TIME_XML_KEY) : this.mDefaultUtForbiddenTimer;
        this.mUtPreferOption = b.get(UT_PREFER_OPTION_KEY) != null ? b.getInt(UT_PREFER_OPTION_KEY) : this.mDefUtPreferOption;
    }

    private void readBoolCarrierConfig(PersistableBundle b) {
        if (b == null) {
            return;
        }
        this.mUtCSBeUsed = b.get(UT_CS_BE_USED_XML_KEY) != null ? b.getBoolean(UT_CS_BE_USED_XML_KEY) : this.mDefUtCSBeUsed;
        this.mCFNRcChangeWithCFNL = b.get(CFNRC_CHANGE_WITH_CFNL_XML_KEY) != null ? b.getBoolean(CFNRC_CHANGE_WITH_CFNL_XML_KEY) : this.mDefCFNRcChangeWithCFNL;
        this.mImsStateFollowVoiceDomain = b.get(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) != null ? b.getBoolean(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY) : this.mDefImsStateFollowVoiceDomain;
        this.mUtHrsLog = b.get(UT_HRS_LOG_XML_KEY) != null ? b.getBoolean(UT_HRS_LOG_XML_KEY) : this.mDefUtHrsLog;
        this.mUtNafUseHttps = b.get(UT_NAF_USE_HTTPS_XML_KEY) != null ? b.getBoolean(UT_NAF_USE_HTTPS_XML_KEY) : this.mDefUtNafUseHttps;
        this.mUtBsfUseHttps = b.get(UT_BSF_USE_HTTPS_XML_KEY) != null ? b.getBoolean(UT_BSF_USE_HTTPS_XML_KEY) : this.mDefUtBsfUseHttps;
        this.mUtUseNodeSelector = b.get(UT_USE_NODE_SELECTOR_XML_KEY) != null ? b.getBoolean(UT_USE_NODE_SELECTOR_XML_KEY) : this.mDefUtUseNodeSelector;
        this.mUtUseXcapNamespace = b.get(UT_USE_XCAP_NAMESPACE_XML_KEY) != null ? b.getBoolean(UT_USE_XCAP_NAMESPACE_XML_KEY) : this.mDefUtUseXcapNamespace;
        this.mUtKsnafUseBase64 = b.get(UT_KSNAF_USE_BASE64_XML_KEY) != null ? b.getBoolean(UT_KSNAF_USE_BASE64_XML_KEY) : this.mDefUtKsnafUseBase64;
        this.mUtUseTmpi = b.get(UT_USE_TMPI_XML_KEY) != null ? b.getBoolean(UT_USE_TMPI_XML_KEY) : this.mDefUtUseTmpi;
        this.mMissedCallTips = b.get(MISSED_CALL_TIPS_XML_KEY) != null ? b.getBoolean(MISSED_CALL_TIPS_XML_KEY) : this.mDefMissedCallTips;
        this.mMissedCallDisplay = b.get(MISSED_CALL_DISPLAY_XML_KEY) != null ? b.getBoolean(MISSED_CALL_DISPLAY_XML_KEY) : this.mDefMissedCallDisplay;
        this.mMissedCallTipsDelay = b.get(MISSED_CALL_TIPS_DELAY_XML_KEY) != null ? b.getBoolean(MISSED_CALL_TIPS_DELAY_XML_KEY) : this.mDefMissedCallTipsDelay;
        this.mCheckServiceWhenIncomingCall = b.get(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) != null ? b.getBoolean(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY) : this.mDefCheckServiceWhenIncomingCall;
        this.mUtForbiddenWhenVolteSwitchOff = b.get(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) != null ? b.getBoolean(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF) : this.mDefUtForbiddenWhenVolteSwitchOff;
        this.mImsSsBeUsed = b.get(IMS_SS_BE_USED_XML_KEY) != null ? b.getBoolean(IMS_SS_BE_USED_XML_KEY) : this.mDefImsSsBeUsed;
        this.mPreferToUseUt = b.get(PREFER_TO_USE_UT_XML_KEY) != null ? b.getBoolean(PREFER_TO_USE_UT_XML_KEY) : this.mDefPreferToUseUt;
        this.mUtCanUseWifi = b.get(UT_CAN_USE_WIFI_XML_KEY) != null ? b.getBoolean(UT_CAN_USE_WIFI_XML_KEY) : this.mDefUtCanUseWifi;
        this.mHangUpWhenLostNet = b.get(HANG_UP_WHEN_LOST_NET) != null ? b.getBoolean(HANG_UP_WHEN_LOST_NET) : this.mDefHangUpWhenLostNet;
        this.mUtBsfAuthBeUsed = b.get(UT_BSF_AUTH_BE_USED_XML_KEY) != null ? b.getBoolean(UT_BSF_AUTH_BE_USED_XML_KEY) : this.mDefUtBsfAuthBeUsed;
        this.mVowifiUtSwitch = b.get(VOWIFI_UT_SWITCH_XML_KEY) != null ? b.getBoolean(VOWIFI_UT_SWITCH_XML_KEY) : this.mDefaultVowifiUtSwitch;
        this.mBuildVersionCarrier = b.get(CARRIER_BUILD_VERSION_BOOL) != null ? b.getBoolean(CARRIER_BUILD_VERSION_BOOL) : this.mDefBuildVersionCarrier;
        this.mUse403ForLocalCW = b.get(USE_403_FOR_LOCAL_CW) != null ? b.getBoolean(USE_403_FOR_LOCAL_CW) : this.mDefUse403ForLocalCW;
        this.mUt409ShowPhrase = b.get(UT_409_SHOW_PHRASE) != null ? b.getBoolean(UT_409_SHOW_PHRASE) : this.mDefUt409ShowPhrase;
        this.mCarrierSupportVolte = b.get(CARRIER_SUPPORT_VOLTE) != null ? b.getBoolean(CARRIER_SUPPORT_VOLTE) : false;
        this.mIsUseMultCondition = b.get(UT_USE_MULTI_CF) != null ? b.getBoolean(UT_USE_MULTI_CF) : this.mDefUseMultCondition;
        this.mUtQueryDnsIgnoreNetId = b.get(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) != null ? b.getBoolean(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY) : this.mDefUtQueryDnsIgnoreNetId;
        this.mCarrierSupportVoWifi = b.get(CARRIER_SUPPORT_VOWIFI) != null ? b.getBoolean(CARRIER_SUPPORT_VOWIFI) : false;
        this.mVolteLowbatteryEndcall = b.get(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) != null ? b.getBoolean(VOLTE_LOWBATTERY_ENDCALL_XML_KEY) : this.mDefVolteLowbatteryEndcall;
        this.mIsEmergencyUnderWifi = b.get(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) != null ? b.getBoolean(KEEP_VOWIFI_FEATURE_UNDER_EMERGENCYCALL) : this.mDefEmergencyUnderWifi;
        this.mUtPreferVowifiWhenVowifiReg = b.get(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) != null ? b.getBoolean(UT_PREFER_VOWIFI_WHEN_VOWIFI_REG_KEY) : this.mDefUtPreferVowifiWhenVowifiReg;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:

        if (r3 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:

        if (r3 == null) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void init(Context context) {
        File file = null;
        mylogd("init enter");
        InputStream is = null;
        XmlPullParser parser = null;
        boolean result = true;
        XmlResourceParser xmlParser = null;

        try {

            mylogd("ImsConfig load from R.xml.hw_ims_config");
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
                myloge("load R.xml.hw_ims_config caught");
            }


            try {
                resolveCallWaitingMode();
            } catch (Exception e4) {
                myloge("can't resolve call waiting mode");
            }
            mylogd("init finish");

        } catch (Throwable th2) {
            myloge("Exception failed - error is : " + th2.toString());
        }
    }

    private String encrypt(String spValue, Context context) {
        String sKey;
        String sParam;
        if (spValue == null) {
            mylogd("spValue is null, do not encrypt");
            return null;
        }
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor editor = sp.edit();
        String sKey2 = sp.getString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], NULL_STRING_VALUE);
        String sParam2 = sp.getString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], NULL_STRING_VALUE);
        if (sKey2.equals(NULL_STRING_VALUE) || sParam2.equals(NULL_STRING_VALUE)) {
            mylogd("create AES key");
            sKey = EncryptUtils.generateRandomString(256);
            sParam = EncryptUtils.generateRandomString(16);
            editor.putString(SHARED_PREFERENCES_PROFILE_KEY[this.mSubId], EncryptUtils.encodeAESKey(sKey, 256));
            editor.putString(SHARED_PREFERENCES_PROFILE_PARAM[this.mSubId], EncryptUtils.encodeAESParam(sKey, sParam));
            editor.apply();
        } else {
            sKey = EncryptUtils.decodeAESKey(sKey2, 256);
            if (sKey == null || (sParam = EncryptUtils.decodeAESParam(sKey, sParam2)) == null) {
                return null;
            }
        }
        return AESEncrypter.encrypt(spValue, sKey, sParam);
    }

    private String decrypt(String spValueEncrypt, String sKey, String sParam) {
        String sParam2;
        if (spValueEncrypt.equals(NULL_STRING_VALUE) || sKey.equals(NULL_STRING_VALUE) || sParam.equals(NULL_STRING_VALUE)) {
            mylogd("value or key is not exist");
            return null;
        }
        String sKey2 = EncryptUtils.decodeAESKey(sKey, 256);
        if (sKey2 == null || (sParam2 = EncryptUtils.decodeAESParam(sKey2, sParam)) == null) {
            return null;
        }
        return AESEncrypter.decrypt(spValueEncrypt, sKey2, sParam2);
    }

    private final boolean isStringEqual(String cfgTag, String xmlTag) {
        int cfgLen = cfgTag.length();
        if (cfgLen != xmlTag.length()) {
            return false;
        }
        for (int i = cfgLen - 1; i >= 0; i--) {
            if (cfgTag.charAt(i) != xmlTag.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    private final void startPositionOfIMSConfigXML(XmlPullParser parser, String firstElementName) throws XmlPullParserException, IOException {
        int type;
        do {
            type = parser.next();
            if (type == 2) {
                break;
            }
        } while (type != 1);
        if (type != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (parser.getName() == null || !parser.getName().equals(firstElementName)) {
            throw new XmlPullParserException("Unexpected start tag: found " + parser.getName() + ", expected " + firstElementName);
        }
    }

    private final void nextElement(XmlPullParser parser) throws XmlPullParserException, IOException {
        int type;
        do {
            type = parser.next();
            if (type == 2) {
                return;
            }
        } while (type != 1);
    }

    private final synchronized void handleBoolTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleBoolTypeConfigPartOne(value, text);
            handleBoolTypeConfigPartTwo(value, text);
        } catch (RuntimeException e) {
            myloge("handleBoolTypeConfig RuntimeException");
        } catch (Exception e2) {
            myloge("handleBoolTypeConfig Exception");
        }
    }

    private final synchronized void handleBoolTypeConfigPartOne(String value, String text) {
        if (isStringEqual(UT_CS_BE_USED_XML_KEY, value)) {
            boolean equalsIgnoreCase = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtCSBeUsed = equalsIgnoreCase;
            this.mUtCSBeUsed = equalsIgnoreCase;
        } else if (isStringEqual(CFNRC_CHANGE_WITH_CFNL_XML_KEY, value)) {
            boolean equalsIgnoreCase2 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefCFNRcChangeWithCFNL = equalsIgnoreCase2;
            this.mCFNRcChangeWithCFNL = equalsIgnoreCase2;
        } else if (isStringEqual(IMS_STATE_FOLLOW_VOICE_DOMAIN_XML_KEY, value)) {
            boolean equalsIgnoreCase3 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefImsStateFollowVoiceDomain = equalsIgnoreCase3;
            this.mImsStateFollowVoiceDomain = equalsIgnoreCase3;
        } else if (isStringEqual(UT_HRS_LOG_XML_KEY, value)) {
            boolean equalsIgnoreCase4 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtHrsLog = equalsIgnoreCase4;
            this.mUtHrsLog = equalsIgnoreCase4;
        } else if (isStringEqual(UT_NAF_USE_HTTPS_XML_KEY, value)) {
            boolean equalsIgnoreCase5 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtNafUseHttps = equalsIgnoreCase5;
            this.mUtNafUseHttps = equalsIgnoreCase5;
        } else if (isStringEqual(UT_BSF_USE_HTTPS_XML_KEY, value)) {
            boolean equalsIgnoreCase6 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtBsfUseHttps = equalsIgnoreCase6;
            this.mUtBsfUseHttps = equalsIgnoreCase6;
        } else if (isStringEqual(UT_USE_NODE_SELECTOR_XML_KEY, value)) {
            boolean equalsIgnoreCase7 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtUseNodeSelector = equalsIgnoreCase7;
            this.mUtUseNodeSelector = equalsIgnoreCase7;
        } else if (isStringEqual(UT_USE_XCAP_NAMESPACE_XML_KEY, value)) {
            boolean equalsIgnoreCase8 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtUseXcapNamespace = equalsIgnoreCase8;
            this.mUtUseXcapNamespace = equalsIgnoreCase8;
        } else if (isStringEqual(UT_KSNAF_USE_BASE64_XML_KEY, value)) {
            boolean equalsIgnoreCase9 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtKsnafUseBase64 = equalsIgnoreCase9;
            this.mUtKsnafUseBase64 = equalsIgnoreCase9;
        } else if (isStringEqual(UT_USE_TMPI_XML_KEY, value)) {
            boolean equalsIgnoreCase10 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtUseTmpi = equalsIgnoreCase10;
            this.mUtUseTmpi = equalsIgnoreCase10;
        }
    }

    private final synchronized void handleBoolTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(MISSED_CALL_TIPS_XML_KEY, value)) {
            boolean equalsIgnoreCase = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefMissedCallTips = equalsIgnoreCase;
            this.mMissedCallTips = equalsIgnoreCase;
        } else if (isStringEqual(MISSED_CALL_DISPLAY_XML_KEY, value)) {
            boolean equalsIgnoreCase2 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefMissedCallDisplay = equalsIgnoreCase2;
            this.mMissedCallDisplay = equalsIgnoreCase2;
        } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_XML_KEY, value)) {
            boolean equalsIgnoreCase3 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefMissedCallTipsDelay = equalsIgnoreCase3;
            this.mMissedCallTipsDelay = equalsIgnoreCase3;
        } else if (isStringEqual(CHECK_SERVICE_WHEN_INCOMING_CALL_XML_KEY, value)) {
            boolean equalsIgnoreCase4 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefCheckServiceWhenIncomingCall = equalsIgnoreCase4;
            this.mCheckServiceWhenIncomingCall = equalsIgnoreCase4;
        } else if (isStringEqual(UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF, value)) {
            boolean equalsIgnoreCase5 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtForbiddenWhenVolteSwitchOff = equalsIgnoreCase5;
            this.mUtForbiddenWhenVolteSwitchOff = equalsIgnoreCase5;
        } else if (isStringEqual(IMS_SS_BE_USED_XML_KEY, value)) {
            boolean equalsIgnoreCase6 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefImsSsBeUsed = equalsIgnoreCase6;
            this.mImsSsBeUsed = equalsIgnoreCase6;
        } else if (isStringEqual(HANG_UP_WHEN_LOST_NET, value)) {
            boolean equalsIgnoreCase7 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefHangUpWhenLostNet = equalsIgnoreCase7;
            this.mHangUpWhenLostNet = equalsIgnoreCase7;
        } else if (isStringEqual(UT_CAN_USE_WIFI_XML_KEY, value)) {
            boolean equalsIgnoreCase8 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtCanUseWifi = equalsIgnoreCase8;
            this.mUtCanUseWifi = equalsIgnoreCase8;
        } else if (isStringEqual(UT_BSF_AUTH_BE_USED_XML_KEY, value)) {
            boolean equalsIgnoreCase9 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtBsfAuthBeUsed = equalsIgnoreCase9;
            this.mUtBsfAuthBeUsed = equalsIgnoreCase9;
        } else if (isStringEqual(UT_QUERY_DNS_IGNORE_NET_ID_XML_KEY, value)) {
            boolean equalsIgnoreCase10 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefUtQueryDnsIgnoreNetId = equalsIgnoreCase10;
            this.mUtQueryDnsIgnoreNetId = equalsIgnoreCase10;
        } else if (isStringEqual(VOLTE_LOWBATTERY_ENDCALL_XML_KEY, value)) {
            boolean equalsIgnoreCase11 = TRUE_VALUE.equalsIgnoreCase(text);
            this.mDefVolteLowbatteryEndcall = equalsIgnoreCase11;
            this.mVolteLowbatteryEndcall = equalsIgnoreCase11;
        }
    }

    private final synchronized void handleIntTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleIntTypeConfigPartOne(value, text);
            handleIntTypeConfigPartTwo(value, text);
        } catch (RuntimeException e) {
            myloge("handleIntTypeConfig RuntimeException");
        } catch (Exception e2) {
            myloge("handleIntTypeConfig Exception");
        }
    }

    private final synchronized void handleIntTypeConfigPartOne(String value, String text) {
        if (isStringEqual(SET_DEFAULT_NO_REPLY_TIMER_XML_KEY, value)) {
            try {
                int parseInt = Integer.parseInt(text);
                this.mDefDefaultNoReplyTimer = parseInt;
                this.mDefaultNoReplyTimer = parseInt;
            } catch (NumberFormatException e) {
                myloge("handleIntTypeConfigPartOne :  mDefaultNoReplyTimer NumberFormatException");
                this.mDefaultNoReplyTimer = this.mDefDefaultNoReplyTimer;
            }
        } else if (isStringEqual(CONTENT_TYPE_MODE_XML_KEY, value)) {
            try {
                int parseInt2 = Integer.parseInt(text);
                this.mDefContentTypeMode = parseInt2;
                this.mContentTypeMode = parseInt2;
            } catch (NumberFormatException e2) {
                myloge("handleIntTypeConfigPartOne : mContentTypeMode NumberFormatException");
                this.mContentTypeMode = this.mDefContentTypeMode;
            }
        } else if (isStringEqual(CALL_WAITING_MODE_XML_KEY, value)) {
            try {
                int parseInt3 = Integer.parseInt(text);
                this.mDefCallWaitingMode = parseInt3;
                this.mCallWaitingMode = parseInt3;
            } catch (NumberFormatException e3) {
                myloge("handleIntTypeConfigPartOne : mCallWaitingMode NumberFormatException");
                this.mCallWaitingMode = this.mDefCallWaitingMode;
            }
        } else if (isStringEqual(UT_NAF_PORT_XML_KEY, value)) {
            try {
                int parseInt4 = Integer.parseInt(text);
                this.mDefUtNafPort = parseInt4;
                this.mUtNafPort = parseInt4;
            } catch (NumberFormatException e4) {
                myloge("handleIntTypeConfigPartOne : mUtNafPort NumberFormatException");
                this.mUtNafPort = this.mDefUtNafPort;
            }
        } else if (isStringEqual(UT_BSF_PORT_XML_KEY, value)) {
            try {
                int parseInt5 = Integer.parseInt(text);
                this.mDefUtBsfPort = parseInt5;
                this.mUtBsfPort = parseInt5;
            } catch (NumberFormatException e5) {
                myloge("handleIntTypeConfigPartOne : mUtBsfPort NumberFormatException");
                this.mUtBsfPort = this.mDefUtBsfPort;
            }
        } else if (isStringEqual(UT_GBA_TYPE_XML_KEY, value)) {
            try {
                int parseInt6 = Integer.parseInt(text);
                this.mDefUtGbaType = parseInt6;
                this.mUtGbaType = parseInt6;
            } catch (NumberFormatException e6) {
                myloge("handleIntTypeConfigPartOne : mUtGbaType NumberFormatException");
                this.mUtGbaType = this.mDefUtGbaType;
            }
        } else if (isStringEqual(UT_BEARER_TYPE_XML_KEY, value)) {
            try {
                int parseInt7 = Integer.parseInt(text);
                this.mDefUtBearerType = parseInt7;
                this.mUtBearerType = parseInt7;
            } catch (NumberFormatException e7) {
                myloge("handleIntTypeConfigPartOne : mUtBearerType NumberFormatException");
                this.mUtBearerType = this.mDefUtBearerType;
            }
        }
    }

    private final synchronized void handleIntTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(MISSED_CALL_TIPS_RING_TIMER_XML_KEY, value)) {
            try {
                int parseInt = Integer.parseInt(text);
                this.mDefMissedCallTipsRingTimer = parseInt;
                this.mMissedCallTipsRingTimer = parseInt;
            } catch (NumberFormatException e) {
                myloge("handleIntTypeConfigPartTwo : mMissedCallTipsRingTimer NumberFormatException");
                this.mMissedCallTipsRingTimer = this.mDefMissedCallTipsRingTimer;
            }
        } else if (isStringEqual(MISSED_CALL_TIPS_DELAY_TIMER_XML_KEY, value)) {
            try {
                int parseInt2 = Integer.parseInt(text);
                this.mDefMissedCallTipsDelayTimer = parseInt2;
                this.mMissedCallTipsDelayTimer = parseInt2;
            } catch (NumberFormatException e2) {
                myloge("handleIntTypeConfigPartTwo : mMissedCallTipsDelayTimer NumberFormatException");
                this.mMissedCallTipsDelayTimer = this.mDefMissedCallTipsDelayTimer;
            }
        } else if (isStringEqual(UT_USE_APN_XML_KEY, value)) {
            try {
                int parseInt3 = Integer.parseInt(text);
                this.mDefUtUseApn = parseInt3;
                this.mUtUseApn = parseInt3;
            } catch (NumberFormatException e3) {
                myloge("handleIntTypeConfigPartTwo : mUtUseApn NumberFormatException");
                this.mUtUseApn = this.mDefUtUseApn;
            }
        } else if (isStringEqual(UT_OIR_SOURCE_MODE_XML_KEY, value)) {
            try {
                int parseInt4 = Integer.parseInt(text);
                this.mDefUtOIRSourceMode = parseInt4;
                this.mUtOIRSourceMode = parseInt4;
            } catch (NumberFormatException e4) {
                myloge("handleIntTypeConfigPartTwo : mUtOIRSourceMode NumberFormatException");
                this.mUtOIRSourceMode = this.mDefUtOIRSourceMode;
            }
        } else if (isStringEqual(UT_OIR_DEFAULT_MODE_XML_KEY, value)) {
            try {
                int parseInt5 = Integer.parseInt(text);
                this.mDefUtOIRDefaultMode = parseInt5;
                this.mUtOIRDefaultMode = parseInt5;
            } catch (NumberFormatException e5) {
                myloge("handleIntTypeConfigPartTwo : mUtOIRDefaultMode NumberFormatException");
                this.mUtOIRDefaultMode = this.mDefUtOIRDefaultMode;
            }
        } else if (isStringEqual(IMS_DATA_DELAY_END_XML_KEY, value)) {
            try {
                int parseInt6 = Integer.parseInt(text);
                this.mDefUtImsDataDelayEndTime = parseInt6;
                this.mUtImsDataDelayEndTime = parseInt6;
            } catch (NumberFormatException e6) {
                myloge("handleIntTypeConfigPartTwo : mUtImsDataDelayEndTime NumberFormatException");
                this.mUtImsDataDelayEndTime = this.mDefUtImsDataDelayEndTime;
            }
        } else if (isStringEqual(SET_DEACT_DEFAULT_NO_REPLY_TIMER_XML_KEY, value)) {
            try {
                int parseInt7 = Integer.parseInt(text);
                this.mDefDefaultNeedNoReplyTimer = parseInt7;
                this.mDefaultNeedNoReplyTimer = parseInt7;
            } catch (NumberFormatException e7) {
                myloge("handleIntTypeConfigPartTwo : mDefaultNeedNoReplyTimer NumberFormatException");
                this.mDefaultNeedNoReplyTimer = this.mDefDefaultNeedNoReplyTimer;
            }
        } else if (isStringEqual(UT_VOWIFI_DELAY_END_TIME_XML_KEY, value)) {
            try {
                int parseInt8 = Integer.parseInt(text);
                this.mDefUtVoWifiDelayEndTime = parseInt8;
                this.mUtVoWifiDelayEndTime = parseInt8;
            } catch (NumberFormatException e8) {
                myloge("handleIntTypeConfigPartTwo : mUtVoWifiDelayEndTime NumberFormatException");
                this.mUtVoWifiDelayEndTime = this.mDefUtVoWifiDelayEndTime;
            }
        } else {
            myloge("unknown config, value=" + value + ", text=" + text);
        }
    }

    private final synchronized void handleStringTypeConfig(String value, String text) {
        if (text == null) {
            return;
        }
        try {
            handleStringTypeConfigPartOne(value, text);
            handleStringTypeConfigPartTwo(value, text);
        } catch (RuntimeException e) {
            myloge("handleStringTypeConfig RuntimeException");
        } catch (Exception e2) {
            myloge("handleStringTypeConfig Exception");
        }
    }

    private final synchronized void handleStringTypeConfigPartOne(String value, String text) {
        if (isStringEqual(CARD_TYPE_PREFER_TO_USE_UT_XML_KEY, value)) {
            int[] stringToIntArray = stringToIntArray(text);
            this.mDefCardTypePreferToUseUT = stringToIntArray;
            this.mCardTypePreferToUseUT = stringToIntArray;
        } else if (isStringEqual(CARD_MCC_MNC_PREFER_TO_USE_UT_XML_KEY, value)) {
            String[] stringToStringArray = stringToStringArray(text);
            this.mDefCardMccMncPreferToUseUt = stringToStringArray;
            this.mCardMccMncPreferToUseUt = stringToStringArray;
        } else if (isStringEqual(SS_TYPE_FORBID_FALLBACK_CS_XML_KEY, value)) {
            int[] stringToIntArray2 = stringToIntArray(text);
            this.mDefSSForbidFallbackCS = stringToIntArray2;
            this.mSSForbidFallbackCS = stringToIntArray2;
        } else if (isStringEqual(SS_NOT_SUPPORT_MMI_CODE_XML_KEY, value)) {
            String[] stringToStringArray2 = stringToStringArray(text);
            this.mDefNotSupportMMICode = stringToStringArray2;
            this.mNotSupportMMICode = stringToStringArray2;
        } else if (isStringEqual(SS_TYPE_USE_CS_ONLY_XML_KEY, value)) {
            int[] stringToIntArray3 = stringToIntArray(text);
            this.mDefSSTypeUseCsOnly = stringToIntArray3;
            this.mSSTypeUseCsOnly = stringToIntArray3;
        } else if (isStringEqual(UT_NAF_SRV_ADDR_XML_KEY, value)) {
            this.mDefUtNafSrvAddr = text;
            this.mUtNafSrvAddr = text;
        } else if (isStringEqual(UT_BSF_SRV_ADDR_XML_KEY, value)) {
            this.mDefUtBsfSrvAddr = text;
            this.mUtBsfSrvAddr = text;
        }
    }

    private final synchronized void handleStringTypeConfigPartTwo(String value, String text) {
        if (isStringEqual(UT_X_3GPP_INTEND_ID_XML_KEY, value)) {
            this.mDefUtX3gppIntendId = text;
            this.mUtX3gppIntendId = text;
        } else if (isStringEqual(UT_IMPU_XML_KEY, value)) {
            this.mDefUtIMPU = text;
            this.mUtIMPU = text;
        } else if (isStringEqual(UT_IMPI_XML_KEY, value)) {
            this.mDefUtIMPI = text;
            this.mUtIMPI = text;
        } else if (isStringEqual(UT_RETRY_INTERVAL_XML_KEY, value)) {
            int[] stringToIntArray = stringToIntArray(text);
            this.mDefUtRetryInterval = stringToIntArray;
            this.mUtRetryInterval = stringToIntArray;
        } else if (isStringEqual(UT_PARAMS_CONFIG_XML_KEY, value)) {
            String[] stringToStringArray = stringToStringArray(text);
            this.mDefUtParamsCfg = stringToStringArray;
            this.mUtParamsCfg = stringToStringArray;
        } else if (isStringEqual(UT_XCAP_ROOT_XML_KEY, value)) {
            this.mDefUtXcapRootUri = text;
            this.mUtXcapRootUri = text;
        } else if (isStringEqual(DC_FAIL_CAUSE_XML_KEY, value)) {
            int[] stringToIntArray2 = stringToIntArray(text);
            this.mDefDcFailCode = stringToIntArray2;
            this.mDcFailCode = stringToIntArray2;
        } else if (isStringEqual(DC_FAIL_CAUSE_RELEASE_APN_XML_KEY, value)) {
            this.mDcFailCodeToReleaseApn = stringToIntArray(text);
            this.mDcFailCauseToReleaseApn = getDcFailCause(this.mDcFailCodeToReleaseApn);
        }
    }

    private void loadImsConfig(Context context, XmlPullParser parser) {
        try {
            try {
                try {
                    try {
                        startPositionOfIMSConfigXML(parser, "ims_config");
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
                                }
                            }
                        }
                        if (parser instanceof XmlResourceParser) {
                            ((XmlResourceParser) parser).close();
                        }
                    } catch (Throwable th) {
                        if (parser instanceof XmlResourceParser) {
                            ((XmlResourceParser) parser).close();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    myloge("loadImsConfig Exception");
                    if (parser instanceof XmlResourceParser) {
                        ((XmlResourceParser) parser).close();
                    }
                }
            } catch (RuntimeException e3) {
                myloge("loadImsConfig RuntimeException");
                if (parser instanceof XmlResourceParser) {
                    ((XmlResourceParser) parser).close();
                }
            }
        } catch (Exception e4) {
            myloge("Exception");
        }
    }

    private boolean isContainInIMSConfig(int[] imsConfig, int serviceValue) {
        if (imsConfig == null || imsConfig.length == 0) {
            logw("ims config is null.");
            return true;
        }
        for (int i : imsConfig) {
            if (serviceValue == i) {
                mylogd("Current SS type or card type is contained by ims config.");
                return true;
            }
        }
        return false;
    }

    private boolean isContainInIMSConfig(String[] imsConfig, String serviceValue) {
        if (imsConfig == null) {
            mylogd("ims config is null. ");
            return true;
        }
        for (int number = 0; number < imsConfig.length; number++) {
            mylogd("imsConfig=" + imsConfig[number] + ", number=" + number);
            if (imsConfig[number] != null && imsConfig[number].equals(serviceValue)) {
                mylogd("serviceValue is contained by ims config.");
                return true;
            }
        }
        return false;
    }

    private int[] stringToIntArray(String stringText) {
        if (stringText == null) {
            logw("stringText is null. ");
            return new int[0];
        }
        String stringReplaceSpace = stringText.replaceAll(" ", NULL_STRING_VALUE);
        if (NULL_STRING_VALUE.equals(stringReplaceSpace)) {
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
            if (!NULL_STRING_VALUE.equals(stringTextArray[i])) {
                try {
                    intArray[i] = Integer.parseInt(stringTextArray[i]);
                } catch (NumberFormatException e) {
                    myloge("stringToIntArray : NumberFormatException ");
                    intArray[i] = -123456;
                }
                mylogd("intArray[i] =  " + intArray[i]);
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
        String stringReplaceSpace = stringText.replaceAll(" ", NULL_STRING_VALUE);
        if (NULL_STRING_VALUE.equals(stringReplaceSpace)) {
            logw("stringText is null after replace space.");
            return new String[0];
        }
        String[] stringArray = stringReplaceSpace.split(SEPARATOR_TAG);
        if (stringArray.length == 0) {
            logw("stringArray length is 0 after replace space.");
            return new String[0];
        }
        for (int i = 0; i < stringArray.length; i++) {
            if (NULL_STRING_VALUE.equals(stringArray[i])) {
                stringArray[i] = STRING_NOT_INITIALIZED;
            }
            mylogd("stringArray[i]=" + stringArray[i]);
        }
        return stringArray;
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
        int callWaitingSource = (callWaitingMode & 12) >> 2;
        switch (callWaitingSource) {
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
                myloge("call waiting source is not exist, source=" + this.mCallWaitingSource);
                break;
        }
        mylogd("resolveCallWaitingMode finished, callWaitingMode=" + callWaitingMode + ", mIsCallWaitingSyncToImsSdk=" + this.mIsCallWaitingSyncToImsSdk + ", mIsCallWaitingSyncToCs=" + this.mIsCallWaitingSyncToCs + ", mCallWaitingSource=" + this.mCallWaitingSource);
    }

    private String getRootUriFromSim() {
        if (this.mXcapRootURIFromSim != null) {
            return this.mXcapRootURIFromSim;
        }
        if (this.mSpliceMncMcc != null) {
            String sRootURI = "xcap.ims." + this.mSpliceMncMcc + ".pub.3gppnetwork.org";
            this.mXcapRootURIFromSim = sRootURI;
            return sRootURI;
        }
        myloge("getRootURI error: Get wrong MCC MNC ");
        return null;
    }

    private boolean isConfigInProp(String key, CONFIG_TYPE propType) {
        int keyLength = key.length();
        if (31 < keyLength) {
            myloge("the prop name length=" + keyLength);
            return false;
        }
        switch (propType) {
            case CONFIG_TYPE_BOOL:
            case CONFIG_TYPE_STRING:
            case CONFIG_TYPE_INT:
                String propValue = SystemProperties.get(key, NULL_STRING_VALUE);
                if (NULL_STRING_VALUE.equals(propValue)) {
                    return false;
                }
                return true;
            default:
                myloge("can't recognise this prop type");
                return false;
        }
    }

    private static String hiddenPrivacyInfo(String info, int type) {
        return HiddenPrivacyInfo.putMosaic(info, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mylogd(String s) {
        Rlog.d("HwImsConfigImpl[" + this.mSubId + "]", s);
    }

    private void myloge(String s) {
        Rlog.e("HwImsConfigImpl[" + this.mSubId + "]", "[ERROR] " + s);
    }

    private void logw(String s) {
        Rlog.w("HwImsConfigImpl[" + this.mSubId + "]", "[WARN] " + s);
    }

    public int setConfig(int item, int value) {
        if (!IS_VOWIFI_PROP_ON) {
            return 0;
        }
        if (this.mMapconService == null) {
            myloge("setProvisionedValue,mMapconService is null");
            return -1;
        }
        int phoneId = ImsCallProviderUtils.getSubId(this.mSubId);
        int ret = 0;
        if (26 == item) {
            try {
                mylogd("set VOICE_OVER_WIFI_ROAMING,value:" + value);
                this.mMapconService.notifyRoaming(phoneId);
            } catch (RemoteException e) {
                mylogd("set VOICE_OVER_WIFI_ROAMING failed");
                ret = 1;
            }
        } else if (27 == item) {
            try {
                mylogd("set VOICE_OVER_WIFI_MODE,value:" + value);
                this.mMapconService.setDomain(phoneId, value);
            } catch (RemoteException e2) {
                mylogd("set VOICE_OVER_WIFI_MODE failed");
                ret = 1;
            }
        }
        if (ret == 0) {
            this.mConfigIntValue.put(Integer.valueOf(item), Integer.valueOf(value));
        }
        return ret;
    }

    public int setConfig(int item, String value) {
        Integer it = Integer.valueOf(item);
        this.mConfigStringValue.put(it, value);
        return 0;
    }

    public int getConfigInt(int item) {
        Integer it = Integer.valueOf(item);
        if (this.mConfigIntValue.containsKey(it)) {
            return this.mConfigIntValue.get(it).intValue();
        }
        return -1;
    }

    public String getConfigString(int item) {
        Integer it = Integer.valueOf(item);
        if (this.mConfigStringValue.containsKey(it)) {
            return this.mConfigStringValue.get(it);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindMapconService() {
        if (IS_VOWIFI_PROP_ON) {
            ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsConfigImpl.2
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName className, IBinder service) {
                    HwImsConfigImpl.this.mylogd("onServiceConnected");
                    HwImsConfigImpl.this.mMapconService = IMapconService.Stub.asInterface(service);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName className) {
                    HwImsConfigImpl.this.mMapconService = null;
                }
            };
            Intent intent = new Intent().setClassName("com.hisi.mapcon", "com.hisi.mapcon.MapconService");
            this.mContext.bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) {
        mylogd("setFeatureValue feature=" + feature + ",network=" + network + ",value=" + value);
        switch (feature) {
            case 0:
            case 1:
            default:
                return;
            case 2:
                setVoWifiStatus(value);
                return;
        }
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public int setImsConfig(String configKey, PersistableBundle configValue) {
        mylogd("setImsConfig, configKey = " + configKey + ", configValue = *** ");
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
            switch (c) {
                case 0:
                    if (this.mHwImsServiceImpl == null) {
                        return 1;
                    }
                    HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
                    int smsConfig = configValue.getInt(IMS_CONFIG_KEY_SETSMSCONFIG, 1);
                    this.mHwImsServiceImpl.setImsSmsConfig(smsConfig);
                    return 0;
                case 1:
                    if (this.mHwImsServiceImpl == null) {
                        return 1;
                    }
                    HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
                    int enabled = configValue.getInt(VOWIFI_CONFIG_KEY_SETIMSREGERRORREPORT, 0);
                    this.mHwImsServiceImpl.setVoWiFiRegErrReportEnable(enabled);
                    return 0;
                default:
                    mylogd("setImsConfig, configKey not exist!");
                    return 1;
            }
        }
        mylogd("setImsConfig, configKey is null!");
        return 1;
    }

    @Override // com.huawei.ims.ImsConfigImpl
    public PersistableBundle getImsConfig(String configKey) {
        mylogd("getImsConfig, configKey = " + configKey);
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
            switch (c) {
                case 0:
                    ContentResolver contentResolver = this.mContext.getContentResolver();
                    int i = this.mSubId;
                    HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
                    String imsStoredKeyWithSubId = ImsCallProviderUtils.getImsStoredKeyWithSubId(i, HwImsServiceImpl.SMS_IMS_SET_VALUE);
                    HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
                    int smsConfigValue = Settings.Secure.getInt(contentResolver, imsStoredKeyWithSubId, 1);
                    mylogd("getImsConfig, smsConfigValue = " + smsConfigValue);
                    bundle.putInt(IMS_CONFIG_KEY_GETSMSCONFIG, smsConfigValue);
                    break;
                case 1:
                    ContentResolver contentResolver2 = this.mContext.getContentResolver();
                    int i2 = this.mSubId;
                    HwImsServiceImpl hwImsServiceImpl3 = this.mHwImsServiceImpl;
                    String dmUserValue = Settings.Secure.getString(contentResolver2, ImsCallProviderUtils.getImsStoredKeyWithSubId(i2, HwImsServiceImpl.DM_USER_IMS_VALUE));
                    mylogd("getImsConfig, dmUserValue = " + dmUserValue);
                    bundle.putString(IMS_CONFIG_KEY_GETDMUSER, dmUserValue);
                    break;
                default:
                    mylogd("getImsConfig, configKey not exist!" + configKey);
                    break;
            }
        } else {
            mylogd("getImsConfig, configKey is null!");
        }
        return bundle;
    }

    private void setVoWifiStatus(int value) {
        mylogd("setVoWifiStatus value=" + value);
        if (!IS_VOWIFI_PROP_ON) {
            return;
        }
        if (this.mMapconService == null) {
            mylogd("mMapconService is null");
            return;
        }
        int phoneId = ImsCallProviderUtils.getSubId(this.mSubId);
        try {
            switch (value) {
                case 0:
                    this.mMapconService.setVoWifiOff(phoneId);
                    mylogd("set vowifi off successful");
                    if (IS_ATT_WF) {
                        Rlog.d(LOG_TAG, "Wifi-Call HwImsConfigImpl set vowifi off successful");
                        this.mCi.setWifiEmergencyAid(false, null);
                        break;
                    }
                    break;
                case 1:
                    this.mMapconService.setVoWifiOn(phoneId);
                    mylogd("set vowifi on successful");
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
            myloge("set vowifi status failed");
        }
    }

    public boolean getBoolCarrierBuildVersion() {
        return this.mBuildVersionCarrier;
    }

    public void removeKeyInSp(String key, Context context) {
        SharedPreferences sp = SharePreferenceUtil.getDefaultSharedPreferencesDE(context);
        SharedPreferences.Editor editor = sp.edit();
        editor.remove(key);
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isVolteLowbatteryEndcall() {
        return this.mVolteLowbatteryEndcall;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean getIsEmergencyUnderWifi() {
        return this.mIsEmergencyUnderWifi;
    }
}