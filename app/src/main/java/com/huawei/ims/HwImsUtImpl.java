package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class HwImsUtImpl extends ImsUtImpl {
    public static final String ACTION_MAPCON_SERVICE_FAILED = "com.hisi.mapcon.servicefailed";
    public static final int CALL_SDK_FAILED = -1;
    public static final int CALL_SDK_SUCCESSFULLY = 0;
    public static final int CALL_WAITING_ACTIVE = 1;
    public static final int CALL_WAITING_DEACTIVE = 0;
    private static final String[] CARD_VOLTE_FLAG;
    public static final int CFT_DATE_NUM = 2;
    public static final int CF_REASON_TIME = 6;
    private static final int CLEAR_TCP_GBA_PARM = 0;
    private static final int CLEAR_TCP_GBA_UTCFG_PARM = 1;
    public static final int CLIR_PRESENTATION_ALLOWED_TEMPORARY = 4;
    private static final String CONNECT_INFO_ERRORCODE = "ut409perfix";
    private static final int DC_ALARM_IN_MS = 10000;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_CURRENT_SUB_ID = -1;
    public static final int DEFAULT_NO_REPLY_TIME = 20;
    private static final int DEFAULT_NO_REPLY_TIMER = -1;
    private static final int EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT = 1;
    private static final int EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT = 0;
    private static final int EVENT_ECT_RESULT = 50;
    public static final int EVENT_GET_CS_CALL_WAITING_DONE = 27;
    public static final int EVENT_QUERY_CALL_WAITING = 20;
    public static final int EVENT_QUERY_CLIR = 22;
    public static final int EVENT_SET_CS_CALL_WAITING_DONE = 28;
    public static final int EVENT_SYNC_CLIR_TO_IMS_DONE = 31;
    public static final int EVENT_SYNC_CW_TO_CS_DONE = 30;
    public static final int EVENT_SYNC_CW_TO_IMS_DONE = 29;
    public static final int EVENT_UPDATE_CALL_WAITING = 21;
    public static final int EVENT_UPDATE_CLIR = 23;
    private static int FLAG_DEFAULT_VOLTE_VALUE = 0;
    private static int FLAG_IS_NOT_VOLTE = 0;
    private static int FLAG_IS_VOLTE = 0;
    public static final int GENERAL_TELEPHONE_NUMBER = 129;
    public static final int GET_CALL_WAITING_DURATION_TIME = 5;
    public static final int HANDLER_ARG_RESERVE = 0;
    public static final int ILLEGAL_NUMBER = -1;
    private static final int IMS_DATA_CONNECTION_KEEPALIVE_IN_MS = 30000;
    private static final int IMS_DATA_CONNECTION_TIMEOUT_IN_MS = 10000;
    private static final int IMS_GET_HOST_NAME_DELAY_IN_MS = 100;
    public static final int INTERNATIONAL_TELEPHONE_NUMBER = 145;
    public static final boolean IS_UT_USE_IMSAPN;
    public static final boolean LOCAL_CALL_WAITING_DEFAULT_VALUE = true;
    private static final String LOG_TAG = "HwImsUtImpl";
    public static final String MAPCON_APN = "apn";
    public static final String MAPCON_CAUSE = "cause";
    public static final int MAPCON_DOMAIN_CELLULAR_PREFER = 3;
    public static final int MAPCON_DOMAIN_LTE_PREFER = 1;
    public static final int MAPCON_DOMAIN_WIFI_ONLY = 0;
    public static final int MAPCON_DOMAIN_WIFI_PREFER = 2;
    public static final String MAPCON_PHONEID = "phoneId";
    public static final String MAPCON_SERVERADDR = "serverAddr";
    public static final int MAPCON_SERVICE_TYPE_MMS = 1;
    public static final int MAPCON_SERVICE_TYPE_UT = 2;
    public static final int MAPCON_SERVICE_TYPE_VOICE = 0;
    public static final String MAPCON_TYPE = "serviceType";
    public static final int MAPCON_UNKNOW_INDEX = 3;
    public static final int MAX_REQUESTS_PENDING = 50;
    public static final int MEDIA_TYPE_AUDIO = 1;
    public static final int MEDIA_TYPE_VIDEO = 2;
    private static final int NOT_REGISTERED = 0;
    public static final int NUM_PRESENTATION_ALLOWED = 0;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT = 0;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED = 1;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED = 3;
    private static final int OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED = 2;
    public static final String PERMISSION_READ_PRECISE_PHONE_STATE = "android.permission.READ_PRECISE_PHONE_STATE";
    private static final int REGISTERED = 1;
    private static final int REGISTERING = 2;
    private static final String RO_BUILD_VERSION_INCREMENTAL;
    private static final int SEND_CHR_BROADCAST_TIME_GAP = 3600000;
    public static final int SERVICE_CLASS_CW_MODE = 3;
    public static final int SMCOMMON_TYPE_MMS = 0;
    public static final int SMCOMMON_TYPE_OTHERS = 2;
    public static final int SMCOMMON_TYPE_UT = 1;
    public static final int SSCONF_CB_CONDITION_ALL = 5;
    public static final int SSCONF_CB_CONDITION_BAIC = 0;
    public static final int SSCONF_CB_CONDITION_BAICr = 4;
    public static final int SSCONF_CB_CONDITION_BAOC = 1;
    public static final int SSCONF_CB_CONDITION_BAOIC = 2;
    public static final int SSCONF_CB_CONDITION_BAOICxH = 3;
    public static final int SSCONF_CF_REASON_CFB = 2;
    public static final int SSCONF_CF_REASON_CFNL = 1;
    public static final int SSCONF_CF_REASON_CFNR = 3;
    public static final int SSCONF_CF_REASON_CFNRc = 4;
    public static final int SSCONF_CF_REASON_CFT = 5;
    public static final int SSCONF_CF_REASON_CFU = 0;
    public static final int SSCONF_OP_TYPE_GET = 0;
    public static final int SSCONF_OP_TYPE_PUT = 1;
    public static final int SSCONF_SS_TYPE_ALL = 0;
    public static final int SSCONF_SS_TYPE_BAIC = 15;
    public static final int SSCONF_SS_TYPE_BAICr = 19;
    public static final int SSCONF_SS_TYPE_BAOC = 16;
    public static final int SSCONF_SS_TYPE_BAOIC = 17;
    public static final int SSCONF_SS_TYPE_BAOICxH = 18;
    public static final int SSCONF_SS_TYPE_BA_ALL = 21;
    public static final int SSCONF_SS_TYPE_CDIV = 5;
    public static final int SSCONF_SS_TYPE_CFA = 22;
    public static final int SSCONF_SS_TYPE_CFAC = 23;
    public static final int SSCONF_SS_TYPE_CFB = 9;
    public static final int SSCONF_SS_TYPE_CFNL = 8;
    public static final int SSCONF_SS_TYPE_CFNR = 10;
    public static final int SSCONF_SS_TYPE_CFNRc = 11;
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
    public static final int SS_403_FORBIDDEN_ERROR = 403;
    public static final int SS_404_NOT_FOUND_ERROR = 404;
    public static final int SS_409_CONFLICT_ERROR = 409;
    public static final int SS_ACTIVE = 1;
    public static final int SS_DEACTIVE = 0;
    public static final int SS_ERROR = 1;
    public static final int SS_ERROR_FROM_BSF = 2;
    public static final int SS_ERROR_FROM_NAF = 1;
    public static final int SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR = 3;
    public static final int SS_OK = 0;
    public static final int SS_RESPONSE_CF_NUM = 1;
    public static final int SS_RESPONSE_NUM = 2;
    public static final int SS_SEVICE_CLASS_VOICE = 1;
    public static final int SUB_EVENT_IMS_GET_IMPU_DONE = 11;
    public static final int SUB_EVENT_IMS_UT_CLEAR = 7;
    public static final int SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY = 5;
    public static final int SUB_EVENT_IMS_UT_DC_ALARM = 41;
    public static final int SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY = 12;
    public static final int SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE = 2;
    public static final int SUB_EVENT_IMS_UT_IMS_DC_ALARM = 44;
    public static final int SUB_EVENT_IMS_UT_INIT = 8;
    public static final int SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED = 4;
    public static final int SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK = 3;
    public static final int SUB_EVENT_IMS_UT_SCISSCONFCB = 1;
    public static final int SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM = 46;
    public static final int SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM = 47;
    public static final int SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM = 48;
    public static final int SUB_EVENT_IMS_UT_TICK = 6;
    public static final int SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM = 45;
    public static final int SUB_EVENT_IMS_UT_UT_ALARM = 42;
    public static final int SUB_EVENT_IMS_UT_UT_RETRY_ALARM = 43;
    public static final int SUB_EVENT_SIM_CARD_ABSENT = 10;
    public static final int SUB_EVENT_SIM_RECORDS_LOADED = 9;
    private static final int TEMPORARY_DC_ALARM_IN_MS = 30000;
    private static final int TEMPORARY_UT_STAY_ALARM_IN_MS = 1000;
    private static final int TUNNEL_SETUP_TIMEOUT_IN_MS = 10000;
    private static final int TYPE_SDK_HOST_BSF = 1;
    private static final int TYPE_SDK_HOST_NAF = 0;
    private static final int UT_ALARM_IN_MS = 30000;
    public static final int UT_DATA_UPDATE_TIME = 10;
    public static final int UT_DOMAIN_CELLULAR = 2;
    public static final int UT_DOMAIN_DEFAULT = 0;
    public static final int UT_DOMAIN_WIFI = 1;
    public static final int UT_ID_INVALID = -1;
    public static final int UT_ID_VALID = 0;
    public static final int UT_INVALID = -1;
    private static int mCurrentSubId;
    private static int mRequestId;
    private static SciSSConfCb mSciSSConfCb;
    private HwImsServiceImpl mHwImsServiceImpl;
    private HwImsConfigImpl mImsConfigImpl;
    private ImsUtImpl mImsUtImpl;
    private ConnectivityManager.NetworkCallback mNetworkCallback;
    private int mSubId;
    public static final boolean IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
    private static final String RO_HW_OEMNAME = SystemProperties.get("ro.hw.oemName", HwImsConfigImpl.NULL_STRING_VALUE);
    private static final String RO_BUILD_HW_VERSION_INCREMENTAL = SystemProperties.get("ro.huawei.build.version.incremental", HwImsConfigImpl.NULL_STRING_VALUE);
    private boolean mIsWifiTunnnelUp = false;
    private boolean mIsVowifi = false;
    private boolean mIsVowifiTimeOut = false;
    private int mUtTunnelRetryTimes = 0;
    private int MAX_UT_TUNNEL_RETRY_TIMES = 3;
    private boolean mHasCheckedSIMCardByUT = false;
    private int mNetId = -1;
    private Date mCanSendChrBroadcastDate = null;
    private ImsDataConnectionState mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
    private boolean mbReqRoutHost = false;
    private HashMap<String, InetAddress[]> mUtAPNInetAddressMap = new HashMap<>();
    private boolean hasUtUseAPN = false;
    private boolean hasSetNetworkAsDefault = false;
    private Date mNextGetCallWaitingTime = null;
    private boolean mIsSimRecordLoaded = false;
    private boolean mIsAirModeResetCWInModem = false;
    private HashMap<Integer, Date> mUtDataExpireTime = new HashMap<>();
    private ImsUtListenerProxy mListenerProxy = new ImsUtListenerProxy();
    private GbaAuth mGbaAuth = null;
    private Handler mUtServiceHandler = null;
    private ArrayList<UtCmd> mUtCmdQueue = new ArrayList<>();
    private ImsRIL mCi = null;
    private boolean mIsUtEnable = true;
    private boolean mCallWatingUtCanBeUsed = true;
    private boolean mIsUtForbidden = false;
    private ArrayList<UtCmd> mUtRetryCmdQueue = new ArrayList<>();
    private int mLastSS = 0;
    private boolean mShowDataConnectionDialog = false;
    private boolean mHasChangedDefaultDataSub = false;
    private Date mUtForbiddenDate = null;
    private ContentObserver mApnChangeObserver = new ContentObserver(new Handler()) { // from class: com.huawei.ims.HwImsUtImpl.1
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (HwImsUtImpl.this.isUtNotUseDefaultAPN()) {
                HwImsUtImpl.this.logd("apn db changed,query xcap apn.");
                HwImsUtImpl.this.queryUtApn();
            }
        }
    };
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsUtImpl.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                HwImsUtImpl.this.loge("onReceive intent is null");
                return;
            }
            String action = intent.getAction();
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("onReceive: action=" + action);
            if (HwImsUtImpl.ACTION_MAPCON_SERVICE_FAILED.equals(action)) {
                if (HwImsUtImpl.this.mSubId != HwImsUtImpl.mCurrentSubId) {
                    HwImsUtImpl hwImsUtImpl2 = HwImsUtImpl.this;
                    hwImsUtImpl2.logd("receive com.hisi.mapcon.servicefailed, but not for this sub " + HwImsUtImpl.this.mSubId + ", current SubId is " + HwImsUtImpl.mCurrentSubId + ", return.");
                    return;
                }
                int serviceType = intent.getIntExtra(HwImsUtImpl.MAPCON_TYPE, 1);
                UtCmd cmd = HwImsUtImpl.this.getFirstUtCmd();
                HwImsUtImpl hwImsUtImpl3 = HwImsUtImpl.this;
                hwImsUtImpl3.logd("handle UT data connection vowifi conntion begin fail and serviceType = " + serviceType);
                if (!HwImsUtImpl.IS_VOWIFI_PROP_ON || 1 != serviceType || cmd == null || ImsDataConnectionState.IMS_DC_CONNECTING != cmd.dcState || HwImsUtImpl.this.mIsVowifiTimeOut) {
                    return;
                }
                HwImsUtImpl.this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
                HwImsUtImpl.this.setUtOverWifiTunnelUpFlag(false);
                HwImsUtImpl.this.endImsConnectivity();
                if (HwImsUtImpl.this.mUtTunnelRetryTimes >= HwImsUtImpl.this.MAX_UT_TUNNEL_RETRY_TIMES) {
                    HwImsUtImpl.this.mUtTunnelRetryTimes = 0;
                    HwImsUtImpl.this.logd("handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail.");
                    HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                    HwImsUtImpl.this.changeDcStateWhenTunnelSetupFail();
                    HwImsUtImpl.this.sendUTMessage(6);
                    return;
                }
                HwImsUtImpl.access$1408(HwImsUtImpl.this);
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                HwImsUtImpl.this.logd("received ACTION_MAPCON_SERVICE_FAILED,retry tunnel setup.");
                if (HwImsUtImpl.this.isUtOverWifiEnabled()) {
                    HwImsUtImpl.this.beginImsConnectivity(true);
                    HwImsUtImpl.this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                    HwImsUtImpl.this.startWifiTunnelSetupAlarm();
                    return;
                }
                HwImsUtImpl.this.mUtTunnelRetryTimes = 0;
                HwImsUtImpl.this.logd("handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail.");
                HwImsUtImpl.this.stopWifiTunnelSetupAlarm();
                HwImsUtImpl.this.changeDcStateWhenTunnelSetupFail();
                HwImsUtImpl.this.sendUTMessage(6);
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                HwImsUtImpl.this.handleConnectivity(networkInfo);
            } else if (!"android.intent.action.AIRPLANE_MODE".equals(action)) {
                if ("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED".equals(action)) {
                    HwImsUtImpl.this.handleUtApnConnection(intent);
                } else {
                    HwImsUtImpl.this.loge("intent not support");
                }
            } else {
                HwImsUtImpl.this.mIsAirModeResetCWInModem = true;
                boolean isAirplaneModeOn = intent.getBooleanExtra("state", false);
                HwImsUtImpl hwImsUtImpl4 = HwImsUtImpl.this;
                hwImsUtImpl4.logd("isAirModeOn=" + isAirplaneModeOn);
                if (isAirplaneModeOn) {
                    HwImsUtImpl.this.handleClear(0);
                }
            }
        }
    };
    private SciSSConfCb.Callback mSciSSCB = new SciSSConfCb.Callback() { // from class: com.huawei.ims.HwImsUtImpl.4
        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciSSConfCbPostResult(int ssType, int opType, int status) {
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("sciSSConfCbPostResult ssType = " + ssType + ", opType = " + opType + ", status = " + status);
            UTData ut = new UTData(ssType, opType, status);
            if (HwImsUtImpl.this.mGbaAuth != null) {
                HwImsUtImpl.this.mGbaAuth.clearAuthCounts();
            }
            HwImsUtImpl.this.sendUTMessage(1, ut);
        }

        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciBsfCbPostResult(String rand, String autn) {
        }
    };
    private boolean mIsUtSubscribed = true;
    private boolean mIsDataReg = false;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum CmdState {
        CMD_INIT,
        CMD_HANDLE_UT,
        CMD_HANDLE_WAIT,
        CMD_HANDLE_CS,
        CMD_FINISH
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum CmdToken {
        CMD_GET_CALLBARRING_OPTION,
        CMD_SET_CALLBARRING_OPTION,
        CMD_GET_OUTGOING_CALLERID_DISPLAY,
        CMD_SET_OUTGOING_CALLERID_DISPLAY,
        CMD_GET_CALLWAITING,
        CMD_SET_CALLWAITING,
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum DomainSelectType {
        SS_SELECT_CS_DOMAIN_ONLY,
        SS_SELECT_UT_DOMAIN_ONLY,
        SS_SELECT_UT_PREFER_CS_SECONDARY,
        SS_SELECT_INVALID_DOMAIN
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
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

    static /* synthetic */ int access$1408(HwImsUtImpl x0) {
        int i = x0.mUtTunnelRetryTimes;
        x0.mUtTunnelRetryTimes = i + 1;
        return i;
    }

    static {
        RO_BUILD_VERSION_INCREMENTAL = HwImsConfigImpl.NULL_STRING_VALUE.equals(RO_BUILD_HW_VERSION_INCREMENTAL) ? SystemProperties.get("ro.build.version.incremental", HwImsConfigImpl.NULL_STRING_VALUE) : RO_BUILD_HW_VERSION_INCREMENTAL;
        IS_UT_USE_IMSAPN = SystemProperties.getBoolean("ro.config.hw_ut_ims", false);
        mSciSSConfCb = null;
        mCurrentSubId = -1;
        mRequestId = -1;
        CARD_VOLTE_FLAG = new String[]{"card_volte_flag_0", "card_volte_flag_1"};
        FLAG_IS_VOLTE = 1;
        FLAG_IS_NOT_VOLTE = 0;
        FLAG_DEFAULT_VOLTE_VALUE = -1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum CALL_WAITING_SYNC_STATE {
        CALL_WAITING_SYNC_UNKNOWN(0),
        CALL_WAITING_SYNC_TO_IMS_SDK(1),
        CALL_WAITING_SYNC_TO_CS(2);
        
        final int native_int;

        CALL_WAITING_SYNC_STATE(int value) {
            this.native_int = value;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
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
        boolean utEnable = true;
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

        public UtCmd(CmdToken token, int type, int opType) {
            this.mToken = token;
            this.utType = type;
            this.utExpectType = type;
            this.utOpType = opType;
        }

        public String toString() {
            return "utType=" + this.utType + ", utExpectType=" + this.utExpectType + ", utOpType=" + this.utOpType + ", mState=" + this.mState + ", utRetryCounts=" + this.utRetryCounts;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class UTData {
        int mStatus;
        int mUtOpType;
        int mUtType;

        public UTData(int utType, int utOpType, int status) {
            this.mUtType = utType;
            this.mUtOpType = utOpType;
            this.mStatus = status;
        }

        public String toString() {
            return "mUtType=" + this.mUtType + ", mUtOpType=" + this.mUtOpType + ", mStatus=" + this.mStatus;
        }
    }

    public HwImsUtImpl(HwImsServiceImpl hwImsServiceImpl, int subId, ImsUtImpl imsUtImpl) {
        this.mHwImsServiceImpl = null;
        this.mSubId = -1;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSubId = subId;
        logd("HwImsUtImpl constructor");
        if (!ImsCallProviderUtils.isValidServiceSubIndex(this.mSubId)) {
            loge("subId is invalid");
            return;
        }
        this.mHwImsServiceImpl = hwImsServiceImpl;
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl is null");
            return;
        }
        this.mImsConfigImpl = this.mHwImsServiceImpl.getConfig();
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
        this.mListenerProxy.mListener = listener;
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
        handleSS(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallForwardForServiceClass(int condition, String number, int serviceClass) {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallForward, condition=" + condition);
        if (!isValidCommandInterfaceCFReason(condition)) {
            loge("Invalid condition for queryCallForward.");
            return -1;
        }
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLFORWARDING_OPTION, 5, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.csReason = condition;
        cmd.utReason = transCFToUtReason(condition);
        cmd.csServiceClass = serviceClass;
        handleSS(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallWaiting() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallWaiting");
        Date currDate = new Date();
        this.mNextGetCallWaitingTime = currDate;
        if (this.mNextGetCallWaitingTime != null) {
            this.mNextGetCallWaitingTime.setMinutes(this.mNextGetCallWaitingTime.getMinutes() + 5);
        }
        UtCmd cmd = new UtCmd(CmdToken.CMD_GET_CALLWAITING, 20, 0);
        if (isUtIdInvalid(cmd.utId)) {
            return -1;
        }
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == cmd.domainSelect) {
            loge("invalid domain, stop queryCallWaiting");
            return -1;
        }
        sendUTMessage(20, cmd);
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
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == cmd.domainSelect) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        sendUTMessage(22, cmd);
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
        handleSS(cmd);
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
        handleSS(cmd);
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
        handleSS(cmd);
        return cmd.utId;
    }

    public int updateCallBarringOption(String password, int cbType, boolean action, int serviceClass, String[] barrList) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallBarringOption, cbType=" + cbType + ", action=" + action + ", serviceClass=" + serviceClass + ", barrList=" + Arrays.toString(barrList));
        int type = transCbTypeToUtTypeSet(cbType);
        if (21 == type) {
            int utType = transCbTypeToUtTypeSet(cbType);
            DomainSelectType ds = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utType, false);
            logd("updateCallBarringOption: domainSelect is " + ds);
            if (DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY != ds) {
                return updateCallBarringAllOption(password, action, serviceClass);
            }
        }
        int utType2 = updateCallBarringBase(password, cbType, action, serviceClass);
        return utType2;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForwardUncondTimer(int startHour, int startMinute, int endHour, int endMinute, int action, int condition, String number) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForwardUncondTimer, startHour=" + startHour + ", startMinute=" + startMinute + ", endHour=" + endHour + ", endMinute=" + endMinute + ", action=" + action + ", condition=" + condition + ", number=" + hiddenPrivacyInfo(number, 0));
        if (isValidCommandInterfaceCFAction(action) && isValidCommandInterfaceCFReason(condition)) {
            if (condition == 0) {
                condition = 6;
            }
            int type = transCFToUtType(condition);
            UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, type, 1);
            if (isUtIdInvalid(cmd.utId)) {
                return cmd.utId;
            }
            cmd.utEnable = isCfEnable(action);
            cmd.utReason = transCFToUtReason(condition);
            cmd.utNumber = number;
            cmd.startTime = transIntToDate(startHour, startMinute);
            cmd.endTime = transIntToDate(endHour, endMinute);
            cmd.csReason = condition;
            cmd.csAction = action;
            handleSS(cmd);
            return cmd.utId;
        }
        loge("Invalid condition for updateCallForwardUncondTimer.");
        return -1;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallWaiting(boolean enable, int serviceClass) {
        checkAccessPermission();
        return updateCallWaiting(enable);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIR(int clirMode) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIR, clirMode=" + clirMode);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_OUTGOING_CALLERID_DISPLAY, 3, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.utEnable = clirMode != 0;
        cmd.utReason = transCLIRModeToUtReason(clirMode);
        cmd.csReason = clirMode;
        logd("updateCLIR, utEnable=" + cmd.utEnable + ", utReason=" + cmd.utReason);
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == cmd.domainSelect) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        sendUTMessage(23, cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIP(boolean enable) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIP, enable=" + enable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_ORIGINATING_IDENTITY_PRESENTATION, 1, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.utEnable = enable;
        handleSS(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLR(int presentation) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLR, presentation=" + presentation);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_TERMINATING_IDENTITY_RESTRICTION, 4, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.utEnable = presentation == 0;
        cmd.csReason = presentation;
        handleSS(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLP(boolean enable) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLP, enable=" + enable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_TERMINATING_IDENTITY_PRESETNTATION, 2, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.utEnable = enable;
        handleSS(cmd);
        return cmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public boolean isSupportCFT() {
        return checkUTDomain(domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 12, false));
    }

    public boolean isUtEnable() {
        return this.mIsUtEnable;
    }

    public Context getContext() {
        return this.mHwImsServiceImpl.mContext;
    }

    boolean sendUTMessage(int utEvent) {
        return sendUTMessage(utEvent, null);
    }

    boolean sendUTMessage(int utEvent, Object obj) {
        if (this.mUtServiceHandler == null) {
            logd("mUtServiceHandler is null, can't send message via this handler.");
            return false;
        }
        Message msg = this.mUtServiceHandler.obtainMessage(utEvent, obj);
        return this.mUtServiceHandler.sendMessage(msg);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public synchronized void queryAndSyncCallWaitingToCs() {
        logd("[UTCMD]enter queryAndSyncCallWaitingToCs");
        if (isCallWaitingExpire() && this.mImsConfigImpl.isCallWaitingSyncToCs() && isLocalCallWaitingEnable()) {
            queryCallWaiting();
        } else if (!isCardMccMncPreferToUseUT()) {
            logd("this card MCC MNC is not prefer to use UT, will set network mode for callwait");
            this.mCi.setCallWaiting(true, 3, null);
        }
    }

    private void queryAndSyncCLIRModeToImsSdk() {
        logd("[UTCMD]enter queryAndSyncCLIRModeToImsSdk");
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded!");
            return;
        }
        DomainSelectType domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 3, false);
        int mOIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        if (checkUTDomain(domainSelect) && mOIRSourceMode == 1) {
            queryCLIR();
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void queryAndSyncCallWaitingToImsSdk() {
        logd("[UTCMD]enter queryAndSyncCallWaitingToImsSdk");
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded!");
        } else if (isCallWaitingExpire() && this.mImsConfigImpl.isCallWaitingSyncToImsSdk() && isLocalCallWaitingEnable()) {
            queryCallWaiting();
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimRecordsLoaded(String newImsi) {
        sendUTMessage(9, newImsi);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void handleImsGetImpuDone(String impu) {
        sendUTMessage(11, impu);
    }

    @Override // com.huawei.ims.ImsUtImpl
    void clear() {
        sendUTMessage(7);
    }

    int setImsSdkImpu() {
        int ret = -1;
        String impu = this.mImsConfigImpl.getUtIMPU(getContext());
        logd("setImsSdkImpu impu=" + hiddenPrivacyInfo(impu, 2));
        try {
            ret = SciSSConfHs.setLocalUserName(impu);
        } catch (Exception e) {
            loge("setImsSdkImpu, failed");
        }
        logd("set Ims Sdk impu, ret=" + ret);
        return ret;
    }

    public int setImsSdkImpi() {
        int ret = -1;
        String impi = this.mImsConfigImpl.getUtIMPI();
        logd("setImsSdkImpi impi=" + hiddenPrivacyInfo(impi, 2));
        if (impi == null) {
            loge("impi is null.");
            return -1;
        }
        try {
            if (mCurrentSubId == this.mSubId) {
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
        logd("set Ims Sdk Naf Addr , ret =" + ret);
        return ret;
    }

    void setImsSdkParamsCfg() {
        String[] mUtParamsCfgArray = this.mImsConfigImpl.getUtParamsCfg();
        if (mUtParamsCfgArray != null) {
            for (String str : mUtParamsCfgArray) {
                String[] mUtParamsCfg = str.split(":");
                if (mUtParamsCfg.length != 2 || TextUtils.isEmpty(mUtParamsCfg[0]) || TextUtils.isEmpty(mUtParamsCfg[1])) {
                    loge("setParamsCfg config param not right");
                } else {
                    try {
                        int mUtParam = Integer.parseInt(mUtParamsCfg[0]);
                        SciSSConfHs.setParamsCfg(mUtParam, mUtParamsCfg[1]);
                        logd("init utParamsCfg, cfgParam=" + mUtParam + ", value=" + mUtParamsCfg[1]);
                    } catch (NumberFormatException e) {
                        loge("setParamsCfg Exception");
                    }
                }
            }
        }
    }

    private boolean isCallWaitingExpire() {
        if (this.mNextGetCallWaitingTime == null) {
            return true;
        }
        Date currDate = new Date();
        if (currDate.compareTo(this.mNextGetCallWaitingTime) < 0) {
            loge("forbid call waiting request, currDate=" + currDate + ", mNextGetCallWaitingTime" + this.mNextGetCallWaitingTime);
            return false;
        }
        return true;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public boolean isAirModeResetCWInModem() {
        return this.mIsAirModeResetCWInModem;
    }

    void responseMessage(Message msg, Object obj, Throwable ex) {
        logd("responseMessage with obj=" + obj);
        if (msg == null) {
            loge("responseMessage msg is null");
            return;
        }
        AsyncResult.forMessage(msg, obj, ex);
        msg.sendToTarget();
    }

    void responseMessage(Message msg, CommandException.Error err) {
        logd("responseMessage with err=" + err);
        responseMessage(msg, null, new CommandException(err));
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimCardAbsent() {
        sendUTMessage(10);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForward(int action, int condition, String number, int serviceClass, int timeSeconds) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForward, action=" + action + ", condition=" + condition + ", number=" + hiddenPrivacyInfo(number, 0) + ", serviceClass=" + serviceClass + ", timeSeconds=" + timeSeconds);
        if (!isValidCommandInterfaceCFAction(action) || !isValidCommandInterfaceCFReason(condition)) {
            loge("Invalid action or condition for updateCallForward.");
            return -1;
        }
        int type = transCFToUtType(condition);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, type, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        cmd.utEnable = isCfEnable(action);
        cmd.utReason = transCFToUtReason(condition);
        cmd.utNumber = number;
        cmd.utTimer = timeSeconds;
        cmd.csReason = condition;
        cmd.csAction = action;
        cmd.csServiceClass = serviceClass;
        handleSS(cmd);
        return cmd.utId;
    }

    private int updateCallWaiting(boolean enable) {
        logd("[UTCMD]enter updateCallWaiting enable=" + enable);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLWAITING, 20, 1);
        cmd.utEnable = enable;
        if (isUtIdInvalid(cmd.utId)) {
            return -1;
        }
        cmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, cmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == cmd.domainSelect) {
            loge("invalid domain, stop updateCallWaiting");
            return -1;
        }
        sendUTMessage(21, cmd);
        return cmd.utId;
    }

    private Message popUtMessage(int id) {
        ImsPhone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone == null) {
            loge("popUtMessage imsPhone is null");
            return null;
        }
        ImsPhone imsPhone2 = imsPhone;
        return imsPhone2.mHwImsPhoneEx.popUtMessage(id);
    }

    private void startUtServiceThread() {
        this.mHwImsServiceImpl.mHandler.post(new Runnable() { // from class: com.huawei.ims.HwImsUtImpl.2
            @Override // java.lang.Runnable
            public void run() {
                HandlerThread thread = new HandlerThread("ImsUT Thread");
                thread.start();
                HwImsUtImpl.this.mUtServiceHandler = new UtServiceHandler(thread.getLooper());
                HwImsUtImpl.this.sendUTMessage(8);
            }
        });
    }

    private Phone getDefaultPhone() {
        return this.mHwImsServiceImpl.getDefaultPhone();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    private class UtServiceHandler extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UtServiceHandler(Looper looper) {
            super(looper);
            HwImsUtImpl.this = r1;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            HwImsUtImpl.this.handleMessage(msg);
        }
    }

    public void handleMessage(Message msg) {
        boolean bsfRouteAddress;
        boolean isUtRetryCmdEmpty;
        logd("handleMessage what=" + msg.what);
        int i = msg.what;
        if (i != 50) {
            switch (i) {
                case 1:
                    handleSciSSConfCb((UTData) msg.obj);
                    return;
                case 2:
                    Network network = (Network) msg.obj;
                    String utNafSrvAddr = this.mImsConfigImpl.getUtNafSrvAddr();
                    boolean nafRouteAddress = getHostNameAndAddRoute(network, utNafSrvAddr);
                    if (this.mImsConfigImpl.isUtBsfAuthBeUsed()) {
                        String utBsfSrvAddr = this.mImsConfigImpl.getUtBsfSrvAddr();
                        bsfRouteAddress = getHostNameAndAddRoute(network, utBsfSrvAddr);
                    } else {
                        logd("ut not need bsf auth.");
                        bsfRouteAddress = true;
                    }
                    logd("handle UT data connection ensure route to host and result is : " + nafRouteAddress + " " + bsfRouteAddress);
                    if (this.mIsVowifi) {
                        setUtOverWifiTunnelUpFlag(nafRouteAddress);
                    }
                    if (nafRouteAddress) {
                        this.mbReqRoutHost = true;
                        logd("HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : " + network.netId);
                        initSDKServiceIpAddr(network);
                        sendUTMessage(3);
                        if (this.mIsVowifi) {
                            startWifiTunnelConnectionAlarm();
                            return;
                        }
                        return;
                    }
                    sendUTMessage(4);
                    return;
                case 3:
                    UtCmd utCmd = getFirstUtCmd();
                    if (utCmd != null && this.mImsDCState == ImsDataConnectionState.IMS_DC_CONNECTED) {
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    }
                    handleUtCmdQueue();
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
                        sendUTMessage(6);
                        return;
                    }
                    logd("handle UT data connection fall back cs for ensure route fail");
                    handoverSSTick();
                    return;
                case 5:
                    UtCmd cmd = getFirstUtCmd();
                    if (cmd == null) {
                        loge("there is no cmd in queue");
                        return;
                    } else if (isNetworkConnected()) {
                        logd("The network is connected and continues to be connected.");
                        keepAliveImsConnectivity();
                        return;
                    } else {
                        logd("The network is disconnected.");
                        return;
                    }
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
                    handleSimRecordsLoaded(msg);
                    return;
                case 10:
                    handleSimCardAbsent(msg);
                    return;
                case 11:
                    handleImsGetImpuDone(msg);
                    return;
                case 12:
                    UtCmd mCmd = getFirstUtCmd();
                    synchronized (this.mUtRetryCmdQueue) {
                        isUtRetryCmdEmpty = this.mUtRetryCmdQueue.isEmpty();
                    }
                    if (mCmd == null && isUtRetryCmdEmpty) {
                        endImsConnectivity();
                        return;
                    }
                    return;
                default:
                    switch (i) {
                        case 20:
                            queryCallWaiting(msg);
                            return;
                        case 21:
                            updateCallWaiting(msg);
                            return;
                        case 22:
                            queryCLIR(msg);
                            return;
                        case 23:
                            updateCLIR(msg);
                            return;
                        default:
                            switch (i) {
                                case 27:
                                    handleGetCWResponseFromCs(msg);
                                    return;
                                case 28:
                                    handleSetCWFromCs(msg);
                                    return;
                                case 29:
                                    handleSyncCallWaitingToImsSdkDone(msg);
                                    return;
                                case 30:
                                    handleSyncCallWaitingToCsDone(msg);
                                    return;
                                case 31:
                                    handleSyncCLIRModeToImsSdkDone(msg);
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
                                        default:
                                            loge("imsut not support this msg");
                                            return;
                                    }
                            }
                    }
            }
        }
        processECTCallBack(msg);
    }

    private void processECTCallBack(Message msg) {
        if (msg == null) {
            logd("ECTCallBack msg is null,just return");
            return;
        }
        AsyncResult ar = (AsyncResult) msg.obj;
        if (ar != null && ar.exception != null && this.mHwImsServiceImpl != null) {
            ImsPhone imsPhone = this.mHwImsServiceImpl.getImsPhone();
            if (!(imsPhone instanceof ImsPhone)) {
                logd("get imsphone fails.");
                return;
            }
            ImsPhone imsPhone2 = imsPhone;
            imsPhone2.notifyECTFailed(PhoneInternalInterface.SuppService.TRANSFER);
        }
    }

    private boolean isLocalCallWaitingEnable() {
        DomainSelectType ds = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 20, false);
        return checkUTDomain(ds) && this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL;
    }

    private void handleGetCWResponseFromCs(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        Message onComplete = (Message) ar.userObj;
        if (ar.exception != null) {
            loge("handleGetCWResponseFromCs: ar.exception=" + ar.exception);
            responseMessage(onComplete, null, ar.exception);
        } else if (ar.result instanceof int[]) {
            int[] cwArray = (int[]) ar.result;
            try {
                if (cwArray == null) {
                    loge("cwArray is null");
                    responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                    return;
                }
                logd("handleGetCBResponseFromCs, cwArray[0]=" + cwArray[0] + ", cwArray[1]=" + cwArray[1]);
                boolean enable = isEnableCallWaiting(cwArray[0]);
                handleGetCallWaitingDone(enable, cwArray[1], onComplete);
            } catch (ArrayIndexOutOfBoundsException e) {
                loge("handleGetCWResponseFromCs: improper failed");
                responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            }
        } else {
            loge("ar.result is not int[]");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
        }
    }

    private void handleSetCWFromCs(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        Message onComplete = (Message) ar.userObj;
        if (ar.exception != null) {
            loge("handleSetCWFromCs: ar.exception=" + ar.exception);
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
            if (isUtNotUseDefaultAPN() || canUseDefaultBearForWifiConnected()) {
                stopImsDataConnectionAlarm();
                sendStopImsApnMessage();
                return;
            }
            return;
        }
        stopTemporaryUtStayAlarm();
        logd("handleUtCmdQueue start,  cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
        switch (cmd.mState) {
            case CMD_INIT:
            case CMD_HANDLE_UT:
                handleUt(cmd);
                break;
            case CMD_HANDLE_WAIT:
                break;
            case CMD_HANDLE_CS:
                logd("handle UT data connection fallback CS domain");
                handoverSSTick(cmd);
                break;
            case CMD_FINISH:
                stopUtAlarm();
                removeUtCmd();
                startTemporaryUtStayAlarm();
                sendUTMessage(6, null);
                break;
            default:
                loge("not support this cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
                break;
        }
        logd("handleUtCmdQueue leave,  cmd mToken=" + cmd.mToken + ", mState=" + cmd.mState);
    }

    private boolean performUtPreprocessingForFirstTime() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && isCurrentSubChange()) {
            if (!isOtherSubUtIdle()) {
                if (mCurrentSubId == -1) {
                    logd("performUtPreprocessingForFirstTime: ut for other sub is not idle, but mCurrentSubId is -1, should set mCurrentSubId as " + this.mSubId);
                    setCurrentSubId(this.mSubId);
                    regetIMSIFromPhone();
                    initSciSSConfHs();
                    return false;
                }
                logd("performUtPreprocessingForFirstTime: ut for other sub is not idle, waiting");
                return true;
            }
            logd("performUtPreprocessingForFirstTime: reset Ut SDK");
            setCurrentSubId(this.mSubId);
            SciSSConfHs.reset(1);
            regetIMSIFromPhone();
            initSciSSConfHs();
            this.mUtDataExpireTime.clear();
            return false;
        }
        return false;
    }

    private void handleUt(UtCmd cmd) {
        if (!checkUTDomain(cmd)) {
            logd("Can't start SS with Ut, will fallback to cs");
            if (cmd != null) {
                cmd.mState = CmdState.CMD_HANDLE_CS;
                sendUTMessage(6);
                return;
            }
            return;
        }
        initUtSDKWhenDomainSelectUt();
        logd("cmd.dcState = " + cmd.dcState);
        switch (cmd.dcState) {
            case IMS_DC_INIT:
                boolean shouldInterruptUt = performUtPreprocessingForFirstTime();
                if (shouldInterruptUt) {
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
                            sendUTMessage(6, null);
                            return;
                        }
                    }
                }
                if (isAirplaneModeOn() && (isUtNotUseDefaultAPN() || !this.mImsConfigImpl.isUtCanUseWifi())) {
                    logd("Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs");
                    responseFailureAndEndUt(cmd);
                    return;
                } else if (isUtNotUseDefaultAPN()) {
                    if (handleUtNotUseDefaultAPN(cmd)) {
                        return;
                    }
                } else if (isNeedTempChangeDefaultDataSub()) {
                    logd("handle UT data connection ut use default apn and data is connected but not for this sub");
                    cmd.dcState = ImsDataConnectionState.IMS_TEMPORARILY_DC_CONNECTION_ACT;
                    sendUTMessage(6, null);
                    return;
                } else if (isDataConnection()) {
                    logd("handle UT data connection ut use default apn and data is connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    Network network = getNetworkForDefaultApn();
                    initSDKServiceIpAddr(network);
                    break;
                } else if (canUseDefaultBearForWifiConnected()) {
                    logd("handle UT data connection ut use default apn and data is not connected");
                    startDefaultBearForWifiConnected(cmd);
                    return;
                } else {
                    logd("handle UT data connection ut use default apn and data is not connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
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
                        beginImsConnectivity(true);
                        stopWifiTunnelSetupAlarm();
                        startWifiTunnelSetupAlarm();
                        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                        this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                        return;
                    }
                } else if (isUtNotUseDefaultAPN()) {
                    cancelStopImsApnMessage();
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
                    sendUTMessage(6, null);
                    return;
                } else if (isDataConnection()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    Network network2 = getNetworkForDefaultApn();
                    initSDKServiceIpAddr(network2);
                    break;
                } else if (canUseDefaultBearForWifiConnected()) {
                    startDefaultBearForWifiConnected(cmd);
                    return;
                } else {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
                    return;
                }
            case IMS_DC_WIFI_PREF_TUNNEL_FAIL:
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                logd("handle UT data connection volte conntion after vowifi connection fail");
                if (isUtNotUseDefaultAPN()) {
                    if (handleUtNotUseDefaultAPN(cmd)) {
                        return;
                    }
                } else if (isDataConnection()) {
                    logd("handle UT data connection volte conntion after vowifi connection fail default apn");
                    Network network3 = getNetworkForDefaultApn();
                    initSDKServiceIpAddr(network3);
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                } else if (canUseDefaultBearForWifiConnected()) {
                    startDefaultBearForWifiConnected(cmd);
                    return;
                } else {
                    logd("handle UT data connection ut use default apn and data is not connected");
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
                    return;
                }
                break;
            case IMS_DC_WIFI_PREF_IMSPDP_FAIL:
                logd("state IMS_DC_WIFI_PREF_IMSPDP_FAIL,startDCAlarm.");
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startDCAlarm();
                return;
            case IMS_DC_WIFI_ONLY_TUNNEL_FAIL:
                handleWifiOnlyTunnelFail(cmd);
                return;
            case IMS_DC_LTE_PREF_IMSPDP_FAIL:
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                sendUTMessage(6, null);
                return;
            case IMS_DC_ACT_EXECUTE_LTE_FAIL:
            case IMS_DC_LTE_PREF_TUNNEL_FAIL:
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startDCAlarm();
                return;
            case IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:
                responseFailureAndEndUt(cmd);
                logd("handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL");
                return;
            case IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:
                if (!isUtOverWifiEnabled()) {
                    logd("state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,send GENERIC_FAILURE to user.");
                    responseFailureAndEndUt(cmd);
                    return;
                } else if (isUtOverWifiTunnelUp()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                } else {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                    sendUTMessage(6, null);
                    return;
                }
            case IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:
                logd("Airplane mode is turned on, no longer trying volte ut and cs, return failure! ");
                responseFailureAndEndUt(cmd);
                return;
            case IMS_DC_CONNECTION_ACT:
                if (!processImsConnectivity()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    return;
                }
                break;
            case IMS_DC_CONNECTING:
                return;
            case IMS_DC_FINISH:
                cmd.mState = CmdState.CMD_HANDLE_CS;
                sendUTMessage(6);
                return;
            case IMS_TEMPORARILY_DC_CONNECTION_ACT:
                handleTempDcConnectionACT(cmd);
                return;
        }
        handleUtCmd(cmd);
    }

    private void endConnectivityIfNeeded(int networkType) {
        if (checkNetworkAvailable(networkType)) {
            logd("xcap connectivity is available " + networkType + ", need to release");
            endImsConnectivity();
        }
    }

    private void handleWifiOnlyTunnelFail(UtCmd cmd) {
        if (!IS_VOWIFI_PROP_ON) {
            return;
        }
        Boolean supportWifiOnlyFallCs = Boolean.valueOf(SystemProperties.getBoolean("ro.vowifi.wifi_only_fall_cs", false));
        if (true == supportWifiOnlyFallCs.booleanValue()) {
            logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,will fall back to cs,startDCAlarm.");
            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startDCAlarm();
            return;
        }
        logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user.");
        responseFailureAndEndUt(cmd);
    }

    private boolean handleUtNotUseDefaultAPN(UtCmd cmd) {
        logd("handle UT data connection volte conntion after vowifi connection fail not default apn");
        if (this.mImsConfigImpl.getUtUseApn() == 3 && isDefaultConnected() && (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || getDefaultDataSubId() == this.mSubId)) {
            logd("handle UT data connection ut use complex apn and mobile data is connected");
            Network network = getNetworkForType(0);
            initSDKServiceIpAddr(network);
            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
            return false;
        }
        logd("handle UT data connection ut use xcap apn or complex apn with mobile data not connected");
        cancelStopImsApnMessage();
        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
        sendUTMessage(6, null);
        return true;
    }

    private void handleTempDcConnectionACT(UtCmd cmd) {
        if (cmd == null) {
            loge("handleTempDcConnectionACT - ut cmd is null");
        } else if (!processTemporarilyDcConnection()) {
            if (canUseDefaultBearForWifiConnected()) {
                startDefaultBearForWifiConnected(cmd);
                return;
            }
            cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startTemporaryDCAlarm();
        }
    }

    private boolean isAirplaneModeOn() {
        if (getContext() == null) {
            return false;
        }
        boolean isAirplaneModeOn = Settings.Global.getInt(getContext().getContentResolver(), "airplane_mode_on", 0) != 0;
        logd("isAirplaneModeOn=" + isAirplaneModeOn);
        return isAirplaneModeOn;
    }

    private boolean isNoMobileNetwork() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        int dataRegisterState = HwTelephonyManager.getDefault().getDataRegisteredState(subId);
        boolean noMobileNetwork = dataRegisterState != 0;
        logd("isNoMobileNetwork: " + noMobileNetwork);
        return noMobileNetwork;
    }

    private boolean isNoDataService() {
        return isAirplaneModeOn() || isNoMobileNetwork();
    }

    private boolean isNeedSetupWifiTunnel(int utDomain) {
        boolean isNoDataService = isNoDataService();
        if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
            logd("isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isNoDataService = " + isNoDataService);
            return isNoDataService;
        }
        boolean isVoWifiRegistered = false;
        if (this.mImsConfigImpl != null && this.mImsConfigImpl.isUtPreferVowifiWhenVowifiReg()) {
            int subId = ImsCallProviderUtils.getSubId(this.mSubId);
            isVoWifiRegistered = HwTelephonyManagerInner.getDefault().isWifiCallingAvailable(subId);
        }
        if (2 == utDomain || utDomain == 0 || isVoWifiRegistered) {
            return true;
        }
        return isNoDataService && (3 == utDomain || 1 == utDomain);
    }

    private boolean isNeedTempChangeDefaultDataSub() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && !isUtNotUseDefaultAPN()) {
            return ((this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) || getDefaultDataSubId() == this.mSubId) ? false : true;
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
        return cm.getNetworkForType(type);
    }

    private void initSDKServiceIpAddr(Network netWork) {
        if (netWork != null) {
            if ((this.mNetId == netWork.netId && !this.mImsConfigImpl.isUtQueryDnsIgnoreNetId()) || this.mGbaAuth == null) {
                return;
            }
            this.mNetId = netWork.netId;
            if (this.mImsConfigImpl.isUtGbaLifetimeBeUsed()) {
                logd("initSDKServiceIpAddr skip sdk.reset & gba.clear");
            } else {
                SciSSConfHs.reset(0);
                this.mUtDataExpireTime.clear();
                this.mGbaAuth.clear();
            }
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
            } catch (UnknownHostException e) {
                loge("Cannot get inet address ");
                processReportChrException((byte) -1, addressType, 1003);
            }
        }
    }

    private String[] createIpAddr(InetAddress[] addresses) {
        String[] sbIpAddr = new String[addresses.length];
        for (int i = 0; i < addresses.length; i++) {
            sbIpAddr[i] = addresses[i].getHostAddress();
        }
        return sbIpAddr;
    }

    private boolean getHostNameAndAddRoute(Network network, String serviceAddr) {
        InetAddress[] inetAddress;
        if (network == null) {
            loge("network is null.");
            return false;
        }
        if (this.mNetId == network.netId && this.mUtAPNInetAddressMap.containsKey(serviceAddr)) {
            inetAddress = this.mUtAPNInetAddressMap.get(serviceAddr);
            logd(" InetAddress get from local map.");
        } else {
            inetAddress = getHostByName(serviceAddr, network);
            if (inetAddress != null) {
                this.mUtAPNInetAddressMap.put(serviceAddr, inetAddress);
                logd(" InetAddress get from host, and save in local map.");
            }
        }
        return ensureRouteToHost(inetAddress);
    }

    private int handleUtCmd(UtCmd cmd) {
        int ret;
        logd("handleUtCmd enter, cmd=" + cmd);
        if (!checkUTDomain(cmd)) {
            logd("Can't start SS with Ut, will fallback to cs");
            if (cmd != null) {
                cmd.mState = CmdState.CMD_HANDLE_CS;
                sendUTMessage(6, null);
            }
            return 1;
        }
        try {
            switch (cmd.utType) {
                case 1:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryOriginatingIdentityPresentation();
                        break;
                    } else {
                        ret = SciSSConfHs.setOriginatingIdentityPresentation(cmd.utEnable);
                        break;
                    }
                case 2:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryTerminatingIdentityPresentation();
                        break;
                    } else {
                        ret = SciSSConfHs.setTerminatingIdentityPresentation(cmd.utEnable);
                        break;
                    }
                case 3:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryOriginatingIdentityRestriction();
                        break;
                    } else {
                        ret = SciSSConfHs.setOriginatingIdentityRestriction(cmd.utEnable, cmd.utReason);
                        break;
                    }
                case 4:
                    if (cmd.utOpType == 0) {
                        ret = SciSSConfHs.queryTerminatingIdentityRestriction();
                        break;
                    } else {
                        ret = SciSSConfHs.setTerminatingIdentityRestriction(cmd.utEnable);
                        break;
                    }
                case 5:
                    if (cmd.utOpType == 0) {
                        if (isUtDataExpire(5)) {
                            ret = SciSSConfHs.queryCallDiversion();
                            break;
                        } else {
                            ret = 0;
                            logd("the status of CFU querying via UT interface is " + this.mLastSS);
                            UTData ut = new UTData(cmd.utType, cmd.utOpType, this.mLastSS);
                            sendUTMessage(1, ut);
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
                    if (1 == cmd.utOpType) {
                        int time = -1;
                        if (cmd.utType == 22 || cmd.utType == 23 || (cmd.utType == 10 && this.mImsConfigImpl.isProtocolIR92V10orGreater())) {
                            time = getNoReplyTimer(cmd);
                        }
                        ret = SciSSConfHs.setCallDiversionNew(cmd.utReason, cmd.csAction, cmd.utNumber, null, null, 1, time);
                        logd(" setCallDiversionNew return value ret = " + ret + " time = " + time);
                        break;
                    } else {
                        ret = 1;
                        loge("SSCONF_SS_TYPE_CF GET not support utOpType=" + cmd.utOpType);
                        break;
                    }
                    break;
                case 12:
                    if (1 == cmd.utOpType) {
                        ret = SciSSConfHs.setCallDiversionNew(cmd.utReason, cmd.csAction, cmd.utNumber, cmd.startTime, cmd.endTime, 1, -1);
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
                            logd("the status of ICB querying via UT interface is " + this.mLastSS);
                            UTData ut2 = new UTData(cmd.utType, cmd.utOpType, this.mLastSS);
                            sendUTMessage(1, ut2);
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
                            logd("the status of OCB querying via UT interface is " + this.mLastSS);
                            UTData ut3 = new UTData(cmd.utType, cmd.utOpType, this.mLastSS);
                            sendUTMessage(1, ut3);
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
                    if (1 == cmd.utOpType) {
                        ret = SciSSConfHs.setCallBarring(cmd.utReason, cmd.utEnable);
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
                        ret = SciSSConfHs.setCallWaiting(cmd.utEnable);
                        break;
                    }
            }
        } catch (RuntimeException e) {
            loge("SciSSConfHs func RuntimeException");
            ret = 1;
            this.mLastSS = 1;
        } catch (Exception e2) {
            loge("SciSSConfHs func exception");
            ret = 1;
            this.mLastSS = 1;
        }
        if (ret == 0) {
            startUtAlarm();
            cmd.mState = CmdState.CMD_HANDLE_WAIT;
        } else {
            this.mLastSS = 1;
            cmd.mState = CmdState.CMD_HANDLE_CS;
            sendUTMessage(6, null);
        }
        logd("handleUtCmd leave, SciSSConfHs ret=" + ret + ", cmd.mState=" + cmd.mState + ", utType=" + cmd.utType + ", utReason=" + cmd.utReason);
        return ret;
    }

    private int getNoReplyTimer(UtCmd cmd) {
        int time = this.mImsConfigImpl.getDefaultNoReplyTimer();
        int deactNoReplyTime = this.mImsConfigImpl.getDefaultNeedNoReplyTimer();
        if (!cmd.utEnable && -1 != deactNoReplyTime) {
            time = deactNoReplyTime;
        }
        if (time == 0) {
            time = -1;
        } else if (-1 == time && (time = cmd.utTimer) == 0) {
            int i = cmd.utType;
            if (i == 10) {
                time = 20;
            } else {
                switch (i) {
                    case 22:
                    case 23:
                        time = -1;
                        break;
                }
            }
        }
        logd("getNoReplyTimer  time = " + time);
        return time;
    }

    private int handoverSS(UtCmd cmd) {
        if (cmd != null) {
            logd("handleOverSS mToken=" + cmd.mToken + ", utType=" + cmd.utType + ", utOpType=" + cmd.utOpType);
            cmd.mState = CmdState.CMD_FINISH;
            if (isAirplaneModeOn()) {
                logd("handoverSS: Airplane mode is turned on, forbid CSFB, return failure!");
                responseFailure(cmd.utId, 0);
                return 1;
            } else if (!checkCSDomain(cmd)) {
                loge("Can't start SS wiht CS domain.");
                responseFailure(cmd.utId, 0);
                return 1;
            } else if (isCardMccMncPreferToUseUT() && !this.mImsConfigImpl.isUtCSBeUsed()) {
                loge("handleOverSS cannot use CS");
                responseFailure(cmd.utId, 0);
                return 1;
            } else {
                Phone defPhone = getDefaultPhone();
                if (defPhone == null) {
                    loge("handoverSS cannot get default phone");
                    responseFailure(cmd.utId, 0);
                    return 1;
                }
                Message onComplete = popUtMessage(cmd.utId);
                this.mIsUtEnable = false;
                logd("set Ut disable");
                int ret = handoverUtCmd(defPhone, cmd, onComplete, 0);
                if (1 == ret) {
                    responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                }
                this.mIsUtEnable = true;
                logd("set ut enable");
                return ret;
            }
        }
        loge("handoverSS,utCmd null");
        return 1;
    }

    private int handoverUtCmd(Phone defPhone, UtCmd cmd, Message onComplete, int ret) {
        switch (cmd.mToken) {
            case CMD_GET_CALLBARRING_OPTION:
                defPhone.getCallbarringOption(cmd.csFacility, cmd.csServiceClass, onComplete);
                return ret;
            case CMD_SET_CALLBARRING_OPTION:
                defPhone.setCallbarringOption(cmd.csFacility, cmd.csPassword, cmd.utEnable, cmd.csServiceClass, onComplete);
                return ret;
            case CMD_GET_OUTGOING_CALLERID_DISPLAY:
                defPhone.getOutgoingCallerIdDisplay(onComplete);
                return ret;
            case CMD_SET_OUTGOING_CALLERID_DISPLAY:
                defPhone.setOutgoingCallerIdDisplay(cmd.csReason, onComplete);
                return ret;
            case CMD_GET_CALLWAITING:
                defPhone.getCallWaiting(this.mUtServiceHandler.obtainMessage(27, onComplete));
                return ret;
            case CMD_SET_CALLWAITING:
                int callWaitingAction = getCallWaitingAction(cmd.utEnable);
                defPhone.setCallWaiting(cmd.utEnable, this.mUtServiceHandler.obtainMessage(28, 0, callWaitingAction, onComplete));
                return ret;
            case CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:
                defPhone.mCi.queryCLIP(onComplete);
                return ret;
            case CMD_GET_CALLFORWARDING_OPTION:
                defPhone.getCallForwardingOption(cmd.csReason, cmd.csServiceClass, onComplete);
                return ret;
            case CMD_SET_CALLFORWARDING_OPTION:
                if (6 == cmd.csReason) {
                    logd("Set CFU due to time in cs domain, but abandon the time");
                    cmd.csReason = 0;
                }
                IHwGsmCdmaPhoneEx hwGsmCdmaPhoneEx = ((GsmCdmaPhone) defPhone).mHwGsmCdmaPhoneEx;
                if (hwGsmCdmaPhoneEx != null) {
                    hwGsmCdmaPhoneEx.setCallForwardingOption(cmd.csAction, cmd.csReason, cmd.utNumber, cmd.csServiceClass, cmd.utTimer, onComplete);
                    return ret;
                }
                return ret;
            case CMD_GET_CALLWAITING_FOR_DETECTION:
                logd("handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB.");
                return ret;
            default:
                loge("handoverSS not support cmd.mToken=" + cmd.mToken);
                return 1;
        }
    }

    private void handoverSSTick() {
        handoverSSTick(getFirstUtCmd());
    }

    private void handoverSSTick(UtCmd cmd) {
        handoverSS(cmd);
        sendUTMessage(6, null);
    }

    private boolean isSsUseUtInterface(int utType) {
        if (utType != 20 || HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_UT == this.mImsConfigImpl.getCallWaitingSource()) {
            return true;
        }
        return false;
    }

    private boolean isCmdGetResultFromSdkLocally(UtCmd cmd) {
        boolean result = false;
        int i = cmd.utType;
        if (i != 5) {
            switch (i) {
                case 14:
                    if (1 != cmd.utReason) {
                        result = true;
                        break;
                    }
                    break;
            }
            logd("isCmdGetResultFromSdkLocally=" + result);
            return result;
        }
        if (cmd.utReason != 0) {
            result = true;
        }
        logd("isCmdGetResultFromSdkLocally=" + result);
        return result;
    }

    private void handleUtRetryAlarmTimeOut() {
        stopUtRetryAlarm();
        transferCmdFromRetryQueueToUtCmdQueue();
        sendUTMessage(6);
    }

    private void transferCmdFromRetryQueueToUtCmdQueue() {
        synchronized (this.mUtRetryCmdQueue) {
            int size = this.mUtRetryCmdQueue.size();
            logd("transferCmdFromRetryQueueToUtCmdQueue, size=" + size);
            for (int i = 0; i < size; i++) {
                UtCmd cmd = this.mUtRetryCmdQueue.get(i);
                if (isUtNotUseDefaultAPN()) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_INIT;
                }
                cmd.mState = CmdState.CMD_HANDLE_UT;
                addUtCmd(cmd);
            }
            this.mUtRetryCmdQueue.clear();
        }
    }

    private void transferCmdFromUtCmdQueueToRetryQueue(UtCmd cmd) {
        removeUtCmd(cmd);
        synchronized (this.mUtRetryCmdQueue) {
            this.mUtRetryCmdQueue.add(cmd);
        }
        logd("cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd=" + cmd);
    }

    private void removeUtCmd(UtCmd cmd) {
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

    private void handleSciSSConfCb(UTData ut) {
        logd("handleSciSSConfCb ut=" + ut);
        if (ut == null) {
            loge("handleSciSSConfCb, UTData is null");
            return;
        }
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null || ut.mUtType != cmd.utExpectType || CmdState.CMD_HANDLE_WAIT != cmd.mState) {
            loge("this Ut data is useless, cmd=" + cmd);
            return;
        }
        this.mHasCheckedSIMCardByUT = true;
        stopUtAlarm();
        this.mLastSS = ut.mStatus;
        int i = ut.mStatus;
        if (i == 0) {
            handleSciSSConfCbSuccessfully(cmd, ut);
        } else if (i == 3 || i == 403) {
            handle403Error(cmd, ut);
        } else if (i != 409 || !this.mImsConfigImpl.getUt409ShowPhrase() || !handle409Error(cmd, ut)) {
            handleSciSSConfCbUndefinedError(cmd, ut);
        }
    }

    private void handle403Error(UtCmd cmd, UTData ut) {
        loge("enter handle403Error, cmd=" + cmd);
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        if (isCTCardAndSupportVolte()) {
            saveCTCardVolteFlag(false);
            logd("CT Card receive 403, notify HWCardManager");
        }
        this.mIsUtForbidden = true;
        if (isConfigUtForbiddenTimer()) {
            stopUtForbiddenAlarm();
            startUtForbiddenAlarm();
        }
        transferCmdFromRetryQueueToUtCmdQueue();
        synchronized (this.mUtCmdQueue) {
            int size = this.mUtCmdQueue.size();
            for (int i = 0; i < size; i++) {
                UtCmd utCmd = this.mUtCmdQueue.get(i);
                utCmd.mState = CmdState.CMD_HANDLE_CS;
            }
        }
        sendUTMessage(6);
    }

    private boolean handle409Error(UtCmd cmd, UTData ut) {
        if (cmd == null || ut == null) {
            loge("handle409Error: cmd or ut is null, return");
            return false;
        }
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        int i = ut.mUtType;
        if (i != 20) {
            switch (i) {
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                    break;
                default:
                    switch (i) {
                        case 22:
                        case 23:
                            break;
                        default:
                            loge("handle409Error: not support ut type " + ut.mUtType);
                            return false;
                    }
            }
        }
        if (1 == cmd.utOpType) {
            String phraseText = SciSSConf.getSSConflictPhraseText();
            logd("handle409Error: phraseText = " + phraseText);
            if (phraseText != null && !phraseText.isEmpty()) {
                ImsReasonInfo error = new ImsReasonInfo(804, 0);
                error.mExtraMessage = phraseText + CONNECT_INFO_ERRORCODE;
                this.mListenerProxy.utConfigurationUpdateFailed(cmd.utId, error);
                cmd.mState = CmdState.CMD_FINISH;
                sendUTMessage(6);
                return true;
            }
        }
        return false;
    }

    private void handleSciSSConfCbUndefinedError(UtCmd cmd, UTData ut) {
        loge("enter handleSciSSConfCbUndefinedError, cmd=" + cmd);
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        if (cmd == null) {
            return;
        }
        if (isCTCardAndSupportVolte() && (ut.mUtType == 5 || ut.mUtType == 7)) {
            saveCTCardVolteFlag(true);
        }
        processReportChrException((byte) -1, (byte) -1, ut.mStatus);
        if (cmd.utRetryCounts < this.mImsConfigImpl.getUtRetryMaxCounts() && !isCmdGetResultFromSdkLocally(cmd)) {
            cmd.utRetryCounts++;
            transferCmdFromUtCmdQueueToRetryQueue(cmd);
            startUtRetryAlarm(cmd.utRetryCounts);
        } else {
            logd("handle UT data connection fallback CS domain for ut fail");
            this.mUtAPNInetAddressMap.clear();
            endImsConnectivity();
            cmd.mState = CmdState.CMD_HANDLE_CS;
        }
        sendUTMessage(6);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void handleSciSSConfCbSuccessfully(UtCmd cmd, UTData ut) {
        setUtDataExpireTime(ut.mUtType);
        logd("handle UT data connection handleSciSSConfCbSuccessfully : cmd = " + cmd + ", ut = " + ut);
        try {
            switch (ut.mUtType) {
                case 1:
                    if (ut.mUtOpType == 0) {
                        boolean flag = SciSSConfHs.getOriginatingIdentityPresentationEnabled().booleanValue();
                        Bundle clipInfo = responseCLIP(Boolean.valueOf(flag));
                        this.mListenerProxy.utConfigurationQueried(cmd.utId, clipInfo);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 2:
                    if (ut.mUtOpType == 0) {
                        boolean flag2 = SciSSConfHs.getTerminatingIdentityPresentationEnabled().booleanValue();
                        Bundle colpInfo = responseCOLP(Boolean.valueOf(flag2));
                        this.mListenerProxy.utConfigurationQueried(cmd.utId, colpInfo);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 3:
                    if (ut.mUtOpType == 0) {
                        boolean flag3 = SciSSConfHs.getOriginatingIdentityRestrictionEnabled().booleanValue();
                        int mDefaultBehavior = SciSSConfHs.getOIRDefaultBehavior();
                        Bundle clirInfo = responseCLIR(Boolean.valueOf(flag3), mDefaultBehavior);
                        int[] clirResponse = clirInfo.getIntArray("queryClir");
                        if (clirResponse != null && clirResponse.length == 2 && clirResponse[1] != 0) {
                            Message onComplete = popUtMessage(cmd.utId);
                            Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
                            response.setData(clirInfo);
                            syncCLIRModeToImsSdk(clirResponse[0], response);
                        } else {
                            this.mListenerProxy.utConfigurationQueried(cmd.utId, clirInfo);
                        }
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        Message onComplete2 = popUtMessage(cmd.utId);
                        syncCLIRModeToImsSdk(cmd.csReason, this.mUtServiceHandler.obtainMessage(31, onComplete2));
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                    break;
                case 4:
                    if (ut.mUtOpType == 0) {
                        boolean flag4 = SciSSConfHs.getTerminatingIdentityRestrictionEnabled().booleanValue();
                        Bundle colrInfo = responseCOLR(Boolean.valueOf(flag4));
                        this.mListenerProxy.utConfigurationQueried(cmd.utId, colrInfo);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 5:
                    if (ut.mUtOpType == 0) {
                        ImsCallForwardInfo[] imsCallForwardInfo = responseCallForwardEx(cmd.utReason);
                        if (isCTCardAndSupportVolte()) {
                            saveCTCardVolteFlag(true);
                        }
                        this.mListenerProxy.utConfigurationCallForwardQueried(cmd.utId, imsCallForwardInfo);
                    } else {
                        loge("CDIV PUT: don't support will handover to cs");
                    }
                    cmd.mState = CmdState.CMD_FINISH;
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 12:
                case 22:
                case 23:
                    if (1 == ut.mUtOpType) {
                        if (isCTCardAndSupportVolte() && ut.mUtType == 7) {
                            saveCTCardVolteFlag(true);
                        }
                        this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        loge("CF SET: don't support this OPRATOR");
                        cmd.mState = CmdState.CMD_HANDLE_CS;
                        break;
                    }
                case 10:
                    if (1 == ut.mUtOpType) {
                        if (this.mImsConfigImpl.isProtocolIR92V10orGreater()) {
                            this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                            cmd.mState = CmdState.CMD_FINISH;
                            break;
                        } else {
                            int time = getNoReplyTimer(cmd);
                            if (-1 == time) {
                                logd("don't set the NRT when set the CFNR");
                                this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                                cmd.mState = CmdState.CMD_FINISH;
                                break;
                            } else {
                                int result = SciSSConfHs.setCallDiversionNoReplyTimer(time);
                                cmd.utExpectType = 6;
                                if (1 == result) {
                                    cmd.mState = CmdState.CMD_HANDLE_CS;
                                    loge("setCallDiversionNoReplyTimer fail, result=" + result);
                                } else {
                                    startUtAlarm();
                                }
                                break;
                            }
                        }
                    } else {
                        loge("CFNR GET: don't support this OPRATOR");
                        cmd.mState = CmdState.CMD_HANDLE_CS;
                        break;
                    }
                case 11:
                    if (this.mImsConfigImpl.isCFNRcChangeWithCFNL()) {
                        if (1 == ut.mUtOpType) {
                            int result2 = SciSSConfHs.setCallDiversionNew(1, cmd.csAction, cmd.utNumber, null, null, 1, -1);
                            cmd.utExpectType = 8;
                            if (1 == result2) {
                                cmd.mState = CmdState.CMD_HANDLE_CS;
                                loge("setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result=" + result2);
                            } else {
                                startUtAlarm();
                            }
                            break;
                        } else {
                            loge("CFNRc: don't support this OPRATOR");
                            cmd.mState = CmdState.CMD_HANDLE_CS;
                            break;
                        }
                    }
                    this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                    cmd.mState = CmdState.CMD_FINISH;
                    break;
                case 13:
                    if (ut.mUtOpType == 0) {
                        boolean flag5 = SciSSConfHs.getCallBarringEnable(cmd.utReason).booleanValue();
                        ImsSsInfo[] ssInfoStatus = responseCLCK(Boolean.valueOf(flag5));
                        this.mListenerProxy.utConfigurationCallBarringQueried(cmd.utId, ssInfoStatus);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        loge("OIP ICB: don't support this OPRATOR");
                        break;
                    }
                case 14:
                    if (ut.mUtOpType == 0) {
                        boolean flag6 = SciSSConfHs.getCallBarringEnable(cmd.utReason).booleanValue();
                        ImsSsInfo[] ssInfoStatus2 = responseCLCK(Boolean.valueOf(flag6));
                        this.mListenerProxy.utConfigurationCallBarringQueried(cmd.utId, ssInfoStatus2);
                        cmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        loge("OIP OCB: don't support this OPRATOR");
                        break;
                    }
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    this.mListenerProxy.utConfigurationUpdated(cmd.utId);
                    cmd.mState = CmdState.CMD_FINISH;
                    break;
                case 20:
                    handleSciSSConfCbOfCWSuccessfully(cmd, ut);
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
        sendUTMessage(6);
    }

    private void saveCTCardVolteFlag(boolean isVolteCard) {
        int volteFlag = isVolteCard ? FLAG_IS_VOLTE : FLAG_IS_NOT_VOLTE;
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        logd("saveCTCardVolteFlag isVolteCard " + isVolteCard + ", subId = " + subId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[subId], volteFlag);
    }

    private void clearCTCardVolteFlag() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        logd("clearCTCardVolteFlag: subId = " + subId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[subId], FLAG_DEFAULT_VOLTE_VALUE);
    }

    private boolean isCTCardAndSupportVolte() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        return HwTelephonyManager.getDefault().isCTSimCard(subId) && this.mImsConfigImpl.isCarrierSupportVolte();
    }

    private boolean isCTCardAndNotSupportVolte() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        return HwTelephonyManager.getDefault().isCTSimCard(subId) && !this.mImsConfigImpl.isCarrierSupportVolte();
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

    private boolean checkCSDomain(UtCmd cmd) {
        if (cmd != null) {
            return DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY == domainIntersectCS(cmd.domainSelect);
        }
        loge("ut cmd is null");
        return false;
    }

    private boolean checkUTDomain(DomainSelectType ds) {
        return DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY == domainIntersectUT(ds);
    }

    private boolean checkUTDomain(UtCmd cmd) {
        if (cmd == null) {
            loge("ut cmd is null");
            return false;
        }
        return checkUTDomain(cmd.domainSelect);
    }

    private DomainSelectType domainIntersectCS(DomainSelectType oldDomain) {
        if (DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY == oldDomain) {
            DomainSelectType newDomain = DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
            return newDomain;
        } else if (DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY != oldDomain) {
            return oldDomain;
        } else {
            DomainSelectType newDomain2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            return newDomain2;
        }
    }

    private DomainSelectType domainIntersectUT(DomainSelectType oldDomain) {
        if (DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY == oldDomain) {
            DomainSelectType newDomain = DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY;
            return newDomain;
        } else if (DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY != oldDomain) {
            return oldDomain;
        } else {
            DomainSelectType newDomain2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            return newDomain2;
        }
    }

    private DomainSelectType domainSelect(DomainSelectType prevDomain, int utType, boolean showDcDialog) {
        logd("enter domainSelect, prevDomain=" + prevDomain + ", utType=" + utType + ", showDcDialog=" + showDcDialog);
        if (!this.mImsConfigImpl.isImsSsBeUsed()) {
            return DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
        }
        DomainSelectType ds = prevDomain;
        if (this.mImsConfigImpl.isUtForbiddenWhenVolteSwitchOff()) {
            logd("UtForbiddenWhenVolteSwitchOff");
            if (!isVolteSwitchOn() && DomainSelectType.SS_SELECT_INVALID_DOMAIN == (ds = domainIntersectCS(ds))) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        checkUtForbiddenDate();
        if (this.mIsUtForbidden && isSsUseUtInterface(utType)) {
            logd("Ut forbidden");
            ds = domainIntersectCS(ds);
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isCardTypePreferToUseUT()) {
            logd("this card is not prefer to use UT");
            ds = domainIntersectCS(ds);
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (!isCardMccMncPreferToUseUT()) {
            logd("this card MCC MNC is not prefer to use UT");
            ds = domainIntersectCS(ds);
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (this.mImsConfigImpl.isSSUseCsOnly(utType)) {
            logd("this ut type use cs only");
            ds = domainIntersectCS(ds);
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (isCardMccMncPreferToUseUT() && this.mImsConfigImpl.isSSForbidFallbackCS(utType)) {
            logd("this ut type is forbided fallback cs");
            ds = domainIntersectUT(ds);
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        if (isUtNotUseDefaultAPN()) {
            if (!this.hasUtUseAPN) {
                ds = domainIntersectCS(ds);
                logd("Ut Not Use Default APN, but has no Ut APN");
            } else if (!isUtSupportedByCurrentBearer()) {
                ds = domainIntersectCS(ds);
                logd("Ut Not Use Default APN, but current bearer not support ut");
            } else if (!isUtSubscribed()) {
                if ((this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL && utType == 20) || (utType == 3 && this.mImsConfigImpl.getOIRSourceMode() == 1)) {
                    logd("CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed");
                } else {
                    ds = domainIntersectCS(ds);
                    logd("Ut Not Use Default APN, but ut service not subscibed");
                }
            }
            if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == ds) {
                return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
            }
        }
        boolean isUtCanUseWifi = this.mImsConfigImpl.isUtCanUseWifi();
        boolean isWifiConnected = isWifiConnected();
        if (isUtCanUseWifi && isWifiConnected) {
            logd("wifi has connected, Ut will use wifi link");
            return ds;
        } else if (!isUtCanUseWifi && isWifiConnected && isSsUseUtInterface(utType)) {
            if (checkUTDomain(ds) && !isUtNotUseDefaultAPN()) {
                if (showDcDialog && !isDataSwitchOn()) {
                    DomainSelectType ds2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                    this.mShowDataConnectionDialog = true;
                    return ds2;
                }
                return ds;
            } else if (checkUTDomain(ds) && showDcDialog) {
                logd("tip user to diconnect wifi");
                return ds;
            } else {
                return domainIntersectCS(ds);
            }
        } else if (!isDataSwitchOn() && isSsUseUtInterface(utType) && !isUtNotUseDefaultAPN()) {
            if (checkUTDomain(ds) && showDcDialog) {
                logd("Show a dialog to notice user to turn data switch on");
                DomainSelectType ds3 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                this.mShowDataConnectionDialog = true;
                return ds3;
            }
            return domainIntersectCS(ds);
        } else {
            return ds;
        }
    }

    private DomainSelectType domainSelect(UtCmd cmd) {
        DomainSelectType ds = DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY;
        if (cmd == null) {
            logd("cmd is null. ");
            return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
        }
        if (-1 == cmd.utType || -1 == cmd.utReason) {
            ds = domainIntersectCS(ds);
        }
        return domainSelect(ds, cmd.utType, true);
    }

    private int handleSS(UtCmd cmd) {
        int ret;
        if (cmd == null) {
            logd("utcmd is null. ");
            return 1;
        }
        this.mShowDataConnectionDialog = false;
        cmd.domainSelect = domainSelect(cmd);
        logd("Domain select by ss is  " + cmd.domainSelect);
        switch (cmd.domainSelect) {
            case SS_SELECT_UT_DOMAIN_ONLY:
            case SS_SELECT_UT_PREFER_CS_SECONDARY:
            case SS_SELECT_CS_DOMAIN_ONLY:
                ret = handleUtSS(cmd);
                if (1 == ret) {
                    responseFailure(cmd.utId, 0);
                    break;
                }
                break;
            default:
                responseFailure(cmd.utId, 0);
                ret = 1;
                break;
        }
        this.mShowDataConnectionDialog = false;
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

    private boolean isCardTypePreferToUseUT() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        int cardType = HwTelephonyManager.getDefault().getCardType(subId);
        return this.mImsConfigImpl.isCardTypePreferToUseUT(cardType);
    }

    private boolean isCardMccMncPreferToUseUT() {
        return this.mImsConfigImpl.isCardMccMncPreferToUseUT(getCardMccMnc());
    }

    private String getCardMccMnc() {
        String mccMnc;
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        String simOperator = TelephonyManager.getDefault().getSimOperator(subId);
        if (simOperator == null) {
            return null;
        }
        logd("simOperator=" + simOperator);
        if (5 == simOperator.length()) {
            mccMnc = simOperator.substring(3, 5);
        } else if (6 == simOperator.length()) {
            mccMnc = simOperator.substring(3, 6);
        } else {
            loge("mccMnc error: Get wrong MCC MNC ");
            return null;
        }
        String mccMnc2 = simOperator.substring(0, 3) + mccMnc;
        logd("mccMnc = " + mccMnc2);
        return mccMnc2;
    }

    private int handleUtSS(UtCmd cmd) {
        addUtCmd(cmd);
        if (sendUTMessage(6, null)) {
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
        getContext().getContentResolver().registerContentObserver(Telephony.Carriers.CONTENT_URI, true, this.mApnChangeObserver);
    }

    private void handleSimRecordsLoaded(Message msg) {
        String oldImsi = this.mImsConfigImpl.getSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSubId], getContext());
        String newImsi = (String) msg.obj;
        String spliceMncMcc = this.mImsConfigImpl.spliceMncMcc();
        if (newImsi == null) {
            loge("Can't get current imsi from sim, return");
            return;
        }
        this.mImsConfigImpl.setCurrentImsi(newImsi);
        this.mImsConfigImpl.setSpliceMncMcc(spliceMncMcc);
        this.mIsUtSubscribed = true;
        this.mImsConfigImpl.readCarrierConfig(getContext());
        if (isCardChange(newImsi, oldImsi)) {
            clearSharedPreferences();
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSubId], newImsi, getContext());
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_SIM_IMSI_KEY[this.mSubId], this.mImsConfigImpl.getImpuFromSIM(), getContext());
        }
        if (isUtNotUseDefaultAPN()) {
            queryUtApn();
        }
        this.mIsSimRecordLoaded = true;
        this.mNextGetCallWaitingTime = null;
        queryAndSyncCallWaitingToCs();
        queryAndSyncCLIRModeToImsSdk();
        if (mCurrentSubId == this.mSubId) {
            logd("handleSimRecordsLoaded: init sdk params when mCurrentSubId == mSubId");
            initSciSSConfHs();
        }
        if (canUse403ForLocalCW() && !this.mHasCheckedSIMCardByUT && this.mIsDataReg) {
            detectSimCardSubscriptionStatus();
        }
    }

    private void setImsExtensionalParam(int num, boolean isNeed, String params) {
        SciSSConfHs.setExtensionalParam(num, isNeed, isNeed ? params : null);
    }

    private void setImsUserAgentExtensionalParam() {
        if (!HwImsConfigImpl.NULL_STRING_VALUE.equals(RO_HW_OEMNAME) && !HwImsConfigImpl.NULL_STRING_VALUE.equals(RO_BUILD_VERSION_INCREMENTAL)) {
            StringBuffer buildVersionBuffer = new StringBuffer();
            buildVersionBuffer.append("HUAWEI-");
            buildVersionBuffer.append(RO_HW_OEMNAME);
            buildVersionBuffer.append("/");
            buildVersionBuffer.append(RO_BUILD_VERSION_INCREMENTAL);
            boolean isNeedBuildVersion = this.mImsConfigImpl.getBoolCarrierBuildVersion();
            setImsExtensionalParam(0, isNeedBuildVersion, buildVersionBuffer.toString());
            setImsExtensionalParam(1, isNeedBuildVersion, buildVersionBuffer.toString());
            logd("SetImsExtensionalParam suucess:RO_HW_OEMNAME = " + RO_HW_OEMNAME + ",RO_BUILD_VERSION_INCREMENTAL = " + RO_BUILD_VERSION_INCREMENTAL + ",buildVersion = " + buildVersionBuffer.toString());
            return;
        }
        loge("Can't get prop RO_HW_OEMNAME = " + RO_HW_OEMNAME + ",RO_BUILD_VERSION_INCREMENTAL = " + RO_BUILD_VERSION_INCREMENTAL);
    }

    public int setHomeDomainName() {
        int ret = -1;
        String domainName = this.mImsConfigImpl.getDomainName();
        try {
            logd("setHomeDomainName domainName=" + hiddenPrivacyInfo(domainName, 2));
            if (!TextUtils.isEmpty(domainName) && mCurrentSubId == this.mSubId) {
                ret = SciSSConfHs.setHomeDomainName(domainName);
            }
        } catch (Exception e) {
            loge("setHomeDomainName, exception");
        }
        logd("setHomeDomainName , ret=" + ret);
        return ret;
    }

    private boolean isCardChange(String newImsi, String oldImsi) {
        boolean ret;
        if (newImsi == null) {
            if (oldImsi == null) {
                ret = false;
            } else {
                ret = true;
            }
        } else {
            ret = !newImsi.equals(oldImsi);
        }
        logd("Card is changed ret=" + ret);
        return ret;
    }

    private boolean isCurrentSubChange() {
        boolean ret = this.mSubId != mCurrentSubId;
        logd("Current sub is changed, ret is " + ret + ",mCurrentSubId is " + mCurrentSubId);
        return ret;
    }

    private static void setCurrentSubId(int subId) {
        mCurrentSubId = subId;
    }

    private static void setSciSSConfCb(SciSSConfCb sciSSConfCb) {
        mSciSSConfCb = sciSSConfCb;
    }

    private void handleSimCardAbsent(Message msg) {
        handleClear(1);
        this.mIsSimRecordLoaded = false;
    }

    private void clearSharedPreferences() {
        logd("enter clearSharedPreferences");
        this.mImsConfigImpl.setImpiFromSIM(null);
        this.mImsConfigImpl.setNafAddrFromSIM(null);
        this.mImsConfigImpl.setBsfAddrFromSIM(null);
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSubId], null, getContext());
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_SIM_IMSI_KEY[this.mSubId], null, getContext());
        this.mImsConfigImpl.setBoolToSP(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSubId], true, getContext());
        this.mImsConfigImpl.removeKeyInSp(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSubId], getContext());
        Phone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone != null) {
            if (imsPhone.getServiceState().getState() != 0) {
                logd("ims not registered, set impu from network as null.");
                this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSubId], null, getContext());
                return;
            }
            logd("ims is registered.");
            return;
        }
        logd("imsphone is null");
    }

    private void handleImsGetImpuDone(Message msg) {
        String impu = (String) msg.obj;
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSubId], impu, getContext());
        if (mCurrentSubId == this.mSubId) {
            setImsSdkImpu();
        } else {
            logd("handleImsGetImpuDone: skip set impu to sdk because it's not the current sub");
        }
    }

    private void queryCallWaiting(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        HwImsConfigImpl.CALL_WAITING_SOURCE callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter getCallWaiting, callWaitingSource=" + callWaitingSource);
        this.mCallWatingUtCanBeUsed = checkUTDomain(cmd.domainSelect);
        if (!this.mCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSS(cmd);
            return;
        }
        switch (callWaitingSource) {
            case CALL_WAITING_FROM_UT:
                handleSS(cmd);
                return;
            case CALL_WAITING_FROM_CS:
                handoverSS(cmd);
                return;
            case CALL_WAITING_FROM_LOCAL:
                logd("query cw , mIsUtForbidden=" + this.mIsUtForbidden + ",canUse403ForLocalCW=" + canUse403ForLocalCW());
                if (canUse403ForLocalCW() && this.mIsUtForbidden) {
                    handoverSS(cmd);
                    return;
                }
                Boolean enable = Boolean.valueOf(this.mImsConfigImpl.getBoolFromSP(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSubId], getContext(), true));
                Message onComplete = popUtMessage(cmd.utId);
                if (onComplete == null) {
                    logd("onComplete is null.");
                }
                handleGetCallWaitingDone(enable.booleanValue(), 1, onComplete);
                return;
            default:
                loge("[error]can't get call waiting, the source=" + callWaitingSource);
                responseFailure(cmd.utId, 0);
                return;
        }
    }

    private void queryCLIR(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        int mOIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        logd("enter queryCLIR, mOIRSourceMode=" + mOIRSourceMode);
        boolean mCLIRUtCanBeUsed = checkUTDomain(cmd.domainSelect);
        if (mCLIRUtCanBeUsed && mOIRSourceMode == 1) {
            int defaultClirMode = this.mImsConfigImpl.getOIRDefaultMode();
            int clirmode = this.mImsConfigImpl.getIntFromSP(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSubId], getContext(), defaultClirMode);
            int[] clirArray = {clirmode, 4};
            Bundle clirInfo = new Bundle();
            clirInfo.putIntArray("queryClir", clirArray);
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("onComplete is null.");
            }
            Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
            response.setData(clirInfo);
            syncCLIRModeToImsSdk(clirmode, response);
            return;
        }
        handleSS(cmd);
    }

    private int updateCallBarringAllOption(String password, boolean action, int serviceClass) {
        logd("enter updateCallbarringAllOption, action=" + action);
        int[] CallBarringAll = {2, 3, 4, 1, 5};
        int id = 0;
        for (int i : CallBarringAll) {
            id = updateCallBarringBase(password, i, action, serviceClass);
        }
        return id;
    }

    private int updateCallBarringBase(String password, int cbType, boolean action, int serviceClass) {
        logd("enter updateCallBarringBase, cbType=" + cbType + ", action=" + action);
        int type = transCbTypeToUtTypeSet(cbType);
        UtCmd cmd = new UtCmd(CmdToken.CMD_SET_CALLBARRING_OPTION, type, 1);
        if (isUtIdInvalid(cmd.utId)) {
            return cmd.utId;
        }
        String facility = transCbTypeToFacility(cbType);
        int condition = transBarringFacilityToCbReason(facility);
        cmd.utReason = condition;
        cmd.utEnable = action;
        cmd.csFacility = facility;
        cmd.csPassword = password;
        cmd.csServiceClass = serviceClass;
        handleSS(cmd);
        return cmd.utId;
    }

    private void updateCallWaiting(Message msg) {
        HwImsConfigImpl.CALL_WAITING_SOURCE callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter setCallWaiting, callWaitingSource=" + callWaitingSource);
        UtCmd cmd = (UtCmd) msg.obj;
        this.mCallWatingUtCanBeUsed = checkUTDomain(cmd.domainSelect);
        if (!this.mCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSS(cmd);
            return;
        }
        switch (callWaitingSource) {
            case CALL_WAITING_FROM_UT:
                handleSS(cmd);
                return;
            case CALL_WAITING_FROM_CS:
                handoverSS(cmd);
                return;
            case CALL_WAITING_FROM_LOCAL:
                logd("update callwaiting canUse403ForLocalCW : " + canUse403ForLocalCW() + ",mIsUtForbidden : " + this.mIsUtForbidden);
                if (canUse403ForLocalCW() && this.mIsUtForbidden) {
                    handoverSS(cmd);
                    return;
                }
                Message onComplete = popUtMessage(cmd.utId);
                if (onComplete == null) {
                    logd("onComplete is null.");
                }
                if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
                    syncCallWaitingToImsSdk(cmd.utEnable, onComplete);
                    return;
                } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
                    syncCallWaitingToCS(cmd.utEnable, onComplete);
                    return;
                } else {
                    loge("[error]local call waiting and not sync is not reasonable.");
                    responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
                    return;
                }
            default:
                loge("[error]can't set call waiting, the source=" + callWaitingSource);
                return;
        }
    }

    private void updateCLIR(Message msg) {
        UtCmd cmd = (UtCmd) msg.obj;
        int mOIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        logd("enter updateCLIR, mOIRSourceMode=" + mOIRSourceMode);
        boolean mCLIRUtCanBeUsed = checkUTDomain(cmd.domainSelect);
        if (mCLIRUtCanBeUsed && mOIRSourceMode == 1) {
            this.mImsConfigImpl.setIntToSP(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSubId], cmd.csReason, getContext());
            Message onComplete = popUtMessage(cmd.utId);
            if (onComplete == null) {
                logd("onComplete is null.");
            }
            Message response = this.mUtServiceHandler.obtainMessage(31, onComplete);
            syncCLIRModeToImsSdk(cmd.csReason, response);
            return;
        }
        handleSS(cmd);
    }

    private boolean isUtIdInvalid(int id) {
        if (id < 0) {
            loge("Invalid request id. id=" + id);
            return true;
        }
        logd("Valid request id. id=" + id);
        return false;
    }

    private static int getIdForRequest() {
        mRequestId++;
        if (mRequestId >= 50) {
            mRequestId = 0;
        }
        return mRequestId;
    }

    private void responseFailure(int id, int errorCode) {
        if (this.mShowDataConnectionDialog) {
            errorCode = 831;
        }
        logd("enter responseFailure, id=" + id + ", errorCode=" + errorCode);
        ImsReasonInfo error = new ImsReasonInfo(errorCode, 0);
        this.mListenerProxy.utConfigurationUpdateFailed(id, error);
    }

    private boolean isValidCommandInterfaceCFReason(int commandInterfaceCFReason) {
        switch (commandInterfaceCFReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    private boolean isValidCommandInterfaceCFAction(int commandInterfaceCFAction) {
        switch (commandInterfaceCFAction) {
            case 0:
            case 1:
            case 3:
            case 4:
                return true;
            case 2:
            default:
                return false;
        }
    }

    private boolean isCfEnable(int action) {
        return action == 1 || action == 3;
    }

    private void initUtSDK() {
        logd("initUtSDK enter");
        setSciSSConfCb(new SciSSConfCb());
        if (mSciSSConfCb == null) {
            loge("instance mSciSSConfCb fail");
            return;
        }
        try {
            boolean isOpenHrsLog = this.mImsConfigImpl.isUtOpenHrsLog();
            int ret = SciSSConfHs.init(getContext(), isOpenHrsLog);
            logd("SciSSConfHs.init ret=" + ret + ", IS_HRS_LOG_OPEN = " + isOpenHrsLog);
        } catch (RuntimeException e) {
            loge("SciSSConfHs RuntimeException");
        } catch (Exception e2) {
            loge("SciSSConfHs exception");
        }
        setCurrentSubId(this.mSubId);
        logd("initUtSDK leave");
    }

    private void initSciSSConfHs() {
        try {
            if (mSciSSConfCb == null) {
                logd("initSciSSConfHs:: sdk has not been initialized and mSciSSConfCb is null.");
                return;
            }
            SciSSConfCb sciSSConfCb = mSciSSConfCb;
            SciSSConfCb.setCallback(this.mSciSSCB);
            if (this.mGbaAuth == null) {
                this.mGbaAuth = new GbaAuth(this.mCi, this.mImsConfigImpl, this.mSubId);
            }
            SciSSConfCb sciSSConfCb2 = mSciSSConfCb;
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
        switch (cbType) {
            case 1:
            case 5:
                return 13;
            case 2:
            case 3:
            case 4:
                return 14;
            default:
                return -1;
        }
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
        if (cbType != 7) {
            switch (cbType) {
                case 1:
                    return 15;
                case 2:
                    return 16;
                case 3:
                    return 17;
                case 4:
                    return 18;
                case 5:
                    return 19;
                default:
                    loge("[ERROR]unknown cbType=" + cbType);
                    return -1;
            }
        }
        return 21;
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

    private int transCFToUtReason(int reason) {
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

    private int transCFToUtType(int reason) {
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

    private int transUtToCFReason(int reason) {
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

    private int transCLIRModeToUtReason(int clirMode) {
        if (clirMode != 1) {
            return 1;
        }
        return 2;
    }

    private ImsCallForwardInfo[] responseCallForwardEx(int reason) {
        ImsCallForwardInfo[] infos;
        int condition = transUtToCFReason(reason);
        if (this.mImsConfigImpl.getIsUseMultCondition()) {
            logd("responseCallForwardEx ,Single and composite node query");
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
        int condition = transUtToCFReason(reason);
        if (-1 == condition) {
            loge("invalid reason");
            return new ImsCallForwardInfo[0];
        }
        Boolean result = SciSSConfHs.getCallDiversionEnable(reason);
        logd("getCallDiversionEnable result=" + result);
        ImsCallForwardInfo[] infos = {new ImsCallForwardInfo()};
        if (result != null && result.booleanValue()) {
            infos[0].mStatus = 1;
        } else {
            infos[0].mStatus = 0;
        }
        infos[0].mCondition = condition;
        infos[0].mNumber = SciSSConfHs.getCallForwardTargetNumber(reason);
        if (infos[0].mNumber == null) {
            logd("responseCallForward number is null, set empty string as default");
            infos[0].mNumber = HwImsConfigImpl.NULL_STRING_VALUE;
        }
        infos[0].mTimeSeconds = 0;
        if (3 == reason && (str = SciSSConfHs.getCallDiversionNoReplyTimer()) != null) {
            try {
                infos[0].mTimeSeconds = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                loge("responseCallForward : NumberFormatException ");
            }
        }
        if (reason == 0) {
            Date[] date = SciSSConfHs.getCallForwardTime();
            if (date == null || 2 != date.length || date[0] == null || date[1] == null) {
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

    private ImsSsInfo[] responseCLCK(Boolean result) {
        ImsSsInfo[] info = new ImsSsInfo[2];
        info[0] = new ImsSsInfo();
        if (result == null || !result.booleanValue()) {
            info[0].mStatus = 0;
        } else {
            info[0].mStatus = 1;
        }
        return info;
    }

    private Object responseCWInts(Boolean result) {
        return responseInts(result, 1);
    }

    private int[] responseInts(Boolean result, int num) {
        logd("responseInts result=" + result + ", num=" + num);
        int[] response = new int[2];
        if (result == null || !result.booleanValue()) {
            response[0] = 0;
        } else {
            response[0] = 1;
        }
        response[1] = num;
        return response;
    }

    private Bundle responseCLIR(Boolean result, int defaultBehavior) {
        logd("responseCLIR result=" + result + ", defaultBehavior=" + defaultBehavior);
        int[] response = new int[2];
        response[1] = 4;
        if (result == null || !result.booleanValue()) {
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

    private Bundle responseCLIP(Boolean result) {
        logd("responseCLIP, result=" + result);
        return responseBundle(result);
    }

    private Bundle responseCOLR(Boolean result) {
        logd("responseCOLR, result=" + result);
        return responseBundle(result);
    }

    private Bundle responseCOLP(Boolean result) {
        logd("responseCOLP, result=" + result);
        return responseBundle(result);
    }

    private Bundle responseBundle(Boolean result) {
        Parcelable imsSsInfo = new ImsSsInfo();
        if (result == null || !result.booleanValue()) {
            ((ImsSsInfo) imsSsInfo).mStatus = 0;
        } else {
            ((ImsSsInfo) imsSsInfo).mStatus = 1;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("imsSsInfo", imsSsInfo);
        return bundle;
    }

    public int beginImsConnectivity(boolean isVowifi) {
        this.mIsVowifi = isVowifi;
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (cm == null) {
            loge("get ConnectivityManager null");
            return 3;
        }
        int slotId = ImsCallProviderUtils.getSubId(this.mSubId);
        this.mNetworkCallback = new UtNetworkCallback();
        if (isVowifi) {
            NetworkRequest request = new NetworkRequest.Builder().addTransportType(1).addCapability(9).setNetworkSpecifier(String.valueOf(slotId)).build();
            logd("handle UT data connection begin ims connectivity of vowifi");
            cm.requestNetwork(request, this.mNetworkCallback, 0, 47, this.mUtServiceHandler);
            this.mIsVowifiTimeOut = false;
        } else {
            int cap = getUtAPNCapabilities();
            int connectionType = getUtAPNConectionType();
            NetworkRequest request2 = new NetworkRequest.Builder().addTransportType(0).addCapability(cap).setNetworkSpecifier(String.valueOf(slotId)).build();
            logd("handle UT data connection begin ims connectivity of volte use connectionType" + connectionType);
            cm.requestNetwork(request2, this.mNetworkCallback, 0, connectionType, this.mUtServiceHandler);
        }
        return 1;
    }

    public void endImsConnectivity() {
        ConnectivityManager cm = (ConnectivityManager) getContext().getSystemService("connectivity");
        logd("endImsConnectivity");
        this.mbReqRoutHost = false;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
        if (this.mUtServiceHandler != null) {
            this.mUtServiceHandler.removeMessages(5);
        }
        if (cm != null && this.mNetworkCallback != null) {
            cm.unregisterNetworkCallback(this.mNetworkCallback);
            this.mNetworkCallback = null;
            if (this.hasSetNetworkAsDefault) {
                logd("clear default network for host");
                cm.bindProcessToNetwork(null);
                this.hasSetNetworkAsDefault = false;
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

    public boolean isUtOverWifiEnabled() {
        boolean ret = false;
        Boolean isUtOverWifiEnabled = Boolean.valueOf(SystemProperties.getBoolean("ro.config.hw_vowifi_mmsut", false));
        if (IS_VOWIFI_PROP_ON) {
            Context context = getContext();
            if (context == null) {
                loge("null == context");
                return false;
            } else if (HwImsManager.isWfcEnabledByPlatform(context, ImsCallProviderUtils.getSubId(this.mSubId))) {
                boolean isUtSwitchOn = this.mImsConfigImpl.getVowifiUtSwitch();
                ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
                if (cm == null) {
                    loge("null == ConnectivityManager");
                    return false;
                }
                NetworkInfo wifiNetinfo = cm.getNetworkInfo(1);
                Boolean isWifiConnected = false;
                if (wifiNetinfo != null && wifiNetinfo.isConnected()) {
                    isWifiConnected = true;
                }
                if (isWifiConnected.booleanValue() && isUtOverWifiEnabled.booleanValue() && isUtSwitchOn) {
                    ret = true;
                }
                logd("isUtOverWifiEnabled return " + ret);
                return ret;
            } else {
                return false;
            }
        }
        return false;
    }

    private void changeDcStateWhenImsActFail() {
        UtCmd cmd = getFirstUtCmd();
        if (IS_VOWIFI_PROP_ON && cmd != null) {
            if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
                logd("process ut use xcap connection fail,retry vowifi");
                cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
                return;
            }
            int utDomain = getUtDomain();
            if (2 == utDomain) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_IMSPDP_FAIL;
            } else if (utDomain == 0) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_IDLE;
            } else if (1 == utDomain) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
            } else if (3 == utDomain) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_IMSPDP_FAIL;
            } else {
                loge("changeDcStateWhenImsActFail,utDomain is an undefined type! utDomain=" + utDomain);
            }
            logd("changeDcStateWhenImsActFail,cmd.dcState=" + cmd.dcState);
        }
    }

    private int getUtDomain() {
        int slotId = ImsCallProviderUtils.getSubId(this.mSubId);
        boolean isRoaming = TelephonyManager.getDefault().isNetworkRoaming(slotId);
        int utDomain = HwImsManager.getWfcMode(getContext(), isRoaming, slotId);
        logd("isUtOverWifiEnabled isRoaming = " + isRoaming + " sub = " + slotId);
        return utDomain;
    }

    public void changeDcStateWhenTunnelSetupFail() {
        UtCmd cmd = getFirstUtCmd();
        if (IS_VOWIFI_PROP_ON && cmd != null) {
            if (isAirplaneModeOn() && (isUtNotUseDefaultAPN() || !this.mImsConfigImpl.isUtCanUseWifi())) {
                cmd.dcState = ImsDataConnectionState.IMS_DC_AIRPLANE_ON_TUNNEL_FAIL;
            } else if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
                logd("process ut prefer use volte fail,retry vowifi fail,csfb");
                cmd.dcState = ImsDataConnectionState.IMS_DC_ACT_EXECUTE_LTE_FAIL;
            } else {
                int utDomain = getUtDomain();
                if (2 == utDomain) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_TUNNEL_FAIL;
                } else if (utDomain == 0) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_ONLY_TUNNEL_FAIL;
                } else if (1 == utDomain) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_TUNNEL_FAIL;
                } else if (3 == utDomain) {
                    cmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_TUNNEL_FAIL;
                } else {
                    loge("changeDcStateWhenTunnelSetupFail,utDomain is an undefined type! utDomain=" + utDomain);
                }
                logd("changeDcStateWhenTunnelSetupFail,cmd.dcState=" + cmd.dcState);
            }
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
        if (cmd != null && true == isUtOverWifiEnabled()) {
            logd("restart wifi tunnel lifetime alarm.");
            stopWifiTunnelConnectionAlarm();
            startWifiTunnelConnectionAlarm();
            return;
        }
        logd("tunnel lifetime is out, endImsConnectivity.");
        endImsConnectivity();
        stopWifiTunnelSetupAlarm();
    }

    public void startWifiTunnelSetupAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            startAlarm(45, 10000);
        }
    }

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
        this.mIsVowifiTimeOut = true;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
        if (cmd != null) {
            logd("handle UT data connection tunnel setup time out, endUtOverWifiConnectivity.");
            stopWifiTunnelConnectionAlarm();
            stopWifiTunnelSetupAlarm();
            endImsConnectivity();
            changeDcStateWhenTunnelSetupFail();
            sendUTMessage(6);
        }
    }

    private boolean isUtOverWifiTunnelUp() {
        logd("isUtOverWifiTunnelUp, mIsWifiTunnnelUp = " + this.mIsWifiTunnnelUp);
        return this.mIsWifiTunnnelUp;
    }

    public void setUtOverWifiTunnelUpFlag(boolean flag) {
        logd("setUtOverWifiTunnelUpFlag, flag = " + flag);
        this.mIsWifiTunnnelUp = flag;
    }

    private boolean processImsConnectivity() {
        endConnectivityIfNeeded(47);
        if (ImsDataConnectionState.IMS_DC_CONNECTING == this.mImsDCState) {
            logd("processImsConnectivity, wait for ims connecting");
            return false;
        } else if (ImsDataConnectionState.IMS_DC_CONNECTED == this.mImsDCState) {
            logd("processImsConnectivity, ims is connected, mbReqRoutHost=" + this.mbReqRoutHost);
            if (true == this.mbReqRoutHost) {
                return true;
            }
            sendUTMessage(2);
            return false;
        } else {
            int ret = beginImsConnectivity(false);
            logd("processImsConnectivity, begin ims result=" + ret + ",  mImsDCState=" + this.mImsDCState);
            if (ret != 1) {
                if (ret != 3) {
                    return false;
                }
                sendUTMessage(4);
                return false;
            } else if (ImsDataConnectionState.IMS_DC_IDLE == this.mImsDCState) {
                this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startImsDataConnectionAlarm();
                return false;
            } else if (ImsDataConnectionState.IMS_DC_CONNECTING == this.mImsDCState || ImsDataConnectionState.IMS_DC_CONNECTED != this.mImsDCState) {
                return false;
            } else {
                this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startImsDataConnectionAlarm();
                return false;
            }
        }
    }

    public void keepAliveImsConnectivity() {
        this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(5), 30000L);
    }

    private boolean processTemporarilyDcConnection() {
        logd("processTemporarilyDcConnection, mImsDCState = " + this.mImsDCState);
        if (ImsDataConnectionState.IMS_DC_CONNECTING == this.mImsDCState) {
            logd("processTemporarilyDcConnection, wait for ims connecting");
            return true;
        } else if (ImsDataConnectionState.IMS_DC_CONNECTED == this.mImsDCState) {
            logd("processTemporarilyDcConnection, ims is connected, return true");
            return true;
        } else {
            setDefaultDataSubId(this.mSubId);
            this.mHasChangedDefaultDataSub = true;
            return false;
        }
    }

    private void setDefaultDataSubId(int subId) {
        SubscriptionManager subscriptionManager = SubscriptionManager.from(getContext());
        if (subscriptionManager != null) {
            logd("setDefaultDataSubId: subId = " + subId);
            subscriptionManager.setDefaultDataSubId(subId);
            return;
        }
        loge("setDefaultDataSubId failed!");
    }

    private int getDefaultDataSubId() {
        int subId = SubscriptionManager.getDefaultDataSubscriptionId();
        logd("getDefaultDataSubId: subId = " + subId);
        return subId;
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

    private boolean ensureRouteToHost(InetAddress[] inetAddress) {
        if (inetAddress == null || inetAddress.length == 0) {
            return false;
        }
        int utAPNType = getUtAPNConectionType();
        try {
            ConnectivityManager connMgr = (ConnectivityManager) getContext().getSystemService("connectivity");
            int addTag = 0;
            for (int addTag2 = 0; addTag2 < inetAddress.length; addTag2++) {
                if (connMgr != null && inetAddress[addTag2] != null && connMgr.requestRouteToHostAddress(utAPNType, inetAddress[addTag2])) {
                    addTag++;
                }
            }
            if (addTag > 0) {
                return true;
            }
            loge("ensureRouteToHost fail addTag<=0");
            return false;
        } catch (Exception e) {
            loge("ensureRouteToHost failed");
            return false;
        }
    }

    private void startImsDataConnectionAlarm() {
        startAlarm(44, 10000);
    }

    public void stopImsDataConnectionAlarm() {
        stopAlarm(44);
    }

    private void handleImsDcTimeOut() {
        logd("handleImsDcTimeOut");
        handleImsConnectionFailure();
    }

    public boolean isUtNotUseDefaultAPN() {
        return this.mImsConfigImpl.getUtUseApn() != 0;
    }

    private int getUtAPNCapabilities() {
        if (this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) {
            return 9;
        }
        if (this.mImsConfigImpl.getUtUseApn() == 0) {
            return 12;
        }
        return 4;
    }

    private int getUtAPNConectionType() {
        if (this.mIsVowifi) {
            return 47;
        }
        if (this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) {
            return 45;
        }
        if (this.mImsConfigImpl.getUtUseApn() == 0) {
            return 0;
        }
        return 11;
    }

    public void queryUtApn() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        String operator = TelephonyManager.from(getContext()).getSimOperator(subId);
        String apnType = "ims";
        apnType = (this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) ? "xcap" : "xcap";
        String selection = "numeric = ? AND (type like '%" + apnType + "%')";
        Cursor cursor = null;
        Uri uri = Uri.withAppendedPath(Uri.parse("content://telephony/carriers/subId"), Integer.toString(subId));
        logd("queryUtApn subId = " + subId);
        try {
            try {
                cursor = getContext().getContentResolver().query(uri, null, selection, new String[]{operator}, "_id");
                if (cursor != null) {
                    if (cursor.getCount() > 0) {
                        this.hasUtUseAPN = true;
                    } else {
                        this.hasUtUseAPN = false;
                    }
                }
                logd("hasUtUseAPN = " + this.hasUtUseAPN);
                if (cursor == null) {
                    return;
                }
            } catch (Exception e) {
                loge("Exception for queryUtApn ");
                if (cursor == null) {
                    return;
                }
            }
            cursor.close();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private void sendStopImsApnMessage() {
        int utImsDataDelayTime = getDefaultDataSubId() == this.mSubId ? this.mImsConfigImpl.getUtImsDataDelayEndTime() : this.mImsConfigImpl.getDefUtImsDataDelayEndTime();
        this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(12), utImsDataDelayTime);
    }

    private void cancelStopImsApnMessage() {
        if (this.mUtServiceHandler != null && this.mUtServiceHandler.hasMessages(12)) {
            this.mUtServiceHandler.removeMessages(12);
        }
    }

    private boolean checkNetworkAvailable(int networkType) {
        Network network = getNetworkForType(networkType);
        return network != null;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class UtNetworkCallback extends ConnectivityManager.NetworkCallback {
        private UtNetworkCallback() {
            HwImsUtImpl.this = r1;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("UtNetworkCallback got Network:" + network);
            if (!HwImsUtImpl.this.mUtAPNInetAddressMap.containsKey(HwImsUtImpl.this.mImsConfigImpl.getUtNafSrvAddr())) {
                HwImsUtImpl.this.logd("UtNetworkCallback bindProcessToNetwork");
                ConnectivityManager cm = (ConnectivityManager) HwImsUtImpl.this.getContext().getSystemService("connectivity");
                if (cm == null) {
                    HwImsUtImpl.this.loge("null == ConnectivityManager");
                    return;
                } else {
                    cm.bindProcessToNetwork(network);
                    HwImsUtImpl.this.hasSetNetworkAsDefault = true;
                }
            }
            if (HwImsUtImpl.this.mImsDCState == ImsDataConnectionState.IMS_DC_CONNECTING) {
                HwImsUtImpl.this.logd("handle UT data connection UT connected");
                HwImsUtImpl.this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTED;
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
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("UtNetworkCallback lost Network:" + network);
            HwImsUtImpl.this.endImsConnectivity();
        }
    }

    private boolean isDataConnection() {
        if (this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) {
            logd("handle UT data connection ut can use wifi and wifi is connected");
            return true;
        } else if (isDefaultConnected()) {
            loge("handle UT data connection ut can not use wifi and mobile data is connected");
            return true;
        } else {
            loge("data is not Connected");
            return false;
        }
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
        return cm.getMobileDataEnabled();
    }

    public void handleConnectivity(NetworkInfo networkInfo) {
        logd("handleConnectivity mImsDCState=" + this.mImsDCState + ", networkInfo=" + networkInfo);
        if (networkInfo == null || !networkInfo.isAvailable()) {
            loge("network not available");
            return;
        }
        UtCmd cmd = getFirstUtCmd();
        if (networkInfo.getType() == 1 && cmd == null && checkNetworkAvailable(47)) {
            logd("handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork ");
            endImsConnectivity();
        }
        if (networkInfo.isConnected() && networkInfo.getType() == 0) {
            if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getDefaultDataSubId() != this.mSubId) {
                logd("Data has connected, but not for this sub, return");
            } else if (ImsDataConnectionState.IMS_DC_IDLE != this.mImsDCState) {
                logd("handleConnectivity: Ims connection is being established, do not use default data connection.");
            } else if (cmd != null && ImsDataConnectionState.IMS_DC_CONNECTING == cmd.dcState) {
                logd("Data has connected, the SS can go UT interface");
                Network network = getNetworkForDefaultApn();
                initSDKServiceIpAddr(network);
                cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                stopTemporaryDcAlarm();
                stopDcAlarm();
                sendUTMessage(6);
            }
        }
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
        this.mLastSS = 1;
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        sendUTMessage(6);
    }

    private void startUtAlarm() {
        startAlarm(42, 30000);
    }

    private void stopUtAlarm() {
        stopAlarm(42);
    }

    private void handleUtTimeOut() {
        logd("handleUtTimeOut");
        this.mLastSS = 1;
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
            SciSSConfHs.reset(0);
            this.mUtAPNInetAddressMap.clear();
        }
        processReportChrException((byte) -1, (byte) -1, 1001);
        handoverSSTick();
    }

    private void startDCAlarm() {
        startAlarm(41, 10000);
    }

    private void stopDcAlarm() {
        stopAlarm(41);
    }

    private void startTemporaryDCAlarm() {
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
        this.mLastSS = 1;
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        sendUTMessage(6);
    }

    private void startUtForbiddenAlarm() {
        int delay = this.mImsConfigImpl.getUtForbiddenTimer();
        logd("startUtForbiddenAlarm: delay=" + (delay / 1000) + "s");
        this.mUtForbiddenDate = new Date();
        this.mUtForbiddenDate.setMinutes(this.mUtForbiddenDate.getMinutes() + (delay / 60000));
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
        return -1 != this.mImsConfigImpl.getUtForbiddenTimer();
    }

    private void startTemporaryUtStayAlarm() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getFirstUtCmd() == null) {
            logd("startTemporaryUtStayAlarm");
            startAlarm(48, 1000);
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
        if (!this.mHasChangedDefaultDataSub) {
            return;
        }
        int defaultDataSubId = getDefaultDataSubId();
        int default4GSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        logd("recoverDefaultDataSub: defaultDataSubId = " + defaultDataSubId + ", default4GSlotId = " + default4GSlotId);
        if (defaultDataSubId != default4GSlotId && default4GSlotId != this.mSubId) {
            logd("recoverDefaultDataSub: recover default data sub to main sub");
            setDefaultDataSubId(default4GSlotId);
            this.mHasChangedDefaultDataSub = false;
        }
    }

    private void startAlarm(int alarm, int timer) {
        logd("startAlarm alarm = " + alarm + ", timer = " + timer + "ms");
        if (this.mUtServiceHandler != null) {
            if (this.mUtServiceHandler.hasMessages(alarm)) {
                this.mUtServiceHandler.removeMessages(alarm);
            }
            this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(alarm), timer);
        }
    }

    private void stopAlarm(int alarm) {
        logd("stopAlarm alarm = " + alarm);
        if (this.mUtServiceHandler != null && this.mUtServiceHandler.hasMessages(alarm)) {
            this.mUtServiceHandler.removeMessages(alarm);
        }
    }

    private Date transIntToDate(int hour, int minute) {
        Date date = new Date();
        date.setHours(hour);
        date.setMinutes(minute);
        return date;
    }

    public void handleClear(int iLevel) {
        endImsConnectivity();
        this.mLastSS = 1;
        clearCTCardVolteFlag();
        if (isConfigUtForbiddenTimer()) {
            if (iLevel == 1) {
                logd("handleClear, set mIsUtForbidden false");
                this.mIsUtForbidden = false;
                stopUtForbiddenAlarm();
            }
        } else {
            this.mIsUtForbidden = false;
        }
        this.mCanSendChrBroadcastDate = null;
        this.mHasCheckedSIMCardByUT = false;
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
        if (this.mGbaAuth != null) {
            this.mGbaAuth.clear();
        } else {
            logd("mGbaAuth is null");
        }
        SciSSConfHs.reset(iLevel);
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && 1 == iLevel) {
            logd("handleClear: reset current sub id to default");
            setCurrentSubId(-1);
        }
        this.mUtAPNInetAddressMap.clear();
        sendUTMessage(6);
    }

    private String hiddenPrivacyInfo(String info, int type) {
        return HiddenPrivacyInfo.putMosaic(info, type);
    }

    private void handleGetCallWaitingDone(boolean enable, int type, Message onComplete) {
        boolean z = true;
        boolean isEnable = (enable && 1 == (type & 1)) ? false : false;
        logd("get call waiting success, isEnable=" + isEnable);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            syncCallWaitingToImsSdk(isEnable, onComplete);
        } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
            syncCallWaitingToCS(isEnable, onComplete);
        } else {
            logd("call waiting does not sync to modem, response to target");
            Object ret = responseCWInts(Boolean.valueOf(isEnable));
            responseMessage(onComplete, ret, null);
        }
    }

    private void handleSetCallWaitingDone(boolean enable, Message onComplete) {
        logd("set call waiting success, isEnable=" + enable);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            syncCallWaitingToImsSdk(enable, onComplete);
        } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
            syncCallWaitingToCS(enable, onComplete);
        } else {
            Object ret = responseCWInts(Boolean.valueOf(enable));
            responseMessage(onComplete, ret, null);
        }
    }

    private boolean syncCallWaitingToImsSdk(boolean enable, Message onComplete) {
        int callWaitingAction = getCallWaitingAction(enable);
        logd("begin sync call waiting to IMS SDK, callWaitingAction=" + callWaitingAction);
        if (this.mCallWatingUtCanBeUsed) {
            this.mCi.setCallWaiting(enable, 1, this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, onComplete));
        } else {
            logd("don't sync result to IMS SDK exectly");
            responseMessage(this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, onComplete), null, null);
        }
        return true;
    }

    private void handleSyncCallWaitingToImsSdkDone(Message msg) {
        AsyncResult arSyncCW = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCW.userObj;
        if (arSyncCW.exception != null) {
            loge("SyncCallWaitingToImsSdk FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        int callWaitingAction = msg.arg1;
        logd("sync call waiting to IMS SDK successfully, callWaitingAction=" + callWaitingAction);
        boolean enable = isEnableCallWaiting(callWaitingAction);
        handleSyncCallWaitingDone(enable, msg);
    }

    private boolean syncCallWaitingToCS(boolean enable, Message onComplete) {
        int callWaitingAction = getCallWaitingAction(enable);
        responseMessage(this.mUtServiceHandler.obtainMessage(30, callWaitingAction, 0, onComplete), null, null);
        return true;
    }

    private void handleSyncCallWaitingToCsDone(Message msg) {
        AsyncResult arSyncCW = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCW.userObj;
        if (arSyncCW.exception != null) {
            loge("SyncCallWaitingToCs FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        logd("sync call waiting to IMS SDK successfully");
        int callWaitingAction = msg.arg1;
        boolean enable = isEnableCallWaiting(callWaitingAction);
        handleSyncCallWaitingDone(enable, msg);
    }

    private void handleSyncCallWaitingDone(boolean enable, Message msg) {
        AsyncResult arSyncCW = (AsyncResult) msg.obj;
        logd("sync call waiting has finished successfully.");
        this.mIsAirModeResetCWInModem = false;
        if (HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL == this.mImsConfigImpl.getCallWaitingSource()) {
            logd("begin set call waiting to sharedpreference");
            this.mImsConfigImpl.setBoolToSP(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSubId], enable, getContext());
        }
        Message onComplete = (Message) arSyncCW.userObj;
        Object ret = responseCWInts(Boolean.valueOf(enable));
        responseMessage(onComplete, ret, arSyncCW.exception);
    }

    private int getCallWaitingAction(boolean isEnable) {
        if (isEnable) {
            return 1;
        }
        return 0;
    }

    private boolean isEnableCallWaiting(int callWaitingAction) {
        if (1 == callWaitingAction) {
            return true;
        }
        return false;
    }

    private boolean isUtDataExpire(int type) {
        if (type != 5) {
            switch (type) {
                case 13:
                case 14:
                    break;
                default:
                    loge("isUtDataExpire unknown type=" + type);
                    return true;
            }
        }
        Date utDataExpireTime = this.mUtDataExpireTime.get(Integer.valueOf(type));
        if (utDataExpireTime == null) {
            return true;
        }
        Date currDate = new Date();
        if (currDate.compareTo(utDataExpireTime) < 0) {
            logd("Ut data is not expire, currDate=" + currDate + ", mNextUtDataUpdateTime" + utDataExpireTime);
            return false;
        }
        return true;
    }

    private void setUtDataExpireTime(int type) {
        logd("enter setUtDataExpireTime, type=" + type);
        if (type != 5) {
            switch (type) {
                case 13:
                case 14:
                    break;
                default:
                    return;
            }
        }
        Date currDate = new Date();
        currDate.setSeconds(currDate.getSeconds() + 10);
        this.mUtDataExpireTime.put(Integer.valueOf(type), currDate);
        logd("expirte time=" + currDate);
    }

    private void syncCLIRModeToImsSdk(int mCLIRMode, Message onComplete) {
        this.mCi.setCLIR(mCLIRMode, onComplete);
    }

    private void handleSyncCLIRModeToImsSdkDone(Message msg) {
        AsyncResult arSyncCLIR = (AsyncResult) msg.obj;
        Message onComplete = (Message) arSyncCLIR.userObj;
        if (arSyncCLIR.exception != null) {
            loge("SyncCLIRModeToImsSdk FAIL");
            responseMessage(onComplete, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        Bundle ret = msg.getData();
        responseMessage(onComplete, ret, arSyncCLIR.exception);
    }

    private boolean isUtSupportedByCurrentBearer() {
        int utBearerType = this.mImsConfigImpl.getUtBearerType();
        boolean result = true;
        if (utBearerType == 1) {
            result = isLTENetworkType();
        } else if (utBearerType == 2) {
            result = this.mHwImsServiceImpl.getImsRegisterState() == 1;
        } else if (utBearerType == 3) {
            if (!isLTENetworkType() && this.mHwImsServiceImpl.getImsRegisterState() != 1) {
                r2 = false;
            }
            result = r2;
        }
        logd("isUtSupportedByCurrentBearer result = " + result);
        return result;
    }

    private boolean isLTENetworkType() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        int networkType = TelephonyManager.getDefault().getNetworkType(subId);
        logd("isLTENetworkType subId = " + subId + " networkType = " + networkType);
        return networkType == 13 || networkType == 19;
    }

    public void handleUtApnConnection(Intent intent) {
        if (intent == null) {
            return;
        }
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && mCurrentSubId != this.mSubId) {
            logd("handleUtApnConnection intent not for this sub: " + this.mSubId + " mCurrentSubId = " + mCurrentSubId);
            return;
        }
        String apn = intent.getStringExtra("apnType");
        String cause = intent.getStringExtra("failCause");
        logd("handleUtApnConnection apn = " + apn + " cause = " + cause);
        if (!TextUtils.isEmpty(apn) && apn.equals("xcap") && !TextUtils.isEmpty(cause)) {
            processReportChrException((byte) 0, (byte) -1, DcFailCause.valueOf(cause).ordinal());
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
            this.mIsUtForbidden = true;
            stopUtForbiddenAlarm();
            startUtForbiddenAlarm();
        }
        this.mLastSS = 1;
        if (isUtOverWifiEnabled()) {
            logd("handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true.");
            changeDcStateWhenImsActFail();
            sendUTMessage(6);
            return;
        }
        logd("handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick.");
        this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
        handoverSSTick();
    }

    public void logd(String s) {
        Rlog.d("HwImsUtImpl[" + this.mSubId + "]", s);
    }

    public void loge(String s) {
        Rlog.e("HwImsUtImpl[" + this.mSubId + "]", "[ERROR] " + s);
    }

    private boolean canUse403ForLocalCW() {
        return this.mImsConfigImpl.isUse403ForLocalCW();
    }

    private boolean regetIMSIFromPhone() {
        Phone defPhone;
        String imsi;
        if (this.mImsConfigImpl.getIMSI() == null && (defPhone = getDefaultPhone()) != null && (imsi = defPhone.getSubscriberId()) != null) {
            logd("regetIMSIFromPhone");
            this.mImsConfigImpl.setIMSI(imsi);
            return true;
        }
        return false;
    }

    private boolean isOtherSubUtIdle() {
        if (this.mImsUtImpl != null) {
            return this.mImsUtImpl.isOtherSubUtIdle(this.mSubId);
        }
        return true;
    }

    private void broadcastUtIdle() {
        if (isUtIdle() && this.mImsUtImpl != null) {
            this.mImsUtImpl.broadcastUtIdle(this.mSubId);
        }
    }

    public boolean isUtIdle() {
        boolean isWaitingForUtStay = this.mUtServiceHandler != null && this.mUtServiceHandler.hasMessages(48);
        boolean isUtCmdQueueEmpty = getFirstUtCmd() == null;
        logd("isUtIdle: isWaitingForUtStay = " + isWaitingForUtStay + ", isUtCmdQueueEmpty = " + isUtCmdQueueEmpty);
        return !isWaitingForUtStay && isUtCmdQueueEmpty;
    }

    public void receiveOtherSubUtIdle() {
        logd("receiveOtherSubUtIdle");
        if (!isUtIdle()) {
            sendUTMessage(6, null);
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void processECT() {
        if (this.mCi != null) {
            this.mCi.explicitCallTransfer(this.mUtServiceHandler.obtainMessage(50));
        }
    }

    @Override // com.huawei.ims.ImsUtImpl
    public String getUtIMPUFromNetwork() {
        if (this.mIsSimRecordLoaded) {
            return this.mImsConfigImpl.getUtIMPUFromNetwork();
        }
        return null;
    }

    public boolean isSIMCardCheckedByUT() {
        return this.mHasCheckedSIMCardByUT;
    }

    public void setIsDataReg(boolean regState) {
        this.mIsDataReg = regState;
    }

    private synchronized void initUtSDKWhenDomainSelectUt() {
        if (mSciSSConfCb == null) {
            logd("initUtSDKWhenDomainSelectUt: initUtSDK and set ut params to sdk.");
            initUtSDK();
            initSciSSConfHs();
        } else if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && regetIMSIFromPhone()) {
            setImsSdkImpi();
            setImsSdkBsfAddr();
            setImsSdkNafAddr();
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
        sendUTMessage(6, null);
    }

    public void detectSimCardSubscriptionStatus() {
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded");
            return;
        }
        int mainSlot = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if ((ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && this.mSubId != mainSlot && isCTCardAndSupportVolte()) || isCTCardAndNotSupportVolte()) {
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
        handleSS(cmd);
    }

    public boolean canUseDefaultBearForWifiConnected() {
        return !this.mImsConfigImpl.isUtCanUseWifi() && this.mImsConfigImpl.getUtUseApn() == 0 && isWifiConnected();
    }

    private void startDefaultBearForWifiConnected(UtCmd cmd) {
        logd("startDefaultBearForWifiConnected.");
        if (cmd == null) {
            logd("startDefaultBearForWifiConnected: cmd is null.");
            return;
        }
        cmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
        startImsDataConnectionAlarm();
        beginImsConnectivity(false);
    }

    private void sendUtChrBroadcast(UtCHRData utChrData) {
        if (utChrData == null) {
            logd("sendUtCHRBroadcast: utCHRData is null.");
            return;
        }
        Bundle utChrBundle = new Bundle();
        utChrBundle.putString("EventScenario", "UT_FAIL");
        utChrBundle.putInt("EventFailCause", 1);
        utChrBundle.putByte("IMS.UT.operationType", utChrData.mOperationType);
        utChrBundle.putByte("IMS.UT.dataApntype", utChrData.mDataApntype);
        utChrBundle.putByte("IMS.UT.isSupportWifi", utChrData.mIsSupportWifi);
        utChrBundle.putByte("IMS.UT.isMobileDateConnected", utChrData.mIsMobileDateConnected);
        utChrBundle.putByte("IMS.UT.isWifiConnected", utChrData.mIsWifiConnected);
        if (utChrData.mIsVowifiEnable != -1) {
            utChrBundle.putByte("IMS.UT.isVowifiEnable", utChrData.mIsVowifiEnable);
        }
        if (utChrData.mAddressType != -1) {
            utChrBundle.putByte("IMS.UT.addressType", utChrData.mAddressType);
        }
        utChrBundle.putByte("IMS.UT.subId", utChrData.mSubId);
        utChrBundle.putByte("IMS.UT.currentSubId", utChrData.mCurrentSubId);
        if (utChrData.mVowifiDomain != -1) {
            utChrBundle.putByte("IMS.UT.vowifidomain", utChrData.mVowifiDomain);
        }
        if (utChrData.mFailReason != -1) {
            utChrBundle.putInt("IMS.UT.failReason", utChrData.mFailReason);
        }
        utChrBundle.putString("IMS.UT.cmdDcState", utChrData.mCmdDcState);
        logd("sendUtCHRBroadcast: sendTelephonyChrBroadcast." + utChrBundle.toString());
        HwTelephonyFactory.getHwTelephonyChrManager().sendTelephonyChrBroadcast(utChrBundle);
    }

    private UtCHRData extractParametersForChr(byte isVowifiUt, byte addressType, int failReason) {
        UtCmd cmd = getFirstUtCmd();
        if (cmd == null) {
            return null;
        }
        logd("extractParametersForChr");
        byte operationType = (byte) cmd.utType;
        byte apnType = (byte) this.mImsConfigImpl.getUtUseApn();
        boolean isUtCanUseWifi = this.mImsConfigImpl.isUtCanUseWifi();
        boolean isDefaultConnected = isDefaultConnected();
        boolean isWifiConnected = isWifiConnected();
        byte utDomain = (byte) getUtDomain();
        String dcState = cmd.dcState.toString();
        byte subId = (byte) ImsCallProviderUtils.getSubId(this.mSubId);
        byte canUseWifi = isUtCanUseWifi ? (byte) 1 : (byte) 0;
        byte mobileDataConneted = isDefaultConnected ? (byte) 1 : (byte) 0;
        byte wifiConnected = isWifiConnected ? (byte) 1 : (byte) 0;
        UtCHRData utChrData = new UtCHRData(operationType, apnType, canUseWifi, mobileDataConneted, wifiConnected, isVowifiUt, addressType, subId, (byte) mCurrentSubId, utDomain, failReason, dcState);
        return utChrData;
    }

    private void processReportChrException(byte isVowifiUt, byte addressType, int failReason) {
        UtCHRData utChrData = extractParametersForChr(isVowifiUt, addressType, failReason);
        Date currDate = new Date();
        if (this.mCanSendChrBroadcastDate == null || currDate.compareTo(this.mCanSendChrBroadcastDate) >= 0) {
            sendUtChrBroadcast(utChrData);
            if (this.mCanSendChrBroadcastDate == null) {
                this.mCanSendChrBroadcastDate = new Date();
            }
            this.mCanSendChrBroadcastDate.setTime(currDate.getTime() + 3600000);
        }
    }

    private void handleSciSSConfCbOfCWSuccessfully(UtCmd cmd, UTData ut) {
        Message onComplete = popUtMessage(cmd.utId);
        if (onComplete == null) {
            logd("onComplete is null.");
        }
        if (ut.mUtOpType == 0) {
            logd("get cw state, cmd.mToken = " + cmd.mToken);
            if (CmdToken.CMD_GET_CALLWAITING == cmd.mToken) {
                boolean flag = SciSSConfHs.getCallWaitingEnabled().booleanValue();
                handleGetCallWaitingDone(flag, 1, onComplete);
            } else if (isCTCardAndSupportVolte()) {
                saveCTCardVolteFlag(true);
            }
        } else {
            handleSetCallWaitingDone(cmd.utEnable, onComplete);
        }
        cmd.mState = CmdState.CMD_FINISH;
    }
}
