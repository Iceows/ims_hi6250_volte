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

/* loaded from: HwImsUtImpl.class */
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
        public void onChange(boolean z) {
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
            if (!HwImsUtImpl.ACTION_MAPCON_SERVICE_FAILED.equals(action)) {
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    HwImsUtImpl.this.handleConnectivity((NetworkInfo) intent.getParcelableExtra("networkInfo"));
                } else if (!"android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if ("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED".equals(action)) {
                        HwImsUtImpl.this.handleUtApnConnection(intent);
                    } else {
                        HwImsUtImpl.this.loge("intent not support");
                    }
                } else {
                    HwImsUtImpl.this.mIsAirModeResetCWInModem = true;
                    boolean booleanExtra = intent.getBooleanExtra("state", false);
                    HwImsUtImpl hwImsUtImpl2 = HwImsUtImpl.this;
                    hwImsUtImpl2.logd("isAirModeOn=" + booleanExtra);
                    if (booleanExtra) {
                        HwImsUtImpl.this.handleClear(0);
                    }
                }
            } else if (HwImsUtImpl.this.mSubId != HwImsUtImpl.mCurrentSubId) {
                HwImsUtImpl hwImsUtImpl3 = HwImsUtImpl.this;
                hwImsUtImpl3.logd("receive com.hisi.mapcon.servicefailed, but not for this sub " + HwImsUtImpl.this.mSubId + ", current SubId is " + HwImsUtImpl.mCurrentSubId + ", return.");
            } else {
                int intExtra = intent.getIntExtra(HwImsUtImpl.MAPCON_TYPE, 1);
                UtCmd firstUtCmd = HwImsUtImpl.this.getFirstUtCmd();
                HwImsUtImpl hwImsUtImpl4 = HwImsUtImpl.this;
                hwImsUtImpl4.logd("handle UT data connection vowifi conntion begin fail and serviceType = " + intExtra);
                if (HwImsUtImpl.IS_VOWIFI_PROP_ON && 1 == intExtra && firstUtCmd != null && ImsDataConnectionState.IMS_DC_CONNECTING == firstUtCmd.dcState && !HwImsUtImpl.this.mIsVowifiTimeOut) {
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
                    firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
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
                }
            }
        }
    };
    private SciSSConfCb.Callback mSciSSCB = new SciSSConfCb.Callback() { // from class: com.huawei.ims.HwImsUtImpl.4
        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciBsfCbPostResult(String str, String str2) {
        }

        @Override // com.huawei.sci.SciSSConfCb.Callback
        public void sciSSConfCbPostResult(int i, int i2, int i3) {
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("sciSSConfCbPostResult ssType = " + i + ", opType = " + i2 + ", status = " + i3);
            UTData uTData = new UTData(i, i2, i3);
            if (HwImsUtImpl.this.mGbaAuth != null) {
                HwImsUtImpl.this.mGbaAuth.clearAuthCounts();
            }
            HwImsUtImpl.this.sendUTMessage(1, uTData);
        }
    };
    private boolean mIsUtSubscribed = true;
    private boolean mIsDataReg = false;

    /* loaded from: HwImsUtImpl$CALL_WAITING_SYNC_STATE.class */
    public enum CALL_WAITING_SYNC_STATE {
        CALL_WAITING_SYNC_UNKNOWN(0),
        CALL_WAITING_SYNC_TO_IMS_SDK(1),
        CALL_WAITING_SYNC_TO_CS(2);
        
        final int native_int;

        CALL_WAITING_SYNC_STATE(int i) {
            this.native_int = i;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* loaded from: HwImsUtImpl$CmdState.class */
    public enum CmdState {
        CMD_INIT,
        CMD_HANDLE_UT,
        CMD_HANDLE_WAIT,
        CMD_HANDLE_CS,
        CMD_FINISH
    }

    /* loaded from: HwImsUtImpl$CmdToken.class */
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

    /* loaded from: HwImsUtImpl$DomainSelectType.class */
    public enum DomainSelectType {
        SS_SELECT_CS_DOMAIN_ONLY,
        SS_SELECT_UT_DOMAIN_ONLY,
        SS_SELECT_UT_PREFER_CS_SECONDARY,
        SS_SELECT_INVALID_DOMAIN
    }

    /* loaded from: HwImsUtImpl$ImsDataConnectionState.class */
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: HwImsUtImpl$UTData.class */
    public static class UTData {
        int mStatus;
        int mUtOpType;
        int mUtType;

        public UTData(int i, int i2, int i3) {
            this.mUtType = i;
            this.mUtOpType = i2;
            this.mStatus = i3;
        }

        public String toString() {
            return "mUtType=" + this.mUtType + ", mUtOpType=" + this.mUtOpType + ", mStatus=" + this.mStatus;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: HwImsUtImpl$UtCmd.class */
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

        public UtCmd(CmdToken cmdToken, int i, int i2) {
            this.mToken = cmdToken;
            this.utType = i;
            this.utExpectType = i;
            this.utOpType = i2;
        }

        public String toString() {
            return "utType=" + this.utType + ", utExpectType=" + this.utExpectType + ", utOpType=" + this.utOpType + ", mState=" + this.mState + ", utRetryCounts=" + this.utRetryCounts;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: HwImsUtImpl$UtNetworkCallback.class */
    public class UtNetworkCallback extends ConnectivityManager.NetworkCallback {
        private UtNetworkCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            HwImsUtImpl hwImsUtImpl = HwImsUtImpl.this;
            hwImsUtImpl.logd("UtNetworkCallback got Network:" + network);
            if (!HwImsUtImpl.this.mUtAPNInetAddressMap.containsKey(HwImsUtImpl.this.mImsConfigImpl.getUtNafSrvAddr())) {
                HwImsUtImpl.this.logd("UtNetworkCallback bindProcessToNetwork");
                ConnectivityManager connectivityManager = (ConnectivityManager) HwImsUtImpl.this.getContext().getSystemService("connectivity");
                if (connectivityManager == null) {
                    HwImsUtImpl.this.loge("null == ConnectivityManager");
                    return;
                } else {
                    connectivityManager.bindProcessToNetwork(network);
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
                    HwImsUtImpl.this.mUtServiceHandler.sendMessageDelayed(HwImsUtImpl.this.mUtServiceHandler.obtainMessage(2, network), 100L);
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

    /* loaded from: HwImsUtImpl$UtServiceHandler.class */
    private class UtServiceHandler extends Handler {
        public UtServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            HwImsUtImpl.this.handleMessage(message);
        }
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

    public HwImsUtImpl(HwImsServiceImpl hwImsServiceImpl, int i, ImsUtImpl imsUtImpl) {
        this.mHwImsServiceImpl = null;
        this.mSubId = -1;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSubId = i;
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

    static /* synthetic */ int access$000() {
        return getIdForRequest();
    }

    static /* synthetic */ int access$1408(HwImsUtImpl hwImsUtImpl) {
        int i = hwImsUtImpl.mUtTunnelRetryTimes;
        hwImsUtImpl.mUtTunnelRetryTimes = i + 1;
        return i;
    }

    private void addUtCmd(UtCmd utCmd) {
        synchronized (this.mUtCmdQueue) {
            this.mUtCmdQueue.add(utCmd);
            logd("after add mUtCmdQueue size=" + this.mUtCmdQueue.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int beginImsConnectivity(boolean z) {
        this.mIsVowifi = z;
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            loge("get ConnectivityManager null");
            return 3;
        }
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        this.mNetworkCallback = new UtNetworkCallback();
        if (z) {
            NetworkRequest build = new NetworkRequest.Builder().addTransportType(1).addCapability(9).setNetworkSpecifier(String.valueOf(subId)).build();
            logd("handle UT data connection begin ims connectivity of vowifi");
            connectivityManager.requestNetwork(build, this.mNetworkCallback, 0, 47, this.mUtServiceHandler);
            this.mIsVowifiTimeOut = false;
            return 1;
        }
        int utAPNCapabilities = getUtAPNCapabilities();
        int utAPNConectionType = getUtAPNConectionType();
        NetworkRequest build2 = new NetworkRequest.Builder().addTransportType(0).addCapability(utAPNCapabilities).setNetworkSpecifier(String.valueOf(subId)).build();
        logd("handle UT data connection begin ims connectivity of volte use connectionType" + utAPNConectionType);
        connectivityManager.requestNetwork(build2, this.mNetworkCallback, 0, utAPNConectionType, this.mUtServiceHandler);
        return 1;
    }

    private void broadcastUtIdle() {
        if (isUtIdle() && this.mImsUtImpl != null) {
            this.mImsUtImpl.broadcastUtIdle(this.mSubId);
        }
    }

    private boolean canUse403ForLocalCW() {
        return this.mImsConfigImpl.isUse403ForLocalCW();
    }

    private void cancelStopImsApnMessage() {
        if (this.mUtServiceHandler == null || !this.mUtServiceHandler.hasMessages(12)) {
            return;
        }
        this.mUtServiceHandler.removeMessages(12);
    }

    private void changeDcStateWhenImsActFail() {
        UtCmd firstUtCmd = getFirstUtCmd();
        if (!IS_VOWIFI_PROP_ON || firstUtCmd == null) {
            return;
        }
        if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
            logd("process ut use xcap connection fail,retry vowifi");
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
            return;
        }
        int utDomain = getUtDomain();
        if (2 == utDomain) {
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_IMSPDP_FAIL;
        } else if (utDomain == 0) {
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_IDLE;
        } else if (1 == utDomain) {
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_IMSPDP_FAIL;
        } else if (3 == utDomain) {
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_IMSPDP_FAIL;
        } else {
            loge("changeDcStateWhenImsActFail,utDomain is an undefined type! utDomain=" + utDomain);
        }
        logd("changeDcStateWhenImsActFail,cmd.dcState=" + firstUtCmd.dcState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeDcStateWhenTunnelSetupFail() {
        UtCmd firstUtCmd = getFirstUtCmd();
        if (!IS_VOWIFI_PROP_ON || firstUtCmd == null) {
            return;
        }
        if (isAirplaneModeOn() && (isUtNotUseDefaultAPN() || !this.mImsConfigImpl.isUtCanUseWifi())) {
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_AIRPLANE_ON_TUNNEL_FAIL;
        } else if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
            logd("process ut prefer use volte fail,retry vowifi fail,csfb");
            firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_ACT_EXECUTE_LTE_FAIL;
        } else {
            int utDomain = getUtDomain();
            if (2 == utDomain) {
                firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_PREF_TUNNEL_FAIL;
            } else if (utDomain == 0) {
                firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_ONLY_TUNNEL_FAIL;
            } else if (1 == utDomain) {
                firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_LTE_PREF_TUNNEL_FAIL;
            } else if (3 == utDomain) {
                firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_CELLULAR_PREF_TUNNEL_FAIL;
            } else {
                loge("changeDcStateWhenTunnelSetupFail,utDomain is an undefined type! utDomain=" + utDomain);
            }
            logd("changeDcStateWhenTunnelSetupFail,cmd.dcState=" + firstUtCmd.dcState);
        }
    }

    private boolean checkCSDomain(UtCmd utCmd) {
        boolean z = false;
        if (utCmd == null) {
            loge("ut cmd is null");
            return false;
        }
        if (DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY == domainIntersectCS(utCmd.domainSelect)) {
            z = true;
        }
        return z;
    }

    private boolean checkNetworkAvailable(int i) {
        return getNetworkForType(i) != null;
    }

    private boolean checkUTDomain(DomainSelectType domainSelectType) {
        return DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY == domainIntersectUT(domainSelectType);
    }

    private boolean checkUTDomain(UtCmd utCmd) {
        if (utCmd == null) {
            loge("ut cmd is null");
            return false;
        }
        return checkUTDomain(utCmd.domainSelect);
    }

    private void checkUtForbiddenDate() {
        if (!isConfigUtForbiddenTimer() || this.mUtForbiddenDate == null || !this.mIsUtForbidden || new Date().compareTo(this.mUtForbiddenDate) < 0) {
            return;
        }
        this.mIsUtForbidden = false;
        stopUtForbiddenAlarm();
    }

    private void clearCTCardVolteFlag() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        logd("clearCTCardVolteFlag: subId = " + subId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[subId], FLAG_DEFAULT_VOLTE_VALUE);
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
        if (imsPhone == null) {
            logd("imsphone is null");
        } else if (imsPhone.getServiceState().getState() == 0) {
            logd("ims is registered.");
        } else {
            logd("ims not registered, set impu from network as null.");
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSubId], null, getContext());
        }
    }

    private String[] createIpAddr(InetAddress[] inetAddressArr) {
        String[] strArr = new String[inetAddressArr.length];
        for (int i = 0; i < inetAddressArr.length; i++) {
            strArr[i] = inetAddressArr[i].getHostAddress();
        }
        return strArr;
    }

    private DomainSelectType domainIntersectCS(DomainSelectType domainSelectType) {
        DomainSelectType domainSelectType2 = domainSelectType;
        if (DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY == domainSelectType) {
            domainSelectType2 = DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
        } else if (DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY == domainSelectType) {
            domainSelectType2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
        }
        return domainSelectType2;
    }

    private DomainSelectType domainIntersectUT(DomainSelectType domainSelectType) {
        DomainSelectType domainSelectType2 = domainSelectType;
        if (DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY == domainSelectType) {
            domainSelectType2 = DomainSelectType.SS_SELECT_UT_DOMAIN_ONLY;
        } else if (DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY == domainSelectType) {
            domainSelectType2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
        }
        return domainSelectType2;
    }

    private DomainSelectType domainSelect(DomainSelectType domainSelectType, int i, boolean z) {
        DomainSelectType domainSelectType2;
        DomainSelectType domainSelectType3;
        logd("enter domainSelect, prevDomain=" + domainSelectType + ", utType=" + i + ", showDcDialog=" + z);
        if (this.mImsConfigImpl.isImsSsBeUsed()) {
            DomainSelectType domainSelectType4 = domainSelectType;
            if (this.mImsConfigImpl.isUtForbiddenWhenVolteSwitchOff()) {
                logd("UtForbiddenWhenVolteSwitchOff");
                domainSelectType4 = domainSelectType;
                if (!isVolteSwitchOn()) {
                    DomainSelectType domainIntersectCS = domainIntersectCS(domainSelectType);
                    domainSelectType4 = domainIntersectCS;
                    if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectCS) {
                        return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                    }
                }
            }
            checkUtForbiddenDate();
            DomainSelectType domainSelectType5 = domainSelectType4;
            if (this.mIsUtForbidden) {
                domainSelectType5 = domainSelectType4;
                if (isSsUseUtInterface(i)) {
                    logd("Ut forbidden");
                    DomainSelectType domainIntersectCS2 = domainIntersectCS(domainSelectType4);
                    domainSelectType5 = domainIntersectCS2;
                    if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectCS2) {
                        return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                    }
                }
            }
            DomainSelectType domainSelectType6 = domainSelectType5;
            if (!isCardTypePreferToUseUT()) {
                logd("this card is not prefer to use UT");
                DomainSelectType domainIntersectCS3 = domainIntersectCS(domainSelectType5);
                domainSelectType6 = domainIntersectCS3;
                if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectCS3) {
                    return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                }
            }
            DomainSelectType domainSelectType7 = domainSelectType6;
            if (!isCardMccMncPreferToUseUT()) {
                logd("this card MCC MNC is not prefer to use UT");
                DomainSelectType domainIntersectCS4 = domainIntersectCS(domainSelectType6);
                domainSelectType7 = domainIntersectCS4;
                if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectCS4) {
                    return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                }
            }
            DomainSelectType domainSelectType8 = domainSelectType7;
            if (this.mImsConfigImpl.isSSUseCsOnly(i)) {
                logd("this ut type use cs only");
                DomainSelectType domainIntersectCS5 = domainIntersectCS(domainSelectType7);
                domainSelectType8 = domainIntersectCS5;
                if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectCS5) {
                    return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                }
            }
            DomainSelectType domainSelectType9 = domainSelectType8;
            if (isCardMccMncPreferToUseUT()) {
                domainSelectType9 = domainSelectType8;
                if (this.mImsConfigImpl.isSSForbidFallbackCS(i)) {
                    logd("this ut type is forbided fallback cs");
                    DomainSelectType domainIntersectUT = domainIntersectUT(domainSelectType8);
                    domainSelectType9 = domainIntersectUT;
                    if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainIntersectUT) {
                        return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                    }
                }
            }
            DomainSelectType domainSelectType10 = domainSelectType9;
            if (isUtNotUseDefaultAPN()) {
                if (!this.hasUtUseAPN) {
                    domainSelectType3 = domainIntersectCS(domainSelectType9);
                    logd("Ut Not Use Default APN, but has no Ut APN");
                } else if (isUtSupportedByCurrentBearer()) {
                    domainSelectType3 = domainSelectType9;
                    if (!isUtSubscribed()) {
                        if ((this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL && i == 20) || (i == 3 && this.mImsConfigImpl.getOIRSourceMode() == 1)) {
                            logd("CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed");
                            domainSelectType3 = domainSelectType9;
                        } else {
                            domainSelectType3 = domainIntersectCS(domainSelectType9);
                            logd("Ut Not Use Default APN, but ut service not subscibed");
                        }
                    }
                } else {
                    domainSelectType3 = domainIntersectCS(domainSelectType9);
                    logd("Ut Not Use Default APN, but current bearer not support ut");
                }
                domainSelectType10 = domainSelectType3;
                if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == domainSelectType3) {
                    return DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                }
            }
            boolean isUtCanUseWifi = this.mImsConfigImpl.isUtCanUseWifi();
            boolean isWifiConnected = isWifiConnected();
            if (isUtCanUseWifi && isWifiConnected) {
                logd("wifi has connected, Ut will use wifi link");
                domainSelectType2 = domainSelectType10;
            } else if (isUtCanUseWifi || !isWifiConnected || !isSsUseUtInterface(i)) {
                domainSelectType2 = domainSelectType10;
                if (!isDataSwitchOn()) {
                    domainSelectType2 = domainSelectType10;
                    if (isSsUseUtInterface(i)) {
                        domainSelectType2 = domainSelectType10;
                        if (!isUtNotUseDefaultAPN()) {
                            if (checkUTDomain(domainSelectType10) && z) {
                                logd("Show a dialog to notice user to turn data switch on");
                                domainSelectType2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                                this.mShowDataConnectionDialog = true;
                            } else {
                                domainSelectType2 = domainIntersectCS(domainSelectType10);
                            }
                        }
                    }
                }
            } else if (checkUTDomain(domainSelectType10) && !isUtNotUseDefaultAPN()) {
                domainSelectType2 = domainSelectType10;
                if (z) {
                    domainSelectType2 = domainSelectType10;
                    if (!isDataSwitchOn()) {
                        domainSelectType2 = DomainSelectType.SS_SELECT_INVALID_DOMAIN;
                        this.mShowDataConnectionDialog = true;
                    }
                }
            } else if (checkUTDomain(domainSelectType10) && z) {
                logd("tip user to diconnect wifi");
                domainSelectType2 = domainSelectType10;
            } else {
                domainSelectType2 = domainIntersectCS(domainSelectType10);
            }
            return domainSelectType2;
        }
        return DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if ((-1) == r6.utReason) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.huawei.ims.HwImsUtImpl.DomainSelectType domainSelect(com.huawei.ims.HwImsUtImpl.UtCmd r6) {
        /*
            r5 = this;
            com.huawei.ims.HwImsUtImpl$DomainSelectType r0 = com.huawei.ims.HwImsUtImpl.DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L13
            r0 = r5
            java.lang.String r1 = "cmd is null. "
            r0.logd(r1)
            com.huawei.ims.HwImsUtImpl$DomainSelectType r0 = com.huawei.ims.HwImsUtImpl.DomainSelectType.SS_SELECT_INVALID_DOMAIN
            return r0
        L13:
            r0 = -1
            r1 = r6
            int r1 = r1.utType
            if (r0 == r1) goto L25
            r0 = r7
            r8 = r0
            r0 = -1
            r1 = r6
            int r1 = r1.utReason
            if (r0 != r1) goto L2b
        L25:
            r0 = r5
            r1 = r7
            com.huawei.ims.HwImsUtImpl$DomainSelectType r0 = r0.domainIntersectCS(r1)
            r8 = r0
        L2b:
            r0 = r5
            r1 = r8
            r2 = r6
            int r2 = r2.utType
            r3 = 1
            com.huawei.ims.HwImsUtImpl$DomainSelectType r0 = r0.domainSelect(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsUtImpl.domainSelect(com.huawei.ims.HwImsUtImpl$UtCmd):com.huawei.ims.HwImsUtImpl$DomainSelectType");
    }

    private void endConnectivityIfNeeded(int i) {
        if (checkNetworkAvailable(i)) {
            logd("xcap connectivity is available " + i + ", need to release");
            endImsConnectivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endImsConnectivity() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        logd("endImsConnectivity");
        this.mbReqRoutHost = false;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
        if (this.mUtServiceHandler != null) {
            this.mUtServiceHandler.removeMessages(5);
        }
        if (connectivityManager != null && this.mNetworkCallback != null) {
            connectivityManager.unregisterNetworkCallback(this.mNetworkCallback);
            this.mNetworkCallback = null;
            if (this.hasSetNetworkAsDefault) {
                logd("clear default network for host");
                connectivityManager.bindProcessToNetwork(null);
                this.hasSetNetworkAsDefault = false;
            }
        }
        if (this.mIsVowifi) {
            setUtOverWifiTunnelUpFlag(false);
        }
    }

    private boolean ensureRouteToHost(InetAddress[] inetAddressArr) {
        if (inetAddressArr == null || inetAddressArr.length == 0) {
            return false;
        }
        int utAPNConectionType = getUtAPNConectionType();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            int i = 0;
            int i2 = 0;
            while (i2 < inetAddressArr.length) {
                int i3 = i;
                if (connectivityManager != null) {
                    i3 = i;
                    if (inetAddressArr[i2] != null) {
                        i3 = i;
                        if (connectivityManager.requestRouteToHostAddress(utAPNConectionType, inetAddressArr[i2])) {
                            i3 = i + 1;
                        }
                    }
                }
                i2++;
                i = i3;
            }
            if (i > 0) {
                return true;
            }
            loge("ensureRouteToHost fail addTag<=0");
            return false;
        } catch (Exception e) {
            loge("ensureRouteToHost failed");
            return false;
        }
    }

    private UtCHRData extractParametersForChr(byte b, byte b2, int i) {
        UtCHRData utCHRData = null;
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd != null) {
            logd("extractParametersForChr");
            byte b3 = (byte) firstUtCmd.utType;
            byte utUseApn = (byte) this.mImsConfigImpl.getUtUseApn();
            boolean isUtCanUseWifi = this.mImsConfigImpl.isUtCanUseWifi();
            boolean isDefaultConnected = isDefaultConnected();
            boolean isWifiConnected = isWifiConnected();
            utCHRData = new UtCHRData(b3, utUseApn, isUtCanUseWifi ? (byte) 1 : (byte) 0, isDefaultConnected ? (byte) 1 : (byte) 0, isWifiConnected ? (byte) 1 : (byte) 0, b, b2, (byte) ImsCallProviderUtils.getSubId(this.mSubId), (byte) mCurrentSubId, (byte) getUtDomain(), i, firstUtCmd.dcState.toString());
        }
        return utCHRData;
    }

    private int getCallWaitingAction(boolean z) {
        return z ? 1 : 0;
    }

    private String getCardMccMnc() {
        String substring;
        String simOperator = TelephonyManager.getDefault().getSimOperator(ImsCallProviderUtils.getSubId(this.mSubId));
        if (simOperator == null) {
            return null;
        }
        logd("simOperator=" + simOperator);
        if (5 == simOperator.length()) {
            substring = simOperator.substring(3, 5);
        } else if (6 != simOperator.length()) {
            loge("mccMnc error: Get wrong MCC MNC ");
            return null;
        } else {
            substring = simOperator.substring(3, 6);
        }
        String str = simOperator.substring(0, 3) + substring;
        logd("mccMnc = " + str);
        return str;
    }

    private int getDefaultDataSubId() {
        int defaultDataSubscriptionId = SubscriptionManager.getDefaultDataSubscriptionId();
        logd("getDefaultDataSubId: subId = " + defaultDataSubscriptionId);
        return defaultDataSubscriptionId;
    }

    private Phone getDefaultPhone() {
        return this.mHwImsServiceImpl.getDefaultPhone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UtCmd getFirstUtCmd() {
        synchronized (this.mUtCmdQueue) {
            if (this.mUtCmdQueue.isEmpty()) {
                loge("getFirstUtCmd mUtCmdQueue isEmpty");
                return null;
            }
            return this.mUtCmdQueue.get(0);
        }
    }

    private InetAddress[] getHostByName(String str, Network network) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        InetAddress[] inetAddressArr = null;
        if (network != null) {
            try {
                inetAddressArr = network.getAllByName(str);
            } catch (UnknownHostException e) {
                loge("Cannot get inet address Unknown host");
                processReportChrException((byte) -1, (byte) -1, 1003);
                return null;
            }
        }
        return inetAddressArr;
    }

    private boolean getHostNameAndAddRoute(Network network, String str) {
        InetAddress[] inetAddressArr;
        if (network == null) {
            loge("network is null.");
            return false;
        }
        if (this.mNetId == network.netId && this.mUtAPNInetAddressMap.containsKey(str)) {
            inetAddressArr = this.mUtAPNInetAddressMap.get(str);
            logd(" InetAddress get from local map.");
        } else {
            InetAddress[] hostByName = getHostByName(str, network);
            inetAddressArr = hostByName;
            if (hostByName != null) {
                this.mUtAPNInetAddressMap.put(str, hostByName);
                logd(" InetAddress get from host, and save in local map.");
                inetAddressArr = hostByName;
            }
        }
        return ensureRouteToHost(inetAddressArr);
    }

    private static int getIdForRequest() {
        mRequestId++;
        if (mRequestId >= 50) {
            mRequestId = 0;
        }
        return mRequestId;
    }

    private Network getNetworkForDefaultApn() {
        int i = -1;
        if (this.mImsConfigImpl.isUtCanUseWifi()) {
            i = -1;
            if (isWifiConnected()) {
                i = 1;
            }
        }
        if (isDefaultConnected()) {
            i = 0;
        }
        return getNetworkForType(i);
    }

    private Network getNetworkForType(int i) {
        return ((ConnectivityManager) getContext().getSystemService("connectivity")).getNetworkForType(i);
    }

    private int getNoReplyTimer(UtCmd utCmd) {
        int i;
        int defaultNoReplyTimer = this.mImsConfigImpl.getDefaultNoReplyTimer();
        int defaultNeedNoReplyTimer = this.mImsConfigImpl.getDefaultNeedNoReplyTimer();
        int i2 = defaultNoReplyTimer;
        if (!utCmd.utEnable) {
            i2 = defaultNoReplyTimer;
            if (-1 != defaultNeedNoReplyTimer) {
                i2 = defaultNeedNoReplyTimer;
            }
        }
        if (i2 == 0) {
            i = -1;
        } else {
            i = i2;
            if (-1 == i2) {
                int i3 = utCmd.utTimer;
                i = i3;
                if (i3 == 0) {
                    int i4 = utCmd.utType;
                    if (i4 != 10) {
                        switch (i4) {
                            case 22:
                            case 23:
                                i = -1;
                                break;
                            default:
                                i = i3;
                                break;
                        }
                    } else {
                        i = 20;
                    }
                }
            }
        }
        logd("getNoReplyTimer  time = " + i);
        return i;
    }

    private int getUtAPNCapabilities() {
        if (this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) {
            return 9;
        }
        return this.mImsConfigImpl.getUtUseApn() == 0 ? 12 : 4;
    }

    private int getUtAPNConectionType() {
        if (this.mIsVowifi) {
            return 47;
        }
        if (this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) {
            return 45;
        }
        return this.mImsConfigImpl.getUtUseApn() == 0 ? 0 : 11;
    }

    private int getUtDomain() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        boolean isNetworkRoaming = TelephonyManager.getDefault().isNetworkRoaming(subId);
        int wfcMode = HwImsManager.getWfcMode(getContext(), isNetworkRoaming, subId);
        logd("isUtOverWifiEnabled isRoaming = " + isNetworkRoaming + " sub = " + subId);
        return wfcMode;
    }

    private void handle403Error(UtCmd utCmd, UTData uTData) {
        loge("enter handle403Error, cmd=" + utCmd);
        processReportChrException((byte) -1, (byte) -1, uTData.mStatus);
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
                this.mUtCmdQueue.get(i).mState = CmdState.CMD_HANDLE_CS;
            }
        }
        sendUTMessage(6);
    }

    private boolean handle409Error(UtCmd utCmd, UTData uTData) {
        if (utCmd == null || uTData == null) {
            loge("handle409Error: cmd or ut is null, return");
            return false;
        }
        processReportChrException((byte) -1, (byte) -1, uTData.mStatus);
        int i = uTData.mUtType;
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
                            loge("handle409Error: not support ut type " + uTData.mUtType);
                            return false;
                    }
            }
        }
        if (1 == utCmd.utOpType) {
            String sSConflictPhraseText = SciSSConf.getSSConflictPhraseText();
            logd("handle409Error: phraseText = " + sSConflictPhraseText);
            if (sSConflictPhraseText == null || sSConflictPhraseText.isEmpty()) {
                return false;
            }
            ImsReasonInfo imsReasonInfo = new ImsReasonInfo(804, 0);
            imsReasonInfo.mExtraMessage = sSConflictPhraseText + CONNECT_INFO_ERRORCODE;
            this.mListenerProxy.utConfigurationUpdateFailed(utCmd.utId, imsReasonInfo);
            utCmd.mState = CmdState.CMD_FINISH;
            sendUTMessage(6);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClear(int i) {
        endImsConnectivity();
        this.mLastSS = 1;
        clearCTCardVolteFlag();
        if (!isConfigUtForbiddenTimer()) {
            this.mIsUtForbidden = false;
        } else if (i == 1) {
            logd("handleClear, set mIsUtForbidden false");
            this.mIsUtForbidden = false;
            stopUtForbiddenAlarm();
        }
        this.mCanSendChrBroadcastDate = null;
        this.mHasCheckedSIMCardByUT = false;
        this.mUtDataExpireTime.clear();
        this.mNextGetCallWaitingTime = null;
        synchronized (this.mUtCmdQueue) {
            int size = this.mUtCmdQueue.size();
            for (int i2 = 0; i2 < size; i2++) {
                responseFailure(this.mUtCmdQueue.get(i2).utId, 0);
            }
            this.mUtCmdQueue.clear();
        }
        if (this.mGbaAuth != null) {
            this.mGbaAuth.clear();
        } else {
            logd("mGbaAuth is null");
        }
        SciSSConfHs.reset(i);
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && 1 == i) {
            logd("handleClear: reset current sub id to default");
            setCurrentSubId(-1);
        }
        this.mUtAPNInetAddressMap.clear();
        sendUTMessage(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConnectivity(NetworkInfo networkInfo) {
        logd("handleConnectivity mImsDCState=" + this.mImsDCState + ", networkInfo=" + networkInfo);
        if (networkInfo == null || !networkInfo.isAvailable()) {
            loge("network not available");
            return;
        }
        UtCmd firstUtCmd = getFirstUtCmd();
        if (networkInfo.getType() == 1 && firstUtCmd == null && checkNetworkAvailable(47)) {
            logd("handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork ");
            endImsConnectivity();
        }
        if (networkInfo.isConnected() && networkInfo.getType() == 0) {
            if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getDefaultDataSubId() != this.mSubId) {
                logd("Data has connected, but not for this sub, return");
            } else if (ImsDataConnectionState.IMS_DC_IDLE != this.mImsDCState) {
                logd("handleConnectivity: Ims connection is being established, do not use default data connection.");
            } else if (firstUtCmd == null || ImsDataConnectionState.IMS_DC_CONNECTING != firstUtCmd.dcState) {
            } else {
                logd("Data has connected, the SS can go UT interface");
                initSDKServiceIpAddr(getNetworkForDefaultApn());
                firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                stopTemporaryDcAlarm();
                stopDcAlarm();
                sendUTMessage(6);
            }
        }
    }

    private void handleDcTimeOut() {
        logd("handleDcTimeOut");
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd == null) {
            loge("[error]cmd is null, but receive message of dc time out!");
            return;
        }
        logd("handle UT data connection time out and finish data connection");
        processReportChrException((byte) 0, (byte) -1, 1002);
        firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_FINISH;
        this.mLastSS = 1;
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        sendUTMessage(6);
    }

    private void handleGetCWResponseFromCs(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Message message2 = (Message) asyncResult.userObj;
        if (asyncResult.exception != null) {
            loge("handleGetCWResponseFromCs: ar.exception=" + asyncResult.exception);
            responseMessage(message2, null, asyncResult.exception);
        } else if (!(asyncResult.result instanceof int[])) {
            loge("ar.result is not int[]");
            responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
        } else {
            int[] iArr = (int[]) asyncResult.result;
            try {
                if (iArr == null) {
                    loge("cwArray is null");
                    responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
                    return;
                }
                logd("handleGetCBResponseFromCs, cwArray[0]=" + iArr[0] + ", cwArray[1]=" + iArr[1]);
                handleGetCallWaitingDone(isEnableCallWaiting(iArr[0]), iArr[1], message2);
            } catch (ArrayIndexOutOfBoundsException e) {
                loge("handleGetCWResponseFromCs: improper failed");
                responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
            }
        }
    }

    private void handleGetCallWaitingDone(boolean z, int i, Message message) {
        boolean z2 = z && 1 == (i & 1);
        logd("get call waiting success, isEnable=" + z2);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            syncCallWaitingToImsSdk(z2, message);
        } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
            syncCallWaitingToCS(z2, message);
        } else {
            logd("call waiting does not sync to modem, response to target");
            responseMessage(message, responseCWInts(Boolean.valueOf(z2)), null);
        }
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

    private void handleImsDcTimeOut() {
        logd("handleImsDcTimeOut");
        handleImsConnectionFailure();
    }

    private void handleImsGetImpuDone(Message message) {
        this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.IMPU_FROM_NETWORK_KEY[this.mSubId], (String) message.obj, getContext());
        if (mCurrentSubId == this.mSubId) {
            setImsSdkImpu();
        } else {
            logd("handleImsGetImpuDone: skip set impu to sdk because it's not the current sub");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        boolean z;
        boolean isEmpty;
        logd("handleMessage what=" + message.what);
        int i = message.what;
        if (i == 50) {
            processECTCallBack(message);
            return;
        }
        switch (i) {
            case 1:
                handleSciSSConfCb((UTData) message.obj);
                return;
            case 2:
                Network network = (Network) message.obj;
                boolean hostNameAndAddRoute = getHostNameAndAddRoute(network, this.mImsConfigImpl.getUtNafSrvAddr());
                if (this.mImsConfigImpl.isUtBsfAuthBeUsed()) {
                    z = getHostNameAndAddRoute(network, this.mImsConfigImpl.getUtBsfSrvAddr());
                } else {
                    logd("ut not need bsf auth.");
                    z = true;
                }
                logd("handle UT data connection ensure route to host and result is : " + hostNameAndAddRoute + " " + z);
                if (this.mIsVowifi) {
                    setUtOverWifiTunnelUpFlag(hostNameAndAddRoute);
                }
                if (!hostNameAndAddRoute) {
                    sendUTMessage(4);
                    return;
                }
                this.mbReqRoutHost = true;
                logd("HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : " + network.netId);
                initSDKServiceIpAddr(network);
                sendUTMessage(3);
                if (this.mIsVowifi) {
                    startWifiTunnelConnectionAlarm();
                    return;
                }
                return;
            case 3:
                UtCmd firstUtCmd = getFirstUtCmd();
                if (firstUtCmd != null && this.mImsDCState == ImsDataConnectionState.IMS_DC_CONNECTED) {
                    firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                }
                handleUtCmdQueue();
                return;
            case 4:
                stopImsDataConnectionAlarm();
                endImsConnectivity();
                processReportChrException((byte) 0, (byte) -1, 1004);
                if (!isUtOverWifiEnabled()) {
                    logd("handle UT data connection fall back cs for ensure route fail");
                    handoverSSTick();
                    return;
                }
                logd("received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true.");
                if (this.mIsVowifi) {
                    changeDcStateWhenTunnelSetupFail();
                } else {
                    changeDcStateWhenImsActFail();
                }
                sendUTMessage(6);
                return;
            case 5:
                if (getFirstUtCmd() == null) {
                    loge("there is no cmd in queue");
                    return;
                } else if (!isNetworkConnected()) {
                    logd("The network is disconnected.");
                    return;
                } else {
                    logd("The network is connected and continues to be connected.");
                    keepAliveImsConnectivity();
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
                handleSimRecordsLoaded(message);
                return;
            case 10:
                handleSimCardAbsent(message);
                return;
            case 11:
                handleImsGetImpuDone(message);
                return;
            case 12:
                UtCmd firstUtCmd2 = getFirstUtCmd();
                synchronized (this.mUtRetryCmdQueue) {
                    isEmpty = this.mUtRetryCmdQueue.isEmpty();
                }
                if (firstUtCmd2 == null && isEmpty) {
                    endImsConnectivity();
                    return;
                }
                return;
            default:
                switch (i) {
                    case 20:
                        queryCallWaiting(message);
                        return;
                    case 21:
                        updateCallWaiting(message);
                        return;
                    case 22:
                        queryCLIR(message);
                        return;
                    case 23:
                        updateCLIR(message);
                        return;
                    default:
                        switch (i) {
                            case 27:
                                handleGetCWResponseFromCs(message);
                                return;
                            case 28:
                                handleSetCWFromCs(message);
                                return;
                            case 29:
                                handleSyncCallWaitingToImsSdkDone(message);
                                return;
                            case 30:
                                handleSyncCallWaitingToCsDone(message);
                                return;
                            case 31:
                                handleSyncCLIRModeToImsSdkDone(message);
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

    private int handleSS(UtCmd utCmd) {
        int i;
        if (utCmd == null) {
            logd("utcmd is null. ");
            return 1;
        }
        this.mShowDataConnectionDialog = false;
        utCmd.domainSelect = domainSelect(utCmd);
        logd("Domain select by ss is  " + utCmd.domainSelect);
        switch (utCmd.domainSelect) {
            case SS_SELECT_UT_DOMAIN_ONLY:
            case SS_SELECT_UT_PREFER_CS_SECONDARY:
            case SS_SELECT_CS_DOMAIN_ONLY:
                int handleUtSS = handleUtSS(utCmd);
                i = handleUtSS;
                if (1 == handleUtSS) {
                    responseFailure(utCmd.utId, 0);
                    i = handleUtSS;
                    break;
                }
                break;
            default:
                responseFailure(utCmd.utId, 0);
                i = 1;
                break;
        }
        this.mShowDataConnectionDialog = false;
        return i;
    }

    private void handleSciSSConfCb(UTData uTData) {
        logd("handleSciSSConfCb ut=" + uTData);
        if (uTData == null) {
            loge("handleSciSSConfCb, UTData is null");
            return;
        }
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd == null || uTData.mUtType != firstUtCmd.utExpectType || CmdState.CMD_HANDLE_WAIT != firstUtCmd.mState) {
            loge("this Ut data is useless, cmd=" + firstUtCmd);
            return;
        }
        this.mHasCheckedSIMCardByUT = true;
        stopUtAlarm();
        this.mLastSS = uTData.mStatus;
        int i = uTData.mStatus;
        if (i == 0) {
            handleSciSSConfCbSuccessfully(firstUtCmd, uTData);
        } else if (i == 3 || i == 403) {
            handle403Error(firstUtCmd, uTData);
        } else if (i == 409 && this.mImsConfigImpl.getUt409ShowPhrase() && handle409Error(firstUtCmd, uTData)) {
        } else {
            handleSciSSConfCbUndefinedError(firstUtCmd, uTData);
        }
    }

    private void handleSciSSConfCbOfCWSuccessfully(UtCmd utCmd, UTData uTData) {
        Message popUtMessage = popUtMessage(utCmd.utId);
        if (popUtMessage == null) {
            logd("onComplete is null.");
        }
        if (uTData.mUtOpType == 0) {
            logd("get cw state, cmd.mToken = " + utCmd.mToken);
            if (CmdToken.CMD_GET_CALLWAITING == utCmd.mToken) {
                handleGetCallWaitingDone(SciSSConfHs.getCallWaitingEnabled().booleanValue(), 1, popUtMessage);
            } else if (isCTCardAndSupportVolte()) {
                saveCTCardVolteFlag(true);
            }
        } else {
            handleSetCallWaitingDone(utCmd.utEnable, popUtMessage);
        }
        utCmd.mState = CmdState.CMD_FINISH;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void handleSciSSConfCbSuccessfully(UtCmd utCmd, UTData uTData) {
        setUtDataExpireTime(uTData.mUtType);
        logd("handle UT data connection handleSciSSConfCbSuccessfully : cmd = " + utCmd + ", ut = " + uTData);
        try {
            switch (uTData.mUtType) {
                case 1:
                    if (uTData.mUtOpType != 0) {
                        this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationQueried(utCmd.utId, responseCLIP(Boolean.valueOf(SciSSConfHs.getOriginatingIdentityPresentationEnabled().booleanValue())));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 2:
                    if (uTData.mUtOpType != 0) {
                        this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationQueried(utCmd.utId, responseCOLP(Boolean.valueOf(SciSSConfHs.getTerminatingIdentityPresentationEnabled().booleanValue())));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 3:
                    if (uTData.mUtOpType != 0) {
                        syncCLIRModeToImsSdk(utCmd.csReason, this.mUtServiceHandler.obtainMessage(31, popUtMessage(utCmd.utId)));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        Bundle responseCLIR = responseCLIR(Boolean.valueOf(SciSSConfHs.getOriginatingIdentityRestrictionEnabled().booleanValue()), SciSSConfHs.getOIRDefaultBehavior());
                        int[] intArray = responseCLIR.getIntArray("queryClir");
                        if (intArray == null || intArray.length != 2 || intArray[1] == 0) {
                            this.mListenerProxy.utConfigurationQueried(utCmd.utId, responseCLIR);
                        } else {
                            Message obtainMessage = this.mUtServiceHandler.obtainMessage(31, popUtMessage(utCmd.utId));
                            obtainMessage.setData(responseCLIR);
                            syncCLIRModeToImsSdk(intArray[0], obtainMessage);
                        }
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 4:
                    if (uTData.mUtOpType != 0) {
                        this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationQueried(utCmd.utId, responseCOLR(Boolean.valueOf(SciSSConfHs.getTerminatingIdentityRestrictionEnabled().booleanValue())));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 5:
                    if (uTData.mUtOpType == 0) {
                        ImsCallForwardInfo[] responseCallForwardEx = responseCallForwardEx(utCmd.utReason);
                        if (isCTCardAndSupportVolte()) {
                            saveCTCardVolteFlag(true);
                        }
                        this.mListenerProxy.utConfigurationCallForwardQueried(utCmd.utId, responseCallForwardEx);
                    } else {
                        loge("CDIV PUT: don't support will handover to cs");
                    }
                    utCmd.mState = CmdState.CMD_FINISH;
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 12:
                case 22:
                case 23:
                    if (1 != uTData.mUtOpType) {
                        loge("CF SET: don't support this OPRATOR");
                        utCmd.mState = CmdState.CMD_HANDLE_CS;
                        break;
                    } else {
                        if (isCTCardAndSupportVolte() && uTData.mUtType == 7) {
                            saveCTCardVolteFlag(true);
                        }
                        this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                    break;
                case 10:
                    if (1 != uTData.mUtOpType) {
                        loge("CFNR GET: don't support this OPRATOR");
                        utCmd.mState = CmdState.CMD_HANDLE_CS;
                        break;
                    } else if (!this.mImsConfigImpl.isProtocolIR92V10orGreater()) {
                        int noReplyTimer = getNoReplyTimer(utCmd);
                        if (-1 != noReplyTimer) {
                            int callDiversionNoReplyTimer = SciSSConfHs.setCallDiversionNoReplyTimer(noReplyTimer);
                            utCmd.utExpectType = 6;
                            if (1 == callDiversionNoReplyTimer) {
                                utCmd.mState = CmdState.CMD_HANDLE_CS;
                                loge("setCallDiversionNoReplyTimer fail, result=" + callDiversionNoReplyTimer);
                            } else {
                                startUtAlarm();
                            }
                            break;
                        } else {
                            logd("don't set the NRT when set the CFNR");
                            this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                            utCmd.mState = CmdState.CMD_FINISH;
                            break;
                        }
                    } else {
                        this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 11:
                    if (this.mImsConfigImpl.isCFNRcChangeWithCFNL()) {
                        if (1 != uTData.mUtOpType) {
                            loge("CFNRc: don't support this OPRATOR");
                            utCmd.mState = CmdState.CMD_HANDLE_CS;
                            break;
                        } else {
                            int callDiversionNew = SciSSConfHs.setCallDiversionNew(1, utCmd.csAction, utCmd.utNumber, null, null, 1, -1);
                            utCmd.utExpectType = 8;
                            if (1 == callDiversionNew) {
                                utCmd.mState = CmdState.CMD_HANDLE_CS;
                                loge("setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result=" + callDiversionNew);
                            } else {
                                startUtAlarm();
                            }
                            break;
                        }
                    }
                    this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                    utCmd.mState = CmdState.CMD_FINISH;
                    break;
                case 13:
                    if (uTData.mUtOpType != 0) {
                        loge("OIP ICB: don't support this OPRATOR");
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationCallBarringQueried(utCmd.utId, responseCLCK(Boolean.valueOf(SciSSConfHs.getCallBarringEnable(utCmd.utReason).booleanValue())));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 14:
                    if (uTData.mUtOpType != 0) {
                        loge("OIP OCB: don't support this OPRATOR");
                        break;
                    } else {
                        this.mListenerProxy.utConfigurationCallBarringQueried(utCmd.utId, responseCLCK(Boolean.valueOf(SciSSConfHs.getCallBarringEnable(utCmd.utReason).booleanValue())));
                        utCmd.mState = CmdState.CMD_FINISH;
                        break;
                    }
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    this.mListenerProxy.utConfigurationUpdated(utCmd.utId);
                    utCmd.mState = CmdState.CMD_FINISH;
                    break;
                case 20:
                    handleSciSSConfCbOfCWSuccessfully(utCmd, uTData);
                    break;
                case 21:
                default:
                    loge("not support ssType");
                    responseFailure(utCmd.utId, 0);
                    utCmd.mState = CmdState.CMD_FINISH;
                    break;
            }
        } catch (RuntimeException e) {
            loge("RuntimeException");
            utCmd.mState = CmdState.CMD_HANDLE_CS;
        } catch (Exception e2) {
            loge("Exception");
            utCmd.mState = CmdState.CMD_HANDLE_CS;
        }
        sendUTMessage(6);
    }

    private void handleSciSSConfCbUndefinedError(UtCmd utCmd, UTData uTData) {
        loge("enter handleSciSSConfCbUndefinedError, cmd=" + utCmd);
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        if (utCmd == null) {
            return;
        }
        if (isCTCardAndSupportVolte() && (uTData.mUtType == 5 || uTData.mUtType == 7)) {
            saveCTCardVolteFlag(true);
        }
        processReportChrException((byte) -1, (byte) -1, uTData.mStatus);
        if (utCmd.utRetryCounts >= this.mImsConfigImpl.getUtRetryMaxCounts() || isCmdGetResultFromSdkLocally(utCmd)) {
            logd("handle UT data connection fallback CS domain for ut fail");
            this.mUtAPNInetAddressMap.clear();
            endImsConnectivity();
            utCmd.mState = CmdState.CMD_HANDLE_CS;
        } else {
            utCmd.utRetryCounts++;
            transferCmdFromUtCmdQueueToRetryQueue(utCmd);
            startUtRetryAlarm(utCmd.utRetryCounts);
        }
        sendUTMessage(6);
    }

    private void handleSetCWFromCs(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Message message2 = (Message) asyncResult.userObj;
        if (asyncResult.exception == null) {
            handleSetCallWaitingDone(isEnableCallWaiting(message.arg2), message2);
            return;
        }
        loge("handleSetCWFromCs: ar.exception=" + asyncResult.exception);
        responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
    }

    private void handleSetCallWaitingDone(boolean z, Message message) {
        logd("set call waiting success, isEnable=" + z);
        if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
            syncCallWaitingToImsSdk(z, message);
        } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
            syncCallWaitingToCS(z, message);
        } else {
            responseMessage(message, responseCWInts(Boolean.valueOf(z)), null);
        }
    }

    private void handleSimCardAbsent(Message message) {
        handleClear(1);
        this.mIsSimRecordLoaded = false;
    }

    private void handleSimRecordsLoaded(Message message) {
        String sharedPreferences = this.mImsConfigImpl.getSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSubId], getContext());
        String str = (String) message.obj;
        String spliceMncMcc = this.mImsConfigImpl.spliceMncMcc();
        if (str == null) {
            loge("Can't get current imsi from sim, return");
            return;
        }
        this.mImsConfigImpl.setCurrentImsi(str);
        this.mImsConfigImpl.setSpliceMncMcc(spliceMncMcc);
        this.mIsUtSubscribed = true;
        this.mImsConfigImpl.readCarrierConfig(getContext());
        if (isCardChange(str, sharedPreferences)) {
            clearSharedPreferences();
            this.mImsConfigImpl.setSharedPreferences(HwImsConfigImpl.SIM_IMSI_KEY[this.mSubId], str, getContext());
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

    private void handleSyncCLIRModeToImsSdkDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Message message2 = (Message) asyncResult.userObj;
        if (asyncResult.exception == null) {
            responseMessage(message2, message.getData(), asyncResult.exception);
            return;
        }
        loge("SyncCLIRModeToImsSdk FAIL");
        responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
    }

    private void handleSyncCallWaitingDone(boolean z, Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        logd("sync call waiting has finished successfully.");
        this.mIsAirModeResetCWInModem = false;
        if (HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL == this.mImsConfigImpl.getCallWaitingSource()) {
            logd("begin set call waiting to sharedpreference");
            this.mImsConfigImpl.setBoolToSP(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSubId], z, getContext());
        }
        responseMessage((Message) asyncResult.userObj, responseCWInts(Boolean.valueOf(z)), asyncResult.exception);
    }

    private void handleSyncCallWaitingToCsDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Message message2 = (Message) asyncResult.userObj;
        if (asyncResult.exception != null) {
            loge("SyncCallWaitingToCs FAIL");
            responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        logd("sync call waiting to IMS SDK successfully");
        handleSyncCallWaitingDone(isEnableCallWaiting(message.arg1), message);
    }

    private void handleSyncCallWaitingToImsSdkDone(Message message) {
        AsyncResult asyncResult = (AsyncResult) message.obj;
        Message message2 = (Message) asyncResult.userObj;
        if (asyncResult.exception != null) {
            loge("SyncCallWaitingToImsSdk FAIL");
            responseMessage(message2, CommandException.Error.GENERIC_FAILURE);
            return;
        }
        int i = message.arg1;
        logd("sync call waiting to IMS SDK successfully, callWaitingAction=" + i);
        handleSyncCallWaitingDone(isEnableCallWaiting(i), message);
    }

    private void handleTearDownTunnelConnectionTimeout() {
        if (!IS_VOWIFI_PROP_ON) {
            logd("handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return");
        } else if (getFirstUtCmd() == null || true != isUtOverWifiEnabled()) {
            logd("tunnel lifetime is out, endImsConnectivity.");
            endImsConnectivity();
            stopWifiTunnelSetupAlarm();
        } else {
            logd("restart wifi tunnel lifetime alarm.");
            stopWifiTunnelConnectionAlarm();
            startWifiTunnelConnectionAlarm();
        }
    }

    private void handleTempDcConnectionACT(UtCmd utCmd) {
        if (utCmd == null) {
            loge("handleTempDcConnectionACT - ut cmd is null");
        } else if (processTemporarilyDcConnection()) {
        } else {
            if (canUseDefaultBearForWifiConnected()) {
                startDefaultBearForWifiConnected(utCmd);
                return;
            }
            utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startTemporaryDCAlarm();
        }
    }

    private void handleTemporaryDcTimeOut() {
        logd("handleTemporaryDcTimeOut");
        recoverDefaultDataSub();
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd == null) {
            loge("[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!");
            return;
        }
        firstUtCmd.dcState = ImsDataConnectionState.IMS_DC_FINISH;
        this.mLastSS = 1;
        if (this.mGbaAuth != null) {
            this.mGbaAuth.reset();
        }
        sendUTMessage(6);
    }

    private void handleTemporaryUtStayTimeOut() {
        logd("handleTemporaryUtStayTimeOut");
        recoverDefaultDataSub();
        broadcastUtIdle();
    }

    private void handleTunnelSetupTimeout() {
        logd("handleTunnelSetupTimeout");
        if (!IS_VOWIFI_PROP_ON) {
            logd("handleTunnelSetupTimeout - isVowifiPropOpened is false, return");
            return;
        }
        processReportChrException((byte) 1, (byte) -1, 1002);
        UtCmd firstUtCmd = getFirstUtCmd();
        this.mIsVowifiTimeOut = true;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_IDLE;
        if (firstUtCmd != null) {
            logd("handle UT data connection tunnel setup time out, endUtOverWifiConnectivity.");
            stopWifiTunnelConnectionAlarm();
            stopWifiTunnelSetupAlarm();
            endImsConnectivity();
            changeDcStateWhenTunnelSetupFail();
            sendUTMessage(6);
        }
    }

    private void handleUt(UtCmd utCmd) {
        if (!checkUTDomain(utCmd)) {
            logd("Can't start SS with Ut, will fallback to cs");
            if (utCmd != null) {
                utCmd.mState = CmdState.CMD_HANDLE_CS;
                sendUTMessage(6);
                return;
            }
            return;
        }
        initUtSDKWhenDomainSelectUt();
        logd("cmd.dcState = " + utCmd.dcState);
        switch (utCmd.dcState) {
            case IMS_DC_INIT:
                if (performUtPreprocessingForFirstTime()) {
                    logd("handleUt: The other Sub is busy, waiting.");
                    return;
                }
                logd("handle UT data connection start");
                if (isUtOverWifiEnabled()) {
                    if (getContext() == null) {
                        return;
                    }
                    logd("isUtOverWifiEnabled return true.");
                    int utDomain = getUtDomain();
                    logd("getVoWifiServiceDomain return utDomain = " + utDomain);
                    if (isNeedSetupWifiTunnel(utDomain)) {
                        if (!isUtOverWifiTunnelUp()) {
                            logd("handle UT data connection vowifi connection tunnel act domain is : " + utDomain);
                            utCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                            sendUTMessage(6, null);
                            return;
                        }
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                        break;
                    }
                }
                if (isAirplaneModeOn() && (isUtNotUseDefaultAPN() || !this.mImsConfigImpl.isUtCanUseWifi())) {
                    logd("Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs");
                    responseFailureAndEndUt(utCmd);
                    return;
                } else if (isUtNotUseDefaultAPN()) {
                    if (handleUtNotUseDefaultAPN(utCmd)) {
                        return;
                    }
                } else if (isNeedTempChangeDefaultDataSub()) {
                    logd("handle UT data connection ut use default apn and data is connected but not for this sub");
                    utCmd.dcState = ImsDataConnectionState.IMS_TEMPORARILY_DC_CONNECTION_ACT;
                    sendUTMessage(6, null);
                    return;
                } else if (!isDataConnection()) {
                    if (canUseDefaultBearForWifiConnected()) {
                        logd("handle UT data connection ut use default apn and data is not connected");
                        startDefaultBearForWifiConnected(utCmd);
                        return;
                    }
                    logd("handle UT data connection ut use default apn and data is not connected");
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
                    return;
                } else {
                    logd("handle UT data connection ut use default apn and data is connected");
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    initSDKServiceIpAddr(getNetworkForDefaultApn());
                    break;
                }
                break;
            case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:
                logd("case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT.");
                if (IS_VOWIFI_PROP_ON) {
                    if (isUtOverWifiEnabled()) {
                        if (!isUtOverWifiTunnelUp()) {
                            endConnectivityIfNeeded(45);
                            logd("handle UT data connection begin vowifi Connectivity");
                            beginImsConnectivity(true);
                            stopWifiTunnelSetupAlarm();
                            startWifiTunnelSetupAlarm();
                            utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                            this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                            return;
                        }
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                        break;
                    } else if (isUtNotUseDefaultAPN()) {
                        cancelStopImsApnMessage();
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
                        sendUTMessage(6, null);
                        return;
                    } else if (!isDataConnection()) {
                        if (canUseDefaultBearForWifiConnected()) {
                            startDefaultBearForWifiConnected(utCmd);
                            return;
                        }
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                        startDCAlarm();
                        return;
                    } else {
                        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                        initSDKServiceIpAddr(getNetworkForDefaultApn());
                        break;
                    }
                } else {
                    return;
                }
            case IMS_DC_WIFI_PREF_TUNNEL_FAIL:
                if (!IS_VOWIFI_PROP_ON) {
                    return;
                }
                logd("handle UT data connection volte conntion after vowifi connection fail");
                if (isUtNotUseDefaultAPN()) {
                    if (handleUtNotUseDefaultAPN(utCmd)) {
                        return;
                    }
                } else if (!isDataConnection()) {
                    if (canUseDefaultBearForWifiConnected()) {
                        startDefaultBearForWifiConnected(utCmd);
                        return;
                    }
                    logd("handle UT data connection ut use default apn and data is not connected");
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
                    return;
                } else {
                    logd("handle UT data connection volte conntion after vowifi connection fail default apn");
                    initSDKServiceIpAddr(getNetworkForDefaultApn());
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                }
                break;
            case IMS_DC_WIFI_PREF_IMSPDP_FAIL:
                logd("state IMS_DC_WIFI_PREF_IMSPDP_FAIL,startDCAlarm.");
                if (IS_VOWIFI_PROP_ON) {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    startDCAlarm();
                    return;
                }
                return;
            case IMS_DC_WIFI_ONLY_TUNNEL_FAIL:
                handleWifiOnlyTunnelFail(utCmd);
                return;
            case IMS_DC_LTE_PREF_IMSPDP_FAIL:
                if (IS_VOWIFI_PROP_ON) {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                    sendUTMessage(6, null);
                    return;
                }
                return;
            case IMS_DC_ACT_EXECUTE_LTE_FAIL:
            case IMS_DC_LTE_PREF_TUNNEL_FAIL:
                utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startDCAlarm();
                return;
            case IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:
                responseFailureAndEndUt(utCmd);
                logd("handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL");
                return;
            case IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:
                if (!isUtOverWifiEnabled()) {
                    logd("state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL,send GENERIC_FAILURE to user.");
                    responseFailureAndEndUt(utCmd);
                    return;
                } else if (!isUtOverWifiTunnelUp()) {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_WIFI_CONNECTION_TUNNEL_ACT;
                    sendUTMessage(6, null);
                    return;
                } else {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
                    break;
                }
            case IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:
                logd("Airplane mode is turned on, no longer trying volte ut and cs, return failure! ");
                responseFailureAndEndUt(utCmd);
                return;
            case IMS_DC_CONNECTION_ACT:
                if (!processImsConnectivity()) {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
                    return;
                }
                break;
            case IMS_DC_CONNECTING:
                return;
            case IMS_DC_FINISH:
                utCmd.mState = CmdState.CMD_HANDLE_CS;
                sendUTMessage(6);
                return;
            case IMS_TEMPORARILY_DC_CONNECTION_ACT:
                handleTempDcConnectionACT(utCmd);
                return;
        }
        handleUtCmd(utCmd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUtApnConnection(Intent intent) {
        if (intent == null) {
            return;
        }
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && mCurrentSubId != this.mSubId) {
            logd("handleUtApnConnection intent not for this sub: " + this.mSubId + " mCurrentSubId = " + mCurrentSubId);
            return;
        }
        String stringExtra = intent.getStringExtra("apnType");
        String stringExtra2 = intent.getStringExtra("failCause");
        logd("handleUtApnConnection apn = " + stringExtra + " cause = " + stringExtra2);
        if (TextUtils.isEmpty(stringExtra) || !stringExtra.equals("xcap") || TextUtils.isEmpty(stringExtra2)) {
            return;
        }
        processReportChrException((byte) 0, (byte) -1, DcFailCause.valueOf(stringExtra2).ordinal());
        if (this.mImsConfigImpl.isDcFailCauseForNonVolteSim(stringExtra2)) {
            this.mIsUtSubscribed = false;
        }
        if (this.mImsConfigImpl.isDcFailCauseToReleaseApn(stringExtra2)) {
            stopImsDataConnectionAlarm();
            handleImsConnectionFailure();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0289, code lost:
        if (r8.mImsConfigImpl.isProtocolIR92V10orGreater() != false) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int handleUtCmd(com.huawei.ims.HwImsUtImpl.UtCmd r9) {
        /*
            Method dump skipped, instructions count: 1163
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsUtImpl.handleUtCmd(com.huawei.ims.HwImsUtImpl$UtCmd):int");
    }

    private void handleUtCmdQueue() {
        UtCmd firstUtCmd = getFirstUtCmd();
        if (firstUtCmd == null) {
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
        logd("handleUtCmdQueue start,  cmd mToken=" + firstUtCmd.mToken + ", mState=" + firstUtCmd.mState);
        switch (firstUtCmd.mState) {
            case CMD_INIT:
            case CMD_HANDLE_UT:
                handleUt(firstUtCmd);
                break;
            case CMD_HANDLE_WAIT:
                break;
            case CMD_HANDLE_CS:
                logd("handle UT data connection fallback CS domain");
                handoverSSTick(firstUtCmd);
                break;
            case CMD_FINISH:
                stopUtAlarm();
                removeUtCmd();
                startTemporaryUtStayAlarm();
                sendUTMessage(6, null);
                break;
            default:
                loge("not support this cmd mToken=" + firstUtCmd.mToken + ", mState=" + firstUtCmd.mState);
                break;
        }
        logd("handleUtCmdQueue leave,  cmd mToken=" + firstUtCmd.mToken + ", mState=" + firstUtCmd.mState);
    }

    private void handleUtInit() {
        initImsUtImpl();
    }

    private boolean handleUtNotUseDefaultAPN(UtCmd utCmd) {
        logd("handle UT data connection volte conntion after vowifi connection fail not default apn");
        if (this.mImsConfigImpl.getUtUseApn() == 3 && isDefaultConnected() && (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || getDefaultDataSubId() == this.mSubId)) {
            logd("handle UT data connection ut use complex apn and mobile data is connected");
            initSDKServiceIpAddr(getNetworkForType(0));
            utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTED;
            return false;
        }
        logd("handle UT data connection ut use xcap apn or complex apn with mobile data not connected");
        cancelStopImsApnMessage();
        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTION_ACT;
        sendUTMessage(6, null);
        return true;
    }

    private void handleUtRetryAlarmTimeOut() {
        stopUtRetryAlarm();
        transferCmdFromRetryQueueToUtCmdQueue();
        sendUTMessage(6);
    }

    private int handleUtSS(UtCmd utCmd) {
        addUtCmd(utCmd);
        if (sendUTMessage(6, null)) {
            return 0;
        }
        loge("Send UT message fail, remove last ut cmd.");
        removeLastUtCmd();
        return 1;
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

    private void handleWifiOnlyTunnelFail(UtCmd utCmd) {
        if (IS_VOWIFI_PROP_ON) {
            if (true != Boolean.valueOf(SystemProperties.getBoolean("ro.vowifi.wifi_only_fall_cs", false)).booleanValue()) {
                logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user.");
                responseFailureAndEndUt(utCmd);
                return;
            }
            logd("handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,will fall back to cs,startDCAlarm.");
            utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
            startDCAlarm();
        }
    }

    private int handoverSS(UtCmd utCmd) {
        if (utCmd == null) {
            loge("handoverSS,utCmd null");
            return 1;
        }
        logd("handleOverSS mToken=" + utCmd.mToken + ", utType=" + utCmd.utType + ", utOpType=" + utCmd.utOpType);
        utCmd.mState = CmdState.CMD_FINISH;
        if (isAirplaneModeOn()) {
            logd("handoverSS: Airplane mode is turned on, forbid CSFB, return failure!");
            responseFailure(utCmd.utId, 0);
            return 1;
        } else if (!checkCSDomain(utCmd)) {
            loge("Can't start SS wiht CS domain.");
            responseFailure(utCmd.utId, 0);
            return 1;
        } else if (isCardMccMncPreferToUseUT() && !this.mImsConfigImpl.isUtCSBeUsed()) {
            loge("handleOverSS cannot use CS");
            responseFailure(utCmd.utId, 0);
            return 1;
        } else {
            Phone defaultPhone = getDefaultPhone();
            if (defaultPhone == null) {
                loge("handoverSS cannot get default phone");
                responseFailure(utCmd.utId, 0);
                return 1;
            }
            Message popUtMessage = popUtMessage(utCmd.utId);
            this.mIsUtEnable = false;
            logd("set Ut disable");
            int handoverUtCmd = handoverUtCmd(defaultPhone, utCmd, popUtMessage, 0);
            if (1 == handoverUtCmd) {
                responseMessage(popUtMessage, CommandException.Error.GENERIC_FAILURE);
            }
            this.mIsUtEnable = true;
            logd("set ut enable");
            return handoverUtCmd;
        }
    }

    private void handoverSSTick() {
        handoverSSTick(getFirstUtCmd());
    }

    private void handoverSSTick(UtCmd utCmd) {
        handoverSS(utCmd);
        sendUTMessage(6, null);
    }

    private int handoverUtCmd(Phone phone, UtCmd utCmd, Message message, int i) {
        int i2;
        switch (utCmd.mToken) {
            case CMD_GET_CALLBARRING_OPTION:
                phone.getCallbarringOption(utCmd.csFacility, utCmd.csServiceClass, message);
                i2 = i;
                break;
            case CMD_SET_CALLBARRING_OPTION:
                phone.setCallbarringOption(utCmd.csFacility, utCmd.csPassword, utCmd.utEnable, utCmd.csServiceClass, message);
                i2 = i;
                break;
            case CMD_GET_OUTGOING_CALLERID_DISPLAY:
                phone.getOutgoingCallerIdDisplay(message);
                i2 = i;
                break;
            case CMD_SET_OUTGOING_CALLERID_DISPLAY:
                phone.setOutgoingCallerIdDisplay(utCmd.csReason, message);
                i2 = i;
                break;
            case CMD_GET_CALLWAITING:
                phone.getCallWaiting(this.mUtServiceHandler.obtainMessage(27, message));
                i2 = i;
                break;
            case CMD_SET_CALLWAITING:
                phone.setCallWaiting(utCmd.utEnable, this.mUtServiceHandler.obtainMessage(28, 0, getCallWaitingAction(utCmd.utEnable), message));
                i2 = i;
                break;
            case CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:
                phone.mCi.queryCLIP(message);
                i2 = i;
                break;
            case CMD_GET_CALLFORWARDING_OPTION:
                phone.getCallForwardingOption(utCmd.csReason, utCmd.csServiceClass, message);
                i2 = i;
                break;
            case CMD_SET_CALLFORWARDING_OPTION:
                if (6 == utCmd.csReason) {
                    logd("Set CFU due to time in cs domain, but abandon the time");
                    utCmd.csReason = 0;
                }
                IHwGsmCdmaPhoneEx iHwGsmCdmaPhoneEx = ((GsmCdmaPhone) phone).mHwGsmCdmaPhoneEx;
                i2 = i;
                if (iHwGsmCdmaPhoneEx != null) {
                    iHwGsmCdmaPhoneEx.setCallForwardingOption(utCmd.csAction, utCmd.csReason, utCmd.utNumber, utCmd.csServiceClass, utCmd.utTimer, message);
                    i2 = i;
                    break;
                }
                break;
            case CMD_GET_CALLWAITING_FOR_DETECTION:
                logd("handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB.");
                i2 = i;
                break;
            default:
                loge("handoverSS not support cmd.mToken=" + utCmd.mToken);
                i2 = 1;
                break;
        }
        return i2;
    }

    private String hiddenPrivacyInfo(String str, int i) {
        return HiddenPrivacyInfo.putMosaic(str, i);
    }

    private void initImsUtImpl() {
        this.mCi = this.mHwImsServiceImpl.mCi;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED");
        getContext().registerReceiver(this.mIntentReceiver, intentFilter, PERMISSION_READ_PRECISE_PHONE_STATE, this.mUtServiceHandler);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter2.addAction("android.intent.action.AIRPLANE_MODE");
        intentFilter2.addCategory("android.net.conn.CONNECTIVITY_CHANGE@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON");
        if (IS_VOWIFI_PROP_ON) {
            intentFilter2.addAction(ACTION_MAPCON_SERVICE_FAILED);
        }
        getContext().registerReceiver(this.mIntentReceiver, intentFilter2, null, this.mUtServiceHandler);
        getContext().getContentResolver().registerContentObserver(Telephony.Carriers.CONTENT_URI, true, this.mApnChangeObserver);
    }

    private void initSDKServiceIpAddr(Network network) {
        InetAddress[] allByName;
        if (network != null) {
            if ((this.mNetId != network.netId || this.mImsConfigImpl.isUtQueryDnsIgnoreNetId()) && this.mGbaAuth != null) {
                this.mNetId = network.netId;
                if (this.mImsConfigImpl.isUtGbaLifetimeBeUsed()) {
                    logd("initSDKServiceIpAddr skip sdk.reset & gba.clear");
                } else {
                    SciSSConfHs.reset(0);
                    this.mUtDataExpireTime.clear();
                    this.mGbaAuth.clear();
                }
                byte b = 0;
                try {
                    InetAddress[] allByName2 = network.getAllByName(this.mImsConfigImpl.getUtNafSrvAddr());
                    if (allByName2 != null && allByName2.length > 0) {
                        SciSSConfHs.setHostIp(createIpAddr(allByName2), 0);
                    }
                    if (this.mImsConfigImpl.isUtBsfAuthBeUsed() && (allByName = network.getAllByName(this.mImsConfigImpl.getUtBsfSrvAddr())) != null && allByName.length > 0) {
                        b = 1;
                        SciSSConfHs.setHostIp(createIpAddr(allByName), 1);
                    }
                } catch (UnknownHostException e) {
                    loge("Cannot get inet address ");
                    processReportChrException((byte) -1, b, 1003);
                }
            }
        }
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
            boolean isUtUseNodeSelector = this.mImsConfigImpl.isUtUseNodeSelector();
            int isSupportNodeSelector = SciSSConfHs.isSupportNodeSelector(isUtUseNodeSelector);
            if (isSupportNodeSelector != 0) {
                loge("isSupportNodeSelector ret=" + isSupportNodeSelector);
            }
            logd("init isSupportNodeSelector=" + isUtUseNodeSelector);
            boolean isUtUseXcapNameSpace = this.mImsConfigImpl.isUtUseXcapNameSpace();
            int supportXcapNamespace = SciSSConfHs.setSupportXcapNamespace(isUtUseXcapNameSpace);
            if (supportXcapNamespace != 0) {
                loge("setSupportXcapNamespace ret=" + supportXcapNamespace);
            }
            logd("init setSupportXcapNamespace=" + isUtUseXcapNameSpace);
            int utGbaType = this.mImsConfigImpl.getUtGbaType();
            int supportGBAType = SciSSConfHs.setSupportGBAType(utGbaType);
            if (supportGBAType != 0) {
                loge("setSupportGBAType ret=" + supportGBAType);
            }
            logd("init setSupportGBAType=" + utGbaType);
            boolean isUtUseTmpi = this.mImsConfigImpl.isUtUseTmpi();
            int supportTmpi = SciSSConfHs.setSupportTmpi(isUtUseTmpi);
            if (supportTmpi != 0) {
                loge("setSupportTmpi ret=" + supportTmpi);
            }
            logd("init usetmpi=" + isUtUseTmpi);
            int contentTypeMode = this.mImsConfigImpl.getContentTypeMode();
            int contentType = SciSSConfHs.setContentType(contentTypeMode);
            if (contentType != 0) {
                loge("setContentType ret=" + contentType);
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

    private void initUtSDK() {
        logd("initUtSDK enter");
        setSciSSConfCb(new SciSSConfCb());
        if (mSciSSConfCb == null) {
            loge("instance mSciSSConfCb fail");
            return;
        }
        try {
            boolean isUtOpenHrsLog = this.mImsConfigImpl.isUtOpenHrsLog();
            int init = SciSSConfHs.init(getContext(), isUtOpenHrsLog);
            logd("SciSSConfHs.init ret=" + init + ", IS_HRS_LOG_OPEN = " + isUtOpenHrsLog);
        } catch (RuntimeException e) {
            loge("SciSSConfHs RuntimeException");
        } catch (Exception e2) {
            loge("SciSSConfHs exception");
        }
        setCurrentSubId(this.mSubId);
        logd("initUtSDK leave");
    }

    private void initUtSDKWhenDomainSelectUt() {
        synchronized (this) {
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
    }

    private boolean isAirplaneModeOn() {
        boolean z = false;
        if (getContext() != null) {
            z = false;
            if (Settings.Global.getInt(getContext().getContentResolver(), "airplane_mode_on", 0) != 0) {
                z = true;
            }
            logd("isAirplaneModeOn=" + z);
        }
        return z;
    }

    private boolean isCTCardAndNotSupportVolte() {
        return HwTelephonyManager.getDefault().isCTSimCard(ImsCallProviderUtils.getSubId(this.mSubId)) && !this.mImsConfigImpl.isCarrierSupportVolte();
    }

    private boolean isCTCardAndSupportVolte() {
        return HwTelephonyManager.getDefault().isCTSimCard(ImsCallProviderUtils.getSubId(this.mSubId)) && this.mImsConfigImpl.isCarrierSupportVolte();
    }

    private boolean isCallWaitingExpire() {
        if (this.mNextGetCallWaitingTime == null) {
            return true;
        }
        Date date = new Date();
        if (date.compareTo(this.mNextGetCallWaitingTime) < 0) {
            loge("forbid call waiting request, currDate=" + date + ", mNextGetCallWaitingTime" + this.mNextGetCallWaitingTime);
            return false;
        }
        return true;
    }

    private boolean isCardChange(String str, String str2) {
        boolean z = str == null ? str2 != null : !str.equals(str2);
        logd("Card is changed ret=" + z);
        return z;
    }

    private boolean isCardMccMncPreferToUseUT() {
        return this.mImsConfigImpl.isCardMccMncPreferToUseUT(getCardMccMnc());
    }

    private boolean isCardTypePreferToUseUT() {
        return this.mImsConfigImpl.isCardTypePreferToUseUT(HwTelephonyManager.getDefault().getCardType(ImsCallProviderUtils.getSubId(this.mSubId)));
    }

    private boolean isCfEnable(int i) {
        boolean z = true;
        if (i != 1) {
            z = i == 3;
        }
        return z;
    }

    private boolean isCmdGetResultFromSdkLocally(UtCmd utCmd) {
        boolean z = false;
        int i = utCmd.utType;
        if (i != 5) {
            switch (i) {
                case 14:
                    if (1 != utCmd.utReason) {
                        z = true;
                        break;
                    }
                    break;
            }
            logd("isCmdGetResultFromSdkLocally=" + z);
            return z;
        }
        if (utCmd.utReason != 0) {
            z = true;
        }
        logd("isCmdGetResultFromSdkLocally=" + z);
        return z;
    }

    private boolean isConfigUtForbiddenTimer() {
        return -1 != this.mImsConfigImpl.getUtForbiddenTimer();
    }

    private boolean isCurrentSubChange() {
        boolean z = this.mSubId != mCurrentSubId;
        logd("Current sub is changed, ret is " + z + ",mCurrentSubId is " + mCurrentSubId);
        return z;
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

    private boolean isDataSwitchOn() {
        return ((ConnectivityManager) getContext().getSystemService("connectivity")).getMobileDataEnabled();
    }

    private boolean isDefaultConnected() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(0)) == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    private boolean isEnableCallWaiting(int i) {
        return 1 == i;
    }

    private boolean isLTENetworkType() {
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        int networkType = TelephonyManager.getDefault().getNetworkType(subId);
        logd("isLTENetworkType subId = " + subId + " networkType = " + networkType);
        return networkType == 13 || networkType == 19;
    }

    private boolean isLocalCallWaitingEnable() {
        boolean z = false;
        if (checkUTDomain(domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 20, false))) {
            z = false;
            if (this.mImsConfigImpl.getCallWaitingSource() == HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_LOCAL) {
                z = true;
            }
        }
        return z;
    }

    private boolean isNeedSetupWifiTunnel(int i) {
        boolean isNoDataService = isNoDataService();
        if (this.mImsConfigImpl != null && this.mImsConfigImpl.getUtPreferOption() == 1) {
            logd("isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isNoDataService = " + isNoDataService);
            return isNoDataService;
        }
        boolean z = false;
        if (this.mImsConfigImpl != null) {
            z = false;
            if (this.mImsConfigImpl.isUtPreferVowifiWhenVowifiReg()) {
                z = HwTelephonyManagerInner.getDefault().isWifiCallingAvailable(ImsCallProviderUtils.getSubId(this.mSubId));
            }
        }
        boolean z2 = true;
        if (2 != i) {
            z2 = true;
            if (i != 0) {
                z2 = true;
                if (!z) {
                    if (isNoDataService) {
                        z2 = true;
                        if (3 != i) {
                            if (1 == i) {
                                z2 = true;
                            }
                        }
                    }
                    z2 = false;
                }
            }
        }
        return z2;
    }

    private boolean isNeedTempChangeDefaultDataSub() {
        boolean z = false;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && !isUtNotUseDefaultAPN()) {
            if (this.mImsConfigImpl.isUtCanUseWifi() && isWifiConnected()) {
                return false;
            }
            if (getDefaultDataSubId() != this.mSubId) {
                z = true;
            }
            return z;
        }
        return false;
    }

    private boolean isNetworkConnected() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            loge("The ConnectivityManager is null");
            return false;
        }
        int i = 45;
        if (this.mIsVowifi) {
            i = 47;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(i);
        if (networkInfo != null) {
            return networkInfo.isConnected();
        }
        return false;
    }

    private boolean isNoDataService() {
        return isAirplaneModeOn() || isNoMobileNetwork();
    }

    private boolean isNoMobileNetwork() {
        boolean z = HwTelephonyManager.getDefault().getDataRegisteredState(ImsCallProviderUtils.getSubId(this.mSubId)) != 0;
        logd("isNoMobileNetwork: " + z);
        return z;
    }

    private boolean isOtherSubUtIdle() {
        if (this.mImsUtImpl != null) {
            return this.mImsUtImpl.isOtherSubUtIdle(this.mSubId);
        }
        return true;
    }

    private boolean isSsUseUtInterface(int i) {
        boolean z = true;
        if (i == 20 && HwImsConfigImpl.CALL_WAITING_SOURCE.CALL_WAITING_FROM_UT != this.mImsConfigImpl.getCallWaitingSource()) {
            z = false;
        }
        return z;
    }

    private boolean isUtDataExpire(int i) {
        if (i != 5) {
            switch (i) {
                case 13:
                case 14:
                    break;
                default:
                    loge("isUtDataExpire unknown type=" + i);
                    return true;
            }
        }
        Date date = this.mUtDataExpireTime.get(Integer.valueOf(i));
        if (date == null) {
            return true;
        }
        Date date2 = new Date();
        if (date2.compareTo(date) < 0) {
            logd("Ut data is not expire, currDate=" + date2 + ", mNextUtDataUpdateTime" + date);
            return false;
        }
        return true;
    }

    private boolean isUtIdInvalid(int i) {
        if (i < 0) {
            loge("Invalid request id. id=" + i);
            return true;
        }
        logd("Valid request id. id=" + i);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUtNotUseDefaultAPN() {
        return this.mImsConfigImpl.getUtUseApn() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUtOverWifiEnabled() {
        boolean z = SystemProperties.getBoolean("ro.config.hw_vowifi_mmsut", false);
        if (IS_VOWIFI_PROP_ON) {
            Context context = getContext();
            if (context == null) {
                loge("null == context");
                return false;
            } else if (HwImsManager.isWfcEnabledByPlatform(context, ImsCallProviderUtils.getSubId(this.mSubId))) {
                boolean vowifiUtSwitch = this.mImsConfigImpl.getVowifiUtSwitch();
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    loge("null == ConnectivityManager");
                    return false;
                }
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                Boolean bool = false;
                if (networkInfo != null) {
                    bool = false;
                    if (networkInfo.isConnected()) {
                        bool = true;
                    }
                }
                boolean z2 = false;
                if (bool.booleanValue()) {
                    z2 = false;
                    if (Boolean.valueOf(z).booleanValue()) {
                        z2 = false;
                        if (vowifiUtSwitch) {
                            z2 = true;
                        }
                    }
                }
                logd("isUtOverWifiEnabled return " + z2);
                return z2;
            } else {
                return false;
            }
        }
        return false;
    }

    private boolean isUtOverWifiTunnelUp() {
        logd("isUtOverWifiTunnelUp, mIsWifiTunnnelUp = " + this.mIsWifiTunnnelUp);
        return this.mIsWifiTunnnelUp;
    }

    private boolean isUtSubscribed() {
        return this.mIsUtSubscribed;
    }

    private boolean isUtSupportedByCurrentBearer() {
        int utBearerType = this.mImsConfigImpl.getUtBearerType();
        boolean z = true;
        if (utBearerType == 1) {
            z = isLTENetworkType();
        } else if (utBearerType == 2) {
            z = this.mHwImsServiceImpl.getImsRegisterState() == 1;
        } else if (utBearerType == 3) {
            z = true;
            if (!isLTENetworkType()) {
                z = this.mHwImsServiceImpl.getImsRegisterState() == 1;
            }
        }
        logd("isUtSupportedByCurrentBearer result = " + z);
        return z;
    }

    private boolean isValidCommandInterfaceCFAction(int i) {
        switch (i) {
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

    private boolean isValidCommandInterfaceCFReason(int i) {
        switch (i) {
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

    private boolean isVolteSwitchOn() {
        Phone defaultPhone = getDefaultPhone();
        boolean z = false;
        if (defaultPhone != null) {
            z = defaultPhone.getImsSwitch();
        }
        logd("Volte Switch=" + z);
        return z;
    }

    private boolean isWifiConnected() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void keepAliveImsConnectivity() {
        this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(5), 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logd(String str) {
        Rlog.d("HwImsUtImpl[" + this.mSubId + "]", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e("HwImsUtImpl[" + this.mSubId + "]", "[ERROR] " + str);
    }

    private boolean performUtPreprocessingForFirstTime() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && isCurrentSubChange()) {
            if (isOtherSubUtIdle()) {
                logd("performUtPreprocessingForFirstTime: reset Ut SDK");
                setCurrentSubId(this.mSubId);
                SciSSConfHs.reset(1);
                regetIMSIFromPhone();
                initSciSSConfHs();
                this.mUtDataExpireTime.clear();
                return false;
            } else if (mCurrentSubId != -1) {
                logd("performUtPreprocessingForFirstTime: ut for other sub is not idle, waiting");
                return true;
            } else {
                logd("performUtPreprocessingForFirstTime: ut for other sub is not idle, but mCurrentSubId is -1, should set mCurrentSubId as " + this.mSubId);
                setCurrentSubId(this.mSubId);
                regetIMSIFromPhone();
                initSciSSConfHs();
                return false;
            }
        }
        return false;
    }

    private Message popUtMessage(int i) {
        ImsPhone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone == null) {
            loge("popUtMessage imsPhone is null");
            return null;
        }
        return imsPhone.mHwImsPhoneEx.popUtMessage(i);
    }

    private void processECTCallBack(Message message) {
        if (message == null) {
            logd("ECTCallBack msg is null,just return");
            return;
        }
        AsyncResult asyncResult = (AsyncResult) message.obj;
        if (asyncResult == null || asyncResult.exception == null || this.mHwImsServiceImpl == null) {
            return;
        }
        ImsPhone imsPhone = this.mHwImsServiceImpl.getImsPhone();
        if (imsPhone instanceof ImsPhone) {
            imsPhone.notifyECTFailed(PhoneInternalInterface.SuppService.TRANSFER);
        } else {
            logd("get imsphone fails.");
        }
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
            int beginImsConnectivity = beginImsConnectivity(false);
            logd("processImsConnectivity, begin ims result=" + beginImsConnectivity + ",  mImsDCState=" + this.mImsDCState);
            if (beginImsConnectivity != 1) {
                if (beginImsConnectivity != 3) {
                    return false;
                }
                sendUTMessage(4);
                return false;
            } else if (ImsDataConnectionState.IMS_DC_IDLE == this.mImsDCState) {
                this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startImsDataConnectionAlarm();
                return false;
            } else if (ImsDataConnectionState.IMS_DC_CONNECTING != this.mImsDCState && ImsDataConnectionState.IMS_DC_CONNECTED == this.mImsDCState) {
                this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
                startImsDataConnectionAlarm();
                return false;
            } else {
                return false;
            }
        }
    }

    private void processReportChrException(byte b, byte b2, int i) {
        UtCHRData extractParametersForChr = extractParametersForChr(b, b2, i);
        Date date = new Date();
        if (this.mCanSendChrBroadcastDate == null || date.compareTo(this.mCanSendChrBroadcastDate) >= 0) {
            sendUtChrBroadcast(extractParametersForChr);
            if (this.mCanSendChrBroadcastDate == null) {
                this.mCanSendChrBroadcastDate = new Date();
            }
            this.mCanSendChrBroadcastDate.setTime(date.getTime() + 3600000);
        }
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

    private void queryAndSyncCLIRModeToImsSdk() {
        logd("[UTCMD]enter queryAndSyncCLIRModeToImsSdk");
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded!");
            return;
        }
        DomainSelectType domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 3, false);
        int oIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        if (checkUTDomain(domainSelect) && oIRSourceMode == 1) {
            queryCLIR();
        }
    }

    private void queryCLIR(Message message) {
        UtCmd utCmd = (UtCmd) message.obj;
        int oIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        logd("enter queryCLIR, mOIRSourceMode=" + oIRSourceMode);
        if (!checkUTDomain(utCmd.domainSelect) || oIRSourceMode != 1) {
            handleSS(utCmd);
            return;
        }
        int intFromSP = this.mImsConfigImpl.getIntFromSP(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSubId], getContext(), this.mImsConfigImpl.getOIRDefaultMode());
        Bundle bundle = new Bundle();
        bundle.putIntArray("queryClir", new int[]{intFromSP, 4});
        Message popUtMessage = popUtMessage(utCmd.utId);
        if (popUtMessage == null) {
            logd("onComplete is null.");
        }
        Message obtainMessage = this.mUtServiceHandler.obtainMessage(31, popUtMessage);
        obtainMessage.setData(bundle);
        syncCLIRModeToImsSdk(intFromSP, obtainMessage);
    }

    private void queryCallWaiting(Message message) {
        UtCmd utCmd = (UtCmd) message.obj;
        HwImsConfigImpl.CALL_WAITING_SOURCE callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter getCallWaiting, callWaitingSource=" + callWaitingSource);
        this.mCallWatingUtCanBeUsed = checkUTDomain(utCmd.domainSelect);
        if (!this.mCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSS(utCmd);
            return;
        }
        switch (callWaitingSource) {
            case CALL_WAITING_FROM_UT:
                handleSS(utCmd);
                return;
            case CALL_WAITING_FROM_CS:
                handoverSS(utCmd);
                return;
            case CALL_WAITING_FROM_LOCAL:
                logd("query cw , mIsUtForbidden=" + this.mIsUtForbidden + ",canUse403ForLocalCW=" + canUse403ForLocalCW());
                if (canUse403ForLocalCW() && this.mIsUtForbidden) {
                    handoverSS(utCmd);
                    return;
                }
                boolean boolFromSP = this.mImsConfigImpl.getBoolFromSP(HwImsConfigImpl.LOCAL_CALL_WAITING_KEY[this.mSubId], getContext(), true);
                Message popUtMessage = popUtMessage(utCmd.utId);
                if (popUtMessage == null) {
                    logd("onComplete is null.");
                }
                handleGetCallWaitingDone(Boolean.valueOf(boolFromSP).booleanValue(), 1, popUtMessage);
                return;
            default:
                loge("[error]can't get call waiting, the source=" + callWaitingSource);
                responseFailure(utCmd.utId, 0);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryUtApn() {
        Cursor query;
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        String simOperator = TelephonyManager.from(getContext()).getSimOperator(subId);
        String str = "ims";
        String str2 = "numeric = ? AND (type like '%" + ((this.mImsConfigImpl.getUtUseApn() == 1 || this.mImsConfigImpl.getUtUseApn() == 3) ? "xcap" : "xcap") + "%')";
        Cursor cursor = null;
        Cursor cursor2 = null;
        Uri withAppendedPath = Uri.withAppendedPath(Uri.parse("content://telephony/carriers/subId"), Integer.toString(subId));
        logd("queryUtApn subId = " + subId);
        try {
            try {
                query = getContext().getContentResolver().query(withAppendedPath, null, str2, new String[]{simOperator}, "_id");
                if (query != null) {
                    if (query.getCount() > 0) {
                        this.hasUtUseAPN = true;
                    } else {
                        this.hasUtUseAPN = false;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("hasUtUseAPN = ");
                sb.append(this.hasUtUseAPN);
                cursor2 = query;
                cursor = query;
                logd(sb.toString());
            } catch (Exception e) {
                loge("Exception for queryUtApn ");
                if (cursor == null) {
                    return;
                }
            }
            if (query != null) {
                cursor = query;
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    private void recoverDefaultDataSub() {
        logd("recoverDefaultDataSub");
        if (this.mHasChangedDefaultDataSub) {
            int defaultDataSubId = getDefaultDataSubId();
            int default4GSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
            logd("recoverDefaultDataSub: defaultDataSubId = " + defaultDataSubId + ", default4GSlotId = " + default4GSlotId);
            if (defaultDataSubId == default4GSlotId || default4GSlotId == this.mSubId) {
                return;
            }
            logd("recoverDefaultDataSub: recover default data sub to main sub");
            setDefaultDataSubId(default4GSlotId);
            this.mHasChangedDefaultDataSub = false;
        }
    }

    private boolean regetIMSIFromPhone() {
        Phone defaultPhone;
        String subscriberId;
        if (this.mImsConfigImpl.getIMSI() != null || (defaultPhone = getDefaultPhone()) == null || (subscriberId = defaultPhone.getSubscriberId()) == null) {
            return false;
        }
        logd("regetIMSIFromPhone");
        this.mImsConfigImpl.setIMSI(subscriberId);
        return true;
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

    private void removeUtCmd() {
        synchronized (this.mUtCmdQueue) {
            this.mUtCmdQueue.remove(0);
            logd("after remove mUtCmdQueue size=" + this.mUtCmdQueue.size());
        }
    }

    private void removeUtCmd(UtCmd utCmd) {
        synchronized (this.mUtCmdQueue) {
            Iterator<UtCmd> it = this.mUtCmdQueue.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next() == utCmd) {
                    it.remove();
                    break;
                }
            }
        }
    }

    private Bundle responseBundle(Boolean bool) {
        Parcelable imsSsInfo = new ImsSsInfo();
        if (bool == null || !bool.booleanValue()) {
            ((ImsSsInfo) imsSsInfo).mStatus = 0;
        } else {
            ((ImsSsInfo) imsSsInfo).mStatus = 1;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("imsSsInfo", imsSsInfo);
        return bundle;
    }

    private ImsSsInfo[] responseCLCK(Boolean bool) {
        ImsSsInfo[] imsSsInfoArr = new ImsSsInfo[2];
        imsSsInfoArr[0] = new ImsSsInfo();
        if (bool == null || !bool.booleanValue()) {
            imsSsInfoArr[0].mStatus = 0;
        } else {
            imsSsInfoArr[0].mStatus = 1;
        }
        return imsSsInfoArr;
    }

    private Bundle responseCLIP(Boolean bool) {
        logd("responseCLIP, result=" + bool);
        return responseBundle(bool);
    }

    private Bundle responseCLIR(Boolean bool, int i) {
        logd("responseCLIR result=" + bool + ", defaultBehavior=" + i);
        int[] iArr = new int[2];
        iArr[1] = 4;
        if (bool == null || !bool.booleanValue()) {
            if (i == 3) {
                iArr[0] = 2;
                iArr[1] = 0;
            } else {
                iArr[0] = 0;
            }
        } else if (i == 1) {
            iArr[0] = 2;
        } else if (i == 2) {
            iArr[0] = 1;
        } else {
            iArr[0] = 2;
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("queryClir", iArr);
        return bundle;
    }

    private Bundle responseCOLP(Boolean bool) {
        logd("responseCOLP, result=" + bool);
        return responseBundle(bool);
    }

    private Bundle responseCOLR(Boolean bool) {
        logd("responseCOLR, result=" + bool);
        return responseBundle(bool);
    }

    private Object responseCWInts(Boolean bool) {
        return responseInts(bool, 1);
    }

    private ImsCallForwardInfo[] responseCallForward(int i) {
        String callDiversionNoReplyTimer;
        logd("responseCallForward reason=" + i);
        int transUtToCFReason = transUtToCFReason(i);
        if (-1 == transUtToCFReason) {
            loge("invalid reason");
            return new ImsCallForwardInfo[0];
        }
        Boolean callDiversionEnable = SciSSConfHs.getCallDiversionEnable(i);
        logd("getCallDiversionEnable result=" + callDiversionEnable);
        ImsCallForwardInfo[] imsCallForwardInfoArr = {new ImsCallForwardInfo()};
        if (callDiversionEnable == null || !callDiversionEnable.booleanValue()) {
            imsCallForwardInfoArr[0].mStatus = 0;
        } else {
            imsCallForwardInfoArr[0].mStatus = 1;
        }
        imsCallForwardInfoArr[0].mCondition = transUtToCFReason;
        imsCallForwardInfoArr[0].mNumber = SciSSConfHs.getCallForwardTargetNumber(i);
        if (imsCallForwardInfoArr[0].mNumber == null) {
            logd("responseCallForward number is null, set empty string as default");
            imsCallForwardInfoArr[0].mNumber = HwImsConfigImpl.NULL_STRING_VALUE;
        }
        imsCallForwardInfoArr[0].mTimeSeconds = 0;
        if (3 == i && (callDiversionNoReplyTimer = SciSSConfHs.getCallDiversionNoReplyTimer()) != null) {
            try {
                imsCallForwardInfoArr[0].mTimeSeconds = Integer.parseInt(callDiversionNoReplyTimer);
            } catch (NumberFormatException e) {
                loge("responseCallForward : NumberFormatException ");
            }
        }
        if (i == 0) {
            Date[] callForwardTime = SciSSConfHs.getCallForwardTime();
            if (callForwardTime == null || 2 != callForwardTime.length || callForwardTime[0] == null || callForwardTime[1] == null) {
                imsCallForwardInfoArr[0].mStartHour = -1;
                imsCallForwardInfoArr[0].mStartHour = -1;
                imsCallForwardInfoArr[0].mStartHour = -1;
                imsCallForwardInfoArr[0].mStartHour = -1;
                logd("can't get the time while query CFT, deliver -1 to APP");
            } else {
                imsCallForwardInfoArr[0].mStartHour = callForwardTime[0].getHours();
                imsCallForwardInfoArr[0].mStartMinute = callForwardTime[0].getMinutes();
                imsCallForwardInfoArr[0].mEndHour = callForwardTime[1].getHours();
                imsCallForwardInfoArr[0].mEndMinute = callForwardTime[1].getMinutes();
                logd("get CFT successfully, date=" + Arrays.toString(callForwardTime) + ", mStartHour=" + imsCallForwardInfoArr[0].mStartHour + ", mStartMinute=" + imsCallForwardInfoArr[0].mStartMinute + ", mEndHour=" + imsCallForwardInfoArr[0].mEndHour + ", mEndMinute=" + imsCallForwardInfoArr[0].mEndMinute);
            }
        }
        imsCallForwardInfoArr[0].mToA = GENERAL_TELEPHONE_NUMBER;
        return imsCallForwardInfoArr;
    }

    private ImsCallForwardInfo[] responseCallForwardEx(int i) {
        ImsCallForwardInfo[] responseCallForward;
        int transUtToCFReason = transUtToCFReason(i);
        if (this.mImsConfigImpl.getIsUseMultCondition()) {
            logd("responseCallForwardEx ,Single and composite node query");
            ImsCallForwardInfo[] responseCallForward2 = i == 6 ? responseCallForward(0) : i == 7 ? responseCallForward(2) : responseCallForward(i);
            responseCallForward = responseCallForward2;
            if (responseCallForward2 != null) {
                responseCallForward = responseCallForward2;
                if (responseCallForward2[0] != null) {
                    responseCallForward2[0].mCondition = transUtToCFReason;
                    responseCallForward = responseCallForward2;
                }
            }
        } else {
            responseCallForward = responseCallForward(i);
        }
        return responseCallForward;
    }

    private void responseFailure(int i, int i2) {
        if (this.mShowDataConnectionDialog) {
            i2 = 831;
        }
        logd("enter responseFailure, id=" + i + ", errorCode=" + i2);
        this.mListenerProxy.utConfigurationUpdateFailed(i, new ImsReasonInfo(i2, 0));
    }

    private void responseFailureAndEndUt(UtCmd utCmd) {
        if (utCmd == null) {
            logd("responseFailureAndEndUt: cmd is null.");
            return;
        }
        Message popUtMessage = popUtMessage(utCmd.utId);
        if (popUtMessage != null) {
            responseMessage(popUtMessage, CommandException.Error.GENERIC_FAILURE);
        }
        utCmd.mState = CmdState.CMD_FINISH;
        sendUTMessage(6, null);
    }

    private int[] responseInts(Boolean bool, int i) {
        logd("responseInts result=" + bool + ", num=" + i);
        int[] iArr = new int[2];
        if (bool == null || !bool.booleanValue()) {
            iArr[0] = 0;
        } else {
            iArr[0] = 1;
        }
        iArr[1] = i;
        return iArr;
    }

    private void saveCTCardVolteFlag(boolean z) {
        int i = z ? FLAG_IS_VOLTE : FLAG_IS_NOT_VOLTE;
        int subId = ImsCallProviderUtils.getSubId(this.mSubId);
        logd("saveCTCardVolteFlag isVolteCard " + z + ", subId = " + subId);
        Settings.Global.putInt(getContext().getContentResolver(), CARD_VOLTE_FLAG[subId], i);
    }

    private void sendQueryCallWaitingForDetection() {
        checkAccessPermission();
        logd("[UTCMD]enter sendQueryCallWaitingForDetection");
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_CALLWAITING_FOR_DETECTION, 20, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return;
        }
        handleSS(utCmd);
    }

    private void sendStopImsApnMessage() {
        this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(12), getDefaultDataSubId() == this.mSubId ? this.mImsConfigImpl.getUtImsDataDelayEndTime() : this.mImsConfigImpl.getDefUtImsDataDelayEndTime());
    }

    private void sendUtChrBroadcast(UtCHRData utCHRData) {
        if (utCHRData == null) {
            logd("sendUtCHRBroadcast: utCHRData is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("EventScenario", "UT_FAIL");
        bundle.putInt("EventFailCause", 1);
        bundle.putByte("IMS.UT.operationType", utCHRData.mOperationType);
        bundle.putByte("IMS.UT.dataApntype", utCHRData.mDataApntype);
        bundle.putByte("IMS.UT.isSupportWifi", utCHRData.mIsSupportWifi);
        bundle.putByte("IMS.UT.isMobileDateConnected", utCHRData.mIsMobileDateConnected);
        bundle.putByte("IMS.UT.isWifiConnected", utCHRData.mIsWifiConnected);
        if (utCHRData.mIsVowifiEnable != -1) {
            bundle.putByte("IMS.UT.isVowifiEnable", utCHRData.mIsVowifiEnable);
        }
        if (utCHRData.mAddressType != -1) {
            bundle.putByte("IMS.UT.addressType", utCHRData.mAddressType);
        }
        bundle.putByte("IMS.UT.subId", utCHRData.mSubId);
        bundle.putByte("IMS.UT.currentSubId", utCHRData.mCurrentSubId);
        if (utCHRData.mVowifiDomain != -1) {
            bundle.putByte("IMS.UT.vowifidomain", utCHRData.mVowifiDomain);
        }
        if (utCHRData.mFailReason != -1) {
            bundle.putInt("IMS.UT.failReason", utCHRData.mFailReason);
        }
        bundle.putString("IMS.UT.cmdDcState", utCHRData.mCmdDcState);
        logd("sendUtCHRBroadcast: sendTelephonyChrBroadcast." + bundle.toString());
        HwTelephonyFactory.getHwTelephonyChrManager().sendTelephonyChrBroadcast(bundle);
    }

    private static void setCurrentSubId(int i) {
        mCurrentSubId = i;
    }

    private void setDefaultDataSubId(int i) {
        SubscriptionManager from = SubscriptionManager.from(getContext());
        if (from == null) {
            loge("setDefaultDataSubId failed!");
            return;
        }
        logd("setDefaultDataSubId: subId = " + i);
        from.setDefaultDataSubId(i);
    }

    private void setImsExtensionalParam(int i, boolean z, String str) {
        if (!z) {
            str = null;
        }
        SciSSConfHs.setExtensionalParam(i, z, str);
    }

    private void setImsUserAgentExtensionalParam() {
        if (HwImsConfigImpl.NULL_STRING_VALUE.equals(RO_HW_OEMNAME) || HwImsConfigImpl.NULL_STRING_VALUE.equals(RO_BUILD_VERSION_INCREMENTAL)) {
            loge("Can't get prop RO_HW_OEMNAME = " + RO_HW_OEMNAME + ",RO_BUILD_VERSION_INCREMENTAL = " + RO_BUILD_VERSION_INCREMENTAL);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("HUAWEI-");
        stringBuffer.append(RO_HW_OEMNAME);
        stringBuffer.append("/");
        stringBuffer.append(RO_BUILD_VERSION_INCREMENTAL);
        boolean boolCarrierBuildVersion = this.mImsConfigImpl.getBoolCarrierBuildVersion();
        setImsExtensionalParam(0, boolCarrierBuildVersion, stringBuffer.toString());
        setImsExtensionalParam(1, boolCarrierBuildVersion, stringBuffer.toString());
        logd("SetImsExtensionalParam suucess:RO_HW_OEMNAME = " + RO_HW_OEMNAME + ",RO_BUILD_VERSION_INCREMENTAL = " + RO_BUILD_VERSION_INCREMENTAL + ",buildVersion = " + stringBuffer.toString());
    }

    private static void setSciSSConfCb(SciSSConfCb sciSSConfCb) {
        mSciSSConfCb = sciSSConfCb;
    }

    private void setUtDataExpireTime(int i) {
        logd("enter setUtDataExpireTime, type=" + i);
        if (i != 5) {
            switch (i) {
                case 13:
                case 14:
                    break;
                default:
                    return;
            }
        }
        Date date = new Date();
        date.setSeconds(date.getSeconds() + 10);
        this.mUtDataExpireTime.put(Integer.valueOf(i), date);
        logd("expirte time=" + date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUtOverWifiTunnelUpFlag(boolean z) {
        logd("setUtOverWifiTunnelUpFlag, flag = " + z);
        this.mIsWifiTunnnelUp = z;
    }

    private void startAlarm(int i, int i2) {
        logd("startAlarm alarm = " + i + ", timer = " + i2 + "ms");
        if (this.mUtServiceHandler != null) {
            if (this.mUtServiceHandler.hasMessages(i)) {
                this.mUtServiceHandler.removeMessages(i);
            }
            this.mUtServiceHandler.sendMessageDelayed(this.mUtServiceHandler.obtainMessage(i), i2);
        }
    }

    private void startDCAlarm() {
        startAlarm(41, 10000);
    }

    private void startDefaultBearForWifiConnected(UtCmd utCmd) {
        logd("startDefaultBearForWifiConnected.");
        if (utCmd == null) {
            logd("startDefaultBearForWifiConnected: cmd is null.");
            return;
        }
        utCmd.dcState = ImsDataConnectionState.IMS_DC_CONNECTING;
        this.mImsDCState = ImsDataConnectionState.IMS_DC_CONNECTING;
        startImsDataConnectionAlarm();
        beginImsConnectivity(false);
    }

    private void startImsDataConnectionAlarm() {
        startAlarm(44, 10000);
    }

    private void startTemporaryDCAlarm() {
        startAlarm(47, 30000);
    }

    private void startTemporaryUtStayAlarm() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && getFirstUtCmd() == null) {
            logd("startTemporaryUtStayAlarm");
            startAlarm(48, 1000);
        }
    }

    private void startUtAlarm() {
        startAlarm(42, 30000);
    }

    private void startUtForbiddenAlarm() {
        int utForbiddenTimer = this.mImsConfigImpl.getUtForbiddenTimer();
        logd("startUtForbiddenAlarm: delay=" + (utForbiddenTimer / 1000) + "s");
        this.mUtForbiddenDate = new Date();
        this.mUtForbiddenDate.setMinutes(this.mUtForbiddenDate.getMinutes() + (utForbiddenTimer / 60000));
    }

    private void startUtRetryAlarm(int i) {
        int utRetryInterval = this.mImsConfigImpl.getUtRetryInterval(i - 1);
        if (utRetryInterval < 0) {
            return;
        }
        startAlarm(43, utRetryInterval);
    }

    private void startUtServiceThread() {
        this.mHwImsServiceImpl.mHandler.post(new Runnable() { // from class: com.huawei.ims.HwImsUtImpl.2
            @Override // java.lang.Runnable
            public void run() {
                HandlerThread handlerThread = new HandlerThread("ImsUT Thread");
                handlerThread.start();
                HwImsUtImpl.this.mUtServiceHandler = new UtServiceHandler(handlerThread.getLooper());
                HwImsUtImpl.this.sendUTMessage(8);
            }
        });
    }

    private void startWifiTunnelConnectionAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            startAlarm(46, this.mImsConfigImpl.getUtVoWifiDelayEndTime());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWifiTunnelSetupAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            startAlarm(45, 10000);
        }
    }

    private void stopAlarm(int i) {
        logd("stopAlarm alarm = " + i);
        if (this.mUtServiceHandler == null || !this.mUtServiceHandler.hasMessages(i)) {
            return;
        }
        this.mUtServiceHandler.removeMessages(i);
    }

    private void stopDcAlarm() {
        stopAlarm(41);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopImsDataConnectionAlarm() {
        stopAlarm(44);
    }

    private void stopTemporaryDcAlarm() {
        stopAlarm(47);
    }

    private void stopTemporaryUtStayAlarm() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            logd("stopTemporaryUtStayAlarm");
            stopAlarm(48);
        }
    }

    private void stopUtAlarm() {
        stopAlarm(42);
    }

    private void stopUtForbiddenAlarm() {
        logd("stopUtForbiddenAlarm: mUtForbiddenDate=" + this.mUtForbiddenDate);
        this.mUtForbiddenDate = null;
    }

    private void stopUtRetryAlarm() {
        stopAlarm(43);
    }

    private void stopWifiTunnelConnectionAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            stopAlarm(46);
        } else {
            loge("already stop tunnel connection Alarm, no need do again");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopWifiTunnelSetupAlarm() {
        if (IS_VOWIFI_PROP_ON) {
            stopAlarm(45);
        } else {
            loge("already stop tunnel connection Alarm, no need do again");
        }
    }

    private void syncCLIRModeToImsSdk(int i, Message message) {
        this.mCi.setCLIR(i, message);
    }

    private boolean syncCallWaitingToCS(boolean z, Message message) {
        responseMessage(this.mUtServiceHandler.obtainMessage(30, getCallWaitingAction(z), 0, message), null, null);
        return true;
    }

    private boolean syncCallWaitingToImsSdk(boolean z, Message message) {
        int callWaitingAction = getCallWaitingAction(z);
        logd("begin sync call waiting to IMS SDK, callWaitingAction=" + callWaitingAction);
        if (this.mCallWatingUtCanBeUsed) {
            this.mCi.setCallWaiting(z, 1, this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, message));
            return true;
        }
        logd("don't sync result to IMS SDK exectly");
        responseMessage(this.mUtServiceHandler.obtainMessage(29, callWaitingAction, 0, message), null, null);
        return true;
    }

    private int transBarringFacilityToCbReason(String str) {
        if ("AO".equals(str)) {
            return 1;
        }
        if ("OI".equals(str)) {
            return 2;
        }
        if ("OX".equals(str)) {
            return 3;
        }
        if ("AI".equals(str)) {
            return 0;
        }
        if ("IR".equals(str)) {
            return 4;
        }
        return "AB".equals(str) ? 5 : -1;
    }

    private int transCFToUtReason(int i) {
        switch (i) {
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

    private int transCFToUtType(int i) {
        switch (i) {
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

    private int transCLIRModeToUtReason(int i) {
        return i != 1 ? 1 : 2;
    }

    private String transCbTypeToFacility(int i) {
        String str = null;
        switch (i) {
            case 1:
                str = "AI";
                break;
            case 2:
                str = "AO";
                break;
            case 3:
                str = "OI";
                break;
            case 4:
                str = "OX";
                break;
            case 5:
                str = "IR";
                break;
            case 6:
            default:
                loge("unknown cbType=" + i);
                break;
            case 7:
                str = "AB";
                break;
            case 8:
                str = "AG";
                break;
            case 9:
                str = "AC";
                break;
        }
        return str;
    }

    private int transCbTypeToUtTypeGet(int i) {
        int i2;
        switch (i) {
            case 1:
            case 5:
                i2 = 13;
                break;
            case 2:
            case 3:
            case 4:
                i2 = 14;
                break;
            default:
                i2 = -1;
                break;
        }
        return i2;
    }

    private int transCbTypeToUtTypeSet(int i) {
        int i2;
        if (i != 7) {
            switch (i) {
                case 1:
                    i2 = 15;
                    break;
                case 2:
                    i2 = 16;
                    break;
                case 3:
                    i2 = 17;
                    break;
                case 4:
                    i2 = 18;
                    break;
                case 5:
                    i2 = 19;
                    break;
                default:
                    loge("[ERROR]unknown cbType=" + i);
                    i2 = -1;
                    break;
            }
        } else {
            i2 = 21;
        }
        return i2;
    }

    private Date transIntToDate(int i, int i2) {
        Date date = new Date();
        date.setHours(i);
        date.setMinutes(i2);
        return date;
    }

    private int transUtToCFReason(int i) {
        if (i != 0) {
            switch (i) {
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
        return 0;
    }

    private void transferCmdFromRetryQueueToUtCmdQueue() {
        synchronized (this.mUtRetryCmdQueue) {
            int size = this.mUtRetryCmdQueue.size();
            logd("transferCmdFromRetryQueueToUtCmdQueue, size=" + size);
            for (int i = 0; i < size; i++) {
                UtCmd utCmd = this.mUtRetryCmdQueue.get(i);
                if (isUtNotUseDefaultAPN()) {
                    utCmd.dcState = ImsDataConnectionState.IMS_DC_INIT;
                }
                utCmd.mState = CmdState.CMD_HANDLE_UT;
                addUtCmd(utCmd);
            }
            this.mUtRetryCmdQueue.clear();
        }
    }

    private void transferCmdFromUtCmdQueueToRetryQueue(UtCmd utCmd) {
        removeUtCmd(utCmd);
        synchronized (this.mUtRetryCmdQueue) {
            this.mUtRetryCmdQueue.add(utCmd);
        }
        logd("cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd=" + utCmd);
    }

    private void updateCLIR(Message message) {
        UtCmd utCmd = (UtCmd) message.obj;
        int oIRSourceMode = this.mImsConfigImpl.getOIRSourceMode();
        logd("enter updateCLIR, mOIRSourceMode=" + oIRSourceMode);
        if (!checkUTDomain(utCmd.domainSelect) || oIRSourceMode != 1) {
            handleSS(utCmd);
            return;
        }
        this.mImsConfigImpl.setIntToSP(HwImsConfigImpl.LOCAL_OIR_KEY[this.mSubId], utCmd.csReason, getContext());
        Message popUtMessage = popUtMessage(utCmd.utId);
        if (popUtMessage == null) {
            logd("onComplete is null.");
        }
        syncCLIRModeToImsSdk(utCmd.csReason, this.mUtServiceHandler.obtainMessage(31, popUtMessage));
    }

    private int updateCallBarringAllOption(String str, boolean z, int i) {
        logd("enter updateCallbarringAllOption, action=" + z);
        int[] iArr = {2, 3, 4, 1, 5};
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            i2 = updateCallBarringBase(str, iArr[i3], z, i);
        }
        return i2;
    }

    private int updateCallBarringBase(String str, int i, boolean z, int i2) {
        logd("enter updateCallBarringBase, cbType=" + i + ", action=" + z);
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_CALLBARRING_OPTION, transCbTypeToUtTypeSet(i), 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        String transCbTypeToFacility = transCbTypeToFacility(i);
        utCmd.utReason = transBarringFacilityToCbReason(transCbTypeToFacility);
        utCmd.utEnable = z;
        utCmd.csFacility = transCbTypeToFacility;
        utCmd.csPassword = str;
        utCmd.csServiceClass = i2;
        handleSS(utCmd);
        return utCmd.utId;
    }

    private int updateCallWaiting(boolean z) {
        logd("[UTCMD]enter updateCallWaiting enable=" + z);
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_CALLWAITING, 20, 1);
        utCmd.utEnable = z;
        if (isUtIdInvalid(utCmd.utId)) {
            return -1;
        }
        utCmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utCmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == utCmd.domainSelect) {
            loge("invalid domain, stop updateCallWaiting");
            return -1;
        }
        sendUTMessage(21, utCmd);
        return utCmd.utId;
    }

    private void updateCallWaiting(Message message) {
        HwImsConfigImpl.CALL_WAITING_SOURCE callWaitingSource = this.mImsConfigImpl.getCallWaitingSource();
        logd("enter setCallWaiting, callWaitingSource=" + callWaitingSource);
        UtCmd utCmd = (UtCmd) message.obj;
        this.mCallWatingUtCanBeUsed = checkUTDomain(utCmd.domainSelect);
        if (!this.mCallWatingUtCanBeUsed) {
            logd("call waiting is only allowed use CS domain and forbid sync to IMS SDK");
            handoverSS(utCmd);
            return;
        }
        switch (callWaitingSource) {
            case CALL_WAITING_FROM_UT:
                handleSS(utCmd);
                return;
            case CALL_WAITING_FROM_CS:
                handoverSS(utCmd);
                return;
            case CALL_WAITING_FROM_LOCAL:
                logd("update callwaiting canUse403ForLocalCW : " + canUse403ForLocalCW() + ",mIsUtForbidden : " + this.mIsUtForbidden);
                if (canUse403ForLocalCW() && this.mIsUtForbidden) {
                    handoverSS(utCmd);
                    return;
                }
                Message popUtMessage = popUtMessage(utCmd.utId);
                if (popUtMessage == null) {
                    logd("onComplete is null.");
                }
                if (this.mImsConfigImpl.isCallWaitingSyncToImsSdk()) {
                    syncCallWaitingToImsSdk(utCmd.utEnable, popUtMessage);
                    return;
                } else if (this.mImsConfigImpl.isCallWaitingSyncToCs()) {
                    syncCallWaitingToCS(utCmd.utEnable, popUtMessage);
                    return;
                } else {
                    loge("[error]local call waiting and not sync is not reasonable.");
                    responseMessage(popUtMessage, CommandException.Error.GENERIC_FAILURE);
                    return;
                }
            default:
                loge("[error]can't set call waiting, the source=" + callWaitingSource);
                return;
        }
    }

    public boolean canUseDefaultBearForWifiConnected() {
        return !this.mImsConfigImpl.isUtCanUseWifi() && this.mImsConfigImpl.getUtUseApn() == 0 && isWifiConnected();
    }

    @Override // com.huawei.ims.ImsUtImpl
    void clear() {
        sendUTMessage(7);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void close() {
        checkAccessPermission();
        this.mListenerProxy = null;
        this.mUtServiceHandler = null;
        this.mCi = null;
    }

    public void detectSimCardSubscriptionStatus() {
        if (!this.mIsSimRecordLoaded) {
            loge("sim card has not been loaded");
            return;
        }
        int default4GSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if ((!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE || this.mSubId == default4GSlotId || !isCTCardAndSupportVolte()) && !isCTCardAndNotSupportVolte()) {
            sendQueryCallWaitingForDetection();
            return;
        }
        logd("don't detect sim card subscription status, the main slot is " + default4GSlotId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.mHwImsServiceImpl.mContext;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public String getUtIMPUFromNetwork() {
        if (this.mIsSimRecordLoaded) {
            return this.mImsConfigImpl.getUtIMPUFromNetwork();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleImsGetImpuDone(String str) {
        sendUTMessage(11, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimCardAbsent() {
        sendUTMessage(10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void handleSimRecordsLoaded(String str) {
        sendUTMessage(9, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public boolean isAirModeResetCWInModem() {
        return this.mIsAirModeResetCWInModem;
    }

    public boolean isSIMCardCheckedByUT() {
        return this.mHasCheckedSIMCardByUT;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public boolean isSupportCFT() {
        return checkUTDomain(domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, 12, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUtEnable() {
        return this.mIsUtEnable;
    }

    public boolean isUtIdle() {
        boolean z = this.mUtServiceHandler != null && this.mUtServiceHandler.hasMessages(48);
        boolean z2 = getFirstUtCmd() == null;
        logd("isUtIdle: isWaitingForUtStay = " + z + ", isUtCmdQueueEmpty = " + z2);
        boolean z3 = false;
        if (!z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public void processECT() {
        if (this.mCi != null) {
            this.mCi.explicitCallTransfer(this.mUtServiceHandler.obtainMessage(50));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.huawei.ims.ImsUtImpl
    public void queryAndSyncCallWaitingToCs() {
        synchronized (this) {
            logd("[UTCMD]enter queryAndSyncCallWaitingToCs");
            if (isCallWaitingExpire() && this.mImsConfigImpl.isCallWaitingSyncToCs() && isLocalCallWaitingEnable()) {
                queryCallWaiting();
            } else if (!isCardMccMncPreferToUseUT()) {
                logd("this card MCC MNC is not prefer to use UT, will set network mode for callwait");
                this.mCi.setCallWaiting(true, 3, null);
            }
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

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCLIP() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCLIP");
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_ORIGINATING_IDENTITY_PRESENTATION, 1, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCLIR() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCLIR");
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_OUTGOING_CALLERID_DISPLAY, 3, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utCmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == utCmd.domainSelect) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        sendUTMessage(22, utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCOLP() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCOLP");
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_ORIGINATING_IDENTITY_PRESENTATION, 1, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCOLR() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCOLR");
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_TERMINATING_IDENTITY_RESTRICTION, 4, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        handleSS(utCmd);
        return utCmd.utId;
    }

    public int queryCallBarringForServiceClass(int i, int i2) {
        checkAccessPermission();
        logd("[UTCMD]queryCallBarringForServiceClass:cbType= " + i + " serviceClass= " + i2);
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_CALLBARRING_OPTION, transCbTypeToUtTypeGet(i), 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        String transCbTypeToFacility = transCbTypeToFacility(i);
        utCmd.csFacility = transCbTypeToFacility;
        utCmd.utReason = transBarringFacilityToCbReason(transCbTypeToFacility);
        utCmd.csServiceClass = i2;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallForwardForServiceClass(int i, String str, int i2) {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallForward, condition=" + i);
        if (!isValidCommandInterfaceCFReason(i)) {
            loge("Invalid condition for queryCallForward.");
            return -1;
        }
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_CALLFORWARDING_OPTION, 5, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.csReason = i;
        utCmd.utReason = transCFToUtReason(i);
        utCmd.csServiceClass = i2;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int queryCallWaiting() {
        checkAccessPermission();
        logd("[UTCMD]enter queryCallWaiting");
        this.mNextGetCallWaitingTime = new Date();
        if (this.mNextGetCallWaitingTime != null) {
            this.mNextGetCallWaitingTime.setMinutes(this.mNextGetCallWaitingTime.getMinutes() + 5);
        }
        UtCmd utCmd = new UtCmd(CmdToken.CMD_GET_CALLWAITING, 20, 0);
        if (isUtIdInvalid(utCmd.utId)) {
            return -1;
        }
        utCmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utCmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == utCmd.domainSelect) {
            loge("invalid domain, stop queryCallWaiting");
            return -1;
        }
        sendUTMessage(20, utCmd);
        return utCmd.utId;
    }

    public void receiveOtherSubUtIdle() {
        logd("receiveOtherSubUtIdle");
        if (isUtIdle()) {
            return;
        }
        sendUTMessage(6, null);
    }

    void responseMessage(Message message, CommandException.Error error) {
        logd("responseMessage with err=" + error);
        responseMessage(message, null, new CommandException(error));
    }

    void responseMessage(Message message, Object obj, Throwable th) {
        logd("responseMessage with obj=" + obj);
        if (message == null) {
            loge("responseMessage msg is null");
            return;
        }
        AsyncResult.forMessage(message, obj, th);
        message.sendToTarget();
    }

    boolean sendUTMessage(int i) {
        return sendUTMessage(i, null);
    }

    boolean sendUTMessage(int i, Object obj) {
        if (this.mUtServiceHandler == null) {
            logd("mUtServiceHandler is null, can't send message via this handler.");
            return false;
        }
        return this.mUtServiceHandler.sendMessage(this.mUtServiceHandler.obtainMessage(i, obj));
    }

    public int setHomeDomainName() {
        int i;
        String domainName = this.mImsConfigImpl.getDomainName();
        try {
            logd("setHomeDomainName domainName=" + hiddenPrivacyInfo(domainName, 2));
            i = -1;
            if (!TextUtils.isEmpty(domainName)) {
                i = -1;
                if (mCurrentSubId == this.mSubId) {
                    i = SciSSConfHs.setHomeDomainName(domainName);
                }
            }
        } catch (Exception e) {
            loge("setHomeDomainName, exception");
            i = -1;
        }
        logd("setHomeDomainName , ret=" + i);
        return i;
    }

    int setImsSdkBsfAddr() {
        String utBsfSrvAddr = this.mImsConfigImpl.getUtBsfSrvAddr();
        int utBsfPort = this.mImsConfigImpl.getUtBsfPort();
        boolean isUtBsfUseHttps = this.mImsConfigImpl.isUtBsfUseHttps();
        logd("set ims sdk, bsf use https=" + isUtBsfUseHttps);
        int i = -1;
        if (utBsfSrvAddr == null) {
            loge("bsfAddr is null.");
            return -1;
        }
        try {
            i = SciSSConfHs.setBsfAddr(utBsfSrvAddr, utBsfPort, isUtBsfUseHttps);
        } catch (Exception e) {
            loge("setImsSdkBsfAddr, failed");
        }
        logd("set Ims Sdk Bsf Addr , ret=" + i);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int setImsSdkImpi() {
        String utIMPI = this.mImsConfigImpl.getUtIMPI();
        logd("setImsSdkImpi impi=" + hiddenPrivacyInfo(utIMPI, 2));
        if (utIMPI == null) {
            loge("impi is null.");
            return -1;
        }
        int i = -1;
        try {
            if (mCurrentSubId == this.mSubId) {
                i = SciSSConfHs.setAuthUserName(utIMPI);
            }
        } catch (Exception e) {
            loge("setImsSdkImpi, failed");
            i = -1;
        }
        logd("set Ims Sdk Impi, ret=" + i);
        return i;
    }

    int setImsSdkImpu() {
        int i;
        String utIMPU = this.mImsConfigImpl.getUtIMPU(getContext());
        logd("setImsSdkImpu impu=" + hiddenPrivacyInfo(utIMPU, 2));
        try {
            i = SciSSConfHs.setLocalUserName(utIMPU);
        } catch (Exception e) {
            loge("setImsSdkImpu, failed");
            i = -1;
        }
        logd("set Ims Sdk impu, ret=" + i);
        return i;
    }

    int setImsSdkNafAddr() {
        String utNafSrvAddr = this.mImsConfigImpl.getUtNafSrvAddr();
        int utNafPort = this.mImsConfigImpl.getUtNafPort();
        boolean isUtNafUseHttps = this.mImsConfigImpl.isUtNafUseHttps();
        logd("set ims sdk naf , naf port, naf use https=" + isUtNafUseHttps);
        int i = -1;
        if (utNafSrvAddr == null) {
            loge("nafAddr is null.");
            return -1;
        }
        try {
            i = SciSSConfHs.setNafAddr(utNafSrvAddr, utNafPort, isUtNafUseHttps);
        } catch (Exception e) {
            loge("setImsSdkNafAddr, exception");
        }
        logd("set Ims Sdk Naf Addr , ret =" + i);
        return i;
    }

    void setImsSdkParamsCfg() {
        String[] utParamsCfg = this.mImsConfigImpl.getUtParamsCfg();
        if (utParamsCfg != null) {
            for (String str : utParamsCfg) {
                String[] split = str.split(":");
                if (split.length != 2 || TextUtils.isEmpty(split[0]) || TextUtils.isEmpty(split[1])) {
                    loge("setParamsCfg config param not right");
                } else {
                    try {
                        int parseInt = Integer.parseInt(split[0]);
                        SciSSConfHs.setParamsCfg(parseInt, split[1]);
                        logd("init utParamsCfg, cfgParam=" + parseInt + ", value=" + split[1]);
                    } catch (NumberFormatException e) {
                        loge("setParamsCfg Exception");
                    }
                }
            }
        }
    }

    int setImsXcapRootUri() {
        int i = -1;
        try {
            i = SciSSConfHs.setXcapRootUri(this.mImsConfigImpl.getUtXcapRootUri());
        } catch (Exception e) {
            loge("setImsXcapRootUri, exception");
        }
        logd("setImsXcapRootUri , ret=" + i);
        return i;
    }

    public void setIsDataReg(boolean z) {
        this.mIsDataReg = z;
    }

    public void setListener(ImsUtListener imsUtListener) {
        checkAccessPermission();
        this.mListenerProxy.mListener = imsUtListener;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIP(boolean z) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIP, enable=" + z);
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_ORIGINATING_IDENTITY_PRESENTATION, 1, 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.utEnable = z;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCLIR(int i) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCLIR, clirMode=" + i);
        boolean z = true;
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_OUTGOING_CALLERID_DISPLAY, 3, 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        if (i == 0) {
            z = false;
        }
        utCmd.utEnable = z;
        utCmd.utReason = transCLIRModeToUtReason(i);
        utCmd.csReason = i;
        logd("updateCLIR, utEnable=" + utCmd.utEnable + ", utReason=" + utCmd.utReason);
        utCmd.domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, utCmd.utType, false);
        if (DomainSelectType.SS_SELECT_INVALID_DOMAIN == utCmd.domainSelect) {
            loge("invalid domain, stop queryCLIR");
            return -1;
        }
        sendUTMessage(23, utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLP(boolean z) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLP, enable=" + z);
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_TERMINATING_IDENTITY_PRESETNTATION, 2, 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.utEnable = z;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCOLR(int i) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCOLR, presentation=" + i);
        boolean z = true;
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_TERMINATING_IDENTITY_RESTRICTION, 4, 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        if (i != 0) {
            z = false;
        }
        utCmd.utEnable = z;
        utCmd.csReason = i;
        handleSS(utCmd);
        return utCmd.utId;
    }

    public int updateCallBarringOption(String str, int i, boolean z, int i2, String[] strArr) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallBarringOption, cbType=" + i + ", action=" + z + ", serviceClass=" + i2 + ", barrList=" + Arrays.toString(strArr));
        if (21 == transCbTypeToUtTypeSet(i)) {
            DomainSelectType domainSelect = domainSelect(DomainSelectType.SS_SELECT_UT_PREFER_CS_SECONDARY, transCbTypeToUtTypeSet(i), false);
            logd("updateCallBarringOption: domainSelect is " + domainSelect);
            if (DomainSelectType.SS_SELECT_CS_DOMAIN_ONLY != domainSelect) {
                return updateCallBarringAllOption(str, z, i2);
            }
        }
        return updateCallBarringBase(str, i, z, i2);
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForward(int i, int i2, String str, int i3, int i4) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForward, action=" + i + ", condition=" + i2 + ", number=" + hiddenPrivacyInfo(str, 0) + ", serviceClass=" + i3 + ", timeSeconds=" + i4);
        if (!isValidCommandInterfaceCFAction(i) || !isValidCommandInterfaceCFReason(i2)) {
            loge("Invalid action or condition for updateCallForward.");
            return -1;
        }
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, transCFToUtType(i2), 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.utEnable = isCfEnable(i);
        utCmd.utReason = transCFToUtReason(i2);
        utCmd.utNumber = str;
        utCmd.utTimer = i4;
        utCmd.csReason = i2;
        utCmd.csAction = i;
        utCmd.csServiceClass = i3;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallForwardUncondTimer(int i, int i2, int i3, int i4, int i5, int i6, String str) {
        checkAccessPermission();
        logd("[UTCMD]enter updateCallForwardUncondTimer, startHour=" + i + ", startMinute=" + i2 + ", endHour=" + i3 + ", endMinute=" + i4 + ", action=" + i5 + ", condition=" + i6 + ", number=" + hiddenPrivacyInfo(str, 0));
        if (!isValidCommandInterfaceCFAction(i5) || !isValidCommandInterfaceCFReason(i6)) {
            loge("Invalid condition for updateCallForwardUncondTimer.");
            return -1;
        }
        int i7 = i6;
        if (i6 == 0) {
            i7 = 6;
        }
        UtCmd utCmd = new UtCmd(CmdToken.CMD_SET_CALLFORWARDING_OPTION, transCFToUtType(i7), 1);
        if (isUtIdInvalid(utCmd.utId)) {
            return utCmd.utId;
        }
        utCmd.utEnable = isCfEnable(i5);
        utCmd.utReason = transCFToUtReason(i7);
        utCmd.utNumber = str;
        utCmd.startTime = transIntToDate(i, i2);
        utCmd.endTime = transIntToDate(i3, i4);
        utCmd.csReason = i7;
        utCmd.csAction = i5;
        handleSS(utCmd);
        return utCmd.utId;
    }

    @Override // com.huawei.ims.ImsUtImpl
    public int updateCallWaiting(boolean z, int i) {
        checkAccessPermission();
        return updateCallWaiting(z);
    }
}
