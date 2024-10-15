package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.StringNetworkSpecifier;
import android.net.Uri;
import android.os.AsyncResult;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.provider.Settings;
import android.provider.Telephony;
import android.telephony.HwTelephonyManager;
import android.telephony.HwTelephonyManagerInner;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsInfo;
import android.telephony.ims.ImsUtListener;
import android.text.TextUtils;
import com.android.ims.HwImsManager;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.GsmCdmaPhone;
import com.android.internal.telephony.HwTelephonyFactory;
import com.android.internal.telephony.IHwGsmCdmaPhoneEx;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneInternalInterface;
import com.android.internal.telephony.dataconnection.DcFailCause;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.sci.SciSSConf;
import com.huawei.sci.SciSSConfCb;
import com.huawei.sci.SciSSConfHs;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import vendor.huawei.hardware.radio.ims.V2_0.LastCallFailCause;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsUtImpl extends ImsUtImpl {
    private static final String ACTION_MAPCON_SERVICE_FAILED = "com.hisi.mapcon.servicefailed";
    private static final int CALL_SDK_FAILED = -1;
    private static final int CALL_SDK_SUCCESSFULLY = 0;
    private static final int CALL_WAITING_ACTIVE = 1;
    private static final int CALL_WAITING_DEACTIVE = 0;
    private static final String[] CARD_VOLTE_FLAG;
    private static final String CATEGORY_DATA_OR_WIFI_CONNECTION_STATUS = "@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON";
    private static final int CFT_DATE_NUM = 2;
    private static final int CF_REASON_TIME = 6;
    private static final int CLEAR_TCP_GBA_PARM = 0;
    private static final int CLEAR_TCP_GBA_UTCFG_PARM = 1;
    private static final int CLIR_PRESENTATION_ALLOWED_TEMPORARY = 4;
    private static final String CONNECT_INFO_ERRORCODE = "ut409perfix";
    private static final int DC_ALARM_IN_MS = 10000;
    private static final int DEFAULT_CURRENT_SLOT_ID = -1;
    private static final int DEFAULT_NO_REPLY_TIME = 20;
    private static final int DEFAULT_NO_REPLY_TIMER = -1;
    private static final int EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT = 1;
    private static final int EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT = 0;
    private static final int EVENT_ECT_RESULT = 50;
    private static final int EVENT_GET_CS_CALL_WAITING_DONE = 27;
    private static final int EVENT_QUERY_CALL_WAITING = 20;
    private static final int EVENT_QUERY_CLIR = 22;
    private static final int EVENT_SET_CS_CALL_WAITING_DONE = 28;
    private static final int EVENT_SET_CS_CALL_WAITING_NONE_SYNC = 51;
    private static final int EVENT_SYNC_CLIR_TO_IMS_DONE = 31;
    private static final int EVENT_SYNC_CW_TO_CS_DONE = 30;
    private static final int EVENT_SYNC_CW_TO_IMS_DONE = 29;
    private static final int EVENT_UPDATE_CALL_WAITING = 21;
    private static final int EVENT_UPDATE_CLIR = 23;
    private static final int FLAG_DEFAULT_VOLTE_VALUE = -1;
    private static final int FLAG_IS_NOT_VOLTE = 0;
    private static final int FLAG_IS_VOLTE = 1;
    private static final int GENERAL_TELEPHONE_NUMBER = 129;
    private static final int GET_CALL_WAITING_DURATION_TIME = 5;
    private static final int GROUP_TWO = 2;
    private static final int HANDLER_ARG_RESERVE = 0;
    private static final int ILLEGAL_NUMBER = -1;
    private static final int IMS_DATA_CONNECTION_KEEPALIVE_IN_MS = 30000;
    private static final int IMS_DATA_CONNECTION_TIMEOUT_IN_MS = 10000;
    private static final int IMS_GET_HOST_NAME_DELAY_IN_MS = 100;
    private static final int INTERNATIONAL_TELEPHONE_NUMBER = 145;
    private static final int INVALID_TIME = -1;
    private static final int INVALID_VALUE = -1;
    private static final boolean IS_DEBUG = false;
    private static final boolean IS_LOCAL_CALL_WAITING_DEFAULT_VALUE = true;
    private static final int KEY_MUTF_PARAM_CFG_USE_TLS_VERSION = 12;
    private static final String LOG_TAG = "HwImsUtImpl";
    private static final String MAPCON_APN = "apn";
    private static final String MAPCON_CAUSE = "cause";
    private static final int MAPCON_DOMAIN_CELLULAR_PREFER = 3;
    private static final int MAPCON_DOMAIN_LTE_PREFER = 1;
    private static final int MAPCON_DOMAIN_WIFI_ONLY = 0;
    private static final int MAPCON_DOMAIN_WIFI_PREFER = 2;
    private static final String MAPCON_PHONEID = "phoneId";
    private static final String MAPCON_SERVERADDR = "serverAddr";
    private static final int MAPCON_SERVICE_TYPE_MMS = 1;
    private static final int MAPCON_SERVICE_TYPE_UT = 2;
    private static final int MAPCON_SERVICE_TYPE_VOICE = 0;
    private static final String MAPCON_TYPE = "serviceType";
    private static final int MAPCON_UNKNOW_INDEX = 3;
    private static final int MAX_REQUESTS_PENDING = 50;
    private static final int MAX_UT_TUNNEL_RETRY_TIMES = 3;
    private static final int MEDIA_TYPE_AUDIO = 1;
    private static final int MEDIA_TYPE_VIDEO = 2;
    private static final int MUTF_PARAM_CFG_UT_SET_TLS_CIPHER = 29;
    private static final int MUTF_RESET_LEVEL_FW_MARK = 3;
    private static final int NOT_REGISTERED = 0;
    private static final int NUM_PRESENTATION_ALLOWED = 0;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT = 0;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED = 1;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED = 3;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED = 2;
    private static final String PERMISSION_READ_PRECISE_PHONE_STATE = "android.permission.READ_PRECISE_PHONE_STATE";
    private static final int REGISTERED = 1;
    private static final int REGISTERING = 2;
    private static final String REG_FORMATTING = "^.+ (\\d+\\.\\d+\\.\\d+\\.\\d+).*?(\\((SP\\d+)?(.{3})?(C\\d+)(.*)\\))?$";
    private static final String RO_BUILD_VERSION_INCREMENTAL;
    private static final String RO_HW_BUILD_DISPLAYID;
    private static final int SEND_CHR_BROADCAST_TIME_GAP = 3600000;
    private static final int SERVICE_CLASS_CW_MODE = 3;
    private static final int SET_UT_NETWORKID_SDK = 28;
    private static final int SMCOMMON_TYPE_MMS = 0;
    private static final int SMCOMMON_TYPE_OTHERS = 2;
    private static final int SMCOMMON_TYPE_UT = 1;
    private static final int SSCONF_CB_CONDITION_ALL = 5;
    private static final int SSCONF_CB_CONDITION_BAIC = 0;
    private static final int SSCONF_CB_CONDITION_BAICR = 4;
    private static final int SSCONF_CB_CONDITION_BAOC = 1;
    private static final int SSCONF_CB_CONDITION_BAOIC = 2;
    private static final int SSCONF_CB_CONDITION_BAOICXH = 3;
    private static final int SSCONF_CF_REASON_CFB = 2;
    private static final int SSCONF_CF_REASON_CFNL = 1;
    private static final int SSCONF_CF_REASON_CFNR = 3;
    private static final int SSCONF_CF_REASON_CFNRC = 4;
    private static final int SSCONF_CF_REASON_CFT = 5;
    private static final int SSCONF_CF_REASON_CFU = 0;
    public static final int SSCONF_OP_TYPE_GET = 0;
    public static final int SSCONF_OP_TYPE_PUT = 1;
    public static final int SSCONF_SS_TYPE_ALL = 0;
    public static final int SSCONF_SS_TYPE_BAIC = 15;
    public static final int SSCONF_SS_TYPE_BAICR = 19;
    public static final int SSCONF_SS_TYPE_BAOC = 16;
    public static final int SSCONF_SS_TYPE_BAOIC = 17;
    public static final int SSCONF_SS_TYPE_BAOICXH = 18;
    public static final int SSCONF_SS_TYPE_BA_ALL = 21;
    public static final int SSCONF_SS_TYPE_CDIV = 5;
    public static final int SSCONF_SS_TYPE_CFA = 22;
    public static final int SSCONF_SS_TYPE_CFAC = 23;
    public static final int SSCONF_SS_TYPE_CFB = 9;
    public static final int SSCONF_SS_TYPE_CFNL = 8;
    public static final int SSCONF_SS_TYPE_CFNR = 10;
    public static final int SSCONF_SS_TYPE_CFNRC = 11;
    public static final int SSCONF_SS_TYPE_CFT = 12;
    public static final int SSCONF_SS_TYPE_CFU = 7;
    public static final int SSCONF_SS_TYPE_CW = 20;
    public static final int SSCONF_SS_TYPE_ICB = 13;
    public static final int SSCONF_SS_TYPE_MAX = 24;
    public static final int SSCONF_SS_TYPE_NRT = 6;
    public static final int SSCONF_SS_TYPE_OCB = 14;
    public static final int SSCONF_SS_TYPE_OIP = 1;
    public static final int SSCONF_SS_TYPE_OIR = 3;
    public static final int SSCONF_SS_TYPE_TIP = 2;
    public static final int SSCONF_SS_TYPE_TIR = 4;
    public static final int SSCONF_SS_TYPE_UNKNOWN = -1;
    private static final int SS_403_FORBIDDEN_ERROR = 403;
    private static final int SS_404_NOT_FOUND_ERROR = 404;
    private static final int SS_409_CONFLICT_ERROR = 409;
    private static final int SS_ACTIVE = 1;
    private static final int SS_DEACTIVE = 0;
    private static final int SS_ERROR = 1;
    private static final int SS_ERROR_FROM_BSF = 2;
    private static final int SS_ERROR_FROM_NAF = 1;
    private static final int SS_ERROR_NOT_SET_BSF_IP = 5;
    private static final int SS_ERROR_NOT_SET_NAF_IP = 4;
    private static final int SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR = 3;
    private static final int SS_OK = 0;
    private static final int SS_RESPONSE_CF_NUM = 1;
    private static final int SS_RESPONSE_NUM = 2;
    private static final int SS_SEVICE_CLASS_VOICE = 1;
    private static final int START_UT_FORBIDDEN_ALARM_ONE_MINUTE = 60000;
    private static final int START_UT_FORBIDDEN_ALARM_ONE_SECOND = 1000;
    private static final int SUB_EVENT_IMS_GET_IMPU_DONE = 11;
    private static final int SUB_EVENT_IMS_UT_CLEAR = 7;
    private static final int SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY = 5;
    private static final int SUB_EVENT_IMS_UT_DC_ALARM = 41;
    private static final int SUB_EVENT_IMS_UT_END_CONNECTIVITY_ALARM = 49;
    private static final int SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY = 12;
    private static final int SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE = 2;
    private static final int SUB_EVENT_IMS_UT_IMS_DC_ALARM = 44;
    private static final int SUB_EVENT_IMS_UT_INIT = 8;
    private static final int SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED = 4;
    private static final int SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK = 3;
    private static final int SUB_EVENT_IMS_UT_SCISSCONFCB = 1;
    private static final int SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM = 46;
    private static final int SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM = 47;
    private static final int SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM = 48;
    private static final int SUB_EVENT_IMS_UT_TICK = 6;
    private static final int SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM = 45;
    private static final int SUB_EVENT_IMS_UT_UT_ALARM = 42;
    private static final int SUB_EVENT_IMS_UT_UT_RETRY_ALARM = 43;
    private static final int SUB_EVENT_SIM_CARD_ABSENT = 10;
    private static final int SUB_EVENT_SIM_RECORDS_LOADED = 9;
    private static final int TEMPORARY_DC_ALARM_IN_MS = 30000;
    private static final int TEMPORARY_UT_END_CONNECTIVITY_ALARM_IN_MS = 2000;
    private static final int TEMPORARY_UT_STAY_ALARM_IN_MS = 1000;
    private static final int TLS_DEFAULT_VERSION = 1;
    private static final int TUNNEL_SETUP_TIMEOUT_IN_MS = 10000;
    private static final int TYPE_SDK_HOST_BSF = 1;
    private static final int TYPE_SDK_HOST_NAF = 0;
    private static final int UT_ALARM_IN_MS = 30000;
    private static final int UT_DATA_UPDATE_TIME = 10;
    private static final int UT_DOMAIN_CELLULAR = 2;
    private static final int UT_DOMAIN_DEFAULT = 0;
    private static final int UT_DOMAIN_WIFI = 1;
    private static final int UT_ID_INVALID = -1;
    private static final int UT_ID_VALID = 0;
    private static final int UT_INVALID = -1;
    private static final int UT_PARAM_CFG_LENGTH = 2;
    private static int sCurrentSlotId;
    private static int sRequestId;
    private static SciSSConfCb sSciSsConfCb;
    private static int sUtSdkInitResult;
    private HwImsServiceImpl mHwImsServiceImpl;
    private HwImsConfigImpl mImsConfigImpl;
    private ImsUtImpl mImsUtImpl;
    private ConnectivityManager.NetworkCallback mNetworkCallback;
    private int mSlotId;
    private static final boolean IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
    private static final boolean IS_UT_USE_IMSAPN = SystemProperties.getBoolean("ro.config.hw_ut_ims", false);
    private static final String RO_HW_OEMNAME = SystemProperties.get("ro.hw.oemName", "");
    private static final String RO_BUILD_HW_VERSION_INCREMENTAL = SystemProperties.get("ro.huawei.build.version.incremental", "");
    private int mNetId = -1;
    private boolean mIsCheckedSimCardByUt = false;
    private boolean mIsImsConnectivityEnd = false;
    private boolean mIsDataReg = false;
    private Date mCanSendChrBroadcastDate = null;
    private ImsDataConnectionState mImsDcState = ImsDataConnectionState.IMS_DC_IDLE;
    private boolean mIsReqRoutHost = false;
    private HashMap<String, InetAddress[]> mUtApnInetAddressMap = new HashMap<>();
    private boolean mIsUtUseApn = false;
    private boolean mIsSetNetworkAsDefault = false;
    private Date mNextGetCallWaitingTime = null;
    private boolean mIsSimRecordLoaded = false;
    private boolean mIsAirModeResetCwInModem = false;
    private HashMap<Integer, Date> mUtDataExpireTime = new HashMap<>();
    private ImsUtListenerProxy mListenerProxy = new ImsUtListenerProxy();
    private GbaAuth mGbaAuth = null;
    private Handler mUtServiceHandler = null;
    private ArrayList<UtCmd> mUtCmdQueue = new ArrayList<>();
    private ImsRIL mCi = null;
    private boolean mIsUtEnable = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    private boolean mIsCallWatingUtCanBeUsed = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    private boolean mIsUtForbidden = false;
    private ArrayList<UtCmd> mUtRetryCmdQueue = new ArrayList<>();
    private int mLastSs = 0;
    private boolean mIsShowDataConnectionDialog = false;
    private boolean mIsChangedDefaultDataSub = false;
    private boolean mIsWifiTunnnelUp = false;
    private boolean mIsVowifi = false;
    private boolean mIsVowifiTimeOut = false;
    private int mUtTunnelRetryTimes = 0;
    private boolean mIsSetNafOrBsfIpToSdk = false;
    private Date mUtForbiddenDate = null;
    private boolean mIsUtSubscribed = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    private String mImpu = null;
    private ContentObserver mApnChangeObserver = new ContentObserver(new Handler()) { // from class: com.huawei.ims.HwImsUtImpl.1
        @Override // android.database.ContentObserver
        public void onChange(boolean isSelfChange) {
            if (!HwImsUtImpl.this.isUtUseDefaultApn()) {
                HwImsUtImpl.this.logd("apn db changed,query xcap apn.");
                HwImsUtImpl.this.queryUtApn();
            }
        }
    };
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsUtImpl.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                HwImsUtImpl.this.loge("onReceive intent is null");
                return;
            }
            String action = intent.getAction();
            HwImsUtImpl.this.logd("onReceive: action=" + action);
            if (HwImsUtImpl.ACTION_MAPCON_SERVICE_FAILED.equals(action)) {
                if (HwImsUtImpl.this.mSlotId != HwImsUtImpl.sCurrentSlotId) {
                    HwImsUtImpl.this.logd("receive com.hisi.mapcon.servicefailed, but not for this slot " + HwImsUtImpl.this.mSlotId + ", current SlotId is " + HwImsUtImpl.sCurrentSlotId + ", return.");
                    return;
                }
                int serviceType = intent.getIntExtra(HwImsUtImpl.MAPCON_TYPE, 1);
                UtCmd cmd = HwImsUtImpl.this.getFirstUtCmd();
                HwImsUtImpl.this.logd("handle UT data connection vowifi conntion begin fail and serviceType = " + serviceType);
                if (!HwImsUtImpl.IS_VOWIFI_PROP_ON || serviceType != 1 || cmd == null || cmd.dcState != ImsDataConnectionState.IMS_DC_CONNECTING || HwImsUtImpl.this.mIsVowifiTimeOut) {
                    return;
                }
                HwImsUtImpl.this.mImsDcState = ImsDataConnectionState.IMS_DC_IDLE;
                HwImsUtImpl.this.setUtOverWifiTunnelUpFlag(false);
                HwImsUtImpl.this.endImsConnectivity();
                if (HwImsUtImpl.this.mUtTunnelRetryTimes >= 3) {
                    HwImsUtImpl.this.mUtTunnelRetryTimes = 0;
                    HwImsUtImpl.this.logd("handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail.");
                    HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                    HwImsUtImpl.this.changeDcStateWhenTunnelSetupFail();
                    HwImsUtImpl.this.isSendUtMessage(6);
                    return;
                }
                HwImsUtImpl.access$1308(HwImsUtImpl.this);
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                HwImsUtImpl.this.logd("received ACTION_MAPCON_SERVICE_FAILED, retry tunnel setup.");
                if (HwImsUtImpl.this.isUtOverWifiEnabled()) {
                    HwImsUtImpl.this.beginImsConnectivity(HwImsUtImpl.IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
                    HwImsUtImpl.this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                    HwImsUtImpl.this.startWifiTunnelSetupAlarm();
                    return;
                }
                HwImsUtImpl.this.mUtTunnelRetryTimes = 0;
                HwImsUtImpl.this.logd("handle UT data connection received ACTION_MAPCON_SERVICE_FAILED, tunnel setup fail.");
                HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                HwImsUtImpl.this.changeDcStateWhenTunnelSetupFail();
                HwImsUtImpl.this.isSendUtMessage(6);
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                HwImsUtImpl.this.handleConnectivity(networkInfo);
                return;
            }
            if (!"android.intent.action.AIRPLANE_MODE".equals(action)) {
                if ("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED".equals(action)) {
                    HwImsUtImpl.this.handleUtApnConnection(intent);
                    return;
                } else {
                    HwImsUtImpl.this.loge("intent not support");
                    return;
                }
            }
            HwImsUtImpl.this.mIsAirModeResetCwInModem = HwImsUtImpl.IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            boolean isAirplaneModeOn = intent.getBooleanExtra("state", false);
            HwImsUtImpl.this.logd("isAirplaneModeOn=" + isAirplaneModeOn);
            if (isAirplaneModeOn) {
                HwImsUtImpl.this.handleClear(0);
            }
        }
    };
    private SciSSConfCb.Callback mSciSsCb = new SciSSConfCb.Callback() { // from class: com.huawei.ims.HwImsUtImpl.3
        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciSSConfCbPostResult(int ssType, int opType, int status) {
            HwImsUtImpl.this.logd("sciSSConfCbPostResult ssType = " + ssType + ", opType = " + opType + ", status = " + status);
            UtData ut = new UtData(ssType, opType, status);
            if (HwImsUtImpl.this.mGbaAuth != null) {
                HwImsUtImpl.this.mGbaAuth.clearAuthCounts();
            }
            HwImsUtImpl.this.isSendUtMessage(1, ut);
        }

        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciBsfCbPostResult(String rand, String autn) {
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum CmdState {
        CMD_INIT,
        CMD_HANDLE_UT,
        CMD_HANDLE_WAIT,
        CMD_HANDLE_CS,
        CMD_FINISH
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum CmdToken {
        CMD_GET_CALLBARRING_OPTION,
        CMD_SET_CALLBARRING_OPTION,
        CMD_GET_OUTGOING_CALLERID_DISPLAY,
        CMD_SET_OUTGOING_CALLERID_DISPLAY,
        CMD_GET_CALLWAITING,
        CMD_SET_CALLWAITING,
        CMD_SET_CALLWAITING_NONE_SYNC,
        CMD_GET_ORIGINATING_IDENTITY_PRESENTATION,
        CMD_SET_ORIGINATING_IDENTITY_PRESENTATION,
        CMD_GET_CALLFORWARDING_OPTION,
        CMD_SET_CALLFORWARDING_OPTION,
        CMD_CHANGE_CALLBARRING_PASSWORD,
        CMD_GET_TERMINATING_IDENTITY_PRESETNTATION,
        CMD_SET_TERMINATING_IDENTITY_PRESETNTATION,
        CMD_GET_TERMINATING_IDENTITY_RESTRICTION,
        CMD_SET_TERMINATING_IDENTITY_RESTRICTION,
        CMD_GET_CALLWAITING_FOR_DETECTION
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum DomainSelectType {
        SS_SELECT_CS_DOMAIN_ONLY,
        SS_SELECT_UT_DOMAIN_ONLY,
        SS_SELECT_UT_PREFER_CS_SECONDARY,
        SS_SELECT_INVALID_DOMAIN
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum ImsDataConnectionState {
        IMS_DC_INIT,
        IMS_DC_CONNECTION_ACT,
        IMS_DC_WIFI_CONNECTION_TUNNEL_ACT,
        IMS_DC_WIFI_PREF_TUNNEL_FAIL,
        IMS_DC_WIFI_PREF_IMSPDP_FAIL,
        IMS_DC_WIFI_ONLY_TUNNEL_FAIL,
        IMS_DC_LTE_PREF_IMSPDP_FAIL,
        IMS_DC_LTE_PREF_TUNNEL_FAIL,
        IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,
        IMS_DC_CELLULAR_PREF_TUNNEL_FAIL,
        IMS_DC_CONNECTING,
        IMS_DC_CONNECTED,
        IMS_DC_FINISH,
        IMS_DC_IDLE,
        IMS_TEMPORARILY_DC_CONNECTION_ACT,
        IMS_DC_AIRPLANE_ON_TUNNEL_FAIL,
        IMS_DC_ACT_EXECUTE_LTE_FAIL
    }

    static /* synthetic */ int access$000() {
        return getIdForRequest();
    }

    static /* synthetic */ int access$1308(HwImsUtImpl x0) {
        int i = x0.mUtTunnelRetryTimes;
        x0.mUtTunnelRetryTimes = i + 1;
        return i;
    }

    static {
        RO_BUILD_VERSION_INCREMENTAL = "".equals(RO_BUILD_HW_VERSION_INCREMENTAL) ? SystemProperties.get("ro.build.version.incremental", "") : RO_BUILD_HW_VERSION_INCREMENTAL;
        RO_HW_BUILD_DISPLAYID = SystemProperties.get("ro.huawei.build.display.id", "");
        CARD_VOLTE_FLAG = new String[]{"card_volte_flag_0", "card_volte_flag_1"};
        sCurrentSlotId = -1;
        sUtSdkInitResult = -1;
        sSciSsConfCb = null;
        sRequestId = -1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum CallWaitingSyncState {
        CALL_WAITING_SYNC_UNKNOWN(0),
        CALL_WAITING_SYNC_TO_IMS_SDK(1),
        CALL_WAITING_SYNC_TO_CS(2);

        final int nativeInt;

        CallWaitingSyncState(int value) {
            this.nativeInt = value;
        }

        public int getValue() {
            return this.nativeInt;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class UtCmd {
        Date endTime;
        CmdToken mToken;
        Date startTime;
        int utExpectType;
        int utOpType;
        int utType;
        CmdState mState = CmdState.CMD_INIT;
        DomainSelectType domainSelect = DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY;
        int utReason = 0;
        boolean isUtEnable = HwImsUtImpl.IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        String utNumber = null;
        int utTimer = 0;
        String csFacility = null;
        int csReason = 0;
        int csAction = 0;
        String csPassword = null;
        int csServiceClass = 0;
        ImsDataConnectionState dcState = ImsDataConnectionState.IMS_DC_INIT;
        int utId = HwImsUtImpl.access$000();
        int utRetryCounts = 0;

        UtCmd(CmdToken token, int type, int opType) {
            this.mToken = token;
            this.utType = type;
            this.utExpectType = type;
            this.utOpType = opType;
        }

        public String toString() {
            return "utType=" + this.utType + ", utExpectType=" + this.utExpectType + ", utOpType=" + this.utOpType + ", mState=" + this.mState + ", utRetryCounts=" + this.utRetryCounts;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class UtData {
        int mStatus;
        int mUtOpType;
        int mUtType;

        UtData(int utType, int utOpType, int status) {
            this.mUtType = utType;
            this.mUtOpType = utOpType;
            this.mStatus = status;
        }

        public String toString() {
            return "mUtType=" + this.mUtType + ", mUtOpType=" + this.mUtOpType + ", mStatus=" + this.mStatus;
        }
    }

    public HwImsUtImpl(HwImsServiceImpl hwImsServiceImpl, int slotId, ImsUtImpl imsUtImpl) {
        this.mHwImsServiceImpl = null;
        this.mSlotId = -1;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSlotId = slotId;
        logd("HwImsUtImpl constructor");
        if (!ImsCallProviderUtils.isValidServiceSubIndex(this.mSlotId)) {
            loge("mSlotId is invalid");
            return;
        }
        this.mHwImsServiceImpl = hwImsServiceImpl;
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl is null");
            return;
        }
        this.mImsConfigImpl = hwImsServiceImpl.getConfig();
        if (this.mImsConfigImpl == null) {
            loge("mImsConfigImpl is null");
            return;
        }
        this.mImsUtImpl = imsUtImpl;
        if (this.mImsUtImpl == null) {
            loge("mImsUtImpl is null");
        } else {
            startUtServiceThread();
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void close() {
        checkAccessPermission();
        this.mListenerProxy = null;
        this.mUtServiceHandler = null;
        this.mCi = null;
    }

    public void setListener(ImsUtListener listener) {
        checkAccessPermission();
        this.mListenerProxy.setImsUtListener(listener);
    }

    public int queryCallBarringForServiceClass(int cbType, int serviceClass) {
        checkAccessPermission();
        logd("[UTCMD]queryCallBarringForServiceClass:cbType= " + cbType + " serviceClass= " + serviceClass);
        int type = transCbTypeToUtTypeGet(cbType);
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLBARRING_OPTION, type, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        String facility = transCbTypeToFacility(cbType);
        cmd.csFacility = facility;
        cmd.utReason = transBarringFacilityToCbReason(facility);
        cmd.csServiceClass = serviceClass;
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallForwardForServiceClass(int condition, String number, int serviceClass) {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallForward, condition=" + condition);
        if (!isValidCommandInterfaceCfReason(condition)) {
            loge("Invalid condition for queryCallForward.");
            return -1;
        }
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLFORWARDING_OPTION, 5, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.csReason = condition;
        cmd.utReason = transCfToUtReason(condition);
        cmd.csServiceClass = serviceClass;
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallWaiting() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallWaiting");
        Date currDate = new Date();
        this.mNextGetCallWaitingTime = currDate;
        Date date = this.mNextGetCallWaitingTime;
        if (date != null) {
            date.setMinutes(date.getMinutes() + 5);
        }
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLWAITING, 20, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return -1;
        }
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (cmd.domainSelect == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
            loge("invalid domain, stop queryCallWaiting");
            return -1;
        }
        isSendUtMessage(20, cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCLIR() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCLIR");
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_OUTGOING_CALLERID_DISPLAY, 3, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (cmd.domainSelect == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        isSendUtMessage(22, cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCLIP() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCLIP");
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_ORIGINATING_IDENTITY_PRESENTATION, 1, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCOLR() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCOLR");
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_TERMINATING_IDENTITY_RESTRICTION, 4, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCOLP() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCOLP");
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_ORIGINATING_IDENTITY_PRESENTATION, 1, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        handleSs(cmd);
        return cmd.utId;
    }

    public int updateCallBarringOption(String password, int cbType, boolean isAction, int serviceClass, String[] barrList) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallBarringOption, cbType=" + cbType + ", isAction=" + isAction + ", serviceClass=" + serviceClass + ", barrList=" + Arrays.toString(barrList));
        int type = transCbTypeToUtTypeSet(cbType);
        if (type == 21) {
            int utType = transCbTypeToUtTypeSet(cbType);
            DomainSelectType ds = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utType, false);
            logd("updateCallBarringOption: domainSelect is " + ds);
            if (ds != DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY) {
                return updateCallBarringAllOption(password, isAction, serviceClass);
            }
        }
        int utType2 = updateCallBarringBase(password, cbType, isAction, serviceClass);
        return utType2;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForwardUncondTimer(int startHour, int startMinute, int endHour, int endMinute, int action, int condition, String number) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForwardUncondTimer, startHour=" + startHour + ", startMinute=" + startMinute + ", endHour=" + endHour + ", endMinute=" + endMinute + ", action=" + action + ", condition=" + condition + ", number=" + hiddenPrivacyInfo(number, 0));
        if (isValidCommandInterfaceCfAction(action) && isValidCommandInterfaceCfReason(condition)) {
            int cmdCsReason = condition;
            if (condition == 0) {
                cmdCsReason = 6;
            }
            int type = transCfToUtType(cmdCsReason);
            UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, type, 1);
            if (isUtIdInvalid(cmd.utId)) {
                return cmd.utId;
            }
            cmd.isUtEnable = isCfEnable(action);
            cmd.utReason = transCfToUtReason(cmdCsReason);
            cmd.utNumber = number;
            cmd.startTime = transIntToDate(startHour, startMinute);
            cmd.endTime = transIntToDate(endHour, endMinute);
            cmd.csReason = cmdCsReason;
            cmd.csAction = action;
            handleSs(cmd);
            return cmd.utId;
        }
        loge("Invalid condition for updateCallForwardUncondTimer.");
        return -1;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallWaiting(boolean isEnable, int serviceClass) {
        checkAccessPermission();
        return updateCallWaitingInternal(isEnable);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIR(int clirMode) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIR, clirMode=" + clirMode);
        CmdToken cmdToken = CmdToken.CMD_SET_OUTGOING_CALLERID_DISPLAY;
        boolean z = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        UtCmd cmd = new UtCmd(cmdToken, 3, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        if (clirMode == 0) {
            z = false;
        }
        cmd.isUtEnable = z;
        cmd.utReason = transClirModeToUtReason(clirMode);
        cmd.csReason = clirMode;
        logd("updateCLIR, isUtEnable=" + cmd.isUtEnable + ", utReason=" + cmd.utReason);
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (cmd.domainSelect == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        isSendUtMessage(23, cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIP(boolean isEnable) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIP, isEnable=" + isEnable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_ORIGINATING_IDENTITY_PRESENTATION, 1, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.isUtEnable = isEnable;
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLR(int presentation) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLR, presentation=" + presentation);
        CmdToken cmdToken = CmdToken.CMD_SET_TERMINATING_IDENTITY_RESTRICTION;
        boolean z = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        UtCmd cmd = new UtCmd(cmdToken, 4, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        if (presentation != 0) {
            z = false;
        }
        cmd.isUtEnable = z;
        cmd.csReason = presentation;
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLP(boolean isEnable) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLP, isEnable=" + isEnable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_TERMINATING_IDENTITY_PRESETNTATION, 2, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.isUtEnable = isEnable;
        handleSs(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public boolean isSupportCFT() {
        return isCheckUtDomain(domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 12, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtEnable() {
        return this.mIsUtEnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.mHwImsServiceImpl.mContext;
    }

    boolean isSendUtMessage(int utEvent) {
        return isSendUtMessage(utEvent, null);
    }

    boolean isSendUtMessage(int utEvent, Object obj) {
        Handler handler = this.mUtServiceHandler;
        if (handler == null) {
            logd("mUtServiceHandler is null, can't send message via this handler.");
            return false;
        }
        Message msg = handler.obtainMessage(utEvent, obj);
        return this.mUtServiceHandler.sendMessage(msg);
    }

    private void sendUtMessageDelayed(int utEvent, Object obj, int timer) {
        Handler handler = this.mUtServiceHandler;
        if (handler == null) {
            logd("mUtServiceHandler is null, can't send message via this handler.");
        } else {
            Message msg = handler.obtainMessage(utEvent, obj);
            this.mUtServiceHandler.sendMessageDelayed(msg, timer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public synchronized void queryAndSyncCallWaitingToCs() {
        logd("[UTCMD]enter queryAndSyncCallWaitingToCs");
        if (isCallWaitingExpire() && this.mImsConfigImpl.isCallWaitingSyncToCs() && isLocalCallWaitingEnable()) {
            queryCallWaiting();
        } else if (!isCardMccMncPreferToUseUt()) {
            logd("this card MCC MNC is not prefer to use UT, will set network mode for callwait");
            this.mCi.setCallWaiting(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE, 3, null);
        }
    }

    private void setCallWaitingToCs() {
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded");
            return;
        }
        logd("[UTCMD]enter setCallWaitingToCs");
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLWAITING_NONE_SYNC, 20, 1);
        cmd.mState = CmdState.CMD_HANDLE_CS;
        handleSs(cmd);
    }

    private void queryAndSyncClirModeToImsSdk() {
        logd("[UTCMD]enter queryAndSyncClirModeToImsSdk");
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded!");
            return;
        }
        DomainSelectType domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 3, false);
        int oirSourceMode = this.mImsConfigImpl.getOirSourceMode();
        if (isCheckUtDomain(domainSelect) && oirSourceMode == 1) {
            queryCLIR();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void queryAndSyncCallWaitingToImsSdk() {
        logd("[UTCMD]enter queryAndSyncCallWaitingToImsSdk");
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded!");
        } else if (isCallWaitingExpire() && this.mImsConfigImpl.isCallWaitingSyncToImsSdk() && isLocalCallWaitingEnable()) {
            queryCallWaiting();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimRecordsLoaded(String newImsi) {
        isSendUtMessage(9, newImsi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleImsGetImpuDone(String impu) {
        isSendUtMessage(11, impu);
    }

    @Override // com.huawei.ims.ImsUtImpl
    void clear() {
        isSendUtMessage(7);
    }

    int setImsSdkImpu() {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null) {
            return -1;
        }
        String impu = hwImsConfigImpl.getUtImpu(getContext());
        return setImsSdkImpu(impu);
    }

    int setImsSdkImpu(String impu) {
        int ret = -1;
        logd("setImsSdkImpu impu=" + hiddenPrivacyInfo(impu, 2));
        try {
            ret = SciSSConfHs.setLocalUserName(impu);
        } catch (Exception e) {
            loge("setImsSdkImpu, failed");
        }
        logd("set Ims Sdk impu, ret=" + ret);
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int setImsSdkImpi() {
        int ret = -1;
        String impi = this.mImsConfigImpl.getUtImpi();
        logd("setImsSdkImpi impi=" + hiddenPrivacyInfo(impi, 2));
        if (impi == null) {
            loge("impi is null.");
            return -1;
        }
        try {
            if (sCurrentSlotId == this.mSlotId) {
                ret = SciSSConfHs.setAuthUserName(impi);
            }
        } catch (Exception e) {
            loge("setImsSdkImpi, failed");
        }
        logd("set Ims Sdk Impi, ret=" + ret);
        return ret;
    }

    int setImsSdkBsfAddr() {
        String bsfAddr = this.mImsConfigImpl.getUtBsfSrvAddr();
        int bsfPort = this.mImsConfigImpl.getUtBsfPort();
        boolean isBsfGoHttps = this.mImsConfigImpl.isUtBsfUseHttps();
        logd("set ims sdk, bsf use https=" + isBsfGoHttps);
        int ret = -1;
        if (bsfAddr == null) {
            loge("bsfAddr is null.");
            return -1;
        }
        try {
            ret = SciSSConfHs.setBsfAddr(bsfAddr, bsfPort, isBsfGoHttps);
        } catch (Exception e) {
            loge("setImsSdkBsfAddr, failed");
        }
        logd("set Ims Sdk Bsf Addr , ret=" + ret);
        return ret;
    }

    int setImsXcapRootUri() {
        String xcapuri = this.mImsConfigImpl.getUtXcapRootUri();
        int ret = -1;
        try {
            ret = SciSSConfHs.setXcapRootUri(xcapuri);
        } catch (Exception e) {
            loge("setImsXcapRootUri, exception");
        }
        logd("setImsXcapRootUri , ret=" + ret);
        return ret;
    }

    int setImsSdkNafAddr() {
        String nafAddr = this.mImsConfigImpl.getUtNafSrvAddr();
        int nafPort = this.mImsConfigImpl.getUtNafPort();
        boolean isNafGoHttps = this.mImsConfigImpl.isUtNafUseHttps();
        logd("set ims sdk naf , naf port, naf use https=" + isNafGoHttps);
        int ret = -1;
        if (nafAddr == null) {
            loge("nafAddr is null.");
            return -1;
        }
        try {
            ret = SciSSConfHs.setNafAddr(nafAddr, nafPort, isNafGoHttps);
        } catch (Exception e) {
            loge("setImsSdkNafAddr, exception");
        }
        logd("set Ims Sdk Naf Addr, ret =" + ret);
        return ret;
    }

    void setImsSdkParamsCfg() {
        String[] utParamsCfgArray = this.mImsConfigImpl.getUtParamsCfg();
        int tlsVersion = 1;
        if (utParamsCfgArray != null) {
            for (String str : utParamsCfgArray) {
                String[] utParamsCfg = str.split(":");
                if (utParamsCfg.length != 2 || TextUtils.isEmpty(utParamsCfg[0]) || TextUtils.isEmpty(utParamsCfg[1])) {
                    loge("setParamsCfg config param not right");
                } else {
                    try {
                        int utParam = Integer.parseInt(utParamsCfg[0]);
                        if (utParam == 12) {
                            tlsVersion = Integer.parseInt(utParamsCfg[1]);
                        }
                        SciSSConfHs.setParamsCfg(utParam, utParamsCfg[1]);
                        logd("init utParamsCfg, cfgParam=" + utParam + ", value=" + utParamsCfg[1]);
                    } catch (NumberFormatException e) {
                        loge("setParamsCfg Exception");
                    }
                }
            }
        }
        if (tlsVersion > 1) {
            setImsSdkParamsTlsConfig();
        }
    }

    private void setImsSdkParamsTlsConfig() {
        String utParamsTlsCfg = this.mImsConfigImpl.getUtParamsTlsConfig();
        if (utParamsTlsCfg == null || utParamsTlsCfg.isEmpty()) {
            loge("utParamsTlsCfg is empty");
            return;
        }
        int paramsCfg = SciSSConfHs.setParamsCfg(29, utParamsTlsCfg);
        logd("init utParamsTlsCfg, cfgParam =29, value length = " + utParamsTlsCfg.length() + ", ret = " + paramsCfg);
    }

    private boolean isCallWaitingExpire() {
        if (this.mNextGetCallWaitingTime == null) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        Date currDate = new Date();
        if (currDate.compareTo(this.mNextGetCallWaitingTime) >= 0) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        loge("forbid call waiting request, currDate=" + currDate + ", mNextGetCallWaitingTime" + this.mNextGetCallWaitingTime);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public boolean isAirModeResetCwInModem() {
        return this.mIsAirModeResetCwInModem;
    }

    void responseMessage(Message msg, Object obj, Throwable ex) {
        logd("responseMessage with obj=" + obj);
        if (msg == null) {
            loge("responseMessage msg is null");
        } else {
            AsyncResult.forMessage(msg, obj, ex);
            msg.sendToTarget();
        }
    }

    void responseMessage(Message msg, CommandException.Error err) {
        logd("responseMessage with err");
        responseMessage(msg, null, new CommandException(err));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimCardAbsent() {
        isSendUtMessage(10);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForward(int action, int condition, String number, int serviceClass, int timeSeconds) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForward, action=" + action + ", condition=" + condition + ", number=" + hiddenPrivacyInfo(number, 0) + ", serviceClass=" + serviceClass + ", timeSeconds=" + timeSeconds);
        if (!isValidCommandInterfaceCfAction(action) || !isValidCommandInterfaceCfReason(condition)) {
            loge("Invalid action or condition for updateCallForward.");
            return -1;
        }
        int type = transCfToUtType(condition);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, type, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.isUtEnable = isCfEnable(action);
        cmd.utReason = transCfToUtReason(condition);
        cmd.utNumber = number;
        cmd.utTimer = timeSeconds;
        cmd.csReason = condition;
        cmd.csAction = action;
        cmd.csServiceClass = serviceClass;
        handleSs(cmd);
        return cmd.utId;
    }

    private int updateCallWaitingInternal(boolean isEnable) {
        logd("[UTCMD]enter updateCallWaitingInternal isEnable=" + isEnable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLWAITING, 20, 1);
        cmd.isUtEnable = isEnable;
        if (isUtIdInvalid(cmd.utId)) {
            return -1;
        }
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (cmd.domainSelect == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
            loge("invalid domain, stop updateCallWaiting");
            return -1;
        }
        isSendUtMessage(21, cmd);
        return cmd.utId;
    }

    private Message popUtMessage(int id) {
        ImsPhone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone == null || !(imsPhone instanceof ImsPhone)) {
            loge("popUtMessage imsPhone is null");
            return null;
        }
        ImsPhone imsPhone2 = imsPhone;
        return imsPhone2.mHwImsPhoneEx.popUtMessage(id);
    }

    private void startUtServiceThread() {
        this.mHwImsServiceImpl.mHandler.post(new Runnable() { // from class: com.huawei.ims.HwImsUtImpl.4
            @Override // java.lang.Runnable
            public void run() {
                HandlerThread thread = new HandlerThread("ImsUT Thread");
                thread.start();
                HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
                hwImsUtImpl.mUtServiceHandler = new UtServiceHandler(thread.getLooper());
                HwImsUtImpl.this.isSendUtMessage(8);
            }
        });
    }

    private Phone getDefaultPhone() {
        return this.mHwImsServiceImpl.getDefaultPhone();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class UtServiceHandler extends Handler {
        UtServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            HwImsUtImpl.this.handleMessage(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message msg) {
        logd("handleMessage what=" + msg.what);
        int i = msg.what;
        switch (i) {
            case 1:
                handleSciSsConfCb((UtData) msg.obj);
                return;
            case 2:
                handleImsUtGetHostNameDone(msg);
                return;
            case 3:
                handleImsRequestRoutHostOk();
                return;
            case 4:
                stopImsDataConnectionAlarm();
                endImsConnectivity();
                processReportChrException((byte) 0, (byte) -1, 1004);
                if (isUtOverWifiEnabled()) {
                    logd("received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true.");
                    if (this.mIsVowifi) {
                        changeDcStateWhenTunnelSetupFail();
                    } else {
                        changeDcStateWhenImsActFail();
                    }
                    isSendUtMessage(6);
                    return;
                }
                logd("handle UT data connection fall back cs for ensure route fail");
                handoverSsTick();
                return;
            case 5:
                handleImsUtContinueImsConnectivity();
                return;
            case 6:
                handleUtCmdQueue();
                return;
            case 7:
                handleClear(1);
                return;
            case 8:
                handleUtInit();
                return;
            case 9:
                handleSimRecordsLoadedInternal(msg);
                return;
            case 10:
                handleSimCardAbsentInternal(msg);
                return;
            case 11:
                handleImsGetImpuDoneInternal(msg);
                return;
            case 12:
                handleImsUtEndImsConectivity();
                return;
            default:
                switch (i) {
                    case 20:
                        handleQueryCallWaiting(msg);
                        return;
                    case 21:
                        handleUpdateCallWaiting(msg);
                        return;
                    case 22:
                        handleQueryClir(msg);
                        return;
                    case 23:
                        handleUpdateClir(msg);
                        return;
                    default:
                        switch (i) {
                            case 27:
                                handleGetCwResponseFromCs(msg);
                                return;
                            case 28:
                                handleSetCwFromCs(msg);
                                return;
                            case 29:
                                handleSyncCallWaitingToImsSdkDone(msg);
                                return;
                            case 30:
                                handleSyncCallWaitingToCsDone(msg);
                                return;
                            case 31:
                                handleSyncClirModeToImsSdkDone(msg);
                                return;
                            default:
                                switch (i) {
                                    case 41:
                                        handleDcTimeOut();
                                        return;
                                    case 42:
                                        handleUtTimeOut();
                                        return;
                                    case 43:
                                        handleUtRetryAlarmTimeOut();
                                        return;
                                    case 44:
                                        handleImsDcTimeOut();
                                        return;
                                    case 45:
                                        handleTunnelSetupTimeout();
                                        return;
                                    case 46:
                                        handleTearDownTunnelConnectionTimeout();
                                        return;
                                    case 47:
                                        handleTemporaryDcTimeOut();
                                        return;
                                    case 48:
                                        handleTemporaryUtStayTimeOut();
                                        return;
                                    case 49:
                                        UtCmd connectivityCmd = getFirstUtCmd();
                                        if (connectivityCmd == null) {
                                            loge("there is no cmd in queue");
                                            return;
                                        } else {
                                            connectivityCmd.dcState = ImsDataConnectionState.IMS_DC_INIT;
                                            isSendUtMessage(6);
                                            return;
                                        }
                                    case 50:
                                        processEctCallBack(msg);
                                        return;
                                    case 51:
                                        handleSetCallWaitingNoneSync(msg);
                                        return;
                                    default:
                                        loge("imsut not support this msg");
                                        return;
                                }
                        }
                }
        }
    }

    private void handleImsUtGetHostNameDone(Message msg) {
        boolean isBsfRouteAddress;
        Network network = (Network) msg.obj;
        String utNafSrvAddr = this.mImsConfigImpl.getUtNafSrvAddr();
        boolean isNafRouteAddress = isGetHostNameAndAddRoute(network, utNafSrvAddr);
        if (this.mImsConfigImpl.isUtBsfAuthBeUsed()) {
            String utBsfSrvAddr = this.mImsConfigImpl.getUtBsfSrvAddr();
            isBsfRouteAddress = isGetHostNameAndAddRoute(network, utBsfSrvAddr);
        } else {
            logd("ut not need bsf auth.");
            isBsfRouteAddress = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("handle UT data connection ensure route to host and result is : " + isNafRouteAddress + " " + isBsfRouteAddress);
        if (this.mIsVowifi) {
            setUtOverWifiTunnelUpFlag(isNafRouteAddress);
        }
        if (isNafRouteAddress) {
            logd("HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : " + network);
            initSdkServiceIpAddr(network);
            this.mIsReqRoutHost = this.mIsSetNafOrBsfIpToSdk;
            isSendUtMessage(3);
            if (this.mIsVowifi) {
                startWifiTunnelConnectionAlarm();
                return;
            }
            return;
        }
        isSendUtMessage(4);
    }

    private void handleImsRequestRoutHostOk() {
        UtCmd utCmd = getFirstUtCmd();
        if (utCmd != null) {
            if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTED) {
                utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
            } else {
                logd("maybe some exception happen, so we set cmd dcState to IDLE");
                utCmd.dcState = ImsDataConnectionState.IMS_DC_IDLE;
            }
        } else {
            logd("SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK, utCmd is null");
        }
        handleUtCmdQueue();
    }

    private void handleImsUtContinueImsConnectivity() {
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null) {
            loge("there is no cmd in queue");
        } else if (isNetworkConnected()) {
            logd("The network is connected and continues to be connected.");
            keepAliveImsConnectivity();
        } else {
            logd("The network is disconnected.");
        }
    }

    private void handleImsUtEndImsConectivity() {
        boolean isUtRetryCmdEmpty;
        UtCmd firstCmd = getFirstUtCmd();
        synchronized (this.mUtRetryCmdQueue) {
            isUtRetryCmdEmpty = this.mUtRetryCmdQueue.isEmpty();
        }
        if (firstCmd == null && isUtRetryCmdEmpty) {
            endImsConnectivity();
        }
    }

    private void processEctCallBack(Message msg) {
        HwImsServiceImpl hwImsServiceImpl;
        if (msg == null) {
            logd("EctCallBack msg is null, just return");
            return;
        }
        AsyncResult ar = (AsyncResult) msg.obj;
        if (ar == null || (hwImsServiceImpl = this.mHwImsServiceImpl) == null) {
            return;
        }
        ImsPhone imsPhone = hwImsServiceImpl.getImsPhone();
        if (!(imsPhone instanceof ImsPhone)) {
            logd("get imsphone fails.");
            return;
        }
        ImsPhone imsPhone2 = imsPhone;
        if (ar.exception != null) {
            imsPhone2.notifyECTFailed(PhoneInternalInterface.SuppService.TRANSFER);
        } else {
            imsPhone2.notifySuppServiceSuccessed(PhoneInternalInterface.SuppService.TRANSFER);
        }
    }

    private boolean isLocalCallWaitingEnable() {
        DomainSelectType ds = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 20, false);
        if (isCheckUtDomain(ds) && this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_LOCAL) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void handleGetCwResponseFromCs(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        Message onComplete = (Message) ar.userObj;
        if (ar.exception != null) {
            loge("handleGetCwResponseFromCs: ar.exception=" + ar.exception);
            responseMessage(onComplete, null, ar.exception);
            return;
        }
        if (ar.result instanceof int[]) {
            int[] cwArray = (int[]) ar.result;
            try {
                if (cwArray == null) {
                    loge("cwArray is null");
                    responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                    return;
                }
                logd("handleGetCwResponseFromCs, cwArray[0]=" + cwArray[0] + ", cwArray[1]=" + cwArray[1]);
                boolean isEnable = isEnableCallWaiting(cwArray[0]);
                handleGetCallWaitingDone(isEnable, cwArray[1], onComplete);
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                loge("handleGetCwResponseFromCs: improper failed");
                responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                return;
            }
        }
        loge("ar.result is not int[]");
        responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
    }

    private void handleSetCwFromCs(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        Message onComplete = (Message) ar.userObj;
        if (ar.exception != null) {
            loge("handleSetCwFromCs: ar.exception=" + ar.exception);
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        boolean isEnalbe = isEnableCallWaiting(msg.arg2);
        handleSetCallWaitingDone(isEnalbe, onComplete);
    }

    private void addUtCmd(UtCmd cmd) {
        synchronized (this.mUtCmdQueue) {
            this.mUtCmdQueue.add(cmd);
            logd("after add mUtCmdQueue size=" + this.mUtCmdQueue.size());
        }
    }

    private void removeUtCmd() {
        synchronized (this.mUtCmdQueue) {
            this.mUtCmdQueue.remove(0);
            logd("after remove mUtCmdQueue size=" + this.mUtCmdQueue.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UtCmd getFirstUtCmd() {
        synchronized (this.mUtCmdQueue) {
            if (this.mUtCmdQueue.isEmpty()) {
                loge("getFirstUtCmd mUtCmdQueue isEmpty");
                return null;
            }
            UtCmd cmd = this.mUtCmdQueue.get(0);
            return cmd;
        }
    }

    private void removeLastUtCmd() {
        synchronized (this.mUtCmdQueue) {
            if (this.mUtCmdQueue.isEmpty()) {
                loge("removeLastUtCmd mUtCmdQueue isEmpty");
                return;
            }
            this.mUtCmdQueue.remove(this.mUtCmdQueue.size() - 1);
            logd("after remove mUtCmdQueue size=" + this.mUtCmdQueue.size());
        }
    }

    private void handleUtCmdQueue() {
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null) {
            stopUtAlarm();
            stopDcAlarm();
            stopTemporaryDcAlarm();
            if (!isUtUseDefaultApn() || isUtCanUseDefaultBearForWifiConnected()) {
                stopImsDataConnectionAlarm();
                sendStopImsApnMessage();
                return;
            }
            return;
        }
        stopTemporaryUtStayAlarm();
        logd("handleUtCmdQueue start, cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
        int i = AnonymousClass5.$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[cmd.mState.ordinal()];
        if (i == 1 || i == 2) {
            handleUt(cmd);
        } else if (i != 3) {
            if (i == 4) {
                logd("handle UT data connection fallback CS domain");
                handoverSsTick(cmd);
            } else if (i == 5) {
                stopUtAlarm();
                removeUtCmd();
                startTemporaryUtStayAlarm();
                isSendUtMessage(6, null);
            } else {
                loge("not support this cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
            }
        }
        logd("handleUtCmdQueue leave, cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
    }

    private boolean isPerformUtPreprocessingForFirstTime() {
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || !isCurrentSubChange()) {
            return false;
        }
        if (!isOtherSubUtIdle()) {
            if (sCurrentSlotId == -1) {
                logd("isPerformUtPreprocessingForFirstTime: ut for other slot is not idle, but mCurrentSlotId is -1, should set mCurrentSlotId as " + this.mSlotId);
                setCurrentSlotId(this.mSlotId);
                isRegetImsiFromPhone();
                initSciSsConfHs();
                return false;
            }
            logd("isPerformUtPreprocessingForFirstTime: ut for other slot is not idle, waiting");
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        if (isEndOtherImsConnectivity()) {
            logd("isPerformUtPreprocessingForFirstTime: ut for other slot has connectivity, waiting");
            this.mIsImsConnectivityEnd = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            startAlarm(49, 2000);
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("isPerformUtPreprocessingForFirstTime: reset Ut SDK");
        setCurrentSlotId(this.mSlotId);
        utSdkReset(1);
        isRegetImsiFromPhone();
        initSciSsConfHs();
        this.mUtDataExpireTime.clear();
        return false;
    }

    private void handleUt(UtCmd cmd) {
        if (!isCheckUtDomainByUtCmd(cmd)) {
            logd("Can't start SS with Ut, will fallback to cs");
            if (cmd != null) {
                cmd.mState = CmdState.CMD_HANDLE_CS;
                isSendUtMessage(6);
                return;
            }
            return;
        }
        initUtSdkWhenDomainSelectUt();
        logd("cmd.dcState = " + cmd.dcState);
        switch (cmd.dcState) {
            case IMS_DC_INIT:
                boolean isInterruptUt = isPerformUtPreprocessingForFirstTime();
                if (isInterruptUt) {
                    logd("handleUt: The other Sub is busy, waiting.");
                    return;
                }
                logd("handle UT data connection start");
                if (isUtOverWifiEnabled()) {
                    Context context = getContext();
                    if (context == null) {
                        return;
                    }
                    logd("isUtOverWifiEnabled return true.");
                    int utDomain = getUtDomain();
                    logd("getVoWifiServiceDomain return utDomain = " + utDomain);
                    if (isNeedSetupWifiTunnel(utDomain)) {
                        if (isUtOverWifiTunnelUp()) {
                            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                            break;
                        } else {
                            logd("handle UT data connection vowifi connection tunnel act domain is : " + utDomain);
                            cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                            isSendUtMessage(6, null);
                            return;
                        }
                    }
                }
                if (isAirplaneModeOn() && (!isUtUseDefaultApn() || !this.mImsConfigImpl.isUtCanUseWifi())) {
                    logd("Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs");
                    responseFailureAndEndUt(cmd);
                    return;
                }
                if (!isUtUseDefaultApn()) {
                    if (!isHandleUtUseDefaultApn(cmd)) {
                        return;
                    }
                } else if (isNeedTempChangeDefaultDataSub()) {
                    logd("handle UT data connection ut use default apn and data is connected but not for this sub");
                    cmd.dcState = ImsDataConnectionState.IMS_TEMPORARILY_DC_CONNECTION_ACT;
                    sendUtMessage();
                    return;
                } else if (isDataConnection()) {
                    logd("handle UT data connection ut use default apn and data is connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    Network network = getNetworkForDefaultApn();
                    initSdkServiceIpAddr(network);
                    break;
                } else if (isUtCanUseDefaultBearForWifiConnected()) {
                    logd("handle UT data connection ut use default apn and data is not connected");
                    startDefaultBearForWifiConnected(cmd);
                    return;
                } else {
                    logd("handle UT data connection ut use default apn and data is not connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDcAlarm();
                    return;
                }
                break;
            case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:
                logd("case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT.");
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                if (isUtOverWifiEnabled()) {
                    if (isUtOverWifiTunnelUp()) {
                        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                        break;
                    } else {
                        endConnectivityIfNeeded(45);
                        logd("handle UT data connection begin vowifi Connectivity");
                        beginImsConnectivity(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
                        stopWifiTunnelSetupAlarm();
                        startWifiTunnelSetupAlarm();
                        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                        this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                        return;
                    }
                } else if (!isUtUseDefaultApn()) {
                    cancelStopImsApnMessage();
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
                    isSendUtMessage(6, null);
                    return;
                } else if (isDataConnection()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    Network network2 = getNetworkForDefaultApn();
                    initSdkServiceIpAddr(network2);
                    break;
                } else if (isUtCanUseDefaultBearForWifiConnected()) {
                    startDefaultBearForWifiConnected(cmd);
                    return;
                } else {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDcAlarm();
                    return;
                }
            case IMS_DC_WIFI_PREF_TUNNEL_FAIL:
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                logd("handle UT data connection volte conntion after vowifi connection fail");
                if (!isUtUseDefaultApn()) {
                    if (!isHandleUtUseDefaultApn(cmd)) {
                        return;
                    }
                } else if (isDataConnection()) {
                    logd("handle UT data connection volte conntion after vowifi connection fail default apn");
                    Network network3 = getNetworkForDefaultApn();
                    initSdkServiceIpAddr(network3);
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                } else {
                    if (isUtCanUseDefaultBearForWifiConnected()) {
                        startDefaultBearForWifiConnected(cmd);
                        return;
                    }
                    logd("handle UT data connection ut use default apn and data is not connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDcAlarm();
                    return;
                }
                break;
            case IMS_DC_WIFI_PREF_IMSPDP_FAIL:
                logd("state IMS_DC_WIFI_PREF_IMSPDP_FAIL, startDCAlarm.");
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startDcAlarm();
                return;
            case IMS_DC_WIFI_ONLY_TUNNEL_FAIL:
                handleWifiOnlyTunnelFail(cmd);
                return;
            case IMS_DC_LTE_PREF_IMSPDP_FAIL:
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                isSendUtMessage(6, null);
                return;
            case IMS_DC_ACT_EXECUTE_LTE_FAIL:
            case IMS_DC_LTE_PREF_TUNNEL_FAIL:
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startDcAlarm();
                return;
            case IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:
                responseFailureAndEndUt(cmd);
                logd("handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL");
                return;
            case IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:
                if (!isUtOverWifiEnabled()) {
                    logd("state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL, send GENERIC_FAILURE to user.");
                    responseFailureAndEndUt(cmd);
                    return;
                } else if (isUtOverWifiTunnelUp()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                } else {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                    isSendUtMessage(6, null);
                    return;
                }
            case IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:
                logd("Airplane mode is turned on, no longer trying volte ut and cs, return failure! ");
                responseFailureAndEndUt(cmd);
                return;
            case IMS_DC_CONNECTION_ACT:
                if (!isProcessImsConnectivity()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    return;
                }
                break;
            case IMS_DC_CONNECTING:
                return;
            case IMS_DC_FINISH:
                cmd.mState = CmdState.CMD_HANDLE_CS;
                isSendUtMessage(6);
                return;
            case IMS_TEMPORARILY_DC_CONNECTION_ACT:
                handleTempDcConnectionAct(cmd);
                return;
        }
        handleUtCmd(cmd);
    }

    private void sendUtMessage() {
        if (isConnectedForSlotId()) {
            sendUtMessageDelayed(6, null, LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE);
        } else {
            isSendUtMessage(6, null);
        }
    }

    private void endConnectivityIfNeeded(int networkType) {
        if (isNetworkAvailable(networkType)) {
            logd("xcap connectivity is available " + networkType + ", need to release");
            endImsConnectivity();
        }
    }

    private void handleWifiOnlyTunnelFail(UtCmd cmd) {
        if (!IS_VOWIFI_PROP_ON) {
            return;
        }
        boolean isSupportWifiOnlyFallCs = SystemProperties.getBoolean("ro.vowifi.wifi_only_fall_cs", false);
        if (isSupportWifiOnlyFallCs) {
            logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL, will fall back to cs,startDCAlarm.");
            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startDcAlarm();
        } else {
            logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user.");
            responseFailureAndEndUt(cmd);
        }
    }

    private boolean isHandleUtUseDefaultApn(UtCmd cmd) {
        logd("handle UT data connection volte conntion after vowifi connection fail not default apn");
        if (getUtUseApn() == 3 && isDefaultConnected() && (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || getDefaultDataSlotId() == this.mSlotId)) {
            logd("handle UT data connection ut use complex apn and mobile data is connected");
            Network network = getNetworkForType(0);
            initSdkServiceIpAddr(network);
            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("handle UT data connection ut use xcap apn or complex apn with mobile data not connected");
        cancelStopImsApnMessage();
        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
        isSendUtMessage(6, null);
        return false;
    }

    private void handleTempDcConnectionAct(UtCmd cmd) {
        if (cmd == null) {
            loge("handleTempDcConnectionAct - ut cmd is null");
            return;
        }
        if (!isProcessTemporarilyDcConnection()) {
            if (isUtCanUseDefaultBearForWifiConnected()) {
                startDefaultBearForWifiConnected(cmd);
            } else {
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startTemporaryDcAlarm();
            }
        }
    }

    private boolean isAirplaneModeOn() {
        if (getContext() == null) {
            return false;
        }
        boolean isAirplaneModeOn = Settings.Global.getInt(getContext().getContentResolver(), "airplane_mode_on", 0) != 0 ? IS_LOCAL_CALL_WAITING_DEFAULT_VALUE : false;
        logd("isAirplaneModeOn=" + isAirplaneModeOn);
        return isAirplaneModeOn;
    }

    private boolean isMobileNetwork() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int dataRegisterState = HwTelephonyManager.getDefault().getDataRegisteredState(slotId);
        boolean isMobileNetwork = dataRegisterState == 0 ? IS_LOCAL_CALL_WAITING_DEFAULT_VALUE : false;
        logd("isMobileNetwork: isMobileNetwork = " + isMobileNetwork);
        return isMobileNetwork;
    }

    private boolean isDataService() {
        if (isAirplaneModeOn() || !isMobileNetwork()) {
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private boolean isNeedSetupWifiTunnel(int utDomain) {
        boolean isDataService = isDataService();
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.getUtPreferOption() == 1) {
            logd("isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isDataService = " + isDataService);
            return isDataService ^ IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        boolean isVoWifiRegistered = false;
        HwImsConfigImpl hwImsConfigImpl2 = this.mImsConfigImpl;
        if (hwImsConfigImpl2 != null && hwImsConfigImpl2.isUtPreferVowifiWhenVowifiReg()) {
            int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
            isVoWifiRegistered = HwTelephonyManagerInner.getDefault().isWifiCallingAvailable(slotId);
        }
        boolean isSelectWifi = utDomain == 2 || utDomain == 0 || isVoWifiRegistered;
        boolean isSelectCellularOrLte = utDomain == 3 || utDomain == 1;
        if (isSelectWifi) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        if (isDataService || !isSelectCellularOrLte) {
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private boolean isNeedTempChangeDefaultDataSub() {
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || !isUtUseDefaultApn()) {
            return false;
        }
        if (this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) {
            return false;
        }
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        if (getDefaultDataSlotId() != slotId) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private Network getNetworkForDefaultApn() {
        int type = -1;
        if (this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) {
            type = 1;
        }
        if (isDefaultConnected()) {
            type = 0;
        }
        return getNetworkForType(type);
    }

    private Network getNetworkForType(int type) {
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null) {
            return null;
        }
        return cm.getNetworkForType(type);
    }

    private void initSdkServiceIpAddr(Network netWork) {
        if (netWork == null) {
            return;
        }
        boolean isInitSdkServiceIpAddr = (this.mIsSetNafOrBsfIpToSdk && this.mNetId == netWork.netId && !this.mImsConfigImpl.isUtQueryDnsIgnoreNetId()) ? IS_LOCAL_CALL_WAITING_DEFAULT_VALUE : false;
        if (isInitSdkServiceIpAddr || this.mGbaAuth == null) {
            return;
        }
        this.mNetId = netWork.netId;
        if (this.mImsConfigImpl.isUtGbaLifetimeBeUsed()) {
            logd("initSdkServiceIpAddr skip sdk.reset & gba.clear");
        } else {
            utSdkReset(0);
            this.mUtDataExpireTime.clear();
            this.mGbaAuth.clear();
        }
        setHostIpToSdk(netWork);
    }

    private void setHostIpToSdk(Network netWork) {
        byte addressType = 0;
        try {
            InetAddress[] nafIpAddr = netWork.getAllByName(this.mImsConfigImpl.getUtNafSrvAddr());
            if (nafIpAddr != null && nafIpAddr.length > 0) {
                SciSSConfHs.setHostIp(createIpAddr(nafIpAddr), 0);
            }
            if (this.mImsConfigImpl.isUtBsfAuthBeUsed()) {
                addressType = 1;
                InetAddress[] bsfIpAddr = netWork.getAllByName(this.mImsConfigImpl.getUtBsfSrvAddr());
                if (bsfIpAddr != null && bsfIpAddr.length > 0) {
                    SciSSConfHs.setHostIp(createIpAddr(bsfIpAddr), 1);
                }
            }
            this.mIsSetNafOrBsfIpToSdk = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        } catch (UnknownHostException e) {
            loge("Cannot get inet address ");
            this.mIsSetNafOrBsfIpToSdk = false;
            processReportChrException((byte) -1, addressType, 1003);
        }
    }

    private String[] createIpAddr(InetAddress[] addresses) {
        String[] ipAddr = new String[addresses.length];
        for (int i = 0; i < addresses.length; i++) {
            ipAddr[i] = addresses[i].getHostAddress();
        }
        return ipAddr;
    }

    private boolean isGetHostNameAndAddRoute(Network network, String serviceAddr) {
        if (network == null) {
            loge("network is null.");
            return false;
        }
        int networkId = network.netId;
        if (this.mNetId == networkId && this.mUtApnInetAddressMap.containsKey(serviceAddr)) {
            this.mUtApnInetAddressMap.get(serviceAddr);
            logd(" InetAddress get from local map.");
        } else {
            InetAddress[] inetAddress = getHostByName(serviceAddr, network);
            if (inetAddress != null) {
                this.mUtApnInetAddressMap.put(serviceAddr, inetAddress);
                logd(" InetAddress get from host, and save in local map.");
            }
        }
        logd(" networkId: " + networkId);
        if (SciSSConfHs.setParamsCfg(28, String.valueOf(networkId)) > 0) {
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private int handleUtCmd(UtCmd cmd) {
        int ret;
        logd("handleUtCmd enter, cmd=" + cmd);
        if (!isNeedHandleUtCmd(cmd)) {
            return 1;
        }
        try {
            switch (cmd.utType) {
                case 1:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryOriginatingIdentityPresentation();
                        break;
                    } else {
                        ret = SciSSConfHs.setOriginatingIdentityPresentation(cmd.isUtEnable);
                        break;
                    }
                case 2:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryTerminatingIdentityPresentation();
                        break;
                    } else {
                        ret = SciSSConfHs.setTerminatingIdentityPresentation(cmd.isUtEnable);
                        break;
                    }
                case 3:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryOriginatingIdentityRestriction();
                        break;
                    } else {
                        ret = SciSSConfHs.setOriginatingIdentityRestriction(cmd.isUtEnable, cmd.utReason);
                        break;
                    }
                case 4:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryTerminatingIdentityRestriction();
                        break;
                    } else {
                        ret = SciSSConfHs.setTerminatingIdentityRestriction(cmd.isUtEnable);
                        break;
                    }
                case 5:
                    if (cmd.utOpType == 0) {
                        if (isUtDataExpire(5)) {
                            ret = SciSSConfHs.queryCallDiversion();
                            break;
                        } else {
                            ret = 0;
                            logd("the status of CFU querying via UT interface is " + this.mLastSs);
                            UtData ut = new UtData(cmd.utType, cmd.utOpType, this.mLastSs);
                            isSendUtMessage(1, ut);
                            break;
                        }
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_CDIV not support utOpType=" + cmd.utOpType);
                        break;
                    }
                case 6:
                case 21:
                default:
                    loge("handleUtCmd not support this cmd");
                    ret = 1;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 22:
                case 23:
                    if (cmd.utOpType == 1) {
                        int time = -1;
                        if (cmd.utType == 22 || cmd.utType == 23 || (cmd.utType == 10 && this.mImsConfigImpl.isProtocolIr92V10orGreater())) {
                            time = getNoReplyTimer(cmd);
                        }
                        ret = SciSSConfHs.setCallDiversion(cmd.utReason, cmd.csAction, cmd.utNumber, null, null, 1, time);
                        logd(" setCallDiversion return value ret = " + ret + " time = " + time);
                        break;
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_CF GET not support utOpType=" + cmd.utOpType);
                        break;
                    }
                    break;
                case 12:
                    if (cmd.utOpType == 1) {
                        ret = SciSSConfHs.setCallDiversion(cmd.utReason, cmd.csAction, cmd.utNumber, cmd.startTime, cmd.endTime, 1, -1);
                        cmd.utExpectType = 7;
                        break;
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_CF SET not support utOpType=" + cmd.utOpType);
                        break;
                    }
                case 13:
                    if (cmd.utOpType == 0) {
                        if (isUtDataExpire(13)) {
                            ret = SciSSConfHs.queryIncomingCallBarring();
                            break;
                        } else {
                            ret = 0;
                            logd("the status of ICB querying via UT interface is " + this.mLastSs);
                            UtData ut2 = new UtData(cmd.utType, cmd.utOpType, this.mLastSs);
                            isSendUtMessage(1, ut2);
                            break;
                        }
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_ICB not support utOpType=" + cmd.utOpType);
                        break;
                    }
                case 14:
                    if (cmd.utOpType == 0) {
                        if (isUtDataExpire(14)) {
                            ret = SciSSConfHs.queryOutgoingCallBarring();
                            break;
                        } else {
                            ret = 0;
                            logd("the status of OCB querying via UT interface is " + this.mLastSs);
                            UtData ut3 = new UtData(cmd.utType, cmd.utOpType, this.mLastSs);
                            isSendUtMessage(1, ut3);
                            break;
                        }
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_OCB not support utOpType=" + cmd.utOpType);
                        break;
                    }
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    if (cmd.utOpType == 1) {
                        ret = SciSSConfHs.setCallBarring(cmd.utReason, cmd.isUtEnable);
                        break;
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_CF not support utOpType=" + cmd.utOpType);
                        break;
                    }
                case 20:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryCallWaiting();
                        break;
                    } else {
                        ret = SciSSConfHs.setCallWaiting(cmd.isUtEnable);
                        break;
                    }
            }
        } catch (RuntimeException e) {
            loge("SciSSConfHs func RuntimeException");
            ret = 1;
            this.mLastSs = 1;
        } catch (Exception e2) {
            loge("SciSSConfHs func exception");
            ret = 1;
            this.mLastSs = 1;
        }
        if (ret == 0) {
            startUtAlarm();
            cmd.mState = CmdState.CMD_HANDLE_WAIT;
        } else {
            this.mLastSs = 1;
            cmd.mState = CmdState.CMD_HANDLE_CS;
            isSendUtMessage(6, null);
        }
        logd("handleUtCmd leave, SciSSConfHs ret=" + ret + ", cmd.mState=" + cmd.mState + ", utType=" + cmd.utType + ", utReason=" + cmd.utReason);
        return ret;
    }

    private boolean isNeedHandleUtCmd(UtCmd cmd) {
        if (!isCheckUtDomainByUtCmd(cmd)) {
            logd("Can't start SS with Ut, will fallback to cs");
            if (cmd != null) {
                cmd.mState = CmdState.CMD_HANDLE_CS;
                isSendUtMessage(6, null);
                return false;
            }
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private int getNoReplyTimer(UtCmd cmd) {
        int time = this.mImsConfigImpl.getDefaultNoReplyTimer();
        int deactNoReplyTime = this.mImsConfigImpl.getDefaultNeedNoReplyTimer();
        if (!cmd.isUtEnable && deactNoReplyTime != -1) {
            time = deactNoReplyTime;
        }
        if (time == 0) {
            time = -1;
        } else if (time == -1) {
            time = cmd.utTimer;
            if (time == 0) {
                int i = cmd.utType;
                if (i == 10) {
                    time = 20;
                } else if (i == 22 || i == 23) {
                    time = -1;
                }
            }
        } else {
            logd("getNoReplyTimer: undefined branch");
        }
        logd("getNoReplyTimer time = " + time);
        return time;
    }

    private int handoverSs(UtCmd cmd) {
        if (cmd != null) {
            logd("handoverSs mToken=" + cmd.mToken + ", utType=" + cmd.utType + ", utOpType=" + cmd.utOpType);
            cmd.mState = CmdState.CMD_FINISH;
            if (isAirplaneModeOn()) {
                logd("handoverSs: Airplane mode is turned on, forbid CSFB, return failure!");
                responseFailure(cmd.utId, 0);
                return 1;
            }
            if (!isCheckCsDomain(cmd)) {
                loge("Can't start SS wiht CS domain.");
                responseFailure(cmd.utId, 0);
                return 1;
            }
            if (isCardMccMncPreferToUseUt() && !this.mImsConfigImpl.isUtCsBeUsed()) {
                loge("handoverSs cannot use CS");
                responseFailure(cmd.utId, 0);
                return 1;
            }
            Phone defPhone = getDefaultPhone();
            if (defPhone == null) {
                loge("handoverSs cannot get default phone");
                responseFailure(cmd.utId, 0);
                return 1;
            }
            Message onComplete = popUtMessage(cmd.utId);
            this.mIsUtEnable = false;
            logd("set Ut disable");
            int ret = handoverUtCmd(defPhone, cmd, onComplete);
            if (ret == 1) {
                responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            }
            this.mIsUtEnable = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            logd("set ut enable");
            return ret;
        }
        loge("handoverSs,utCmd null");
        return 1;
    }

    private int handoverUtCmd(Phone defPhone, UtCmd cmd, Message onComplete) {
        switch (cmd.mToken) {
            case CMD_GET_CALLBARRING_OPTION:
                defPhone.getCallbarringOption(cmd.csFacility, cmd.csServiceClass, onComplete);
                return 0;
            case CMD_SET_CALLBARRING_OPTION:
                defPhone.setCallbarringOption(cmd.csFacility, cmd.csPassword, cmd.isUtEnable, cmd.csServiceClass, onComplete);
                return 0;
            case CMD_GET_OUTGOING_CALLERID_DISPLAY:
                defPhone.getOutgoingCallerIdDisplay(onComplete);
                return 0;
            case CMD_SET_OUTGOING_CALLERID_DISPLAY:
                defPhone.setOutgoingCallerIdDisplay(cmd.csReason, onComplete);
                return 0;
            case CMD_GET_CALLWAITING:
                defPhone.getCallWaiting(this.mUtServiceHandler.obtainMessage(27, onComplete));
                return 0;
            case CMD_SET_CALLWAITING:
                int callWaitingAction = getCallWaitingAction(cmd.isUtEnable);
                defPhone.setCallWaiting(cmd.isUtEnable, this.mUtServiceHandler.obtainMessage(28, 0, callWaitingAction, onComplete));
                return 0;
            case CMD_SET_CALLWAITING_NONE_SYNC:
                defPhone.setCallWaiting(cmd.isUtEnable, this.mUtServiceHandler.obtainMessage(51, 0, 1, onComplete));
                return 0;
            case CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:
                defPhone.mCi.queryCLIP(onComplete);
                return 0;
            case CMD_GET_CALLFORWARDING_OPTION:
                defPhone.getCallForwardingOption(cmd.csReason, cmd.csServiceClass, onComplete);
                return 0;
            case CMD_SET_CALLFORWARDING_OPTION:
                if (cmd.csReason == 6) {
                    logd("Set CFU due to time in cs domain, but abandon the time");
                    cmd.csReason = 0;
                }
                IHwGsmCdmaPhoneEx hwGsmCdmaPhoneEx = null;
                if (defPhone instanceof GsmCdmaPhone) {
                    hwGsmCdmaPhoneEx = ((GsmCdmaPhone) defPhone).mHwGsmCdmaPhoneEx;
                }
                if (hwGsmCdmaPhoneEx == null) {
                    return 0;
                }
                hwGsmCdmaPhoneEx.setCallForwardingOption(cmd.csAction, cmd.csReason, cmd.utNumber, cmd.csServiceClass, cmd.utTimer, onComplete);
                return 0;
            case CMD_GET_CALLWAITING_FOR_DETECTION:
                logd("handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB.");
                return 0;
            default:
                loge("handoverSs not support cmd.mToken=" + cmd.mToken);
                return 1;
        }
    }

    private void handoverSsTick() {
        handoverSsTick(getFirstUtCmd());
    }

    private void handoverSsTick(UtCmd cmd) {
        handoverSs(cmd);
        isSendUtMessage(6, null);
    }

    private boolean isSsUseUtInterface(int utType) {
        if (utType != 20 || this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_UT) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isCmdGetResultFromSdkLocally(UtCmd cmd) {
        boolean isCmdGetResult = false;
        int i = cmd.utType;
        if (i == 5 || i == 13) {
            if (cmd.utReason != 0) {
                isCmdGetResult = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
        } else if (i == 14 && cmd.utReason != 1) {
            isCmdGetResult = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("isCmdGetResultFromSdkLocally=" + isCmdGetResult);
        return isCmdGetResult;
    }

    private void handleUtRetryAlarmTimeOut() {
        stopUtRetryAlarm();
        transferCmdFromRetryQueueToUtCmdQueue();
        isSendUtMessage(6);
    }

    private void transferCmdFromRetryQueueToUtCmdQueue() {
        synchronized (this.mUtRetryCmdQueue) {
            int size = this.mUtRetryCmdQueue.size();
            logd("transferCmdFromRetryQueueToUtCmdQueue, size=" + size);
            for (int i = 0; i < size; i++) {
                UtCmd cmd = this.mUtRetryCmdQueue.get(i);
                if (!isUtUseDefaultApn()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_INIT;
                }
                cmd.mState = CmdState.CMD_HANDLE_UT;
                addUtCmd(cmd);
            }
            this.mUtRetryCmdQueue.clear();
        }
    }

    private void transferCmdFromUtCmdQueueToRetryQueue(UtCmd cmd) {
        removeUtCmdInternal(cmd);
        synchronized (this.mUtRetryCmdQueue) {
            this.mUtRetryCmdQueue.add(cmd);
        }
        logd("cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd=" + cmd);
    }

    private void removeUtCmdInternal(UtCmd cmd) {
        synchronized (this.mUtCmdQueue) {
            Iterator<UtCmd> iterator = this.mUtCmdQueue.iterator();
            while (true) {
                if (!iterator.hasNext()) {
                    break;
                }
                UtCmd utCmd = iterator.next();
                if (utCmd == cmd) {
                    iterator.remove();
                    break;
                }
            }
        }
    }

    private boolean isMmi002004NoneCsfb(UtCmd cmd) {
        if (cmd == null || !this.mImsConfigImpl.isMmi002004NoneCsfb()) {
            return false;
        }
        boolean isCmdUtTypeCfa = cmd.utType == 22 || cmd.utType == 23;
        if (isCmdUtTypeCfa && cmd.utOpType == 1) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void handleSciSsConfCb(UtData ut) {
        logd("handleSciSSConfCb ut=" + ut);
        if (ut == null) {
            loge("handleSciSSConfCb, UTData is null");
            return;
        }
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null || ut.mUtType != cmd.utExpectType || cmd.mState != CmdState.CMD_HANDLE_WAIT) {
            loge("this Ut data is useless, cmd=" + cmd);
            return;
        }
        this.mIsCheckedSimCardByUt = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        stopUtAlarm();
        this.mLastSs = ut.mStatus;
        int i = ut.mStatus;
        if (i == 0) {
            handleSciSsConfCbSuccessfully(cmd, ut);
            return;
        }
        if (i != SS_403_FORBIDDEN_ERROR) {
            if (i == SS_409_CONFLICT_ERROR) {
                if (!this.mImsConfigImpl.getUt409ShowPhrase() || !isHandle409Error(cmd, ut)) {
                    handleSciSsConfCbUndefinedError(cmd, ut);
                    return;
                }
                return;
            }
            if (i != 3) {
                if (i == 4 || i == 5) {
                    handleSciSsConfCbNoNafOrBsfIpError(cmd, ut);
                    return;
                } else {
                    handleSciSsConfCbUndefinedError(cmd, ut);
                    return;
                }
            }
        }
        handle403Error(cmd, ut);
    }

    private void handleSciSsConfCbNoNafOrBsfIpError(UtCmd cmd, UtData ut) {
        loge("enter handleSciSSConfCbNafOrBsfIpError, cmd=" + cmd);
        this.mIsReqRoutHost = false;
        this.mIsSetNafOrBsfIpToSdk = false;
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
        }
        if (cmd == null) {
            return;
        }
        if (isCtCardAndSupportVolte() && (ut.mUtType == 5 || ut.mUtType == 7)) {
            saveCtCardVolteFlag(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
        }
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        if (isMmi002004NoneCsfb(cmd)) {
            logd("NAF or BSF IP not set for ut fail and none csfb");
            cmd.mState = CmdState.CMD_FINISH;
            responseMessage(popUtMessage(cmd.utId), CommandException.Error.GENERIC_FAILURE);
        } else {
            cmd.mState = CmdState.CMD_HANDLE_CS;
        }
        isSendUtMessage(6);
    }

    private void handle403Error(UtCmd cmd, UtData ut) {
        loge("enter handle403Error, cmd=" + cmd);
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
        }
        if (isCtCardAndSupportVolte()) {
            saveCtCardVolteFlag(false);
            logd("CT Card receive 403, notify HWCardManager");
        }
        this.mIsUtForbidden = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        if (isConfigUtForbiddenTimer()) {
            stopUtForbiddenAlarm();
            startUtForbiddenAlarm();
        }
        if (isMmi002004NoneCsfb(cmd)) {
            logd("403 Error for ut fail and none csfb");
            cmd.mState = CmdState.CMD_FINISH;
            responseMessage(popUtMessage(cmd.utId), CommandException.Error.GENERIC_FAILURE);
        } else {
            transferCmdFromRetryQueueToUtCmdQueue();
            synchronized (this.mUtCmdQueue) {
                int size = this.mUtCmdQueue.size();
                for (int i = 0; i < size; i++) {
                    UtCmd utCmd = this.mUtCmdQueue.get(i);
                    utCmd.mState = CmdState.CMD_HANDLE_CS;
                }
            }
        }
        isSendUtMessage(6);
    }

    private boolean isHandle409Error(UtCmd cmd, UtData ut) {
        if (cmd == null || ut == null) {
            loge("handle409Error: cmd or ut is null, return");
            return false;
        }
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        int i = ut.mUtType;
        if (i != 20 && i != 22 && i != 23) {
            switch (i) {
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                    break;
                default:
                    loge("handle409Error: not support ut type " + ut.mUtType);
                    return false;
            }
        }
        if (cmd.utOpType == 1) {
            String phraseText = SciSSConf.getSSConflictPhraseText();
            logd("handle409Error: phraseText = " + phraseText);
            if (phraseText != null && !phraseText.isEmpty()) {
                ImsReasonInfo error = new ImsReasonInfo(804, 0);
                error.mExtraMessage = phraseText + CONNECT_INFO_ERRORCODE;
                this.mListenerProxy.utConfigurationUpdateFailed(cmd.utId, error);
                cmd.mState = CmdState.CMD_FINISH;
                isSendUtMessage(6);
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
        }
        return false;
    }

    private void handleSciSsConfCbUndefinedError(UtCmd cmd, UtData ut) {
        loge("enter handleSciSSConfCbUndefinedError, cmd=" + cmd);
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
        }
        if (cmd == null) {
            return;
        }
        if (isCtCardAndSupportVolte() && (ut.mUtType == 5 || ut.mUtType == 7)) {
            saveCtCardVolteFlag(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
        }
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        if (!isMmi002004NoneCsfb(cmd) && cmd.utRetryCounts < this.mImsConfigImpl.getUtRetryMaxCounts() && !isCmdGetResultFromSdkLocally(cmd)) {
            cmd.utRetryCounts++;
            transferCmdFromUtCmdQueueToRetryQueue(cmd);
            startUtRetryAlarm(cmd.utRetryCounts);
        } else {
            this.mUtApnInetAddressMap.clear();
            endImsConnectivity();
            if (isMmi002004NoneCsfb(cmd)) {
                logd("Undefined Error for ut fail and none csfb");
                cmd.mState = CmdState.CMD_FINISH;
                responseMessage(popUtMessage(cmd.utId), CommandException.Error.GENERIC_FAILURE);
            } else {
                logd("handle UT data connection fallback CS domain for ut fail");
                cmd.mState = CmdState.CMD_HANDLE_CS;
            }
        }
        isSendUtMessage(6);
    }

    private void handleSciSsConfCbSuccessfully(UtCmd cmd, UtData ut) {
        setUtDataExpireTime(ut.mUtType);
        logd("handle UT data connection handleSciSSConfCbSuccessfully : cmd = " + cmd + ", ut = " + ut);
        try {
            switch (ut.mUtType) {
                case 1:
                    handleSciSsConfCbOfOipSuccessfully(cmd, ut);
                    break;
                case 2:
                    handleSciSsConfCbOfTipSuccessfully(cmd, ut);
                    break;
                case 3:
                    handleSciSsConfCbOfOirSuccessfully(cmd, ut);
                    break;
                case 4:
                    handleSciSsConfCbOfTirSuccessfully(cmd, ut);
                    break;
                case 5:
                    handleSciSsConfCbOfCdivSuccessfully(cmd, ut);
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 12:
                case 22:
                case 23:
                    handleSciSsConfCbOfCfacSuccessfully(cmd, ut);
                    break;
                case 10:
                    handleSciSsConfCbOfCfnrSuccessfully(cmd, ut);
                    break;
                case 11:
                    handleSciSsConfCbOfCfnrcSuccessfully(cmd, ut);
                    break;
                case 13:
                    handleSciSsConfCbOfIcbSuccessfully(cmd, ut);
                    break;
                case 14:
                    handleSciSsConfCbOfOcbSuccessfully(cmd, ut);
                    break;
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                    cmd.mState = CmdState.CMD_FINISH;
                    break;
                case 20:
                    handleSciSsConfCbOfCwSuccessfully(cmd, ut);
                    break;
                case 21:
                default:
                    loge("not support ssType");
                    responseFailure(cmd.utId, 0);
                    cmd.mState = CmdState.CMD_FINISH;
                    break;
            }
        } catch (RuntimeException e) {
            loge("RuntimeException");
            cmd.mState = CmdState.CMD_HANDLE_CS;
        } catch (Exception e2) {
            loge("Exception");
            cmd.mState = CmdState.CMD_HANDLE_CS;
        }
        isSendUtMessage(6);
    }

    private void handleSciSsConfCbOfOipSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getOriginatingIdentityPresentationEnabled();
            Bundle clipInfo = responseClip(isEnable);
            this.mListenerProxy.utConfigurationQueried(cmd.utId, clipInfo);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfTipSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getTerminatingIdentityPresentationEnabled();
            Bundle colpInfo = responseColp(isEnable);
            this.mListenerProxy.utConfigurationQueried(cmd.utId, colpInfo);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfTirSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getTerminatingIdentityRestrictionEnabled();
            Bundle colrInfo = responseColr(isEnable);
            this.mListenerProxy.utConfigurationQueried(cmd.utId, colrInfo);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfCdivSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            ImsCallForwardInfo[] imsCallForwardInfo = responseCallForwardEx(cmd.utReason);
            if (isCtCardAndSupportVolte()) {
                saveCtCardVolteFlag(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
            }
            this.mListenerProxy.utConfigurationCallForwardQueried(cmd.utId, imsCallForwardInfo);
        } else {
            loge("CDIV PUT: don't support will handover to cs");
        }
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfIcbSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getCallBarringEnable(cmd.utReason);
            ImsSsInfo[] ssInfoStatus = responseClck(isEnable);
            this.mListenerProxy.utConfigurationCallBarringQueried(cmd.utId, ssInfoStatus);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        loge("OIP ICB: don't support this OPRATOR");
    }

    private void handleSciSsConfCbOfOcbSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getCallBarringEnable(cmd.utReason);
            ImsSsInfo[] ssInfoStatus = responseClck(isEnable);
            this.mListenerProxy.utConfigurationCallBarringQueried(cmd.utId, ssInfoStatus);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        loge("OIP OCB: don't support this OPRATOR");
    }

    private void handleSciSsConfCbOfOirSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 0) {
            Boolean isEnable = SciSSConfHs.getOriginatingIdentityRestrictionEnabled();
            int defaultBehavior = SciSSConfHs.getOIRDefaultBehavior();
            Bundle clirInfo = responseClir(isEnable, defaultBehavior);
            int[] clirResponse = clirInfo.getIntArray("queryClir");
            if (clirResponse != null && clirResponse.length == 2 && clirResponse[1] != 0) {
                Message onComplete = popUtMessage(cmd.utId);
                Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
                response.setData(clirInfo);
                syncClirModeToImsSdk(clirResponse[0], response);
            } else {
                this.mListenerProxy.utConfigurationQueried(cmd.utId, clirInfo);
            }
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        Message onComplete2 = popUtMessage(cmd.utId);
        syncClirModeToImsSdk(cmd.csReason, this.mUtServiceHandler.obtainMessage(31, onComplete2));
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfCfnrcSuccessfully(UtCmd cmd, UtData ut) {
        if (this.mImsConfigImpl.isCfnrcChangeWithCfnl()) {
            if (ut.mUtOpType == 1) {
                int result = SciSSConfHs.setCallDiversion(1, cmd.csAction, cmd.utNumber, null, null, 1, -1);
                cmd.utExpectType = 8;
                if (result == 1) {
                    cmd.mState = CmdState.CMD_HANDLE_CS;
                    loge("setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result=" + result);
                    return;
                }
                startUtAlarm();
                return;
            }
            loge("CFNRc: don't support this OPRATOR");
            cmd.mState = CmdState.CMD_HANDLE_CS;
            return;
        }
        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void handleSciSsConfCbOfCfnrSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 1) {
            if (this.mImsConfigImpl.isProtocolIr92V10orGreater()) {
                this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                cmd.mState = CmdState.CMD_FINISH;
                return;
            }
            int time = getNoReplyTimer(cmd);
            if (time == -1) {
                logd("don't set the NRT when set the CFNR");
                this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                cmd.mState = CmdState.CMD_FINISH;
                return;
            }
            int result = SciSSConfHs.setCallDiversionNoReplyTimer(time);
            cmd.utExpectType = 6;
            if (result == 1) {
                cmd.mState = CmdState.CMD_HANDLE_CS;
                loge("setCallDiversionNoReplyTimer fail, result=" + result);
                return;
            }
            startUtAlarm();
            return;
        }
        loge("CFNR GET: don't support this OPRATOR");
        cmd.mState = CmdState.CMD_HANDLE_CS;
    }

    private void handleSciSsConfCbOfCfacSuccessfully(UtCmd cmd, UtData ut) {
        if (ut.mUtOpType == 1) {
            if (isCtCardAndSupportVolte() && ut.mUtType == 7) {
                saveCtCardVolteFlag(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
            }
            this.mListenerProxy.utConfigurationUpdated(cmd.utId);
            cmd.mState = CmdState.CMD_FINISH;
            return;
        }
        loge("CF SET: don't support this OPRATOR");
        cmd.mState = CmdState.CMD_HANDLE_CS;
    }

    private void saveCtCardVolteFlag(boolean z) {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        logd("saveCtCardVolteFlag isVolteCard " + z + ", slotId = " + slotId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[slotId], z ? 1 : 0);
    }

    private void clearCtCardVolteFlag() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        logd("clearCtCardVolteFlag: slotId = " + slotId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[slotId], -1);
    }

    private boolean isCtCardAndSupportVolte() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        if (HwTelephonyManager.getDefault().isCTSimCard(slotId) && this.mImsConfigImpl.isCarrierSupportVolte()) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isCtCardAndNotSupportVolte() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        if (!HwTelephonyManager.getDefault().isCTSimCard(slotId) || this.mImsConfigImpl.isCarrierSupportVolte()) {
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private void startUtRetryAlarm(int count) {
        int utRetryInterval = this.mImsConfigImpl.getUtRetryInterval(count - 1);
        if (utRetryInterval < 0) {
            return;
        }
        startAlarm(43, utRetryInterval);
    }

    private void stopUtRetryAlarm() {
        stopAlarm(43);
    }

    private boolean isCheckCsDomain(UtCmd cmd) {
        if (cmd == null) {
            loge("ut cmd is null");
            return false;
        }
        if (domainIntersectCs(cmd.domainSelect) == DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isCheckUtDomain(DomainSelectType ds) {
        if (domainIntersectUt(ds) == DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isCheckUtDomainByUtCmd(UtCmd cmd) {
        if (cmd == null) {
            loge("ut cmd is null");
            return false;
        }
        return isCheckUtDomain(cmd.domainSelect);
    }

    private DomainSelectType domainIntersectCs(DomainSelectType oldDomain) {
        if (oldDomain == DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY) {
            DomainSelectType newDomain = DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
            return newDomain;
        }
        if (oldDomain == DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY) {
            DomainSelectType newDomain2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            return newDomain2;
        }
        logd("domainIntersectCs: oldDomain is other domain select type");
        return oldDomain;
    }

    private DomainSelectType domainIntersectUt(DomainSelectType oldDomain) {
        if (oldDomain == DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY) {
            DomainSelectType newDomain = DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY;
            return newDomain;
        }
        if (oldDomain == DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY) {
            DomainSelectType newDomain2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            return newDomain2;
        }
        logd("domainIntersectUt: oldDomain is other domain select type");
        return oldDomain;
    }

    private DomainSelectType domainSelect(DomainSelectType prevDomain, int utType, boolean isShowDcDialog) {
        logd("enter domainSelect, prevDomain=" + prevDomain + ", utType=" + utType + ", isShowDcDialog=" + isShowDcDialog);
        if (!this.mImsConfigImpl.isImsSsBeUsed()) {
            return DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
        }
        DomainSelectType ds = prevDomain;
        if (this.mImsConfigImpl.isUtForbiddenWhenVolteSwitchOff()) {
            logd("UtForbiddenWhenVolteSwitchOff");
            if (!isVolteSwitchOn() && (ds = domainIntersectCs(ds)) == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        checkUtForbiddenDate();
        if (this.mIsUtForbidden && isSsUseUtInterface(utType)) {
            logd("Ut forbidden");
            ds = domainIntersectCs(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isCardTypePreferToUseUt()) {
            logd("this card is not prefer to use UT");
            ds = domainIntersectCs(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isCardMccMncPreferToUseUt()) {
            logd("this card MCC MNC is not prefer to use UT");
            ds = domainIntersectCs(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (this.mImsConfigImpl.isSsUseCsOnly(utType)) {
            logd("this ut type use cs only");
            ds = domainIntersectCs(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (isCardMccMncPreferToUseUt() && this.mImsConfigImpl.isSsForbidFallbackCs(utType)) {
            logd("this ut type is forbided fallback cs");
            ds = domainIntersectUt(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isUtSupportedByCurrentBearer()) {
            logd("current bearer did not support ut");
            ds = domainIntersectCs(ds);
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isUtUseDefaultApn()) {
            if (!this.mIsUtUseApn) {
                ds = domainIntersectCs(ds);
                logd("Ut Not Use Default APN, but has no Ut APN");
            } else if (!isUtSubscribed()) {
                if ((this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_LOCAL && utType == 20) || (utType == 3 && this.mImsConfigImpl.getOirSourceMode() == 1)) {
                    logd("CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed");
                } else {
                    ds = domainIntersectCs(ds);
                    logd("Ut Not Use Default APN, but ut service not subscibed");
                }
            } else {
                logd("Ut Not Use Default APN, undefined branch");
            }
            if (ds == DomainSelectType.SS_SELECT_INVALID_DOMAIN) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        return getDomainSelectType(utType, isShowDcDialog, ds);
    }

    private DomainSelectType domainSelect(UtCmd cmd) {
        DomainSelectType ds = DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY;
        if (cmd == null) {
            logd("cmd is null. ");
            return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
        }
        if (cmd.utType == -1 || cmd.utReason == -1) {
            ds = domainIntersectCs(ds);
        }
        return domainSelect(ds, cmd.utType, IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
    }

    private DomainSelectType getDomainSelectType(int utType, boolean isShowDcDialog, DomainSelectType oldDomain) {
        boolean isUtCanUseWifi = this.mImsConfigImpl.isUtCanUseWifi();
        boolean isWifiConnected = isWifiConnected();
        if (isUtCanUseWifi && isWifiConnected) {
            logd("wifi has connected, Ut will use wifi link");
            return oldDomain;
        }
        if (!isUtCanUseWifi && isWifiConnected && isSsUseUtInterface(utType)) {
            if (isCheckUtDomain(oldDomain) && isUtUseDefaultApn()) {
                if (!isShowDcDialog || isDataSwitchOn()) {
                    return oldDomain;
                }
                DomainSelectType newDomain = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                this.mIsShowDataConnectionDialog = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
                return newDomain;
            }
            if (isCheckUtDomain(oldDomain) && isShowDcDialog) {
                logd("tip user to diconnect wifi");
                return oldDomain;
            }
            DomainSelectType newDomain2 = domainIntersectCs(oldDomain);
            return newDomain2;
        }
        if (isDataSwitchOn() || !isSsUseUtInterface(utType) || !isUtUseDefaultApn()) {
            return oldDomain;
        }
        if (isCheckUtDomain(oldDomain) && isShowDcDialog) {
            logd("Show a dialog to notice user to turn data switch on");
            DomainSelectType newDomain3 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            this.mIsShowDataConnectionDialog = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            return newDomain3;
        }
        DomainSelectType newDomain4 = domainIntersectCs(oldDomain);
        return newDomain4;
    }

    private int handleSs(UtCmd cmd) {
        int ret;
        if (cmd == null) {
            logd("utcmd is null. ");
            return 1;
        }
        this.mIsShowDataConnectionDialog = false;
        cmd.domainSelect = domainSelect(cmd);
        logd("Domain select by ss is  " + cmd.domainSelect);
        int i = AnonymousClass5.$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType[cmd.domainSelect.ordinal()];
        if (i != 1 && i != 2 && i != 3) {
            responseFailure(cmd.utId, 0);
            ret = 1;
        } else {
            int ret2 = handleUtSs(cmd);
            if (ret2 == 1) {
                responseFailure(cmd.utId, 0);
            }
            ret = ret2;
        }
        this.mIsShowDataConnectionDialog = false;
        return ret;
    }

    private boolean isVolteSwitchOn() {
        Phone defPhone = getDefaultPhone();
        boolean isVolteSwitchOn = false;
        if (defPhone != null) {
            isVolteSwitchOn = defPhone.getImsSwitch();
        }
        logd("Volte Switch=" + isVolteSwitchOn);
        return isVolteSwitchOn;
    }

    private boolean isCardTypePreferToUseUt() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int cardType = HwTelephonyManager.getDefault().getCardType(slotId);
        return this.mImsConfigImpl.isCardTypePreferToUseUt(cardType);
    }

    private boolean isCardMccMncPreferToUseUt() {
        return this.mImsConfigImpl.isCardMccMncPreferToUseUt(getCardMccMnc());
    }

    private String getCardMccMnc() {
        String mccMnc;
        int slotId = ImsCallProviderUtils.getSubIdUsingSlotId(ImsCallProviderUtils.getSlotId(this.mSlotId));
        String simOperator = TelephonyManager.getDefault().getSimOperator(slotId);
        if (simOperator == null) {
            return null;
        }
        logd("simOperator=******");
        if (simOperator.length() == 5) {
            mccMnc = simOperator.substring(3, 5);
        } else if (simOperator.length() == 6) {
            mccMnc = simOperator.substring(3, 6);
        } else {
            loge("mccMnc error: Get wrong MCC MNC ");
            return null;
        }
        return simOperator.substring(0, 3) + mccMnc;
    }

    private int handleUtSs(UtCmd cmd) {
        addUtCmd(cmd);
        if (isSendUtMessage(6, null)) {
            return 0;
        }
        loge("Send UT message fail, remove last ut cmd.");
        removeLastUtCmd();
        return 1;
    }

    private void handleUtInit() {
        initImsUtImpl();
    }

    private void initImsUtImpl() {
        this.mCi = this.mHwImsServiceImpl.mCi;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED");
        getContext().registerReceiver(this.mIntentReceiver, filter, PERMISSION_READ_PRECISE_PHONE_STATE, this.mUtServiceHandler);
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        filter2.addAction("android.intent.action.AIRPLANE_MODE");
        filter2.addCategory("android.net.conn.CONNECTIVITY_CHANGE@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON");
        if (IS_VOWIFI_PROP_ON) {
            filter2.addAction(ACTION_MAPCON_SERVICE_FAILED);
        }
        getContext().registerReceiver(this.mIntentReceiver, filter2, null, this.mUtServiceHandler);
        getContext().getContentResolver().registerContentObserver(Telephony.Carriers.CONTENT_URI, IS_LOCAL_CALL_WAITING_DEFAULT_VALUE, this.mApnChangeObserver);
    }

    private void handleSimRecordsLoadedInternal(Message msg) {
        if (this.mImsConfigImpl == null) {
            loge("handleSimRecordsLoadedInternal, mImsConfigImpl is null return");
            return;
        }
        String newImsi = (String) msg.obj;
        if (newImsi == null) {
            loge("Can't get current imsi from sim, return");
            return;
        }
        this.mImsConfigImpl.setCurrentImsi(newImsi);
        String oldImsi = this.mImsConfigImpl.getSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSlotId], getContext());
        if (isCardChange(newImsi, oldImsi)) {
            clearSharedPreferences();
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSlotId], newImsi, getContext());
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_SIM_IMSI_KEY[this.mSlotId], this.mImsConfigImpl.getImpuFromSim(), getContext());
            if (this.mImpu != null) {
                this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSlotId], this.mImpu, getContext());
                this.mImpu = null;
                logd("handleSimRecordsLoadedInternal mImpu != null, set to sp");
            }
        }
        String spliceMncMcc = this.mImsConfigImpl.spliceMncMcc();
        this.mImsConfigImpl.setSpliceMncMcc(spliceMncMcc);
        this.mIsUtSubscribed = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        this.mImsConfigImpl.readCarrierConfig(getContext());
        queryUtApn();
        this.mIsSimRecordLoaded = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        this.mNextGetCallWaitingTime = null;
        queryAndSyncCallWaitingToCs();
        if (this.mImsConfigImpl.isActiveCallwaitingFromCs()) {
            setCallWaitingToCs();
        }
        queryAndSyncClirModeToImsSdk();
        if (sCurrentSlotId == this.mSlotId) {
            logd("handleSimRecordsLoaded: init sdk params when mCurrentSlotId == mSlotId");
            initSciSsConfHs();
        }
        if (isUse403ForLocalCw() && !this.mIsCheckedSimCardByUt && this.mIsDataReg) {
            detectSimCardSubscriptionStatus();
        }
    }

    private void setImsExtensionalParam(int num, boolean isNeed, String params) {
        SciSSConfHs.setExtensionalParam(num, isNeed, isNeed ? params : null);
    }

    private void setImsUserAgentExtensionalParam() {
        String swVersion = getUaFromDisplayId();
        if (!"".equals(RO_HW_OEMNAME) && !TextUtils.isEmpty(swVersion)) {
            StringBuffer buildVersionBuffer = new StringBuffer();
            buildVersionBuffer.append("HUAWEI-");
            buildVersionBuffer.append(RO_HW_OEMNAME);
            buildVersionBuffer.append("/");
            buildVersionBuffer.append(swVersion);
            boolean isNeedBuildVersion = this.mImsConfigImpl.getBoolCarrierBuildVersion();
            setImsExtensionalParam(0, isNeedBuildVersion, buildVersionBuffer.toString());
            setImsExtensionalParam(1, isNeedBuildVersion, buildVersionBuffer.toString());
            logd("SetImsExtensionalParam suucess");
            return;
        }
        loge("Can't get prop");
    }

    public int setHomeDomainName() {
        int ret = -1;
        String domainName = this.mImsConfigImpl.getDomainName();
        try {
            logd("setHomeDomainName domainName=" + hiddenPrivacyInfo(domainName, 2));
            if (!TextUtils.isEmpty(domainName) && sCurrentSlotId == this.mSlotId) {
                ret = SciSSConfHs.setHomeDomainName(domainName);
            }
        } catch (Exception e) {
            loge("setHomeDomainName, exception");
        }
        logd("setHomeDomainName , ret=" + ret);
        return ret;
    }

    private boolean isCardChange(String newImsi, String oldImsi) {
        boolean isChange;
        if (newImsi == null) {
            if (oldImsi == null) {
                isChange = false;
            } else {
                isChange = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
        } else {
            isChange = newImsi.equals(oldImsi) ^ IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("Card is changed isChange=" + isChange);
        return isChange;
    }

    private boolean isCurrentSubChange() {
        boolean isChanged = this.mSlotId != sCurrentSlotId ? IS_LOCAL_CALL_WAITING_DEFAULT_VALUE : false;
        logd("Current sub is changed, isChanged is " + isChanged + ",mCurrentSlotId is " + sCurrentSlotId);
        return isChanged;
    }

    private static void setCurrentSlotId(int slotId) {
        sCurrentSlotId = slotId;
    }

    private static void setSciSsConfCb(SciSSConfCb sciSsConfCb) {
        sSciSsConfCb = sciSsConfCb;
    }

    private void handleSimCardAbsentInternal(Message msg) {
        handleClear(1);
        this.mIsSimRecordLoaded = false;
    }

    private void clearSharedPreferences() {
        logd("enter clearSharedPreferences");
        this.mImsConfigImpl.setImpiFromSim(null);
        this.mImsConfigImpl.setNafAddrFromSim(null);
        this.mImsConfigImpl.setBsfAddrFromSim(null);
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSlotId], null, getContext());
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_SIM_IMSI_KEY[this.mSlotId], null, getContext());
        this.mImsConfigImpl.setBoolToSp(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSlotId], IS_LOCAL_CALL_WAITING_DEFAULT_VALUE, getContext());
        this.mImsConfigImpl.removeKeyInSp(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSlotId], getContext());
        Phone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone != null) {
            if (imsPhone.getServiceState().getState() != 0) {
                logd("ims not registered, set impu from network as null.");
                this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSlotId], null, getContext());
                return;
            } else {
                logd("ims is registered.");
                return;
            }
        }
        logd("imsphone is null");
    }

    private void handleImsGetImpuDoneInternal(Message msg) {
        HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
        if (hwImsServiceImpl == null || this.mImsConfigImpl == null) {
            logd("handleImsGetImpuDoneInternal mHwImsServiceImpl or mImsConfigImpl is null");
            return;
        }
        String currentImsi = hwImsServiceImpl.getSubscriberId();
        String imsiFromSp = this.mImsConfigImpl.getSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSlotId], getContext());
        String impu = (String) msg.obj;
        if (currentImsi != null && currentImsi.equals(imsiFromSp)) {
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSlotId], impu, getContext());
        } else {
            this.mImpu = impu;
            logd("handleImsGetImpuDoneInternal else setImpu = null");
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSlotId], null, getContext());
        }
        if (sCurrentSlotId == this.mSlotId) {
            setImsSdkImpu(impu);
        } else {
            logd("handleImsGetImpuDone: skip set impu to sdk because it's not the current slot");
        }
    }

    private void handleQueryCallWaiting(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        HwImsConfigImpl.CallWaitingSource callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter getCallWaiting, callWaitingSource=" + callWaitingSource);
        this.mIsCallWatingUtCanBeUsed = isCheckUtDomain(cmd.domainSelect);
        if (!this.mIsCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSs(cmd);
            return;
        }
        int i = AnonymousClass5.$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource[callWaitingSource.ordinal()];
        if (i == 1) {
            handleSs(cmd);
            return;
        }
        if (i == 2) {
            handoverSs(cmd);
            return;
        }
        if (i == 3) {
            logd("query cw , mIsUtForbidden=" + this.mIsUtForbidden + ",isUse403ForLocalCw=" + isUse403ForLocalCw());
            if (isUse403ForLocalCw() && this.mIsUtForbidden) {
                handoverSs(cmd);
                return;
            }
            boolean isEnable = this.mImsConfigImpl.getBoolFromSp(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSlotId], getContext(), IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("queryCallWaiting: CALL_WAITING_FROM_LOCAL, onComplete is null.");
            }
            handleGetCallWaitingDone(isEnable, 1, onComplete);
            return;
        }
        loge("[error]can't get call waiting, the source=" + callWaitingSource);
        responseFailure(cmd.utId, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.huawei.ims.HwImsUtImpl$5, reason: invalid class name */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource = new int[HwImsConfigImpl.CallWaitingSource.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState;
        static final /* synthetic */ int[] $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType;

        static {
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource[HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_UT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource[HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_CS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource[HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType = new int[DomainSelectType.values().length];
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType[DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType[DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType[DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken = new int[CmdToken.values().length];
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_CALLBARRING_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_SET_CALLBARRING_OPTION.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_OUTGOING_CALLERID_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_SET_OUTGOING_CALLERID_DISPLAY.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_CALLWAITING.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_SET_CALLWAITING.ordinal()] = 6;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_SET_CALLWAITING_NONE_SYNC.ordinal()] = 7;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_ORIGINATING_IDENTITY_PRESENTATION.ordinal()] = 8;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_CALLFORWARDING_OPTION.ordinal()] = 9;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_SET_CALLFORWARDING_OPTION.ordinal()] = 10;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken[CmdToken.CMD_GET_CALLWAITING_FOR_DETECTION.ordinal()] = 11;
            } catch (NoSuchFieldError e17) {
            }
            $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState = new int[ImsDataConnectionState.values().length];
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT.ordinal()] = 2;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_WIFI_PREF_TUNNEL_FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_WIFI_PREF_IMSPDP_FAIL.ordinal()] = 4;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_WIFI_ONLY_TUNNEL_FAIL.ordinal()] = 5;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_ACT_EXECUTE_LTE_FAIL.ordinal()] = 7;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_LTE_PREF_TUNNEL_FAIL.ordinal()] = 8;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_CELLULAR_PREF_TUNNEL_FAIL.ordinal()] = 9;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_CELLULAR_PREF_IMSPDP_FAIL.ordinal()] = 10;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_AIRPLANE_ON_TUNNEL_FAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_CONNECTION_ACT.ordinal()] = 12;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_CONNECTING.ordinal()] = 13;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_CONNECTED.ordinal()] = 14;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_DC_FINISH.ordinal()] = 15;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState[ImsDataConnectionState.IMS_TEMPORARILY_DC_CONNECTION_ACT.ordinal()] = 16;
            } catch (NoSuchFieldError e33) {
            }
            $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState = new int[CmdState.values().length];
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[CmdState.CMD_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[CmdState.CMD_HANDLE_UT.ordinal()] = 2;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[CmdState.CMD_HANDLE_WAIT.ordinal()] = 3;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[CmdState.CMD_HANDLE_CS.ordinal()] = 4;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState[CmdState.CMD_FINISH.ordinal()] = 5;
            } catch (NoSuchFieldError e38) {
            }
        }
    }

    private void handleQueryClir(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        int oirSourceMode = this.mImsConfigImpl.getOirSourceMode();
        logd("enter handleQueryClir, oirSourceMode=" + oirSourceMode);
        boolean isClirUtCanBeUsed = isCheckUtDomain(cmd.domainSelect);
        if (isClirUtCanBeUsed && oirSourceMode == 1) {
            int defaultClirMode = this.mImsConfigImpl.getOirDefaultMode();
            int clirmode = this.mImsConfigImpl.getIntFromSp(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSlotId], getContext(), defaultClirMode);
            int[] clirArray = {clirmode, 4};
            Bundle clirInfo = new Bundle();
            clirInfo.putIntArray("queryClir", clirArray);
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("handleQueryClir: onComplete is null.");
            }
            Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
            response.setData(clirInfo);
            syncClirModeToImsSdk(clirmode, response);
            return;
        }
        handleSs(cmd);
    }

    private int updateCallBarringAllOption(String password, boolean isEnable, int serviceClass) {
        logd("enter updateCallbarringAllOption, isEnable=" + isEnable);
        int[] callBarringAll = {2, 3, 4, 1, 5};
        int id = 0;
        for (int i : callBarringAll) {
            id = updateCallBarringBase(password, i, isEnable, serviceClass);
        }
        return id;
    }

    private int updateCallBarringBase(String password, int cbType, boolean isEnable, int serviceClass) {
        logd("enter updateCallBarringBase, cbType=" + cbType + ", isEnable=" + isEnable);
        int type = transCbTypeToUtTypeSet(cbType);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLBARRING_OPTION, type, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        String facility = transCbTypeToFacility(cbType);
        int condition = transBarringFacilityToCbReason(facility);
        cmd.utReason = condition;
        cmd.isUtEnable = isEnable;
        cmd.csFacility = facility;
        cmd.csPassword = password;
        cmd.csServiceClass = serviceClass;
        handleSs(cmd);
        return cmd.utId;
    }

    private void handleUpdateCallWaiting(Message msg) {
        HwImsConfigImpl.CallWaitingSource callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter handleUpdateCallWaiting, callWaitingSource=" + callWaitingSource);
        UtCmd cmd = (UtCmd) msg.obj;
        this.mIsCallWatingUtCanBeUsed = isCheckUtDomain(cmd.domainSelect);
        if (!this.mIsCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSs(cmd);
            return;
        }
        int i = AnonymousClass5.$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource[callWaitingSource.ordinal()];
        if (i == 1) {
            handleSs(cmd);
            return;
        }
        if (i == 2) {
            handoverSs(cmd);
            return;
        }
        if (i == 3) {
            logd("update callwaiting isUse403ForLocalCw : " + isUse403ForLocalCw() + ",mIsUtForbidden : " + this.mIsUtForbidden);
            if (isUse403ForLocalCw() && this.mIsUtForbidden) {
                handoverSs(cmd);
                return;
            }
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("handleUpdateCallWaiting: onComplete is null.");
            }
            if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
                isSyncCallWaitingToImsSdk(cmd.isUtEnable, onComplete);
                return;
            } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
                isSyncCallWaitingToCs(cmd.isUtEnable, onComplete);
                return;
            } else {
                loge("[error]local call waiting and not sync is not reasonable.");
                responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                return;
            }
        }
        loge("[error]can't set call waiting, the source=" + callWaitingSource);
    }

    private void handleUpdateClir(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        int oirSourceMode = this.mImsConfigImpl.getOirSourceMode();
        logd("enter handleUpdateClir, oirSourceMode=" + oirSourceMode);
        boolean isClirUtCanBeUsed = isCheckUtDomain(cmd.domainSelect);
        if (isClirUtCanBeUsed && oirSourceMode == 1) {
            this.mImsConfigImpl.setIntToSp(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSlotId], cmd.csReason, getContext());
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("handleUpdateClir: onComplete is null.");
            }
            Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
            syncClirModeToImsSdk(cmd.csReason, response);
            return;
        }
        handleSs(cmd);
    }

    private boolean isUtIdInvalid(int id) {
        if (id < 0) {
            loge("Invalid request id. id=" + id);
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("Valid request id. id=" + id);
        return false;
    }

    private static int getIdForRequest() {
        sRequestId++;
        if (sRequestId >= 50) {
            sRequestId = 0;
        }
        return sRequestId;
    }

    private String getUaFromDisplayId() {
        StringBuffer result = new StringBuffer();
        Matcher rematcher = Pattern.compile(REG_FORMATTING).matcher(RO_HW_BUILD_DISPLAYID);
        if (!rematcher.find()) {
            logd("Not find group");
            return null;
        }
        for (int i = 1; i < rematcher.groupCount(); i++) {
            if (rematcher.group(i) != null && i != 2) {
                result = result.append(rematcher.group(i));
            }
        }
        return result.toString();
    }

    private void responseFailure(int id, int errorCode) {
        int newErrorCode = errorCode;
        if (this.mIsShowDataConnectionDialog) {
            newErrorCode = 831;
        }
        logd("enter responseFailure, id=" + id + ", newErrorCode=" + newErrorCode);
        ImsReasonInfo error = new ImsReasonInfo(newErrorCode, 0);
        this.mListenerProxy.utConfigurationUpdateFailed(id, error);
    }

    private boolean isValidCommandInterfaceCfReason(int commandInterfaceCfReason) {
        switch (commandInterfaceCfReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            default:
                return false;
        }
    }

    private boolean isValidCommandInterfaceCfAction(int commandInterfaceCfAction) {
        if (commandInterfaceCfAction == 0 || commandInterfaceCfAction == 1 || commandInterfaceCfAction == 3 || commandInterfaceCfAction == 4) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isCfEnable(int action) {
        if (action == 1 || action == 3) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void initUtSdk() {
        logd("initUtSdk enter");
        setSciSsConfCb(new SciSSConfCb());
        if (sSciSsConfCb == null) {
            loge("instance sSciSsConfCb fail");
            return;
        }
        try {
            boolean isOpenHrsLog = this.mImsConfigImpl.isUtOpenHrsLog();
            sUtSdkInitResult = SciSSConfHs.init(getContext(), isOpenHrsLog);
            logd("SciSSConfHs.init sUtSdkInitResult = " + sUtSdkInitResult + ", IS_HRS_LOG_OPEN = " + isOpenHrsLog);
        } catch (RuntimeException e) {
            loge("SciSSConfHs RuntimeException");
        } catch (Exception e2) {
            loge("SciSSConfHs exception");
        }
        setCurrentSlotId(this.mSlotId);
        logd("initUtSdk leave");
    }

    private void initSciSsConfHs() {
        try {
            if (sSciSsConfCb == null) {
                logd("initSciSsConfHs:: sdk has not been initialized and mSciSSConfCb is null.");
                return;
            }
            SciSSConfCb sciSSConfCb = sSciSsConfCb;
            SciSSConfCb.setCallback(this.mSciSsCb);
            if (this.mGbaAuth == null) {
                this.mGbaAuth = new GbaAuth(this.mCi, this.mImsConfigImpl, this.mSlotId);
            }
            SciSSConfCb sciSSConfCb2 = sSciSsConfCb;
            SciSSConfCb.setSSConfAuth(this.mGbaAuth.getGbaAuthUtil());
            boolean isUseNodeSelector = this.mImsConfigImpl.isUtUseNodeSelector();
            int ret = SciSSConfHs.isSupportNodeSelector(isUseNodeSelector);
            if (ret != 0) {
                loge("isSupportNodeSelector ret=" + ret);
            }
            logd("init isSupportNodeSelector=" + isUseNodeSelector);
            boolean isUseXcapNameSpace = this.mImsConfigImpl.isUtUseXcapNameSpace();
            int ret2 = SciSSConfHs.setSupportXcapNamespace(isUseXcapNameSpace);
            if (ret2 != 0) {
                loge("setSupportXcapNamespace ret=" + ret2);
            }
            logd("init setSupportXcapNamespace=" + isUseXcapNameSpace);
            int gbaType = this.mImsConfigImpl.getUtGbaType();
            int ret3 = SciSSConfHs.setSupportGBAType(gbaType);
            if (ret3 != 0) {
                loge("setSupportGBAType ret=" + ret3);
            }
            logd("init setSupportGBAType=" + gbaType);
            boolean isUseTmpi = this.mImsConfigImpl.isUtUseTmpi();
            int ret4 = SciSSConfHs.setSupportTmpi(isUseTmpi);
            if (ret4 != 0) {
                loge("setSupportTmpi ret=" + ret4);
            }
            logd("init usetmpi=" + isUseTmpi);
            int contentTypeMode = this.mImsConfigImpl.getContentTypeMode();
            int ret5 = SciSSConfHs.setContentType(contentTypeMode);
            if (ret5 != 0) {
                loge("setContentType ret=" + ret5);
            }
            logd("init contentTypeMode=" + contentTypeMode);
            setImsSdkImpu();
            setImsSdkImpi();
            setImsSdkBsfAddr();
            setImsSdkNafAddr();
            setImsSdkParamsCfg();
            setImsXcapRootUri();
            setImsUserAgentExtensionalParam();
        } catch (RuntimeException e) {
            loge("SciSSConfHs RuntimeException");
        } catch (Exception e2) {
            loge("SciSSConfHs exception");
        }
    }

    private int transCbTypeToUtTypeGet(int cbType) {
        if (cbType != 1) {
            if (cbType == 2 || cbType == 3 || cbType == 4) {
                return 14;
            }
            if (cbType != 5) {
                return -1;
            }
        }
        return 13;
    }

    private String transCbTypeToFacility(int cbType) {
        switch (cbType) {
            case 1:
                return "AI";
            case 2:
                return "AO";
            case 3:
                return "OI";
            case 4:
                return "OX";
            case 5:
                return "IR";
            case 6:
            default:
                loge("unknown cbType=" + cbType);
                return null;
            case 7:
                return "AB";
            case 8:
                return "AG";
            case 9:
                return "AC";
        }
    }

    private int transCbTypeToUtTypeSet(int cbType) {
        if (cbType == 1) {
            return 15;
        }
        if (cbType == 2) {
            return 16;
        }
        if (cbType == 3) {
            return 17;
        }
        if (cbType == 4) {
            return 18;
        }
        if (cbType == 5) {
            return 19;
        }
        if (cbType == 7) {
            return 21;
        }
        loge("[ERROR]unknown cbType=" + cbType);
        return -1;
    }

    private int transBarringFacilityToCbReason(String facility) {
        if ("AO".equals(facility)) {
            return 1;
        }
        if ("OI".equals(facility)) {
            return 2;
        }
        if ("OX".equals(facility)) {
            return 3;
        }
        if ("AI".equals(facility)) {
            return 0;
        }
        if ("IR".equals(facility)) {
            return 4;
        }
        if ("AB".equals(facility)) {
            return 5;
        }
        return -1;
    }

    private int transCfToUtReason(int reason) {
        switch (reason) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 5;
            default:
                return -1;
        }
    }

    private int transCfToUtType(int reason) {
        switch (reason) {
            case 0:
                return 7;
            case 1:
                return 9;
            case 2:
                return 10;
            case 3:
                return 11;
            case 4:
                return 22;
            case 5:
                return 23;
            case 6:
                return 12;
            default:
                return -1;
        }
    }

    private int transUtToCfReason(int reason) {
        if (reason == 0) {
            return 0;
        }
        switch (reason) {
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 6;
            case 6:
                return 4;
            case 7:
                return 5;
            default:
                return -1;
        }
    }

    private int transClirModeToUtReason(int clirMode) {
        if (clirMode != 1) {
            return 1;
        }
        return 2;
    }

    private ImsCallForwardInfo[] responseCallForwardEx(int reason) {
        ImsCallForwardInfo[] infos;
        int condition = transUtToCfReason(reason);
        if (this.mImsConfigImpl.getIsUseMultCondition()) {
            logd("responseCallForwardEx, Single and composite node query");
            if (reason == 6) {
                infos = responseCallForward(0);
            } else if (reason == 7) {
                infos = responseCallForward(2);
            } else {
                infos = responseCallForward(reason);
            }
            if (infos != null && infos[0] != null) {
                infos[0].mCondition = condition;
                return infos;
            }
            return infos;
        }
        ImsCallForwardInfo[] infos2 = responseCallForward(reason);
        return infos2;
    }

    private ImsCallForwardInfo[] responseCallForward(int reason) {
        String str;
        logd("responseCallForward reason=" + reason);
        int condition = transUtToCfReason(reason);
        if (condition == -1) {
            loge("invalid reason");
            return new ImsCallForwardInfo[0];
        }
        Boolean isCallDiversionEnable = SciSSConfHs.getCallDiversionEnable(reason);
        logd("getCallDiversionEnable isCallDiversionEnable=" + isCallDiversionEnable);
        ImsCallForwardInfo[] infos = {new ImsCallForwardInfo()};
        if (isCallDiversionEnable != null && isCallDiversionEnable.booleanValue()) {
            infos[0].mStatus = 1;
        } else {
            infos[0].mStatus = 0;
        }
        infos[0].mCondition = condition;
        infos[0].mNumber = SciSSConfHs.getCallForwardTargetNumber(reason);
        if (infos[0].mNumber == null) {
            logd("responseCallForward number is null, set empty string as default");
            infos[0].mNumber = "";
        }
        infos[0].mTimeSeconds = 0;
        if (reason == 3 && (str = SciSSConfHs.getCallDiversionNoReplyTimer()) != null) {
            try {
                infos[0].mTimeSeconds = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("responseCallForward : NumberFormatException ");
            }
        }
        if (reason == 0) {
            Date[] date = SciSSConfHs.getCallForwardTime();
            if (date == null || date.length != 2 || date[0] == null || date[1] == null) {
                infos[0].mStartHour = -1;
                infos[0].mStartHour = -1;
                infos[0].mStartHour = -1;
                infos[0].mStartHour = -1;
                logd("can't get the time while query CFT, deliver -1 to APP");
            } else {
                infos[0].mStartHour = date[0].getHours();
                infos[0].mStartMinute = date[0].getMinutes();
                infos[0].mEndHour = date[1].getHours();
                infos[0].mEndMinute = date[1].getMinutes();
                logd("get CFT successfully, date=" + Arrays.toString(date) + ", mStartHour=" + infos[0].mStartHour + ", mStartMinute=" + infos[0].mStartMinute + ", mEndHour=" + infos[0].mEndHour + ", mEndMinute=" + infos[0].mEndMinute);
            }
        }
        infos[0].mToA = GENERAL_TELEPHONE_NUMBER;
        return infos;
    }

    private ImsSsInfo[] responseClck(Boolean isResult) {
        ImsSsInfo[] info = new ImsSsInfo[2];
        info[0] = new ImsSsInfo();
        if (isResult == null || !isResult.booleanValue()) {
            info[0].mStatus = 0;
        } else {
            info[0].mStatus = 1;
        }
        return info;
    }

    private Object responseCwInts(boolean isResult) {
        return responseInts(isResult, 1);
    }

    private int[] responseInts(boolean isResult, int num) {
        logd("responseInts isResult=" + isResult + ", num=" + num);
        int[] response = new int[2];
        if (!isResult) {
            response[0] = 0;
        } else {
            response[0] = 1;
        }
        response[1] = num;
        return response;
    }

    private Bundle responseClir(Boolean isResult, int defaultBehavior) {
        logd("responseClir isResult=" + isResult + ", defaultBehavior=" + defaultBehavior);
        int[] response = new int[2];
        response[1] = 4;
        if (isResult == null || !isResult.booleanValue()) {
            if (defaultBehavior == 3) {
                response[0] = 2;
                response[1] = 0;
            } else {
                response[0] = 0;
            }
        } else if (defaultBehavior == 1) {
            response[0] = 2;
        } else if (defaultBehavior == 2) {
            response[0] = 1;
        } else {
            response[0] = 2;
        }
        Bundle clirInfo = new Bundle();
        clirInfo.putIntArray("queryClir", response);
        return clirInfo;
    }

    private Bundle responseClip(Boolean isResult) {
        logd("responseClip, isResult=" + isResult);
        return responseBundle(isResult);
    }

    private Bundle responseColr(Boolean isResult) {
        logd("responseColr, isResult=" + isResult);
        return responseBundle(isResult);
    }

    private Bundle responseColp(Boolean isResult) {
        logd("responseColp, isResult=" + isResult);
        return responseBundle(isResult);
    }

    private Bundle responseBundle(Boolean isResult) {
        Parcelable imsSsInfo = new ImsSsInfo();
        if (isResult == null || !isResult.booleanValue()) {
            ((ImsSsInfo) imsSsInfo).mStatus = 0;
        } else {
            ((ImsSsInfo) imsSsInfo).mStatus = 1;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("imsSsInfo", imsSsInfo);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int beginImsConnectivity(boolean isVowifi) {
        this.mIsVowifi = isVowifi;
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null) {
            loge("get ConnectivityManager null");
            return 3;
        }
        int slotId = ImsCallProviderUtils.getSubIdUsingSlotId(ImsCallProviderUtils.getSlotId(this.mSlotId));
        this.mNetworkCallback = new UtNetworkCallback();
        if (isVowifi) {
            NetworkRequest request = new NetworkRequest.Builder().addTransportType(1).addCapability(9).setNetworkSpecifier(String.valueOf(slotId)).build();
            logd("handle UT data connection begin ims connectivity of vowifi");
            cm.requestNetwork(request, this.mNetworkCallback, 0, 47, this.mUtServiceHandler);
            this.mIsVowifiTimeOut = false;
        } else {
            int cap = getUtApnCapabilities();
            int connectionType = getUtApnConectionType();
            NetworkRequest request2 = new NetworkRequest.Builder().addTransportType(0).addCapability(cap).setNetworkSpecifier(String.valueOf(slotId)).build();
            logd("handle UT data connection begin ims connectivity of volte use connectionType" + connectionType);
            cm.requestNetwork(request2, this.mNetworkCallback, 0, connectionType, this.mUtServiceHandler);
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endImsConnectivity() {
        ConnectivityManager.NetworkCallback networkCallback;
        logd("endImsConnectivity");
        this.mImsDcState = ImsDataConnectionState.IMS_DC_IDLE;
        SciSSConfHs.reset(3);
        Handler handler = this.mUtServiceHandler;
        if (handler != null) {
            handler.removeMessages(5);
        }
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm != null && (networkCallback = this.mNetworkCallback) != null) {
            cm.unregisterNetworkCallback(networkCallback);
            this.mNetworkCallback = null;
            if (this.mIsSetNetworkAsDefault) {
                logd("clear default network for host");
                cm.bindProcessToNetwork(null);
                this.mIsSetNetworkAsDefault = false;
            }
        }
        if (this.mIsVowifi) {
            setUtOverWifiTunnelUpFlag(false);
        }
    }

    private boolean isNetworkConnected() {
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null) {
            loge("The ConnectivityManager is null");
            return false;
        }
        int networkType = 45;
        if (this.mIsVowifi) {
            networkType = 47;
        }
        NetworkInfo info = cm.getNetworkInfo(networkType);
        if (info == null) {
            return false;
        }
        return info.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUtOverWifiEnabled() {
        boolean isEnable = false;
        if (!IS_VOWIFI_PROP_ON) {
            return false;
        }
        Context context = getContext();
        if (context == null) {
            loge("context == null");
            return false;
        }
        if (!HwImsManager.isWfcEnabledByPlatform(context, ImsCallProviderUtils.getSlotId(this.mSlotId))) {
            return false;
        }
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        if (cm == null) {
            loge("ConnectivityManager == null");
            return false;
        }
        NetworkInfo wifiNetinfo = cm.getNetworkInfo(1);
        boolean isWifiConnected = false;
        if (wifiNetinfo != null && wifiNetinfo.isConnected()) {
            isWifiConnected = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        boolean isUtOverWifiEnabled = SystemProperties.getBoolean("ro.config.hw_vowifi_mmsut", false);
        boolean isUtSwitchOn = this.mImsConfigImpl.getVowifiUtSwitch();
        if (isWifiConnected && isUtOverWifiEnabled && isUtSwitchOn) {
            isEnable = true;
        }
        logd("isUtOverWifiEnabled return " + isEnable);
        return isEnable;
    }

    private void changeDcStateWhenImsActFail() {
        UtCmd cmd = getFirstUtCmd();
        if (IS_VOWIFI_PROP_ON && cmd != null) {
            HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
            if (hwImsConfigImpl != null && hwImsConfigImpl.getUtPreferOption() == 1) {
                logd("process ut use xcap connection fail, retry vowifi");
                cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
                return;
            }
            int utDomain = getUtDomain();
            if (utDomain == 2) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_IMSPDP_FAIL;
            } else if (utDomain == 0) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_IDLE;
            } else if (utDomain == 1) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
            } else if (utDomain == 3) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_IMSPDP_FAIL;
            } else {
                loge("changeDcStateWhenImsActFail, utDomain is an undefined type! utDomain=" + utDomain);
            }
            logd("changeDcStateWhenImsActFail, cmd.dcState=" + cmd.dcState);
        }
    }

    private int getUtDomain() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(slotId);
        boolean isRoaming = TelephonyManager.getDefault().isNetworkRoaming(subId);
        int utDomain = HwImsManager.getWfcMode(getContext(), isRoaming, slotId);
        logd("isUtOverWifiEnabled isRoaming = " + isRoaming + " slot = " + slotId);
        return utDomain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeDcStateWhenTunnelSetupFail() {
        UtCmd cmd = getFirstUtCmd();
        if (IS_VOWIFI_PROP_ON && cmd != null) {
            if (isAirplaneModeOn() && (!isUtUseDefaultApn() || !this.mImsConfigImpl.isUtCanUseWifi())) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_AIRPLANE_ON_TUNNEL_FAIL;
                return;
            }
            HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
            if (hwImsConfigImpl != null && hwImsConfigImpl.getUtPreferOption() == 1) {
                logd("process ut prefer use volte fail, retry vowifi fail, csfb");
                cmd.dcState = ImsDataConnectionState.IMS_DC_ACT_EXECUTE_LTE_FAIL;
                return;
            }
            int utDomain = getUtDomain();
            if (utDomain == 2) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_TUNNEL_FAIL;
            } else if (utDomain == 0) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_ONLY_TUNNEL_FAIL;
            } else if (utDomain == 1) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_TUNNEL_FAIL;
            } else if (utDomain == 3) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_TUNNEL_FAIL;
            } else {
                loge("changeDcStateWhenTunnelSetupFail, utDomain is an undefined type! utDomain=" + utDomain);
            }
            logd("changeDcStateWhenTunnelSetupFail, cmd.dcState=" + cmd.dcState);
        }
    }

    private void startWifiTunnelConnectionAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            startAlarm(46, this.mImsConfigImpl.getUtVoWifiDelayEndTime());
        }
    }

    private void stopWifiTunnelConnectionAlarm() {
        if (!IS_VOWIFI_PROP_ON) {
            loge("already stop tunnel connection Alarm, no need do again");
        } else {
            stopAlarm(46);
        }
    }

    private void handleTearDownTunnelConnectionTimeout() {
        if (!IS_VOWIFI_PROP_ON) {
            logd("handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return");
            return;
        }
        UtCmd cmd = getFirstUtCmd();
        if (cmd != null && isUtOverWifiEnabled()) {
            logd("restart wifi tunnel lifetime alarm.");
            stopWifiTunnelConnectionAlarm();
            startWifiTunnelConnectionAlarm();
        } else {
            logd("tunnel lifetime is out, endImsConnectivity.");
            endImsConnectivity();
            stopWifiTunnelSetupAlarm();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWifiTunnelSetupAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            startAlarm(45, 10000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopWifiTunnelSetupAlarm() {
        if (!IS_VOWIFI_PROP_ON) {
            loge("already stop tunnel connection Alarm, no need do again");
        } else {
            stopAlarm(45);
        }
    }

    private void handleTunnelSetupTimeout() {
        logd("handleTunnelSetupTimeout");
        if (!IS_VOWIFI_PROP_ON) {
            logd("handleTunnelSetupTimeout - isVowifiPropOpened is false, return");
            return;
        }
        processReportChrException((byte) 1, (byte) -1, 1002);
        UtCmd cmd = getFirstUtCmd();
        this.mIsVowifiTimeOut = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        this.mImsDcState = ImsDataConnectionState.IMS_DC_IDLE;
        if (cmd != null) {
            logd("handle UT data connection tunnel setup time out, endUtOverWifiConnectivity.");
            stopWifiTunnelConnectionAlarm();
            stopWifiTunnelSetupAlarm();
            endImsConnectivity();
            changeDcStateWhenTunnelSetupFail();
            isSendUtMessage(6);
        }
    }

    private boolean isUtOverWifiTunnelUp() {
        logd("isUtOverWifiTunnelUp, mIsWifiTunnnelUp = " + this.mIsWifiTunnnelUp);
        return this.mIsWifiTunnnelUp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUtOverWifiTunnelUpFlag(boolean isWifiTunnnelUp) {
        logd("setUtOverWifiTunnelUpFlag, isWifiTunnnelUp = " + isWifiTunnnelUp);
        this.mIsWifiTunnnelUp = isWifiTunnnelUp;
    }

    private boolean isProcessImsConnectivity() {
        endConnectivityIfNeeded(47);
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTING) {
            logd("isProcessImsConnectivity, wait for ims connecting");
            return false;
        }
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTED) {
            logd("isProcessImsConnectivity, ims is connected, mIsReqRoutHost=" + this.mIsReqRoutHost);
            if (this.mIsReqRoutHost) {
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
            isSendUtMessage(2);
            return false;
        }
        int ret = beginImsConnectivity(false);
        logd("isProcessImsConnectivity, begin ims result=" + ret + ", mImsDcState=" + this.mImsDcState);
        if (ret != 1) {
            if (ret != 3) {
                return false;
            }
            isSendUtMessage(4);
            return false;
        }
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_IDLE) {
            this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startImsDataConnectionAlarm();
            return false;
        }
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTING) {
            logd("isProcessImsConnectivity, mImsDcState=ImsDataConnectionState.IMS_DC_CONNECTING");
            return false;
        }
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTED) {
            this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startImsDataConnectionAlarm();
            return false;
        }
        logd("isProcessImsConnectivity, mImsDcState is other ImsDataConnectionState");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void keepAliveImsConnectivity() {
        Handler handler = this.mUtServiceHandler;
        handler.sendMessageDelayed(handler.obtainMessage(5), 30000L);
    }

    private boolean isProcessTemporarilyDcConnection() {
        logd("processTemporarilyDcConnection, mImsDcState = " + this.mImsDcState);
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTING) {
            logd("processTemporarilyDcConnection, wait for ims connecting");
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        if (this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTED) {
            logd("processTemporarilyDcConnection, ims is connected, return true");
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        setDefaultDataSlotId(this.mSlotId);
        this.mIsChangedDefaultDataSub = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        return false;
    }

    private void setDefaultDataSlotId(int slotId) {
        SubscriptionManager subscriptionManager = SubscriptionManager.from(getContext());
        if (subscriptionManager != null) {
            int subId = ImsCallProviderUtils.getSubIdUsingSlotId(slotId);
            logd("setDefaultDataSubId: subId = " + subId + ", slotId = " + slotId);
            subscriptionManager.setDefaultDataSubId(subId);
            return;
        }
        loge("setDefaultDataSubId failed!");
    }

    private int getDefaultDataSlotId() {
        int subId = SubscriptionManager.getDefaultDataSubscriptionId();
        int slotId = SubscriptionManager.getSlotIndex(subId);
        logd("getDefaultDataSubId: subId = " + subId + ", slotId = " + slotId);
        return slotId;
    }

    private InetAddress[] getHostByName(String hostName, Network network) {
        if (TextUtils.isEmpty(hostName) || network == null) {
            return null;
        }
        try {
            InetAddress[] inetAddress = network.getAllByName(hostName);
            return inetAddress;
        } catch (UnknownHostException e) {
            loge("Cannot get inet address Unknown host");
            processReportChrException((byte) -1, (byte) -1, 1003);
            return null;
        }
    }

    private void startImsDataConnectionAlarm() {
        startAlarm(44, 10000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopImsDataConnectionAlarm() {
        stopAlarm(44);
    }

    private void handleImsDcTimeOut() {
        logd("handleImsDcTimeOut");
        handleImsConnectionFailure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUtUseDefaultApn() {
        if (getUtUseApn() == 0) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private int getUtApnCapabilities() {
        if (getUtUseApn() == 1 || getUtUseApn() == 3) {
            return 9;
        }
        if (getUtUseApn() == 0) {
            return 12;
        }
        return 4;
    }

    private int getUtApnConectionType() {
        if (this.mIsVowifi) {
            return 47;
        }
        if (getUtUseApn() == 1 || getUtUseApn() == 3) {
            return 45;
        }
        if (getUtUseApn() == 0) {
            return 0;
        }
        return 11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008a, code lost:
    
        if (r9.moveToFirst() != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0090, code lost:
    
        if (isNotXcapApn(r8, r9, "xcap") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
    
        if (r9.moveToNext() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0093, code lost:
    
        r0 = r9.getInt(r9.getColumnIndexOrThrow("network_type_bitmask"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        if (r0 == 131072) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a1, code lost:
    
        r18.mIsUtUseApn = com.huawei.ims.HwImsUtImpl.IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void queryUtApn() {
        String str;
        Cursor cursor;
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(slotId);
        String operator = TelephonyManager.from(getContext()).getSimOperator(subId);
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        boolean isUtQueryXcapApnExact = hwImsConfigImpl == null || hwImsConfigImpl.isUtQueryXcapApnExact();
        if (isUtQueryXcapApnExact) {
            str = "numeric = ? AND (type like '%xcap%')";
        } else {
            str = "numeric = ?";
        }
        String selection = str;
        Cursor cursor2 = null;
        Uri uri = Uri.withAppendedPath(Uri.parse("content://telephony/carriers/subId"), Integer.toString(subId));
        logd("queryUtApn subId = " + subId);
        try {
            try {
                cursor = getContext().getContentResolver().query(uri, null, selection, new String[]{operator}, "_id");
                if (cursor != null) {
                    try {
                        this.mIsUtUseApn = false;
                    } catch (Exception e) {
                        cursor2 = cursor;
                        loge("Exception for queryUtApn ");
                        if (cursor2 != null) {
                            cursor2.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                logd("mIsUtUseApn = " + this.mIsUtUseApn);
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
            }
        } catch (Exception e2) {
        }
    }

    private boolean isNotXcapApn(boolean isUtQueryXcapApnExact, Cursor cursor, String apnType) {
        if (isUtQueryXcapApnExact) {
            return false;
        }
        String cursorApnType = cursor.getString(cursor.getColumnIndexOrThrow("type"));
        if (TextUtils.isEmpty(cursorApnType) || !cursorApnType.contains(apnType)) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void sendStopImsApnMessage() {
        int utImsDataDelayEndTime = getDefaultDataSlotId() == this.mSlotId ? this.mImsConfigImpl.getUtImsDataDelayEndTime() : this.mImsConfigImpl.getDefUtImsDataDelayEndTime();
        Handler handler = this.mUtServiceHandler;
        handler.sendMessageDelayed(handler.obtainMessage(12), utImsDataDelayEndTime);
    }

    private void cancelStopImsApnMessage() {
        Handler handler = this.mUtServiceHandler;
        if (handler != null && handler.hasMessages(12)) {
            this.mUtServiceHandler.removeMessages(12);
        }
    }

    private boolean isNetworkAvailable(int networkType) {
        Network network = getNetworkForType(networkType);
        if (network != null) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class UtNetworkCallback extends ConnectivityManager.NetworkCallback {
        private UtNetworkCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            HwImsUtImpl.this.logd("UtNetworkCallback got Network:" + network);
            if (!HwImsUtImpl.this.mUtApnInetAddressMap.containsKey(HwImsUtImpl.this.mImsConfigImpl.getUtNafSrvAddr())) {
                HwImsUtImpl.this.logd("UtNetworkCallback bindProcessToNetwork");
                ConnectivityManager cm = (ConnectivityManager) HwImsUtImpl.this.getContext().getSystemService("connectivity");
                if (cm == null) {
                    HwImsUtImpl.this.loge("ConnectivityManager == null");
                    return;
                } else {
                    cm.bindProcessToNetwork(network);
                    HwImsUtImpl.this.mIsSetNetworkAsDefault = HwImsUtImpl.IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
                }
            }
            if (HwImsUtImpl.this.mImsDcState == ImsDataConnectionState.IMS_DC_CONNECTING) {
                HwImsUtImpl.this.logd("handle UT data connection UT connected");
                HwImsUtImpl.this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                if (HwImsUtImpl.this.mIsVowifi) {
                    HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                } else {
                    HwImsUtImpl.this.stopImsDataConnectionAlarm();
                }
                HwImsUtImpl.this.keepAliveImsConnectivity();
                if (HwImsUtImpl.this.mUtServiceHandler != null) {
                    Message message = HwImsUtImpl.this.mUtServiceHandler.obtainMessage(2, network);
                    HwImsUtImpl.this.mUtServiceHandler.sendMessageDelayed(message, 100L);
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            HwImsUtImpl.this.logd("UtNetworkCallback lost Network:" + network);
            HwImsUtImpl.this.endImsConnectivity();
        }
    }

    private boolean isDataConnection() {
        if (this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) {
            logd("handle UT data connection ut can use wifi and wifi is connected");
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        if (isDefaultConnected()) {
            loge("handle UT data connection ut can not use wifi and mobile data is connected");
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        loge("data is not Connected");
        return false;
    }

    private boolean isDefaultConnected() {
        NetworkInfo info;
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null || (info = cm.getNetworkInfo(0)) == null) {
            return false;
        }
        return info.isConnected();
    }

    private boolean isWifiConnected() {
        NetworkInfo info;
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm != null && (info = cm.getNetworkInfo(1)) != null) {
            return info.isConnected();
        }
        return false;
    }

    private boolean isDataSwitchOn() {
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null) {
            return false;
        }
        return cm.getMobileDataEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConnectivity(NetworkInfo networkInfo) {
        logd("handleConnectivity mImsDcState=" + this.mImsDcState);
        if (networkInfo == null || !networkInfo.isAvailable()) {
            loge("network not available");
            return;
        }
        if (this.mIsImsConnectivityEnd && networkInfo.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
            logd("handleConnectivity start to switch card.");
            this.mIsImsConnectivityEnd = false;
            stopTemporaryDcAlarm();
            stopDcAlarm();
            isSendUtMessage(6);
            return;
        }
        UtCmd cmd = getFirstUtCmd();
        if (networkInfo.getType() == 1 && cmd == null && isNetworkAvailable(47)) {
            logd("handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork ");
            endImsConnectivity();
        }
        if (networkInfo.isConnected() && networkInfo.getType() == 0) {
            if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getDefaultDataSlotId() != this.mSlotId) {
                logd("Data has connected, but not for this slot, return");
                return;
            }
            if (!isConnectedForSlotId()) {
                logd("Data has not connected for this slot, return");
                return;
            }
            if (this.mImsDcState != ImsDataConnectionState.IMS_DC_IDLE) {
                logd("handleConnectivity: Ims connection is being established, do not use default data connection.");
                return;
            }
            if (cmd != null && cmd.dcState == ImsDataConnectionState.IMS_DC_CONNECTING) {
                logd("Data has connected, the SS can go UT interface");
                Network network = getNetworkForDefaultApn();
                initSdkServiceIpAddr(network);
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                stopTemporaryDcAlarm();
                stopDcAlarm();
                stopAlarm(49);
                isSendUtMessage(6);
            }
        }
    }

    private boolean isConnectedForSlotId() {
        Context context = getContext();
        boolean isConnected = false;
        if (context == null) {
            return false;
        }
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        if (cm == null) {
            loge("isConnectedForSlotId: cm == null");
            return false;
        }
        Network network = cm.getActiveNetwork();
        NetworkCapabilities nc = cm.getNetworkCapabilities(network);
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(ImsCallProviderUtils.getSlotId(this.mSlotId));
        if (nc != null && nc.getNetworkSpecifier() != null && nc.getNetworkSpecifier().satisfiedBy(new StringNetworkSpecifier(Integer.toString(subId)))) {
            isConnected = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        logd("isConnectedForSlotId: Data connected state is " + isConnected);
        return isConnected;
    }

    private void handleDcTimeOut() {
        logd("handleDcTimeOut");
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null) {
            loge("[error]cmd is null, but receive message of dc time out!");
            return;
        }
        logd("handle UT data connection time out and finish data connection");
        processReportChrException((byte) 0, (byte) -1, 1002);
        cmd.dcState = ImsDataConnectionState.IMS_DC_FINISH;
        this.mLastSs = 1;
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
        }
        isSendUtMessage(6);
    }

    private void startUtAlarm() {
        startAlarm(42, 30000);
    }

    private void stopUtAlarm() {
        stopAlarm(42);
    }

    private void handleUtTimeOut() {
        logd("handleUtTimeOut");
        this.mLastSs = 1;
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
            utSdkReset(0);
            this.mUtApnInetAddressMap.clear();
        }
        processReportChrException((byte) -1, (byte) -1, 1001);
        handoverSsTick();
    }

    private void startDcAlarm() {
        startAlarm(41, 10000);
    }

    private void stopDcAlarm() {
        stopAlarm(41);
    }

    private void startTemporaryDcAlarm() {
        startAlarm(47, 30000);
    }

    private void stopTemporaryDcAlarm() {
        stopAlarm(47);
    }

    private void handleTemporaryDcTimeOut() {
        logd("handleTemporaryDcTimeOut");
        recoverDefaultDataSub();
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null) {
            loge("[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!");
            return;
        }
        cmd.dcState = ImsDataConnectionState.IMS_DC_FINISH;
        this.mLastSs = 1;
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.reset();
        }
        isSendUtMessage(6);
    }

    private void startUtForbiddenAlarm() {
        int delay = this.mImsConfigImpl.getUtForbiddenTimer();
        logd("startUtForbiddenAlarm: delay=" + (delay / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE) + "s");
        this.mUtForbiddenDate = new Date();
        Date date = this.mUtForbiddenDate;
        date.setMinutes(date.getMinutes() + (delay / START_UT_FORBIDDEN_ALARM_ONE_MINUTE));
    }

    private void stopUtForbiddenAlarm() {
        logd("stopUtForbiddenAlarm: mUtForbiddenDate=" + this.mUtForbiddenDate);
        this.mUtForbiddenDate = null;
    }

    private void checkUtForbiddenDate() {
        if (isConfigUtForbiddenTimer() && this.mUtForbiddenDate != null && this.mIsUtForbidden) {
            Date currDate = new Date();
            if (currDate.compareTo(this.mUtForbiddenDate) >= 0) {
                this.mIsUtForbidden = false;
                stopUtForbiddenAlarm();
            }
        }
    }

    private boolean isConfigUtForbiddenTimer() {
        if (this.mImsConfigImpl.getUtForbiddenTimer() != -1) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void startTemporaryUtStayAlarm() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getFirstUtCmd() == null) {
            logd("startTemporaryUtStayAlarm");
            startAlarm(48, LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE);
        }
    }

    private void stopTemporaryUtStayAlarm() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            logd("stopTemporaryUtStayAlarm");
            stopAlarm(48);
        }
    }

    private void handleTemporaryUtStayTimeOut() {
        logd("handleTemporaryUtStayTimeOut");
        recoverDefaultDataSub();
        broadcastUtIdle();
    }

    private void recoverDefaultDataSub() {
        logd("recoverDefaultDataSub");
        if (!this.mIsChangedDefaultDataSub) {
            return;
        }
        int defaultDataSlotId = getDefaultDataSlotId();
        int default4gSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        logd("recoverDefaultDataSub: defaultDataSlotId = " + defaultDataSlotId + ", default4gSlotId = " + default4gSlotId);
        if (defaultDataSlotId != default4gSlotId && default4gSlotId != this.mSlotId) {
            logd("recoverDefaultDataSub: recover default data slot to main slot");
            setDefaultDataSlotId(default4gSlotId);
            this.mIsChangedDefaultDataSub = false;
        }
    }

    private void startAlarm(int alarm, int timer) {
        logd("startAlarm alarm = " + alarm + ", timer = " + timer + "ms");
        Handler handler = this.mUtServiceHandler;
        if (handler != null) {
            if (handler.hasMessages(alarm)) {
                this.mUtServiceHandler.removeMessages(alarm);
            }
            Handler handler2 = this.mUtServiceHandler;
            handler2.sendMessageDelayed(handler2.obtainMessage(alarm), timer);
        }
    }

    private void stopAlarm(int alarm) {
        logd("stopAlarm alarm = " + alarm);
        Handler handler = this.mUtServiceHandler;
        if (handler != null && handler.hasMessages(alarm)) {
            this.mUtServiceHandler.removeMessages(alarm);
        }
    }

    private Date transIntToDate(int hour, int minute) {
        Date date = new Date();
        date.setHours(hour);
        date.setMinutes(minute);
        return date;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClear(int level) {
        endImsConnectivity();
        this.mLastSs = 1;
        clearCtCardVolteFlag();
        if (isConfigUtForbiddenTimer()) {
            if (level == 1) {
                logd("handleClear, set mIsUtForbidden false");
                this.mIsUtForbidden = false;
                stopUtForbiddenAlarm();
            }
        } else {
            this.mIsUtForbidden = false;
        }
        this.mCanSendChrBroadcastDate = null;
        this.mIsCheckedSimCardByUt = false;
        this.mUtDataExpireTime.clear();
        this.mNextGetCallWaitingTime = null;
        synchronized (this.mUtCmdQueue) {
            int size = this.mUtCmdQueue.size();
            for (int i = 0; i < size; i++) {
                UtCmd cmd = this.mUtCmdQueue.get(i);
                responseFailure(cmd.utId, 0);
            }
            this.mUtCmdQueue.clear();
        }
        GbaAuth gbaAuth = this.mGbaAuth;
        if (gbaAuth != null) {
            gbaAuth.clear();
        } else {
            logd("mGbaAuth is null");
        }
        utSdkReset(level);
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && level == 1) {
            logd("handleClear: reset current sub id to default");
            setCurrentSlotId(-1);
        }
        this.mUtApnInetAddressMap.clear();
        isSendUtMessage(6);
    }

    private String hiddenPrivacyInfo(String info, int type) {
        return HiddenPrivacyInfo.putMosaic(info, type);
    }

    private void handleGetCallWaitingDone(boolean isCallWaitingEnable, int type, Message onComplete) {
        boolean isEnable = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        if (!isCallWaitingEnable || (type & 1) != 1) {
            isEnable = false;
        }
        logd("get call waiting success, isEnable=" + isEnable);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            isSyncCallWaitingToImsSdk(isEnable, onComplete);
        } else {
            if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
                isSyncCallWaitingToCs(isEnable, onComplete);
                return;
            }
            logd("call waiting does not sync to modem, response to target");
            Object ret = responseCwInts(isEnable);
            responseMessage(onComplete, ret, null);
        }
    }

    private void handleSetCallWaitingDone(boolean isEnable, Message onComplete) {
        logd("set call waiting success, isEnable=" + isEnable);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            isSyncCallWaitingToImsSdk(isEnable, onComplete);
        } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
            isSyncCallWaitingToCs(isEnable, onComplete);
        } else {
            Object ret = responseCwInts(isEnable);
            responseMessage(onComplete, ret, null);
        }
    }

    private void handleSetCallWaitingNoneSync(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        Message onComplete = (Message) ar.userObj;
        if (ar.exception != null) {
            loge("handleSetCallWaitingNoneSync: ar.exception=" + ar.exception);
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        boolean isEnable = isEnableCallWaiting(msg.arg2);
        logd("isEnableCallWaiting = " + isEnable);
        Object ret = responseCwInts(isEnable);
        responseMessage(onComplete, ret, null);
    }

    private boolean isSyncCallWaitingToImsSdk(boolean isEnable, Message onComplete) {
        int callWaitingAction = getCallWaitingAction(isEnable);
        logd("begin sync call waiting to IMS SDK, callWaitingAction=" + callWaitingAction);
        if (this.mIsCallWatingUtCanBeUsed) {
            this.mCi.setCallWaiting(isEnable, 1, this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, onComplete));
        } else {
            logd("don't sync result to IMS SDK exectly");
            responseMessage(this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, onComplete), null, null);
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private void handleSyncCallWaitingToImsSdkDone(Message msg) {
        AsyncResult arSyncCw = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCw.userObj;
        if (arSyncCw.exception != null) {
            loge("SyncCallWaitingToImsSdk FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        int callWaitingAction = msg.arg1;
        logd("sync call waiting to IMS SDK successfully, callWaitingAction=" + callWaitingAction);
        boolean isEnable = isEnableCallWaiting(callWaitingAction);
        handleSyncCallWaitingDone(isEnable, msg);
    }

    private boolean isSyncCallWaitingToCs(boolean isEnable, Message onComplete) {
        int callWaitingAction = getCallWaitingAction(isEnable);
        responseMessage(this.mUtServiceHandler.obtainMessage(30, callWaitingAction, 0, onComplete), null, null);
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private void handleSyncCallWaitingToCsDone(Message msg) {
        AsyncResult arSyncCw = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCw.userObj;
        if (arSyncCw.exception != null) {
            loge("SyncCallWaitingToCs FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
        } else {
            logd("sync call waiting to IMS SDK successfully");
            int callWaitingAction = msg.arg1;
            boolean isEnable = isEnableCallWaiting(callWaitingAction);
            handleSyncCallWaitingDone(isEnable, msg);
        }
    }

    private void handleSyncCallWaitingDone(boolean isEnable, Message msg) {
        logd("sync call waiting has finished successfully.");
        this.mIsAirModeResetCwInModem = false;
        if (this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CallWaitingSource.CALL_WAITING_FROM_LOCAL) {
            logd("begin set call waiting to sharedpreference");
            this.mImsConfigImpl.setBoolToSp(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSlotId], isEnable, getContext());
        }
        AsyncResult arSyncCw = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCw.userObj;
        Object ret = responseCwInts(isEnable);
        responseMessage(onComplete, ret, arSyncCw.exception);
    }

    private int getCallWaitingAction(boolean isEnable) {
        if (isEnable) {
            return 1;
        }
        return 0;
    }

    private boolean isEnableCallWaiting(int callWaitingAction) {
        if (callWaitingAction == 1) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isUtDataExpire(int type) {
        if (type == 5 || type == 13 || type == 14) {
            Date utDataExpireTime = this.mUtDataExpireTime.get(Integer.valueOf(type));
            if (utDataExpireTime == null) {
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
            Date currDate = new Date();
            if (currDate.compareTo(utDataExpireTime) >= 0) {
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
            logd("Ut data is not expire, currDate=" + currDate + ", utDataExpireTime" + utDataExpireTime);
            return false;
        }
        loge("isUtDataExpire unknown type=" + type);
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private void setUtDataExpireTime(int type) {
        logd("enter setUtDataExpireTime, type=" + type);
        if (type == 5 || type == 13 || type == 14) {
            Date currDate = new Date();
            currDate.setSeconds(currDate.getSeconds() + 10);
            this.mUtDataExpireTime.put(Integer.valueOf(type), currDate);
            logd("expirte time=" + currDate);
        }
    }

    private void syncClirModeToImsSdk(int clirMode, Message onComplete) {
        this.mCi.setCLIR(clirMode, onComplete);
    }

    private void handleSyncClirModeToImsSdkDone(Message msg) {
        AsyncResult arSyncClir = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncClir.userObj;
        if (arSyncClir.exception != null) {
            loge("handleSyncClirModeToImsSdkDone FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
        } else {
            Bundle ret = msg.getData();
            responseMessage(onComplete, ret, arSyncClir.exception);
        }
    }

    private boolean isUtSupportedByCurrentBearer() {
        int utBearerType = this.mImsConfigImpl.getUtBearerType();
        boolean isUtSupport = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        boolean z = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        if (utBearerType == 1) {
            isUtSupport = isLteNetworkType();
        } else if (utBearerType == 2) {
            if (this.mHwImsServiceImpl.getImsRegisterState() != 1) {
                z = false;
            }
            isUtSupport = z;
        } else if (utBearerType == 3) {
            if (!isLteNetworkType() && this.mHwImsServiceImpl.getImsRegisterState() != 1) {
                z = false;
            }
            isUtSupport = z;
        } else {
            logd("isUtSupportedByCurrentBearer invalid utBearerType");
        }
        logd("isUtSupportedByCurrentBearer isUtSupport = " + isUtSupport);
        return isUtSupport;
    }

    private boolean isLteNetworkType() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(slotId);
        int networkType = TelephonyManager.getDefault().getNetworkType(subId);
        logd("isLteNetworkType subId = " + subId + " networkType = " + networkType);
        if (networkType == 13 || networkType == 19) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUtApnConnection(Intent intent) {
        if (intent == null) {
            return;
        }
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && sCurrentSlotId != this.mSlotId) {
            logd("handleUtApnConnection intent not for this slot: " + this.mSlotId + " sCurrentSlotId = " + sCurrentSlotId);
            return;
        }
        String apn = intent.getStringExtra("apnType");
        int causeCode = intent.getIntExtra("failCause", DcFailCause.NONE.getErrorCode());
        String cause = DcFailCause.fromInt(causeCode).toString();
        logd("handleUtApnConnection apn = " + apn + " cause = " + cause);
        if (!TextUtils.isEmpty(apn) && "xcap".equals(apn) && !TextUtils.isEmpty(cause)) {
            processReportChrException((byte) 0, (byte) -1, DcFailCause.valueOf(cause).getErrorCode());
            if (this.mImsConfigImpl.isDcFailCauseForNonVolteSim(cause)) {
                this.mIsUtSubscribed = false;
            }
            if (this.mImsConfigImpl.isDcFailCauseToReleaseApn(cause)) {
                stopImsDataConnectionAlarm();
                handleImsConnectionFailure();
            }
        }
    }

    private boolean isUtSubscribed() {
        return this.mIsUtSubscribed;
    }

    private void handleImsConnectionFailure() {
        endImsConnectivity();
        if (isConfigUtForbiddenTimer()) {
            logd("handleImsConnectionFailure, set mIsUtForbidden true");
            this.mIsUtForbidden = IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            stopUtForbiddenAlarm();
            startUtForbiddenAlarm();
        }
        this.mLastSs = 1;
        if (isUtOverWifiEnabled()) {
            logd("handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true.");
            changeDcStateWhenImsActFail();
            isSendUtMessage(6);
        } else {
            logd("handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick.");
            this.mImsDcState = ImsDataConnectionState.IMS_DC_IDLE;
            handoverSsTick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String str) {
        Rlog.i("HwImsUtImpl[" + this.mSlotId + "]", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e("HwImsUtImpl[" + this.mSlotId + "]", "[ERROR] " + str);
    }

    private boolean isUse403ForLocalCw() {
        return this.mImsConfigImpl.isUse403ForLocalCw();
    }

    private boolean isRegetImsiFromPhone() {
        Phone defPhone;
        String imsi;
        if (this.mImsConfigImpl.getImsi() == null && (defPhone = getDefaultPhone()) != null && (imsi = defPhone.getSubscriberId()) != null) {
            logd("isRegetImsiFromPhone");
            this.mImsConfigImpl.setImsi(imsi);
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private boolean isOtherSubUtIdle() {
        ImsUtImpl imsUtImpl = this.mImsUtImpl;
        if (imsUtImpl != null) {
            return imsUtImpl.isOtherSubUtIdle(this.mSlotId);
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    private void broadcastUtIdle() {
        ImsUtImpl imsUtImpl;
        if (isUtIdle() && (imsUtImpl = this.mImsUtImpl) != null) {
            imsUtImpl.broadcastUtIdle(this.mSlotId);
        }
    }

    public boolean isUtIdle() {
        Handler handler = this.mUtServiceHandler;
        boolean isWaitingForUtStay = handler != null && handler.hasMessages(48);
        boolean isUtCmdQueueEmpty = getFirstUtCmd() == null;
        logd("isUtIdle: isWaitingForUtStay = " + isWaitingForUtStay + ", isUtCmdQueueEmpty = " + isUtCmdQueueEmpty);
        if (isWaitingForUtStay || !isUtCmdQueueEmpty) {
            return false;
        }
        return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
    }

    public void receiveOtherSubUtIdle() {
        logd("receiveOtherSubUtIdle");
        if (!isUtIdle()) {
            isSendUtMessage(6, null);
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void processECT() {
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.explicitCallTransfer(this.mUtServiceHandler.obtainMessage(50));
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public String getUtIMPUFromNetwork() {
        if (this.mIsSimRecordLoaded) {
            return this.mImsConfigImpl.getUtIMPUFromNetwork();
        }
        return null;
    }

    public boolean isSimCardCheckedByUt() {
        return this.mIsCheckedSimCardByUt;
    }

    public void setIsDataReg(boolean isDataReg) {
        this.mIsDataReg = isDataReg;
    }

    private synchronized void initUtSdkWhenDomainSelectUt() {
        if (sSciSsConfCb == null) {
            logd("initUtSdkWhenDomainSelectUt: initUtSDK and set ut params to sdk.");
            initUtSdk();
            initSciSsConfHs();
        } else if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && isRegetImsiFromPhone()) {
            setImsSdkImpi();
            setImsSdkBsfAddr();
            setImsSdkNafAddr();
        } else {
            logd("initUtSdkWhenDomainSelectUt: undefined branch.");
        }
    }

    private void responseFailureAndEndUt(UtCmd cmd) {
        if (cmd == null) {
            logd("responseFailureAndEndUt: cmd is null.");
            return;
        }
        Message onComplete = popUtMessage(cmd.utId);
        if (onComplete != null) {
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
        }
        cmd.mState = CmdState.CMD_FINISH;
        isSendUtMessage(6, null);
    }

    public void detectSimCardSubscriptionStatus() {
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded");
            return;
        }
        int mainSlot = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if ((ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && this.mSlotId != mainSlot && isCtCardAndSupportVolte()) || isCtCardAndNotSupportVolte()) {
            logd("don't detect sim card subscription status, the main slot is " + mainSlot);
            return;
        }
        sendQueryCallWaitingForDetection();
    }

    private void sendQueryCallWaitingForDetection() {
        checkAccessPermission();
        logd("[UTCMD]enter sendQueryCallWaitingForDetection");
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLWAITING_FOR_DETECTION, 20, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return;
        }
        handleSs(cmd);
    }

    private boolean isUtCanUseDefaultBearForWifiConnected() {
        if (!this.mImsConfigImpl.isUtCanUseWifi() && getUtUseApn() == 0 && isWifiConnected()) {
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }

    private void startDefaultBearForWifiConnected(UtCmd cmd) {
        logd("startDefaultBearForWifiConnected.");
        if (cmd == null) {
            logd("startDefaultBearForWifiConnected: cmd is null.");
            return;
        }
        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
        this.mImsDcState = ImsDataConnectionState.IMS_DC_CONNECTING;
        startImsDataConnectionAlarm();
        beginImsConnectivity(false);
    }

    private void sendUtChrBroadcast(UtChrData utChrData) {
        if (utChrData == null) {
            logd("sendUtChrBroadcast: utChrData is null.");
            return;
        }
        Bundle utChrBundle = new Bundle();
        utChrBundle.putString("EventScenario", "UT_FAIL");
        utChrBundle.putInt("EventFailCause", 1);
        utChrBundle.putByte("IMS.UT.operationType", utChrData.getOperationType());
        utChrBundle.putByte("IMS.UT.dataApntype", utChrData.getDataApnType());
        utChrBundle.putByte("IMS.UT.isSupportWifi", utChrData.getIsSupportWifi());
        utChrBundle.putByte("IMS.UT.isMobileDateConnected", utChrData.getIsMobileDataConnected());
        utChrBundle.putByte("IMS.UT.isWifiConnected", utChrData.getIsWifiConnected());
        if (utChrData.getIsVowifiEnable() != -1) {
            utChrBundle.putByte("IMS.UT.isVowifiEnable", utChrData.getIsVowifiEnable());
        }
        if (utChrData.getAddressType() != -1) {
            utChrBundle.putByte("IMS.UT.addressType", utChrData.getAddressType());
        }
        utChrBundle.putByte("IMS.UT.subId", utChrData.getSubId());
        utChrBundle.putByte("IMS.UT.currentSubId", utChrData.getCurrentSubId());
        if (utChrData.getVowifiDomain() != -1) {
            utChrBundle.putByte("IMS.UT.vowifidomain", utChrData.getVowifiDomain());
        }
        if (utChrData.getFailReason() != -1) {
            utChrBundle.putInt("IMS.UT.failReason", utChrData.getFailReason());
        }
        utChrBundle.putString("IMS.UT.cmdDcState", utChrData.getCmdDcState());
        logd("sendUtChrBroadcast: sendTelephonyChrBroadcast." + utChrBundle.toString());
        HwTelephonyFactory.getHwTelephonyChrManager().sendTelephonyChrBroadcast(utChrBundle);
    }

    private UtChrData extractParametersForChr(byte b, byte b2, int i) {
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd == null) {
            return null;
        }
        logd("extractParametersForChr");
        UtChrData utChrData = new UtChrData();
        utChrData.setOperationType((byte) firstUtCmd.utType);
        utChrData.setDataApnType((byte) getUtUseApn());
        utChrData.setIsSupportWifi(this.mImsConfigImpl.isUtCanUseWifi() ? (byte) 1 : (byte) 0);
        utChrData.setIsMobileDataConnected(isDefaultConnected() ? (byte) 1 : (byte) 0);
        utChrData.setIsWifiConnected(isWifiConnected() ? (byte) 1 : (byte) 0);
        utChrData.setIsVowifiEnable(b);
        utChrData.setAddressType(b2);
        utChrData.setSubId((byte) ImsCallProviderUtils.getSlotId(this.mSlotId));
        utChrData.setCurrentSubId((byte) sCurrentSlotId);
        utChrData.setVowifiDomain((byte) getUtDomain());
        utChrData.setFailReason(i);
        utChrData.setCmdDcState(firstUtCmd.dcState.toString());
        return utChrData;
    }

    private void processReportChrException(byte isVowifiUt, byte addressType, int failReason) {
        UtChrData utChrData = extractParametersForChr(isVowifiUt, addressType, failReason);
        Date currDate = new Date();
        Date date = this.mCanSendChrBroadcastDate;
        if (date == null || currDate.compareTo(date) >= 0) {
            sendUtChrBroadcast(utChrData);
            if (this.mCanSendChrBroadcastDate == null) {
                this.mCanSendChrBroadcastDate = new Date();
            }
            this.mCanSendChrBroadcastDate.setTime(currDate.getTime() + 3600000);
        }
    }

    private void handleSciSsConfCbOfCwSuccessfully(UtCmd cmd, UtData ut) {
        Message onComplete = popUtMessage(cmd.utId);
        if (onComplete == null) {
            logd("onComplete is null.");
        }
        if (ut.mUtOpType == 0) {
            logd("get cw state, cmd.mToken = " + cmd.mToken);
            if (cmd.mToken == CmdToken.CMD_GET_CALLWAITING) {
                Boolean isCallWaitingEnable = SciSSConfHs.getCallWaitingEnabled();
                if (isCallWaitingEnable != null) {
                    boolean isEnable = isCallWaitingEnable.booleanValue();
                    handleGetCallWaitingDone(isEnable, 1, onComplete);
                }
            } else if (isCtCardAndSupportVolte()) {
                saveCtCardVolteFlag(IS_LOCAL_CALL_WAITING_DEFAULT_VALUE);
            }
        } else {
            handleSetCallWaitingDone(cmd.isUtEnable, onComplete);
        }
        cmd.mState = CmdState.CMD_FINISH;
    }

    private void utSdkReset(int level) {
        if (sUtSdkInitResult == 0) {
            logd("sUtSdkInitResult reset");
            if (level == 1) {
                this.mIsReqRoutHost = false;
                this.mIsSetNafOrBsfIpToSdk = false;
            }
            SciSSConfHs.reset(level);
        }
    }

    private int getUtUseApn() {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.getUtUseApn() == 3 && this.mIsUtUseApn) {
            return 3;
        }
        return this.mIsUtUseApn ? 1 : 0;
    }

    private boolean isEndOtherImsConnectivity() {
        ImsUtImpl imsUtImpl = this.mImsUtImpl;
        if (imsUtImpl != null) {
            return imsUtImpl.endOtherImsConnectivity(this.mSlotId);
        }
        return false;
    }

    private boolean isUtRetryQueueEmpty() {
        synchronized (this.mUtRetryCmdQueue) {
            if (this.mUtRetryCmdQueue.isEmpty()) {
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
            return false;
        }
    }

    public boolean endCurrentImsConnectivity() {
        Handler handler = this.mUtServiceHandler;
        if (handler != null && handler.hasMessages(12)) {
            this.mUtServiceHandler.removeMessages(12);
            UtCmd utCmd = getFirstUtCmd();
            boolean isUtRetryCmdQueueEmpty = isUtRetryQueueEmpty();
            if (utCmd == null && isUtRetryCmdQueueEmpty) {
                logd("The slot has no UT cmd to solve while the other is waiting, so end connectivity.");
                endImsConnectivity();
                return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
            }
            return IS_LOCAL_CALL_WAITING_DEFAULT_VALUE;
        }
        return false;
    }
}
