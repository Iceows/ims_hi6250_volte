package com.huawei.ims;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.HwTelephonyManager;
import android.telephony.Rlog;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import android.util.Pair;
import com.android.ims.HwImsManager;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.internal.telephony.Call;
import com.android.internal.telephony.CallManager;
import com.android.internal.telephony.CallStateException;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.Connection;
import com.android.internal.telephony.HwModemCapability;
import com.android.internal.telephony.HwTelephonyFactory;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.android.internal.telephony.imsphone.ImsPhoneCall;
import com.android.internal.telephony.uicc.IccCardApplicationStatus;
import com.android.internal.telephony.uicc.IccCardStatus;
import com.android.internal.telephony.uicc.IccRecords;
import com.android.internal.telephony.uicc.UiccCard;
import com.android.internal.telephony.uicc.UiccCardApplication;
import com.android.internal.telephony.uicc.UiccController;
import com.hisi.mapcon.IMapconService;
import com.huawei.ims.DriverImsCall;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.ImsServiceCallTracker;
import com.huawei.ims.ImsServiceState;
import com.huawei.ims.cust.HwCustUtil;
import com.huawei.ims.cust.HwCustVZWIms;
import com.huawei.ims.vt.CameraManager;
import com.huawei.ims.vt.ImsMediaProvider;
import com.huawei.ims.vt.ImsVTConstants;
import com.huawei.ims.vt.ImsVTGlobals;
import com.huawei.ims.vt.VTUtils;
import com.huawei.sci.SciSSConf;
import com.huawei.vtproxy.ImsThinClient;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public class HwImsServiceImpl {
    private static final String ACTION_DMPROVIDER_TO_IMS = "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS";
    private static final String ACTION_IMS_TO_DMPROVIDER = "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE";
    private static final int AT_DMCN = 10;
    private static final String AUDIO_QUALITY_BROADCAST_PERMISSION = "com.huawei.ims.permission.AUDIO_QUALITY_GET";
    private static final String AUDIO_QUALITY_SET_ACTION = "com.huawei.intent.action.AUDIO_QUALITY_SET";
    private static final String AudioQualityType = "AUDIO_QUALITY_TYPE";
    private static final int BATTERY_CLOSE_LEVEL = 2;
    private static final int BATTERY_LOWER_LEVEL = 5;
    private static final int BATTERY_STATUS_CLOSE = 2;
    private static final int BATTERY_STATUS_NORMAL = 0;
    private static final int BATTERY_STATUS_REJECT = 1;
    private static final int BINARY = 2;
    private static final String CARD_TYPE = "card_type";
    private static final String CARRIER_CONFIG_CHANGE_STATE = "carrierConfigChangeState";
    private static final int CARRIER_CONFIG_STATE_LOAD = 1;
    private static final int CODE_SERVICE_CLASS_NOT_SUPPORTED = -2;
    private static final int CSVT_INDEX = 3;
    private static final int DISABLE_LTE_INFO_REPORT = 0;
    private static final String DMPROVIDER_PACKAGE = "com.android.providers.dm";
    private static final String DMRECEIVER_CLASS = "com.android.providers.dm.DmReceiver";
    private static final int DM_IMS_CMD_FAIL = -1;
    private static final int DM_IMS_CMD_OK = 1;
    private static final String DM_IMS_DATA = "data";
    private static final int DM_IMS_GET_AT_DMDYN = 7;
    private static final int DM_IMS_GET_AT_DMPCSCF = 5;
    private static final int DM_IMS_GET_AT_DMSMS = 8;
    private static final int DM_IMS_GET_AT_DMTIMER = 6;
    private static final int DM_IMS_GET_AT_DMUSER = 9;
    private static final String DM_IMS_RET = "ret";
    private static final int DM_IMS_SET_AT_DMDYN = 2;
    private static final int DM_IMS_SET_AT_DMPCSCF = 1;
    private static final int DM_IMS_SET_AT_DMSMS = 4;
    private static final int DM_IMS_SET_AT_DMTIMER = 3;
    private static final String DM_IMS_TYPE = "type";
    private static final int DM_INVALID_CMD_TYPE = -1;
    private static final int DM_SYNC_RETRY_INTERVAL = 2000;
    private static final int DM_SYNC_RETRY_MAX_TIMES = 5;
    public static final String DM_USER_IMS_VALUE = "dm_user_ims_value";
    private static final int ENABLE_LTE_INFO_REPORT = 1;
    private static final int EVENT_CALL_MODIFY = 13;
    private static final int EVENT_CALL_STATE_CHANGE = 1;
    protected static final int EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED = 1007;
    private static final int EVENT_GET_CURRENT_CALLS = 7;
    private static final int EVENT_GET_SRV_STATUS = 5;
    private static final int EVENT_HANDOVER_STATE_CHANGED = 12;
    private static final int EVENT_ICC_CHANGED = 16;
    protected static final int EVENT_IMS_CS_REDIAL = 1009;
    private static final int EVENT_IMS_DMCN = 1016;
    private static final int EVENT_IMS_GET_DMUSER = 1000;
    private static final int EVENT_IMS_GET_DM_PARAMETER_DONE = 1015;
    protected static final int EVENT_IMS_GET_IMPU_DONE = 17;
    protected static final int EVENT_IMS_ONHOLD_TONE = 1100;
    protected static final int EVENT_IMS_RADIO_ON = 1101;
    private static final int EVENT_IMS_REG_FAIL_DELAY = 18;
    private static final int EVENT_IMS_SET_DM_PARAMETER_DONE = 1014;
    private static final int EVENT_IMS_SET_SMS_CONFIG = 1001;
    private static final int EVENT_IMS_SET_VT_CAPABILITY = 19;
    private static final int EVENT_IMS_STATE_CHANGED = 2;
    private static final int EVENT_IMS_STATE_DONE = 3;
    protected static final int EVENT_MODIFY_RESULT = 1003;
    protected static final int EVENT_MT_NEW_RING_REPORT = 1006;
    protected static final int EVENT_MT_STATUS_REPORT = 1005;
    private static final int EVENT_MWI = 14;
    private static final int EVENT_QUERY_CAMERASTATUS = 22;
    private static final int EVENT_READ_DOMAIN_NAME = 20;
    private static final int EVENT_READ_ISIM_IMPI = 21;
    private static final int EVENT_REFRESH_CONF_INFO = 11;
    protected static final int EVENT_REGISTERED_TO_NETWORK = 1008;
    private static final int EVENT_SEND_BATTERY_STATUS = 1018;
    private static final int EVENT_SET_IMS_STATE = 9;
    private static final int EVENT_SET_SRV_STATUS = 6;
    private static final int EVENT_SIM_RECORDS_LOADED = 15;
    protected static final int EVENT_SRVCC_STATE_CHANGED = 1010;
    private static final int EVENT_SRV_STATUS_UPDATE = 4;
    private static final int EVENT_SUPP_SRV_UPDATE = 8;
    private static final int EVENT_TTY_STATE_CHANGED = 10;
    private static final int EVENT_UNSOL_SIM_NVCFG_FINISHED = 23;
    private static final int EVENT_UNSOL_VOWIF_REG_ERR_REPORT = 1103;
    protected static final int EVENT_UNSOl_IMS_REG_MODE = 1102;
    private static final int EVENT_UNSOl_LTE_PDCP_INFO = 1012;
    private static final int EVENT_UNSOl_LTE_RRC_INFO = 1013;
    private static final int EVENT_UNSOl_SPEECH_INFO = 1011;
    private static final int EVENT_VOWIFI_REG_ERR_REPORT = 1104;
    private static final int EVENT_VOWIFI_SOS_PENDING_TIMEOUT = 1020;
    public static final int FEATURE_DISABLED = 0;
    public static final int FEATURE_ENABLED = 1;
    public static final int FEATURE_UNKNOWN = -1;
    private static final String IMS_ERRDOMAIN = "errDomain";
    private static final String IMS_ERRSTAGE = "errStage";
    private static final String IMS_FAILCAUSE = "failcause";
    private static final String IMS_FAILSTRING = "failstring";
    private static final String IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST";
    private static final int IMS_REG_FAIL_DELAY_TIMER_LENGTH = 70000;
    private static final String IMS_SERVICE_CURRENT_PHONE_TYPE_ACTION = "huawei.intent.action.IMS_CURRENT_PHONE_TYPE";
    private static final String IMS_SERVICE_CURRENT_PHONE_TYPE_PERMISSION = "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE";
    private static final String IMS_SERVICE_STATE_BROADCAST_PERMISSION = "com.huawei.ims.permission.GET_IMS_SERVICE_STATE";
    private static final String IMS_SERVICE_STATE_CHANGED_ACTION = "huawei.intent.action.IMS_SERVICE_STATE_CHANGED";
    private static final String IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION = "huawei.intent.action.IMS_REG_ERROR_REPORT";
    private static final String IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_PERMISSION = "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT";
    private static final String IMS_SERVICE_VOWIFI_STATE_BROADCAST_PERMISSION = "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE";
    private static final String IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION = "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED";
    private static final String IMS_STATE = "state";
    private static final String IMS_STATE_CHANGE_SUBID = "subId";
    private static final String IMS_STATE_REGISTERED = "REGISTERED";
    private static final String IMS_STATE_UNREGISTERED = "UNREGISTERED";
    private static final int INVALID_VALUE_KEY = -1;
    private static final String IS_VOWIFI = "vowifi_state";
    private static final String KEY_SUPPORT_HOLD_TONE_BOOL = "support_hold_tone_bool";
    private static final int LAST_CALL_TYPE_CS = 0;
    private static final int LAST_CALL_TYPE_UNKNOWN = -1;
    private static final int LAST_CALL_TYPE_VOLTE = 1;
    private static final int LAST_CALL_TYPE_VOWIFI = 2;
    private static final String LOG_TAG = "HwImsServiceImpl";
    private static final int LTE_PDCP_INFO_CURBUFFPKTNUM = 1;
    private static final int LTE_PDCP_INFO_CURBUFFTIME = 0;
    private static final int LTE_PDCP_INFO_MACULTHRPUT = 2;
    private static final int LTE_PDCP_INFO_MAXBUFFTIME = 3;
    private static final int LTE_RRC_INFO_BLER = 3;
    private static final int LTE_RRC_INFO_RSRP = 0;
    private static final int LTE_RRC_INFO_RSRQ = 1;
    private static final int LTE_RRC_INFO_RSSI = 2;
    private static final String MAPCON_BROADCAST_PERMISSION = "com.hisi.permission.VOWIFI_SPECIAL";
    private static final String MAPCON_SERVICE_STARTED = "com.hisi.vowifi.started";
    private static final int MAX_FEATURES_SUPPORTED = 3;
    private static final int NON_CHARGED_STATUS = 0;
    private static final int NOT_REGISTERED = 0;
    private static final int NVCFG_RESULT_FINISHED = 1;
    private static final String OPERATOR_CUSTOMER_WB_SHOW_HD = "wb_show_hd";
    private static final int QUERY_CAMERASTATUS_TIME = 100;
    private static final String RCS_GLOBAL_RECEIVER_CLASS = "com.huawei.rcs.service.RcsGlobalBroadcastReceiver";
    private static final String RCS_SERVICE_PACKAGE = "com.huawei.rcsserviceapplication";
    private static final int REGISTERED = 1;
    private static final int REGISTERING = 2;
    private static final int REGISTRATION_UNKNOWN = 3;
    private static final int SERVICE_TYPE_MAX = 5;
    private static final int SIP_IMPU_SOURCE = 0;
    public static final int SMS_DEFAULT_VALUE = 1;
    private static final int SMS_DISABLED_VALUE = 0;
    private static final int SMS_ENABLED_VALUE = 1;
    public static final String SMS_IMS_SET_VALUE = "sms_ims_set_value";
    private static final int SPEECH_CODEC_NB = 1;
    private static final int SPEECH_CODEC_WB = 2;
    private static final int SPEECH_EVS_NB = 3;
    private static final int SPEECH_EVS_SWB = 5;
    private static final int SPEECH_EVS_WB = 4;
    private static final String SPEECH_INFO_CODEC_NB = "Codec=AMR_NB";
    private static final String SPEECH_INFO_CODEC_WB = "Codec=AMR_WB";
    private static final String SUBSCRIPTION_KEY = "subscription";
    private static final int THRESHOLD_OF_CLOSE = 100;
    public static final int VOWIFI_REG_ERROR_REPORT_SWITCH_DEFAULT = 0;
    private static final int VOWIFI_SOS_PENDING_TIMEOUT = 30000;
    private static final int VT_FLOW_INFO_REPORT = 40001;
    protected ImsRIL mCi;
    protected Context mContext;
    protected Handler mHandler;
    private HwImsEcbmImpl mHwImsEcbmImpl;
    private HwImsConfigImpl mImsConfigImpl;
    private ImsRegistrationImplBase mImsRegistrationImpl;
    private HwImsUtImpl mImsUtImpl;
    private IMapconService mMapconService;
    private MtStatusManager mMtStatusMgr;
    protected int mSub;
    private MmTelFeature.MmTelCapabilities mTelCapabilities;
    private static boolean mFirstReg = true;
    private static final boolean mSupportAdjustSpeechCodec = HwModemCapability.isCapabilitySupport(11);
    private static final String[] CARD_VOLTE_FLAG = {"card_volte_flag_0", "card_volte_flag_1"};
    private static int FLAG_IS_VOLTE = 1;
    public static final boolean IS_AMR_WB_SHOW_HD_VOLTE = SystemProperties.getBoolean("ro.config.amr_wb_show_hd_volte", false);
    private static final boolean IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
    private static final Map<Integer, Integer> REG_TECH_TO_NET_TYPE = new HashMap(2);
    private static final String DMUSER_DEFAULT_VALUE = null;
    private boolean DBG = false;
    private Map<Integer, ImsServiceCallTracker> mTrackerTable = new HashMap();
    private Map<Integer, ImsServiceCallTracker> mServiceIdTable = new HashMap();
    private AtomicReference<UiccCardApplication> mUiccApplication = new AtomicReference<>();
    public AtomicReference<IccRecords> mIccRecords = new AtomicReference<>();
    private IccCardStatus.CardState mCardState = IccCardStatus.CardState.CARDSTATE_ABSENT;
    private ImsServiceState[] mServiceState = null;
    private String[] mSpeechInfoCodec = new String[1];
    private boolean mEmergencyUnderWifi = false;
    private int mImsRegisterState = 0;
    private int mImsStateBindRat = 0;
    protected AtomicReference<Phone> mPhoneBase = new AtomicReference<>();
    private boolean mShouldResetVTCapability = false;
    private boolean mCurrentHaveCall = false;
    private int mLastCallType = -1;
    private boolean mMainSlotChange = false;
    private int mAccessTechMode = -1;
    private int mDmSyncRetryCount = 0;
    private boolean mIsReportLTEInfo = false;
    private BroadcastReceiver mBroadCastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsServiceImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("mBroadCastReceiver: action " + intent.getAction());
            if (HwImsServiceImpl.MAPCON_SERVICE_STARTED.equals(intent.getAction()) && HwImsServiceImpl.this.mMapconService == null) {
                HwImsServiceImpl.this.bindMapconService();
            }
        }
    };
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsServiceImpl.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                HwImsServiceImpl.this.loge("the intent is null");
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.getBooleanExtra(HwImsServiceImpl.IMS_STATE, false)) {
                    HwImsServiceImpl.this.loge("airplane mode on");
                    HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                    boolean unused = HwImsServiceImpl.mFirstReg = true;
                    return;
                }
                HwImsServiceImpl.this.log("airplane mode off");
            } else if ("android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT".equals(action)) {
                HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
            } else if ("android.telephony.action.CARRIER_CONFIG_CHANGED".equals(action)) {
                if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
                    int intentSubId = intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, 0);
                    if (intentSubId != HwImsServiceImpl.this.mSub) {
                        HwImsServiceImpl.this.log("ACTION_CARRIER_CONFIG_CHANGED is not for this sub, return");
                        return;
                    }
                }
                boolean isCarrierConfigLoaded = intent.getIntExtra(HwImsServiceImpl.CARRIER_CONFIG_CHANGE_STATE, 1) == 1;
                if (!isCarrierConfigLoaded || !HwCustUtil.isVZW) {
                    HwImsServiceImpl.this.log("carrier config is not loaded or the card is not verizon!");
                } else {
                    HwImsServiceImpl.this.getDMUSER();
                }
                HwImsServiceImpl.this.handleSimRecordsLoaded();
                HwImsServiceImpl.this.loge("carrier config changed ");
                HwImsServiceImpl.this.setVTCapabilityToModem();
                HwImsServiceImpl.this.sendSimCardType();
            } else if ("android.intent.action.RADIO_TECHNOLOGY".equals(action)) {
                int mainSlot = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("mainSlot = " + mainSlot + "intent sub =" + intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, -1) + "intent phoneId = " + intent.getIntExtra("phone", -1));
                if (mainSlot == intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, -1)) {
                    HwImsServiceImpl.this.updatePhoneBaseEvent();
                }
            } else if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                HwImsServiceImpl.this.moveSharePreferenceToDE();
            } else if (HwImsServiceImpl.ACTION_DMPROVIDER_TO_IMS.equals(action)) {
                int type = intent.getIntExtra(HwImsServiceImpl.DM_IMS_TYPE, -1);
                String data = intent.getStringExtra(HwImsServiceImpl.DM_IMS_DATA);
                HwImsServiceImpl.this.processDMBroadcast(type, data);
            } else if ("android.intent.action.BATTERY_CHANGED".equals(action) && HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isVolteLowbatteryEndcall()) {
                HwImsServiceImpl.this.sendBatteryStatus(intent);
            }
        }
    };
    private int mCurrentBatteryStatus = -1;
    private int mNewBatteryStatus = -1;

    static /* synthetic */ int access$3208(HwImsServiceImpl x0) {
        int i = x0.mDmSyncRetryCount;
        x0.mDmSyncRetryCount = i + 1;
        return i;
    }

    static {
        REG_TECH_TO_NET_TYPE.put(0, 13);
        REG_TECH_TO_NET_TYPE.put(1, 18);
    }

    public HwImsServiceImpl(int sub, Context context) {
        this.mCi = null;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSub = -1;
        this.mSub = sub;
        log("HwImsServiceImpl Constructor");
        this.mContext = context;
        this.mCi = new ImsRIL(this.mContext, Integer.valueOf(this.mSub));
        this.mHandler = new HwImsServiceImplHandler();
        this.mTelCapabilities = new MmTelFeature.MmTelCapabilities();
        if (VTUtils.isVtFlowInfo()) {
            this.mCi.registerForVtFlowInfo(this.mHandler, VT_FLOW_INFO_REPORT, null);
        }
        this.mImsConfigImpl = ImsConfigImpl.getInstance().getConfigInterface(this, this.mSub);
        this.mImsUtImpl = ImsUtImpl.getInstance().getUtInterface(this, this.mSub);
        registerBootCompleted();
        this.mCi.registerForImsNetworkStateChanged(this.mHandler, 2, null);
        this.mCi.registerForCallStateChanged(this.mHandler, 1, null);
        this.mHwImsEcbmImpl = new HwImsEcbmImpl(this.mCi);
        this.mImsRegistrationImpl = new ImsRegistrationImplBase();
        this.mCi.registerForModifyCall(this.mHandler, 13, null);
        this.mCi.registerForCallModifyResult(this.mHandler, 1003, null);
        this.mCi.registerForMtStatusReport(this.mHandler, 1005, null);
        this.mMtStatusMgr = new MtStatusManager(this);
        CallManager.getInstance().registerForNewRingingConnection(this.mHandler, 1006, (Object) null);
        this.mCi.registerForImsCSRedial(this.mHandler, 1009, null);
        if (mSupportAdjustSpeechCodec) {
            this.mCi.registerForUnsolSpeechInfo(this.mHandler, EVENT_UNSOl_SPEECH_INFO, null);
        }
        this.mCi.registerForUnsolLTE_PDCPInfo(this.mHandler, EVENT_UNSOl_LTE_PDCP_INFO, null);
        this.mCi.registerForUnsolLTE_RRCInfo(this.mHandler, EVENT_UNSOl_LTE_RRC_INFO, null);
        this.mCi.registerForSrvStatusUpdate(this.mHandler, 4, null);
        this.mCi.registerForHandoverStatusChanged(this.mHandler, 12, null);
        this.mCi.setOnSuppServiceNotification(this.mHandler, 8, null);
        this.mCi.registerForOnHoldTone(this.mHandler, EVENT_IMS_ONHOLD_TONE, null);
        if (HwCustUtil.isVZW) {
            this.mCi.registerForImsRegMode(this.mHandler, EVENT_UNSOl_IMS_REG_MODE, null);
        }
        this.mCi.registerForVoWiFiRegErrReport(this.mHandler, EVENT_UNSOL_VOWIF_REG_ERR_REPORT, null);
        initServiceState();
        this.mPhoneBase.set(null);
        updatePhoneBaseEvent();
        if (this.mPhoneBase.get() != null) {
            this.mPhoneBase.get().mCi.registerForOn(this.mHandler, (int) EVENT_IMS_RADIO_ON, (Object) null);
            // TODO Iceows
            //this.mPhoneBase.get().mCi.registerForUnsolNvCfgFinished(this.mHandler, 23, (Object) null);

        }
        onUpdateIccAvailability();
        try {
            UiccController uiccController = UiccController.getInstance();
            uiccController.registerForIccChanged(this.mHandler, 16, (Object) null);
        } catch (Exception e) {
            loge("UiccController getInstance Exception");
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.AIRPLANE_MODE");
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        if (HwImsConfigImpl.FEATURE_VOLTE_DYN) {
            filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        }
        filter.addAction("android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT");
        filter.addAction("android.intent.action.RADIO_TECHNOLOGY");
        context.registerReceiver(this.mIntentReceiver, filter);
        if (HwImsConfigImpl.TRUE_VALUE.equals(SystemProperties.get("ro.config.hw_support_omadm", "false"))) {
            IntentFilter DMFilter = new IntentFilter();
            DMFilter.addAction(ACTION_DMPROVIDER_TO_IMS);
            context.registerReceiver(this.mIntentReceiver, DMFilter, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST", null);
            this.mCi.registerForImsDMCN(this.mHandler, EVENT_IMS_DMCN, null);
        }
        log("HwImsServiceImpl init done");
    }

    public void registerReceiverForBattery() {
        if (this.mImsConfigImpl != null && this.mImsConfigImpl.isVolteLowbatteryEndcall() && this.mContext != null) {
            IntentFilter filter = new IntentFilter();
            log("registerReceiverForBattery");
            filter.addAction("android.intent.action.BATTERY_CHANGED");
            this.mContext.registerReceiver(this.mIntentReceiver, filter);
        }
    }

    public void sendBatteryStatus(Intent intent) {
        int level = intent.getIntExtra("level", 100);
        int plugType = intent.getIntExtra("plugged", 0);
        log("real battery level : " + level);
        log("PlugType : " + plugType);
        if (plugType != 0) {
            this.mNewBatteryStatus = 0;
        } else if (level <= 2) {
            this.mNewBatteryStatus = 2;
        } else if (level <= 5) {
            this.mNewBatteryStatus = 1;
        } else {
            this.mNewBatteryStatus = 0;
        }
        log("old status is : " + this.mCurrentBatteryStatus + "new status is : " + this.mNewBatteryStatus);
        if (this.mCurrentBatteryStatus != this.mNewBatteryStatus) {
            this.mCi.sendBatteryStatus(this.mNewBatteryStatus, this.mHandler.obtainMessage(EVENT_SEND_BATTERY_STATUS));
        }
    }

    public void notifyImsState(String state) {
        if (state.equals(IMS_STATE_REGISTERED)) {
            this.mImsStateBindRat = 1;
            this.mTelCapabilities.addCapabilities(2);
            this.mTelCapabilities.addCapabilities(1);
        } else {
            this.mImsStateBindRat = 0;
            this.mTelCapabilities.removeCapabilities(2);
            this.mTelCapabilities.removeCapabilities(1);
            this.mAccessTechMode = -1;
        }
        boolean isVowifi = isVoWifiRegistered();
        log("Notify IMS state is " + state + ",isVowifi is " + isVowifi);
        ImsVTGlobals.reInitVtSdk(isVowifi);
        int mSubId = ImsCallProviderUtils.getSubId(this.mSub);
        Intent imsStateIntent = new Intent(IMS_SERVICE_STATE_CHANGED_ACTION);
        imsStateIntent.putExtra(IMS_STATE, state);
        imsStateIntent.putExtra(IS_VOWIFI, isVowifi);
        imsStateIntent.putExtra(IMS_STATE_CHANGE_SUBID, mSubId);
        this.mContext.sendBroadcast(imsStateIntent, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE");
        for (Map.Entry<Integer, ImsServiceCallTracker> e : this.mTrackerTable.entrySet()) {
            createFeatureCapabilityCallBackThread(e.getValue().mFeatureCapabilityListener);
        }
    }

    public void initServiceState() {
        this.mServiceState = new ImsServiceState[5];
        for (int i = 0; i < 5; i++) {
            this.mServiceState[i] = new ImsServiceState();
            this.mServiceState[i].accessTechStatus = new ImsServiceState.StatusForAccessTech[1];
            this.mServiceState[i].accessTechStatus[0] = new ImsServiceState.StatusForAccessTech();
        }
        if (IS_VOWIFI_PROP_ON) {
            bindMapconService();
            IntentFilter filter = new IntentFilter();
            filter.addAction(MAPCON_SERVICE_STARTED);
            this.mContext.registerReceiver(this.mBroadCastReceiver, filter, MAPCON_BROADCAST_PERMISSION, null);
        }
    }

    public int getServiceId(int serviceClass, PendingIntent intent, IImsRegistrationListener listener) {
        int serviceId = 0;
        if (serviceClass != 1 && serviceClass != 3) {
            serviceId = CODE_SERVICE_CLASS_NOT_SUPPORTED;
        } else {
            ImsServiceCallTracker tracker = this.mTrackerTable.get(Integer.valueOf(serviceClass));
            if (tracker == null) {
                ImsServiceCallTracker tracker2 = new ImsServiceCallTracker(serviceClass, null, this.mCi, this.mContext);
                this.mTrackerTable.put(Integer.valueOf(serviceClass), tracker2);
                this.mServiceIdTable.put(Integer.valueOf(tracker2.getServiceId()), tracker2);
            } else {
                tracker.mRegListener = listener;
            }
        }
        log("getServiceId returns " + serviceId);
        this.mCi.getImsRegistrationState(this.mHandler.obtainMessage(3));
        return serviceId;
    }

    public ImsCallProfile createCallProfile(int serviceType, int callType) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(Integer.valueOf(serviceType));
        if (tracker == null) {
            loge(" Invalid service ID - cannot create profile");
            return null;
        }
        ImsCallProfile profile = new ImsCallProfile(serviceType, callType);
        return profile;
    }

    public HwImsCallSessionImpl createCallSession(int serviceType, ImsCallProfile profile) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(Integer.valueOf(serviceType));
        if (tracker == null) {
            loge("Invalid service type - cannot create Call Session " + serviceType);
            return null;
        }
        HwImsCallSessionImpl session = tracker.createCallSession(profile);
        return session;
    }

    public void setUiTTYMode(int serviceId, int uiTtyMode, Message onComplete) {
    }

    public void registerForPhoneId(int phoneId) {
    }

    public HwImsUtImpl getUt() {
        return this.mImsUtImpl;
    }

    public HwImsConfigImpl getConfig() {
        return this.mImsConfigImpl;
    }

    public ImsRegistrationImplBase getImsRegistrationImpl() {
        return this.mImsRegistrationImpl;
    }

    public void setRegistrationListener(int serviceId, IImsRegistrationListener listener) {
        ImsServiceCallTracker tracker = this.mServiceIdTable.get(Integer.valueOf(serviceId));
        if (tracker == null) {
            loge("Invalid service Id - cannot set reg listener " + serviceId);
            return;
        }
        tracker.mRegListener = listener;
    }

    public void setIncomingListener(ImsServiceCallTracker.InComingListener listener) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.mIncomingCallListener = listener;
        }
    }

    public void setFeatureCapabilityListener(ImsServiceCallTracker.FeatureCapatilityListener listener) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.mFeatureCapabilityListener = listener;
        }
    }

    public void createImsServiceCallTracker(int serviceClass, ImsServiceCallTracker.InComingListener inComingListener, ImsServiceCallTracker.FeatureCapatilityListener featureListener) {
        log("enter createImsServiceCallTracker.  serviceClass=" + serviceClass);
        if (serviceClass != 1 && serviceClass != 3) {
            return;
        }
        ImsServiceCallTracker tracker = this.mTrackerTable.get(Integer.valueOf(serviceClass));
        if (tracker == null) {
            tracker = new ImsServiceCallTracker(serviceClass, null, this.mCi, this.mContext);
        }
        this.mTrackerTable.put(Integer.valueOf(serviceClass), tracker);
        tracker.mIncomingCallListener = inComingListener;
        tracker.mFeatureCapabilityListener = featureListener;
        this.mCi.getImsRegistrationState(this.mHandler.obtainMessage(3));
    }

    public void removeImsServiceCallTracker(int serviceClass) {
        log("enter removeImsServiceCallTracker.  serviceClass=" + serviceClass);
        if (serviceClass != 1 && serviceClass != 3) {
            return;
        }
        ImsServiceCallTracker tracker = this.mTrackerTable.get(Integer.valueOf(serviceClass));
        if (tracker == null) {
            return;
        }
        this.mTrackerTable.remove(Integer.valueOf(serviceClass));
    }

    public HwImsEcbmImpl getEcbm() {
        return this.mHwImsEcbmImpl;
    }

    public void createFeatureCapabilityCallBackThread(final ImsServiceCallTracker.FeatureCapatilityListener listener) {
        Runnable r = new Runnable() { // from class: com.huawei.ims.HwImsServiceImpl.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                    hwImsServiceImpl.log("enter createFeatureCapabilityCallBackThread.  mTelCapabilities=" + HwImsServiceImpl.this.mTelCapabilities);
                    listener.notifyCapabilitiesStatusChanged(HwImsServiceImpl.this.mTelCapabilities);
                } catch (Throwable t) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.loge(t + " createFeatureCapabilityCallBackThread()");
                }
            }
        };
        Thread t = new Thread(r, "HwImsServiceImplcreateFeatureCapabilityCallBackThread");
        t.start();
    }

    private boolean isImsExceptionRadioNotAvailable(Throwable e) {
        return e != null && (e instanceof CommandException) && ((CommandException) e).getCommandError() == CommandException.Error.RADIO_NOT_AVAILABLE;
    }

    public boolean isVolteSwitchOn() {
        Phone defPhone = getDefaultPhone();
        boolean isVolteSwitchOn = false;
        if (defPhone != null) {
            //isVolteSwitchOn = defPhone.getImsSwitch();
            isVolteSwitchOn=true;
        }
        log("Volte Switch=" + isVolteSwitchOn);
        return isVolteSwitchOn;
    }

    public void handleCalls(AsyncResult ar) {
        ArrayList<DriverImsCall> callList;
        log(">handleCalls");
        if (ar.exception == null) {
            callList = (ArrayList) ar.result;
        } else if (isImsExceptionRadioNotAvailable(ar.exception)) {
            callList = new ArrayList<>();
        } else {
            log("else???");
            return;
        }
        ArrayList<DriverImsCall> mmTelList = new ArrayList<>();
        ArrayList<DriverImsCall> csvtList = new ArrayList<>();
        boolean hasActiveVideoCall = false;
        if (callList != null) {
            int callListSize = callList.size();
            boolean hasActiveVideoCall2 = false;
            for (int i = 0; i < callListSize; i++) {
                DriverImsCall dc = callList.get(i);
                log("handleCalls: dc = " + dc);
                if (isActiveVTCall(dc)) {
                    hasActiveVideoCall2 = true;
                }
                if (dc != null && dc.imsCallProfile != null && this.mSpeechInfoCodec[0] != null) {
                    if (dc.imsCallProfile.extras != null) {
                        log("update dc imsCallProfile extras  use mSpeechInfoCodec[0] : " + this.mSpeechInfoCodec[0]);
                        ImsCallProfiles newCdetails = new ImsCallProfiles(dc.imsCallProfile);
                        newCdetails.extras = this.mSpeechInfoCodec;
                        dc.imsCallProfile.update(newCdetails);
                    } else {
                        dc.imsCallProfile.extras = this.mSpeechInfoCodec;
                    }
                }
                if (dc != null && dc.imsCallProfile != null && dc.imsCallProfile.call_domain == 1) {
                    csvtList.add(dc);
                } else if (dc != null) {
                    mmTelList.add(dc);
                }
            }
            hasActiveVideoCall = hasActiveVideoCall2;
        }
        openOrCloseLTEInfo(hasActiveVideoCall);
        setLastCallType(mmTelList, csvtList);
        handleMMTELCalls(mmTelList, csvtList);
        handleCSVTCalls(csvtList);
        isCurrentHaveCall(mmTelList, csvtList);
    }

    private void setLastCallType(ArrayList<DriverImsCall> mmTelList, ArrayList<DriverImsCall> csvtList) {
        if (csvtList.size() > 0 && mmTelList.size() > 0) {
            loge("impossible to be here, pls check");
            this.mLastCallType = -1;
        } else if (csvtList.size() > 0) {
            this.mLastCallType = 0;
        } else if (mmTelList.size() > 0) {
            this.mLastCallType = 1;
        } else {
            log("there is no new calling now");
        }
    }

    private void isCurrentHaveCall(ArrayList<DriverImsCall> mmTelList, ArrayList<DriverImsCall> csvtList) {
        if (csvtList.size() > 0 || mmTelList.size() > 0) {
            log("isCurrentHaveCall there  new calling now");
            this.mCurrentHaveCall = true;
            return;
        }
        log("isCurrentHaveCall there is no new calling now");
        this.mCurrentHaveCall = false;
        if (this.mShouldResetVTCapability) {
            setVTCapabilityToModem();
            this.mShouldResetVTCapability = false;
        }
    }

    private void handleMMTELCalls(ArrayList<DriverImsCall> mmTelList, ArrayList<DriverImsCall> csvtList) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker == null) {
            if (mmTelList.size() > 0) {
                loge("Call for non-registered service class MMTEL");
            }
        } else if (csvtList.size() == 0) {
            tracker.handleCalls(mmTelList);
        } else {
            loge("CS Call, ignore handle");
        }
    }

    private void handleCSVTCalls(ArrayList<DriverImsCall> csvtList) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(3);
        if (tracker == null) {
            if (csvtList.size() > 0) {
                loge("Call for non-registered service class CSVT");
                return;
            }
            return;
        }
        tracker.handleCalls(csvtList);
    }

    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        return tracker == null ? Collections.EMPTY_LIST : tracker.getCallSessionByState(state);
    }

    public HwImsCallSessionImpl findSessionByMediaId(int mediaId) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker == null) {
            return null;
        }
        return tracker.findSessionByMediaId(mediaId);
    }

    public int getSubscription() {
        return this.mSub;
    }

    public void addListener(IImsCallListListener listener) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.addListener(listener);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    public void removeListener(IImsCallListListener listener) {
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.removeListener(listener);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    public void handleModifyCallRequest(ImsCallAdapter.CallModify cm) {
        log("handleCallModifyRequest(" + cm + ")");
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.handleModifyCallRequest(cm);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    public void handleModifyCallResult(int[] modifyResult) {
        log("handleModifyCallResult");
        ImsServiceCallTracker tracker = this.mTrackerTable.get(1);
        if (tracker != null) {
            tracker.handleModifyCallResult(modifyResult);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class HwImsServiceImplHandler extends Handler {

        private void createRegCallBackThread(final int registrationState) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.HwImsServiceImpl.HwImsServiceImplHandler.1
                /* JADX WARN: Finally extract failed */
                @Override // java.lang.Runnable
                public void run() {
                    String imsState;
                    HwImsServiceImpl hwImsServiceImpl;
                    StringBuilder sb;
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.log("registrationState=" + registrationState + " mAccessTechMode = " + HwImsServiceImpl.this.mAccessTechMode);
                    try {
                        switch (registrationState) {
                            case 0:
                                ImsReasonInfo imsReasonInfo = new ImsReasonInfo(1000, 0, null);
                                if (HwCustUtil.isVZW) {
                                    HwCustVZWIms.cleanVZWImsRegMode(HwImsServiceImpl.this.mContext, ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
                                }
                                HwImsServiceImpl.this.mImsRegistrationImpl.onDeregistered(imsReasonInfo);
                                break;
                            case 1:
                                if (HwCustUtil.isVZW && !HwCustUtil.isVzwCard(HwImsServiceImpl.this.mImsConfigImpl.getSimOperator(), HwImsServiceImpl.this.mImsConfigImpl.getIccId())) {
                                    HwCustVZWIms.cleanVZWImsRegMode(HwImsServiceImpl.this.mContext, ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
                                }
                                HwImsServiceImpl.this.mImsRegistrationImpl.onRegistered(HwImsServiceImpl.this.mAccessTechMode);
                                break;
                            case 2:
                                HwImsServiceImpl.this.mImsRegistrationImpl.onRegistering(HwImsServiceImpl.this.mAccessTechMode);
                                break;
                        }
                        imsState = 1 == registrationState ? HwImsServiceImpl.IMS_STATE_REGISTERED : HwImsServiceImpl.IMS_STATE_UNREGISTERED;
                    } catch (Throwable t) {
                        try {
                            HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                            hwImsServiceImpl3.loge(t + " createRegCallBackThread()");
                            imsState = 1 == registrationState ? HwImsServiceImpl.IMS_STATE_REGISTERED : HwImsServiceImpl.IMS_STATE_UNREGISTERED;
                            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() && ((HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) || HwImsServiceImpl.this.mEmergencyUnderWifi)) {
                                hwImsServiceImpl = HwImsServiceImpl.this;
                                sb = new StringBuilder();
                            }
                        } catch (Throwable th) {
                            String imsState2 = 1 == registrationState ? HwImsServiceImpl.IMS_STATE_REGISTERED : HwImsServiceImpl.IMS_STATE_UNREGISTERED;
                            if (HwImsServiceImpl.this.mImsConfigImpl == null || !HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() || ((HwImsServiceImpl.this.mHandler == null || !HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) && !HwImsServiceImpl.this.mEmergencyUnderWifi)) {
                                HwImsServiceImpl.this.notifyImsState(imsState2);
                            } else {
                                HwImsServiceImpl hwImsServiceImpl4 = HwImsServiceImpl.this;
                                hwImsServiceImpl4.log("not notify ims state change, imsState:" + imsState2 + ",mEmergencyUnderWifi:" + HwImsServiceImpl.this.mEmergencyUnderWifi);
                            }
                            throw th;
                        }
                    }
                    if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() && ((HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) || HwImsServiceImpl.this.mEmergencyUnderWifi)) {
                        hwImsServiceImpl = HwImsServiceImpl.this;
                        sb = new StringBuilder();
                        sb.append("not notify ims state change, imsState:");
                        sb.append(imsState);
                        sb.append(",mEmergencyUnderWifi:");
                        sb.append(HwImsServiceImpl.this.mEmergencyUnderWifi);
                        hwImsServiceImpl.log(sb.toString());
                        return;
                    }
                    HwImsServiceImpl.this.notifyImsState(imsState);
                }
            };
            Thread t = new Thread(r, "HwImsServiceImplRegCallbackThread");
            t.start();
        }

        private void handleSuppSvc(AsyncResult ar) {
            HwImsServiceImpl.this.log("handleSuppSvc");
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleSuppSvc.");
                return;
            }
            HwImsSuppServiceNotification supp_svc_unsol = (HwImsSuppServiceNotification) ar.result;
            ImsServiceCallTracker tracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
            if (tracker == null) {
                HwImsServiceImpl.this.loge("Message for non-registered service class");
            } else {
                tracker.handleSuppSvcUnsol(supp_svc_unsol);
            }
        }
        private void handleOnHoldTone(AsyncResult ar) {
            Rlog.d(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone...");
            CarrierConfigManager cfgMgr = (CarrierConfigManager) HwImsServiceImpl.this.mContext.getSystemService(Context.CARRIER_CONFIG_SERVICE);
            if (cfgMgr == null) {
                return;
            }
            PersistableBundle b = cfgMgr.getConfigForSubId(ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
            if (b == null || !b.getBoolean(HwImsServiceImpl.KEY_SUPPORT_HOLD_TONE_BOOL)) {
                Rlog.d(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone,current carrier not support holdtone");
            } else if (ar == null) {
            } else {
                if (ar.exception == null) {
                    boolean startOnHoldLocalTone = ((Boolean) ar.result).booleanValue();
                    ImsServiceCallTracker tracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
                    if (tracker != null) {
                        tracker.handleOnHoldTone(startOnHoldLocalTone);
                        return;
                    } else {
                        Rlog.e(HwImsServiceImpl.LOG_TAG, "Message for non-registered service class");
                        return;
                    }
                }
                Rlog.e(HwImsServiceImpl.LOG_TAG, "AsyncResult exception in handleOnHoldTone.");
            }
        }

        private void handleHandover(AsyncResult ar) {
            HwImsServiceImpl.this.log("handleHandover");
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleHandover.");
                return;
            }
            ImsServiceCallTracker.HandoverInfo handover = (ImsServiceCallTracker.HandoverInfo) ar.result;
            ImsServiceCallTracker tracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
            if (tracker == null) {
                HwImsServiceImpl.this.loge("Message for non-registered service class");
            } else {
                tracker.handleHandover(handover);
            }
        }

        private boolean isSrvTypeValid(int type) {
            if (type == 0) {
                return true;
            }
            return false;
        }

        private void handleSrvStatusUpdate(ArrayList<ImsServiceState> updateList) {
            int feature;
            int updateListSize = updateList.size();
            for (int j = 0; j < updateListSize; j++) {
                ImsServiceState update = updateList.get(j);
                if (update != null && isSrvTypeValid(update.type)) {
                    if (HwImsServiceImpl.this.DBG) {
                        HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                        hwImsServiceImpl.log("type = " + update.type + " state = " + update.state + " isValid = " + update.isValid);
                    }
                    int i = 11;
                    ImsServiceState srvSt = update.type == 11 ? HwImsServiceImpl.this.mServiceState[4] : HwImsServiceImpl.this.mServiceState[update.type];
                    srvSt.isValid = update.isValid;
                    srvSt.type = update.type;
                    if (update.userdata != null) {
                        srvSt.userdata = new byte[update.userdata.length];
                        srvSt.userdata = Arrays.copyOf(update.userdata, update.userdata.length);
                    }
                    if (update.accessTechStatus != null && update.accessTechStatus.length > 0) {
                        srvSt.accessTechStatus = new ImsServiceState.StatusForAccessTech[update.accessTechStatus.length];
                        if (HwImsServiceImpl.this.DBG) {
                            HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                            hwImsServiceImpl2.log("Call Type " + srvSt.type + "has num updates = " + update.accessTechStatus.length);
                        }
                        ImsServiceState.StatusForAccessTech[] actSt = srvSt.accessTechStatus;
                        int i2 = 0;
                        while (i2 < update.accessTechStatus.length) {
                            ImsServiceState.StatusForAccessTech actUpdate = update.accessTechStatus[i2];
                            if (HwImsServiceImpl.this.DBG) {
                                HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                                hwImsServiceImpl3.log("StatusForAccessTech networkMode = " + actUpdate.networkMode + " registered = " + actUpdate.registered + " state = " + actUpdate.state + " restrictCause = " + actUpdate.restrictCause);
                            }
                            actSt[i2] = new ImsServiceState.StatusForAccessTech();
                            actSt[i2].networkMode = actUpdate.networkMode;
                            actSt[i2].registered = actUpdate.registered;
                            if (actUpdate.state == 2 && actUpdate.restrictCause != 0) {
                                actSt[i2].state = 1;
                            } else {
                                actSt[i2].state = actUpdate.state;
                            }
                            srvSt.state = actSt[i2].state;
                            actSt[i2].restrictCause = actUpdate.restrictCause;
                            boolean modeWifi = actSt[i2].networkMode == 18 || actSt[i2].networkMode == 19;
                            boolean modeLte = actSt[i2].networkMode == -1 || actSt[i2].networkMode == 14;
                            if (modeWifi || modeLte) {
                                if (update.type == 0) {
                                    feature = modeLte ? 0 : 2;
                                    HwImsServiceImpl.this.mEmergencyUnderWifi = modeWifi && actSt[i2].state == 1;
                                } else if (update.type == i) {
                                    feature = modeLte ? 4 : 5;
                                } else {
                                    feature = modeLte ? 1 : 3;
                                }
                                if (HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) {
                                    HwImsServiceImpl.this.mHandler.removeMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT);
                                    HwImsServiceImpl.this.log("remove sos pending msg!");
                                }
                                if (actSt[i2].state == 2 || actSt[i2].state == 1) {
                                    HwImsServiceImpl hwImsServiceImpl4 = HwImsServiceImpl.this;
                                    hwImsServiceImpl4.log("enabledFeature = " + feature + ", mEmergencyUnderWifi = " + HwImsServiceImpl.this.mEmergencyUnderWifi + ",getImsRegisterState() = " + HwImsServiceImpl.this.getImsRegisterState());
                                    if (modeWifi) {
                                        if (HwImsServiceImpl.this.mImsConfigImpl == null || !HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() || !HwImsServiceImpl.this.mEmergencyUnderWifi || HwImsServiceImpl.this.getImsRegisterState() != 0) {
                                            HwImsServiceImpl.this.mTelCapabilities.addCapabilities(1);
                                            notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_REGISTERED);
                                            HwImsServiceImpl.this.mAccessTechMode = 1;
                                        } else {
                                            HwImsServiceImpl.this.log("Emergency call under vowifi and ims is unregisterd, not notify vowifi state.");
                                        }
                                    } else if (modeLte) {
                                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                        HwImsServiceImpl.this.mAccessTechMode = 0;
                                        i2++;
                                        i = 11;
                                    }
                                } else if (actSt[i2].state == 0 || actSt[i2].state == 3) {
                                    HwImsServiceImpl hwImsServiceImpl5 = HwImsServiceImpl.this;
                                    hwImsServiceImpl5.log("disabledFeature = " + feature);
                                    if (modeWifi) {
                                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                    }
                                } else if (actSt[i2].state == 8 && HwImsServiceImpl.this.mHandler != null) {
                                    HwImsServiceImpl.this.log("current service status is sos pending !");
                                    Message m = HwImsServiceImpl.this.mHandler.obtainMessage(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT);
                                    HwImsServiceImpl.this.mHandler.sendMessageDelayed(m, 30000L);
                                }
                            }
                            i2++;
                            i = 11;
                        }
                    }
                }
            }
        }

        private void notifyImsVoWiFiState(String state) {
            int subId = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("Notify IMS-VoWiFi state is " + state + ", sub is " + subId);
            if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(state)) {
                HwImsServiceImpl.this.setVTCapabilityToModem();
            }
            Intent imsVoWiFiStateIntent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION);
            imsVoWiFiStateIntent.putExtra(HwImsServiceImpl.IMS_STATE, state);
            imsVoWiFiStateIntent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, subId);
            HwImsServiceImpl.this.mContext.sendBroadcast(imsVoWiFiStateIntent, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE");
            for (Map.Entry<Integer, ImsServiceCallTracker> e : HwImsServiceImpl.this.mTrackerTable.entrySet()) {
                HwImsServiceImpl.this.createFeatureCapabilityCallBackThread(e.getValue().mFeatureCapabilityListener);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("Message received: what = " + msg.what);
            int i = msg.what;
            switch (i) {
                case 1:
                    HwImsServiceImpl.this.mCi.getCurrentCalls(HwImsServiceImpl.this.mHandler.obtainMessage(7));
                    return;
                case 2:
                    HwImsServiceImpl.this.mCi.getImsRegistrationState(HwImsServiceImpl.this.mHandler.obtainMessage(3));
                    return;
                case 3:
                    handleImsStateDone(msg);
                    return;
                case 4:
                    HwImsServiceImpl.this.log("Received event: EVENT_SRV_STATUS_UPDATE");
                    AsyncResult arResult = (AsyncResult) msg.obj;
                    if (arResult == null || arResult.exception != null || arResult.result == null) {
                        HwImsServiceImpl.this.loge("IMS Service Status Update failed!");
                        HwImsServiceImpl.this.initServiceState();
                        return;
                    }
                    ArrayList<ImsServiceState> responseArray = (ArrayList) arResult.result;
                    handleSrvStatusUpdate(responseArray);
                    HwImsServiceImpl.this.getCurrentCallFromModem();
                    return;
                default:
                    switch (i) {
                        case 7:
                            AsyncResult ar = (AsyncResult) msg.obj;
                            HwImsServiceImpl.this.handleCalls(ar);
                            return;
                        case 8:
                            AsyncResult ar2 = (AsyncResult) msg.obj;
                            handleSuppSvc(ar2);
                            return;
                        default:
                            switch (i) {
                                case 12:
                                    AsyncResult ar3 = (AsyncResult) msg.obj;
                                    handleHandover(ar3);
                                    return;
                                case 13:
                                    AsyncResult ar4 = (AsyncResult) msg.obj;
                                    if (ar4 != null && ar4.result != null && ar4.exception == null) {
                                        HwImsServiceImpl.this.handleModifyCallRequest((ImsCallAdapter.CallModify) ar4.result);
                                        return;
                                    }
                                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                                    hwImsServiceImpl2.loge("Error EVENT_MODIFY_CALL AsyncResult ar= " + ar4);
                                    return;
                                default:
                                    switch (i) {
                                        case 15:
                                            if (HwImsConfigImpl.FEATURE_VOLTE_DYN) {
                                                if (HwImsServiceImpl.this.mMainSlotChange) {
                                                    HwImsServiceImpl.this.log("main slot changed, handle sim records loaded.");
                                                    HwImsServiceImpl.this.handleSimRecordsLoaded();
                                                    HwImsServiceImpl.this.mMainSlotChange = false;
                                                }
                                            } else {
                                                HwImsServiceImpl.this.handleSimRecordsLoaded();
                                            }
                                            HwImsServiceImpl.this.registerReceiverForBattery();
                                            return;
                                        case 16:
                                            HwImsServiceImpl.this.onUpdateIccAvailability();
                                            return;
                                        case 17:
                                            HwImsServiceImpl.this.handleImsGetImpuDone(msg);
                                            return;
                                        case 18:
                                            HwImsServiceImpl.this.log("EVENT_IMS_REG_FAIL_DELAY");
                                            ImsPhone imsPhone = (ImsPhone) HwImsServiceImpl.this.getImsPhone();
                                            if (!(imsPhone instanceof ImsPhone) || 1 == HwImsServiceImpl.this.mImsRegisterState) {
                                                HwImsServiceImpl.this.log("get imsphone fail, can't trigger Ims Reg Fail Event ");
                                                return;
                                            } else {
                                                boolean unused = HwImsServiceImpl.mFirstReg = !HwTelephonyFactory.getHwVolteChrManager().triggerImsRegFailEvent(imsPhone);
                                                return;
                                            }
                                        case 19:
                                            HwImsServiceImpl.this.log(" handleMessage (EVENT_IMS_SET_VT_CAPABILITY)");
                                            return;
                                        case 20:
                                            handleReadDomainName(msg);
                                            return;
                                        case 21:
                                            handleReadIsimIMPI(msg);
                                            return;
                                        default:
                                            switch (i) {
                                                case 1005:
                                                    HwImsServiceImpl.this.log("EVENT_MT_STATUS_REPORT");
                                                    AsyncResult ar5 = (AsyncResult) msg.obj;
                                                    if (ar5 != null && ar5.result != null && ar5.exception == null) {
                                                        handleMtStatusReport((MtStatusReport) ar5.result);
                                                        return;
                                                    }
                                                    HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                                                    hwImsServiceImpl3.loge("Error EVENT_MT_STATUS_REPORT AsyncResult ar= " + ar5);
                                                    return;
                                                case 1006:
                                                    HwImsServiceImpl.this.log("EVENT_MT_NEW_RING_REPORT");
                                                    AsyncResult ar6 = (AsyncResult) msg.obj;
                                                    if (ar6 != null && ar6.result != null && ar6.exception == null) {
                                                        handleMtNewRingReport((Connection) ar6.result);
                                                        return;
                                                    }
                                                    HwImsServiceImpl hwImsServiceImpl4 = HwImsServiceImpl.this;
                                                    hwImsServiceImpl4.loge("Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= " + ar6);
                                                    return;
                                                case 1007:
                                                    try {
                                                        AsyncResult ar7 = (AsyncResult) msg.obj;
                                                        Pair<Integer, Integer> drsRatPair = (Pair) ar7.result;
                                                        int dataRegState = ((Integer) drsRatPair.first).intValue();
                                                        int rilRat = ((Integer) drsRatPair.second).intValue();
                                                        HwImsServiceImpl hwImsServiceImpl5 = HwImsServiceImpl.this;
                                                        hwImsServiceImpl5.log("EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState=" + dataRegState + ", Ril RAT is " + rilRat);
                                                        handleNetworkStateChanged(dataRegState, rilRat);
                                                        return;
                                                    } catch (Exception e) {
                                                        HwImsServiceImpl.this.loge("[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail");
                                                        return;
                                                    }
                                                case 1008:
                                                    HwImsServiceImpl.this.log("EVENT_REGISTERED_TO_NETWORK");
                                                    if (HwImsServiceImpl.this.mImsUtImpl != null && HwImsServiceImpl.this.mImsUtImpl.isAirModeResetCWInModem()) {
                                                        HwImsServiceImpl.this.mImsUtImpl.queryAndSyncCallWaitingToCs();
                                                        return;
                                                    }
                                                    return;
                                                case 1009:
                                                    HwImsServiceImpl.this.log("EVENT_IMS_CS_REDIAL");
                                                    if (1 == HwImsServiceImpl.this.getImsStateBindRat()) {
                                                        HwTelephonyFactory.getHwVolteChrManager().notifyCSRedial();
                                                        return;
                                                    }
                                                    return;
                                                case HwImsServiceImpl.EVENT_SRVCC_STATE_CHANGED /* 1010 */:
                                                    HwImsServiceImpl.this.log("EVENT_SRVCC_STATE_CHANGED");
                                                    if (1 == HwImsServiceImpl.this.getImsStateBindRat()) {
                                                        AsyncResult ar8 = (AsyncResult) msg.obj;
                                                        if (ar8 == null || ar8.exception != null) {
                                                            HwImsServiceImpl.this.loge("Srvcc occurs exception.");
                                                            return;
                                                        } else {
                                                            handleSrvccStateChanged((int[]) ar8.result);
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                case HwImsServiceImpl.EVENT_UNSOl_SPEECH_INFO /* 1011 */:
                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_UNSOl_SPEECH_INFO)");
                                                    AsyncResult ar9 = (AsyncResult) msg.obj;
                                                    if (ar9 == null || ar9.result == null || ar9.exception != null) {
                                                        HwImsServiceImpl.this.loge("EVENT_UNSOl_SPEECH_INFO exception");
                                                        return;
                                                    }
                                                    int[] intResult = (int[]) ar9.result;
                                                    handleUnsolSpeechInfo(intResult[0]);
                                                    return;
                                                case HwImsServiceImpl.EVENT_UNSOl_LTE_PDCP_INFO /* 1012 */:
                                                    AsyncResult ar10 = (AsyncResult) msg.obj;
                                                    handleLtePDCPInfo(ar10);
                                                    return;
                                                case HwImsServiceImpl.EVENT_UNSOl_LTE_RRC_INFO /* 1013 */:
                                                    AsyncResult ar11 = (AsyncResult) msg.obj;
                                                    handleLteRRCInfo(ar11);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_SET_DM_PARAMETER_DONE /* 1014 */:
                                                    handleSetDMParamsDone(msg);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_GET_DM_PARAMETER_DONE /* 1015 */:
                                                    handleGetDMParamsDone(msg);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_DMCN /* 1016 */:
                                                    handleImsDMCN();
                                                    return;
                                                default:
                                                    switch (i) {
                                                        case HwImsServiceImpl.EVENT_IMS_ONHOLD_TONE /* 1100 */:
                                                            AsyncResult ar12 = (AsyncResult) msg.obj;
                                                            handleOnHoldTone(ar12);
                                                            return;
                                                        case HwImsServiceImpl.EVENT_IMS_RADIO_ON /* 1101 */:
                                                            HwImsServiceImpl.this.log("EVENT_IMS_RADIO_ON");
                                                            HwImsServiceImpl.this.setVTCapabilityToModem();
                                                            return;
                                                        default:
                                                            switch (i) {
                                                                case 23:
                                                                    handleUnsolSimNvCfgFinished(msg);
                                                                    return;
                                                                case 1003:
                                                                    AsyncResult ar13 = (AsyncResult) msg.obj;
                                                                    if (ar13 != null && ar13.result != null && ar13.exception == null) {
                                                                        HwImsServiceImpl.this.handleModifyCallResult((int[]) ar13.result);
                                                                        return;
                                                                    }
                                                                    HwImsServiceImpl hwImsServiceImpl6 = HwImsServiceImpl.this;
                                                                    hwImsServiceImpl6.loge("Error EVENT_MODIFY_RESULT AsyncResult ar= " + ar13);
                                                                    return;
                                                                case HwImsServiceImpl.EVENT_SEND_BATTERY_STATUS /* 1018 */:
                                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_SEND_BATTERY_STATUS)");
                                                                    AsyncResult ar14 = (AsyncResult) msg.obj;
                                                                    handleBatteryStatus(ar14);
                                                                    return;
                                                                case HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT /* 1020 */:
                                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)");
                                                                    HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                                                    notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                                                    return;
                                                                case HwImsServiceImpl.VT_FLOW_INFO_REPORT /* 40001 */:
                                                                    HwImsServiceImpl.this.log("VT_FLOW_INFO_REPORT");
                                                                    AsyncResult asyncresult = (AsyncResult) msg.obj;
                                                                    if (asyncresult != null) {
                                                                        long data = ((Long) asyncresult.result).longValue();
                                                                        ImsMediaProvider.getInstance().vtFlowInfoReport(HwImsServiceImpl.this.mSub, data);
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    handleExtendMethod(msg);
                                                                    return;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }

        private void handleExtendMethod(Message msg) {
            int i = msg.what;
            if (i == 22) {
                HwImsServiceImpl.this.queryCameraStatus();
                return;
            }
            switch (i) {
                case 1000:
                    handleGetDMUserData(msg);
                    return;
                case 1001:
                    handleSetSmsConfig(msg);
                    return;
                default:
                    switch (i) {
                        case HwImsServiceImpl.EVENT_UNSOl_IMS_REG_MODE /* 1102 */:
                            AsyncResult ar = (AsyncResult) msg.obj;
                            HwImsServiceImpl.this.handleImsRegMode(ar);
                            return;
                        case HwImsServiceImpl.EVENT_UNSOL_VOWIF_REG_ERR_REPORT /* 1103 */:
                            HwImsServiceImpl.this.log("handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT");
                            handleUnsolVoWiFiRegErrReport(msg);
                            return;
                        case HwImsServiceImpl.EVENT_VOWIFI_REG_ERR_REPORT /* 1104 */:
                            HwImsServiceImpl.this.log("handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing");
                            return;
                        default:
                            return;
                    }
            }
        }

        private void handleUnsolVoWiFiRegErrReport(Message msg) {
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.result != null && ar.exception == null) {
                if (ar.result instanceof VoWiFiRegErrReport) {
                    VoWiFiRegErrReport result = (VoWiFiRegErrReport) ar.result;
                    if (result.errDomain == 1) {
                        Intent voWiFiReportIntent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_ERRDOMAIN, result.errDomain);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_ERRSTAGE, result.errStage);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_FAILCAUSE, result.failCause);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_FAILSTRING, result.failString);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
                        HwImsServiceImpl.this.mContext.sendBroadcast(voWiFiReportIntent, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT");
                        return;
                    }
                    return;
                }
                Rlog.d(HwImsServiceImpl.LOG_TAG, "handleUnsolVoWiFiRegErrReport ar.result: " + ar.result);
                return;
            }
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= " + ar);
        }

        private void handleUnsolSimNvCfgFinished(Message msg) {
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleUnsolSimNvCfgFinished");
                return;
            }
            Object obj = ar.result;
            if (obj != null && (obj instanceof Integer)) {
                int result = ((Integer) obj).intValue();
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleUnsolSimNvCfgFinished: result = " + result);
                boolean needSetVolteSwitchToModem = 1 == result;
                if (needSetVolteSwitchToModem) {
                    HwImsServiceImpl.this.setVTCapabilityToModem();
                }
            }
        }

        private void handleReadDomainName(Message msg) {
            String domainName = null;
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.exception == null) {
                domainName = (String) ar.result;
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                HwImsServiceImpl.this.mImsConfigImpl.setDomainNameFromSIM(domainName);
                HwImsServiceImpl.this.mImsUtImpl.setHomeDomainName();
            }
        }

        private void handleReadIsimIMPI(Message msg) {
            String impi = null;
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.exception == null) {
                impi = (String) ar.result;
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                HwImsServiceImpl.this.mImsConfigImpl.setImpiFromSIM(impi);
                HwImsServiceImpl.this.mImsUtImpl.setImsSdkImpi();
            }
        }

        private void handleImsDMCN() {
            ComponentName component;
            HwImsServiceImpl.this.log("EVENT_IMS_DMCN ");
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            if (HwImsConfigImpl.isATT || HwCustUtil.isVZW) {
                component = new ComponentName(HwImsServiceImpl.RCS_SERVICE_PACKAGE, HwImsServiceImpl.RCS_GLOBAL_RECEIVER_CLASS);
            } else {
                component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            }
            intent.setComponent(component);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, 10);
            PackageManager pm = HwImsServiceImpl.this.mContext.getPackageManager();
            List<ResolveInfo> receivers = null;
            if (pm != null) {
                receivers = pm.queryBroadcastReceivers(intent, 0);
                HwImsServiceImpl.this.log("EVENT_IMS_DMCN, queryBroadcastReceivers done");
            }
            if (receivers != null && receivers.size() != 0) {
                HwImsServiceImpl.this.log("EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE");
                HwImsServiceImpl.this.mContext.sendBroadcast(intent);
                HwImsServiceImpl.this.mDmSyncRetryCount = 0;
                return;
            }
            HwImsServiceImpl.access$3208(HwImsServiceImpl.this);
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: " + HwImsServiceImpl.this.mDmSyncRetryCount);
            if (HwImsServiceImpl.this.mDmSyncRetryCount < 5) {
                sendEmptyMessageDelayed(HwImsServiceImpl.EVENT_IMS_DMCN, 2000L);
            }
        }

        private void handleSetSmsConfig(Message msg) {
            HwImsServiceImpl.this.log("EVENT_IMS_SET_SMS_CONFIG");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("handleSetSmsConfig fail!");
                String key = ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSub, HwImsServiceImpl.SMS_IMS_SET_VALUE);
                boolean smsImsSet = Settings.Secure.getInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 1) == 1;
                if (smsImsSet) {
                    Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 0);
                    return;
                } else {
                    Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 1);
                    return;
                }
            }
            HwImsServiceImpl.this.log("handleSetSmsConfig success! ");
        }

        private void handleGetDMUserData(Message msg) {
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null || ar.result == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("handleGetDMUserData fail!");
                return;
            }
            Settings.Secure.putString(HwImsServiceImpl.this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSub, HwImsServiceImpl.DM_USER_IMS_VALUE), (String) ar.result);
            HwImsServiceImpl.this.log("handleGetDMUserData success.");
        }

        private void handleBatteryStatus(AsyncResult ar) {
            if (ar != null && ar.exception == null) {
                HwImsServiceImpl.this.mCurrentBatteryStatus = HwImsServiceImpl.this.mNewBatteryStatus;
                return;
            }
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: " + ar);
        }

        private void handleUnsolSpeechInfo(int speechCodec) {
            if (HwImsServiceImpl.IS_AMR_WB_SHOW_HD_VOLTE) {
                HwImsServiceImpl.this.setSpeechCodec(speechCodec);
            }
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("handleUnsolSpeechInfo speechCodec = " + speechCodec);
            broadcastSpeechCodecNotification(speechCodec);
            switch (speechCodec) {
                case 1:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_NB;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_WB;
                    speechCodec = 2;
                    break;
                default:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = null;
                    break;
            }
            HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
            hwImsServiceImpl2.log("current speechInfoCodec is : " + HwImsServiceImpl.this.mSpeechInfoCodec[0]);
            Phone phone = HwImsServiceImpl.this.getDefaultPhone();
            // TODO Iceows
            if (phone != null && phone.getImsPhone() != null) {
                //phone.setSpeechInfoCodec(speechCodec);
                Context context = phone.getContext();
                //String speechInfo = phone.getSpeechInfoCodec();
                HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                //hwImsServiceImpl3.log("setAudioParameters speechInfo = " + speechInfo);
                //if (context != null && !speechInfo.equals(HwImsConfigImpl.NULL_STRING_VALUE)) {
                //    AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                //    audioManager.setParameters(speechInfo);
                //}
            }
        }

        private void broadcastSpeechCodecNotification(int speechCodec) {
            int subId = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("broadcastSpeechCodecNotification speechCodec = " + speechCodec + " for subId = " + subId);
            String pkgName = Settings.System.getString(HwImsServiceImpl.this.mContext.getContentResolver(), "EVSBroadcastReceiverPkg");
            Intent intent = new Intent(HwImsServiceImpl.AUDIO_QUALITY_SET_ACTION);
            intent.setPackage(pkgName);
            intent.putExtra(HwImsServiceImpl.AudioQualityType, speechCodec);
            intent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, subId);
            HwImsServiceImpl.this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.AUDIO_QUALITY_GET");
        }

        private void handleImsStateDone(Message msg) {
            Phone defPhone;
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar.exception != null) {
                CommandException.Error err = null;
                // TODO Iceows
                //if (ar.exception instanceof CommandException) {
                    //err = ar.exception.getCommandError();
                //}
                if (err == CommandException.Error.RADIO_NOT_AVAILABLE) {
                    HwImsServiceImpl.this.log("Radio is not available");
                    HwImsServiceImpl.this.mImsRegisterState = 0;
                    Iterator it = HwImsServiceImpl.this.mTrackerTable.entrySet().iterator();
                    while (it.hasNext()) {
                        it.next();
                        createRegCallBackThread(0);
                    }
                    return;
                }
            }
            if (ar.exception != null || !(ar.result instanceof int[]) || ((int[]) ar.result).length < 2) {
                HwImsServiceImpl.this.loge("IMS State query failed!");
                return;
            }
            int[] responseArray = (int[]) ar.result;
            int imsRegisterState = responseArray[0];
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("IMS registration state is: " + imsRegisterState);
            String imsState = HwImsServiceImpl.IMS_STATE_UNREGISTERED;
            int oldState = HwImsServiceImpl.this.mImsRegisterState;
            HwImsServiceImpl.this.setImsRegisterState(imsRegisterState);
            if (imsRegisterState != 1) {
                if (HwImsServiceImpl.IS_VOWIFI_PROP_ON) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.log("mEmergencyUnderWifi:" + HwImsServiceImpl.this.mEmergencyUnderWifi);
                    if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() && ((HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) || HwImsServiceImpl.this.mEmergencyUnderWifi)) {
                        HwImsServiceImpl.this.log("sos pending, not disable vowifi capability.");
                    } else {
                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                    }
                }
                if (HwImsServiceImpl.this.DBG) {
                    HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                    hwImsServiceImpl3.log("before check ims reg fail, mfirstReg is:" + HwImsServiceImpl.mFirstReg);
                }
                if (HwImsServiceImpl.this.isVolteSwitchOn() && (oldState == 1 || HwImsServiceImpl.mFirstReg)) {
                    HwImsServiceImpl.this.mHandler.sendMessageDelayed(HwImsServiceImpl.this.mHandler.obtainMessage(18), 70000L);
                    boolean unused = HwImsServiceImpl.mFirstReg = false;
                }
            } else {
                imsState = HwImsServiceImpl.IMS_STATE_REGISTERED;
                boolean optimize = HwImsServiceImpl.this.optimizeImsRegisterState();
                if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isImsStateFollowVoiceDomain() && optimize && (defPhone = HwImsServiceImpl.this.getDefaultPhone()) != null) {
                    ServiceState serviceState = defPhone.getServiceState();
                    // TODO Iceows
                    //int dataRegState = serviceState.getDataRegState();
                    //int rilRat = serviceState.getRilDataRadioTechnology();
                    //if (detectImsRegisterState(dataRegState, rilRat) == 0) {
                    //    imsState = HwImsServiceImpl.IMS_STATE_UNREGISTERED;
                    //}
                }
                if (oldState == 0) {
                    boolean unused2 = HwImsServiceImpl.mFirstReg = false;
                    if (HwImsServiceImpl.this.mImsConfigImpl != null && !HwImsServiceImpl.this.mImsConfigImpl.isIMPUConfigured()) {
                        HwImsServiceImpl.this.log("get IMPU from modem");
                        HwImsServiceImpl.this.mCi.getImsImpu(0, obtainMessage(17));
                    }
                    if (HwImsServiceImpl.this.mImsUtImpl != null) {
                        HwImsServiceImpl.this.mImsUtImpl.queryAndSyncCallWaitingToImsSdk();
                    }
                }
                Settings.Global.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), "volte_vt_enabled", 1);
                if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(imsState)) {
                    Settings.Global.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), HwImsServiceImpl.CARD_VOLTE_FLAG[HwImsServiceImpl.this.mSub], HwImsServiceImpl.FLAG_IS_VOLTE);
                }
            }
            boolean equals = HwImsServiceImpl.IMS_STATE_REGISTERED.equals(imsState);
            Iterator it2 = HwImsServiceImpl.this.mTrackerTable.entrySet().iterator();
            while (it2.hasNext()) {
                it2.next();
                int imsRegState = equals ? 1 : 0;
                createRegCallBackThread(imsRegState);
            }
        }

        private void hangupCallsWhenNoService() {
            ImsPhone imsPhone = (ImsPhone) HwImsServiceImpl.this.getImsPhone();
            if (!(imsPhone instanceof ImsPhone)) {
                HwImsServiceImpl.this.log("get imsphone fails.");
                return;
            }
            ImsPhone imsPhone2 = imsPhone;
            ImsPhoneCall foregroundCall = imsPhone2.getForegroundCall();
            ImsPhoneCall ringingCall = imsPhone2.getRingingCall();
            ImsPhoneCall backgroundCall = imsPhone2.getBackgroundCall();
            boolean isRingCallPresent = isCallPresent(ringingCall);
            boolean isBackgroundCallPresent = isCallPresent(backgroundCall);
            boolean isForegroundCallPresent = isCallPresent(foregroundCall);
            if (isForegroundCallPresent || isBackgroundCallPresent || isRingCallPresent) {
                HwTelephonyFactory.getHwVolteChrManager().triggerNoServiceDuringCallEvent(foregroundCall, ringingCall, backgroundCall);
            }
            if (isRingCallPresent) {
                HwImsServiceImpl.this.log("reject call since lost network.");
                try {
                    ringingCall.hangup();
                } catch (CallStateException e) {
                    HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                    hwImsServiceImpl.loge("hangup ring call fails. " + e.getMessage());
                }
            }
            if (isBackgroundCallPresent) {
                HwImsServiceImpl.this.log("hang up bg call since lost network.");
                try {
                    backgroundCall.hangup();
                } catch (CallStateException e2) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.loge("hangup bg call fails. " + e2.getMessage());
                }
            }
            if (isForegroundCallPresent) {
                HwImsServiceImpl.this.log("hang up fg call since lost network.");
                try {
                    foregroundCall.hangup();
                } catch (CallStateException e3) {
                    HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                    hwImsServiceImpl3.loge("hangup fg call fails. " + e3.getMessage());
                }
            }
        }

        private boolean isCallPresent(ImsPhoneCall call) {
            if (call != null && call.getState().isAlive()) {
                return true;
            }
            return false;
        }

        private void handleNetworkStateChanged(int dataRegState, int rilRat) {
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                boolean isDataReg = dataRegState == 0;
                HwImsServiceImpl.this.mImsUtImpl.setIsDataReg(isDataReg);
                boolean isSIMCardCheckedByUT = HwImsServiceImpl.this.mImsUtImpl.isSIMCardCheckedByUT();
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleNetworkStateChanged: isSIMCardCheckedByUT = " + isSIMCardCheckedByUT + ", isDataReg = " + isDataReg);
                if (HwImsServiceImpl.this.mImsConfigImpl.isUse403ForLocalCW() && !isSIMCardCheckedByUT && isDataReg) {
                    HwImsServiceImpl.this.mImsUtImpl.detectSimCardSubscriptionStatus();
                }
            }
            boolean optimize = HwImsServiceImpl.this.optimizeImsRegisterState();
            if (!optimize) {
                return;
            }
            if (rilRat == 0) {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("PS abnormal, rat = " + rilRat + ", reg = " + dataRegState);
                if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isHangUpWhenLostNet()) {
                    hangupCallsWhenNoService();
                }
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                int imsRegistration = detectImsRegisterState(dataRegState, rilRat);
                HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                hwImsServiceImpl3.log("After detect, ims register state is " + imsRegistration);
                if (imsRegistration == 0) {
                    Iterator it = HwImsServiceImpl.this.mTrackerTable.entrySet().iterator();
                    while (it.hasNext()) {
                        it.next();
                        createRegCallBackThread(0);
                    }
                } else if (3 == imsRegistration) {
                    HwImsServiceImpl.this.mCi.getImsRegistrationState(obtainMessage(3));
                }
            }
        }

        private void handleMtStatusReport(MtStatusReport rp) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("handleMtStatusReport(" + rp + ")");
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.loge("handleMtStatusReport: mMtStatusMgr is null");
            } else if (rp != null) {
                if (rp.call_status == 0) {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallStarted(rp.call_number)) {
                        HwImsServiceImpl.this.log("close do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(true);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addIncomingCall(rp);
                } else if (1 == rp.call_status) {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallEnded(rp.call_number)) {
                        HwImsServiceImpl.this.log("open do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(false);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addFailCall(rp);
                } else {
                    HwImsServiceImpl.this.loge("status not supported. ");
                }
            }
        }

        private int getPhoneId(Connection c) {
            Phone phone;
            Call call = c.getCall();
            if (call == null || (phone = call.getPhone()) == null) {
                return -1;
            }
            int phoneId = phone.getPhoneId();
            return phoneId;
        }

        private void handleMtNewRingReport(Connection c) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("handleMtNewRingReport(" + c + ")");
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.log("handleMtNewRingReport: mMtStatusMgr is null");
            } else if (c != null) {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("remote address: " + HiddenPrivacyInfo.putMosaic(c.getAddress(), 0));
                HwImsServiceImpl.this.mMtStatusMgr.notifyRingCall(c.getAddress(), getPhoneId(c));
            }
        }

        private int detectImsRegisterState(int dataRegState, int rilRat) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("enter detectImsRegisterState, dataRegState=" + dataRegState + ", rilRat=" + rilRat);
            if (dataRegState != 0 || rilRat != 14) {
                return 0;
            }
            return 3;
        }

        private void handleSrvccStateChanged(int[] ret) {
            HwImsServiceImpl.this.log("handleSrvccStateChanged");
            if (ret != null && ret.length != 0) {
                int state = ret[0];
                HwTelephonyFactory.getHwVolteChrManager().notifySrvccState(state);
            }
        }

        private void handleLtePDCPInfo(AsyncResult ar) {
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("LTE_PDCP_INFO report failed!");
            } else {
                handleLtePDCPInfo((int[]) ar.result);
            }
        }

        private void handleLteRRCInfo(AsyncResult ar) {
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("LTE_RRC_INFO report failed!");
            } else {
                handleLteRRCInfo((int[]) ar.result);
            }
        }

        private void handleLtePDCPInfo(int[] ret) {
            if (ret != null && ret.length == 4) {
                ImsThinClient.setBuffInfo(ret[0], ret[1], ret[2], ret[3]);
            }
        }

        private void handleLteRRCInfo(int[] ret) {
            if (ret != null && ret.length == 4) {
                ImsThinClient.setRlQualInfo(ret[0], ret[1], ret[2], ret[3]);
            }
        }

        private void handleSetDMParamsDone(Message msg) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            ComponentName component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            intent.setComponent(component);
            int cmdType = msg.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, cmdType);
            AsyncResult ar = (AsyncResult) msg.obj;
            int[] result = (ar == null || ar.result == null) ? null : (int[]) ar.result;
            if (ar != null && ar.exception == null && result != null && result.length > 0 && result[0] == 1) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleSetDMParamsDone  success!type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, 1);
            } else {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("handleSetDMParamsDone  fail!type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, -1);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }

        private void handleGetDMParamsDone(Message msg) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            ComponentName component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            intent.setComponent(component);
            int cmdType = msg.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, cmdType);
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.result != null && ar.exception == null) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleGetDMParamsDone success !type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_DATA, (String) ar.result);
            } else {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("handleGetDMParamsDone fail !type = " + cmdType);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }
    }

    public void setImsRegisterState(int state) {
        this.mImsRegisterState = state;
    }

    public int getImsRegisterState() {
        return this.mImsRegisterState;
    }

    public int getImsStateBindRat() {
        return this.mImsStateBindRat;
    }

    public void log(String msg) {
        Rlog.d("HwImsServiceImpl[" + this.mSub + "]", msg);
    }

    public void loge(String msg) {
        Rlog.e("HwImsServiceImpl[" + this.mSub + "]", msg);
    }

    protected UiccCardApplication getUiccCardApplication() {
        log("enter UiccCardApplication");
        UiccController uiccController = UiccController.getInstance();
        if (this.mContext instanceof HwImsService) {
            int phoneId = ImsCallProviderUtils.getSubId(this.mSub);
            return uiccController.getUiccCardApplication(phoneId, 1);
        }
        loge("mContext is not a HwImsService!");
        log("getUiccCardApplication fail");
        return null;
    }

    public void onUpdateIccAvailability() {
        log("enter onUpdateIccAvailability");
        try {
            UiccController uiccController = UiccController.getInstance();
            if (uiccController == null) {
                log("uiccController is null");
                return;
            }
            int phoneId = ImsCallProviderUtils.getSubId(this.mSub);
            if (uiccController.getUiccCard(phoneId) == null) {
                this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
            }
            IccCardStatus.CardState oldState = this.mCardState;
            IccCardStatus.CardState newState = getCardState();
            if (oldState != newState) {
                log("New Card State = " + newState + " Old Card State = " + oldState);
                this.mCardState = newState;
                if (oldState == IccCardStatus.CardState.CARDSTATE_PRESENT && IccCardStatus.CardState.CARDSTATE_PRESENT != newState) {
                    handleSimCardAbsent();
                }
            }
            UiccCardApplication newUiccApplication = getUiccCardApplication();
            UiccCardApplication oldUiccApplication = this.mUiccApplication.get();
            if (oldUiccApplication != newUiccApplication) {
                log("oldUiccApplication != newUiccApplication");
                if (oldUiccApplication != null) {
                    if (this.mIccRecords.get() != null) {
                        unregisterForSimRecordEvents();
                    }
                    this.mIccRecords.set(null);
                }
                if (newUiccApplication != null) {
                    log("main slot changed, handle clear.");
                    this.mMainSlotChange = true;
                    handleSimCardAbsent();
                }
                this.mUiccApplication.set(newUiccApplication);
                if (newUiccApplication != null) {
                    log("New Uicc application found");
                    this.mIccRecords.set(newUiccApplication.getIccRecords());
                    registerForSimRecordEvents();
                }
                updatePhoneBaseEvent();
            }
        } catch (Exception e) {
            loge("UiccController getInstance Exception");
        }
    }

    public IccCardStatus.CardState getCardState() {
        UiccCard uiccCard = getUiccCard();
        if (uiccCard != null) {
            return uiccCard.getCardState();
        }
        log("can't get uiccCard");
        return IccCardStatus.CardState.CARDSTATE_ABSENT;
    }

    public UiccCard getUiccCard() {
        Phone phone = getDefaultPhone();
        if (phone == null) {
            return null;
        }
        return phone.getUiccCard();
    }

    public void handleSimCardAbsent() {
        log("enter handleSimCardAbsent");
        if (this.mImsUtImpl != null) {
            this.mImsUtImpl.handleSimCardAbsent();
        }
    }

    public void setImsSmsConfig(int imsSmsConfig) {
        Settings.Secure.putInt(this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(this.mSub, SMS_IMS_SET_VALUE), imsSmsConfig);
        if (this.mCi != null) {
            this.mCi.setImsSmsConfig(imsSmsConfig, this.mHandler.obtainMessage(1001));
        }
    }

    public void getDMUSER() {
        if (this.mCi != null) {
            this.mCi.getDMUSER(this.mHandler.obtainMessage(1000));
        }
    }

    private void registerForSimRecordEvents() {
        log("enter registerForSimRecordEvents");
        IccRecords r = this.mIccRecords.get();
        if (r == null) {
            log("registerForSimRecordEvents  is null");
        } else {
            r.registerForRecordsLoaded(this.mHandler, 15, (Object) null);
        }
    }

    private void unregisterForSimRecordEvents() {
        log("enter unregisterForSimRecordEvents");
        IccRecords r = this.mIccRecords.get();
        if (r == null) {
            return;
        }
        r.unregisterForRecordsLoaded(this.mHandler);
    }

    public void handleImsGetImpuDone(Message msg) {
        log("enter handleImsGetImpuDone");
        AsyncResult arImpu = (AsyncResult) msg.obj;
        if (arImpu != null && arImpu.result != null) {
            log("get impu OK, set impu to ims sdk. ");
            if (this.mImsUtImpl != null) {
                this.mImsUtImpl.handleImsGetImpuDone((String) arImpu.result);
            }
        }
    }

    public void handleSimRecordsLoaded() {
        log("enter handleSimRecordsLoaded");
        String newImsi = getSubscriberId();
        if (isCdmaCardAndVoLTE() && this.mCi != null) {
            this.mCi.requestReadHomeDomainName(this.mHandler.obtainMessage(20));
            this.mCi.requestReadIsimIMPI(this.mHandler.obtainMessage(21));
        }
        if (this.mImsUtImpl != null) {
            this.mImsUtImpl.handleSimRecordsLoaded(newImsi);
        }
        log("leave handleSimRecordsLoaded");
    }

    public void sendSimCardType() {
        int subId = ImsCallProviderUtils.getSubId(this.mSub);
        int simState = HwTelephonyManager.getDefault().getSimState(subId == 0 ? 1 : 0);
        if (simState == 5) {
            Intent phoneTypeIntent = new Intent(IMS_SERVICE_CURRENT_PHONE_TYPE_ACTION);
            phoneTypeIntent.putExtra(String.valueOf(0), getCurrentPhoneTypeForSlot(0));
            phoneTypeIntent.putExtra(String.valueOf(1), getCurrentPhoneTypeForSlot(1));
            this.mContext.sendBroadcast(phoneTypeIntent, "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE");
        }
    }

    private int getCurrentPhoneTypeForSlot(int subId) {
        int phoneType = HwTelephonyManager.getDefault().getCurrentPhoneTypeForSlot(subId);
        log("oldPhoneType = " + phoneType);
        if (HwTelephonyManager.getDefault().isCTSimCard(subId)) {
            phoneType = 2;
        }
        log("newPhoneType = " + phoneType);
        setCardTypeToGlobalDB(subId, phoneType);
        return phoneType;
    }

    private void setCardTypeToGlobalDB(int slotId, int cardType) {
        Settings.Global.putInt(this.mContext.getContentResolver(), CARD_TYPE + "_" + slotId, cardType);
    }

    private boolean isCdmaCardAndVoLTE() {
        boolean isCdmaCard = false;
        Phone phone = getDefaultPhone();
        if (phone != null) {
            IccCardApplicationStatus.AppType type = phone.getCurrentUiccAppType();
            isCdmaCard = type == IccCardApplicationStatus.AppType.APPTYPE_CSIM;
        }
        boolean isCdmaVoLTE = ImsCallProviderUtils.isCdmaVoLTEAndISIM();
        log("isCdmaCard: " + isCdmaCard + ", isCdmaVoLTE: " + isCdmaVoLTE);
        return isCdmaCard && isCdmaVoLTE;
    }

    public void handleImsRegMode(AsyncResult ar) {
        if (HwCustUtil.isVZW && ar != null && ar.exception == null && ar.result != null) {
            int regMode = ((int[]) ar.result)[0];
            HwCustVZWIms.setVZWImsRegMode(this.mContext, regMode, ImsCallProviderUtils.getSubId(this.mSub), this.mImsConfigImpl.getSimOperator(), this.mImsConfigImpl.getIccId());
        }
    }

    public String getSubscriberId() {
        IccRecords r = this.mIccRecords.get();
        if (r != null) {
            return r.getIMSI();
        }
        return null;
    }

    public Phone getImsPhone() {
        Phone phone = getDefaultPhone();
        if (phone == null) {
            return null;
        }
        Phone imsPhone = phone.getImsPhone();
        log("getImsPhone imsPhone=" + imsPhone);
        return imsPhone;
    }

    public Phone getDefaultPhone() {
        int slotId = ImsCallProviderUtils.getSubId(this.mSub);
        try {
            Phone phone = PhoneFactory.getPhone(slotId);
            log("getDefaultPhone phone=" + phone);
            return phone;
        } catch (Exception e) {
            loge("getDefaultPhone occurs exception");
            return null;
        }
    }

    public void updatePhoneBaseEvent() {
        Phone newPhoneBase = getDefaultPhone();
        Phone oldPhoneBase = this.mPhoneBase.get();
        if (newPhoneBase != oldPhoneBase) {
            this.mPhoneBase.set(newPhoneBase);
            if (oldPhoneBase != null) {
                if (this.mImsConfigImpl != null && this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                    log("Unregister listening message of data reg state from old phone base");
                    oldPhoneBase.getServiceStateTracker().unregisterForDataRegStateOrRatChanged(this.mHandler);
                }
                oldPhoneBase.getServiceStateTracker().unregisterForNetworkAttached(this.mHandler);
                oldPhoneBase.mCi.unregisterForSrvccStateChanged(this.mHandler);
            }
            if (newPhoneBase != null) {
                if (this.mImsConfigImpl != null && this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                    log("register listening message of data reg state from new phone base");
                    newPhoneBase.getServiceStateTracker().registerForDataRegStateOrRatChanged(this.mHandler, 1007, (Object) null);
                }
                newPhoneBase.getServiceStateTracker().registerForNetworkAttached(this.mHandler, 1008, (Object) null);
                newPhoneBase.mCi.registerForSrvccStateChanged(this.mHandler, (int) EVENT_SRVCC_STATE_CHANGED, (Object) null);
            }
        }
    }

    public int getLastCallType() {
        return this.mLastCallType;
    }

    public boolean optimizeImsRegisterState() {
        if (this.mImsRegisterState == 1) {
            boolean voWiFiRegistered = isVoWifiRegistered();
            if (!IS_VOWIFI_PROP_ON || !voWiFiRegistered) {
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean isVoWifiRegistered() {
        return this.mAccessTechMode == 1 && this.mTelCapabilities.isCapable(1);
    }

    protected void bindMapconService() {
        if (IS_VOWIFI_PROP_ON) {
            ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsServiceImpl.4
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName className, IBinder service) {
                    HwImsServiceImpl.this.mMapconService = IMapconService.Stub.asInterface(service);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName className) {
                    HwImsServiceImpl.this.mMapconService = null;
                }
            };
            Intent intent = new Intent().setClassName("com.hisi.mapcon", "com.hisi.mapcon.MapconService");
            this.mContext.bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
        }
    }

    private void registerBootCompleted() {
        log("registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        if (this.mContext != null) {
            this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        }
    }

    public void moveSharePreferenceToDE() {
        String sharedPreferenceName = PreferenceManager.getDefaultSharedPreferencesName(this.mContext);
        if (SharePreferenceUtil.isNOrLater()) {
            log("moveSharePreferenceToDE");
            Context deviceContext = this.mContext.createDeviceProtectedStorageContext();
            if (!SharePreferenceUtil.moveSharedPreferencesFrom(deviceContext, this.mContext, sharedPreferenceName)) {
                loge("Failed to move shared preference");
            }
        }
    }

    public void processDMBroadcast(int type, String data) {
        log("processDMBroadcast: type = " + type);
        switch (type) {
            case 1:
                this.mCi.setDMPCSCF(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 1, -1));
                return;
            case 2:
                this.mCi.setDMDYN(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 2, -1));
                return;
            case 3:
                this.mCi.setDMTIMER(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 3, -1));
                return;
            case 4:
                this.mCi.setDMSMS(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 4, -1));
                return;
            case 5:
                this.mCi.getDMPCSCF(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 5, -1));
                return;
            case 6:
                this.mCi.getDMTIMER(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 6, -1));
                return;
            case 7:
                this.mCi.getDMDYN(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 7, -1));
                return;
            case 8:
                this.mCi.getDMSMS(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 8, -1));
                return;
            case 9:
                this.mCi.getDMUSER(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 9, -1));
                return;
            default:
                log("processDMBroadcast: invalid type! ");
                return;
        }
    }

    public void setVTCapabilityToModem() {
        if (this.mCurrentHaveCall) {
            log("the Current have a Call ,You should set the video capability when the call hangs up");
            this.mShouldResetVTCapability = true;
            return;
        }
        boolean isVtEnabledByPlatform = HwImsManager.isVtEnabledByPlatform(this.mContext, this.mSub);
        boolean isVtEnabledByUser = HwImsManager.isVtEnabledByUser(this.mContext, this.mSub);
        boolean isNonTtyOrTtyOnVolteEnabled = HwImsManager.isNonTtyOrTtyOnVolteEnabled(this.mContext, this.mSub);
        boolean isSupportVt = isVtEnabledByPlatform && isVtEnabledByUser && isNonTtyOrTtyOnVolteEnabled;
        log("setVTCapabilityToModem: isVtEnabledByPlatform = " + isVtEnabledByPlatform + ", isVtEnabledByUser = " + isVtEnabledByUser + ", isNonTtyOrTtyOnVolteEnabled = " + isNonTtyOrTtyOnVolteEnabled + ", isSupportVt = " + isSupportVt);
        this.mCi.requestSetImsVtCapability(0, isSupportVt ? 1 : 0, this.mHandler.obtainMessage(19));
        if (getEnhancedVideoFeature() != -1) {
            int videoCWCapability = getEnhancedVideoFeature() & 12;
            boolean isSupportCWCapability = videoCWCapability == 4;
            log("setVTCapabilityToModem: videoCWCapability = " + videoCWCapability + ", isSupportCWCapability = " + isSupportCWCapability);
            this.mCi.requestSetImsVtCapability(1, isSupportCWCapability ? 1 : 0, this.mHandler.obtainMessage(19));
        }
    }

    private int getEnhancedVideoFeature() {
        PersistableBundle b;
        String mValueKeyConfig;
        int valueKeyConfig = -1;
        CarrierConfigManager cfgMgr = (CarrierConfigManager) this.mContext.getSystemService(Context.CARRIER_CONFIG_SERVICE);
        int subId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if (cfgMgr != null && (b = cfgMgr.getConfigForSubId(subId)) != null && (mValueKeyConfig = b.getString(ImsVTConstants.CARRIERCONFIG_ENHANCED_VIDEO_FEATURE)) != null) {
            try {
                valueKeyConfig = Integer.parseInt(mValueKeyConfig, 2);
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        log("getEnhancedVideoFeature valueKeyConfig" + valueKeyConfig);
        return valueKeyConfig;
    }

    private boolean isActiveVTCall(DriverImsCall dc) {
        if (dc == null || dc.imsCallProfile == null) {
            return false;
        }
        int i = dc.imsCallProfile.call_type;
        ImsCallProfiles imsCallProfiles = dc.imsCallProfile;
        if (i != 3) {
            int i2 = dc.imsCallProfile.call_type;
            ImsCallProfiles imsCallProfiles2 = dc.imsCallProfile;
            if (i2 != 1) {
                int i3 = dc.imsCallProfile.call_type;
                ImsCallProfiles imsCallProfiles3 = dc.imsCallProfile;
                if (i3 != 2) {
                    return false;
                }
            }
        }
        DriverImsCall.State state = dc.state;
        DriverImsCall.State state2 = dc.state;
        return state == DriverImsCall.State.ACTIVE;
    }

    private void openOrCloseLTEInfo(boolean hasActiveVideoCall) {
        if (hasActiveVideoCall && !this.mIsReportLTEInfo) {
            queryCameraStatus();
        } else if (!hasActiveVideoCall && this.mIsReportLTEInfo) {
            requestLTEInfo(0, 100, null);
            this.mIsReportLTEInfo = false;
            this.mHandler.removeMessages(22);
            log("request close report LTE Info");
        }
    }

    public void queryCameraStatus() {
        CameraManager cameraManager = CameraManager.getInstance();
        if (cameraManager != null && cameraManager.isParamReady()) {
            executeRequestLTEInfo();
            this.mIsReportLTEInfo = true;
            return;
        }
        this.mHandler.sendEmptyMessageDelayed(22, 100L);
    }

    private void executeRequestLTEInfo() {
        int threshold = ImsThinClient.getLpdcpThreshold();
        requestLTEInfo(1, threshold, null);
        log("executeRequestLTEInfo, threshold is " + threshold);
    }

    private void requestLTEInfo(int enableReport, int threshold, Message result) {
        if (this.mCi != null) {
            this.mCi.requestGetLTEInfo(enableReport, threshold, result);
        }
    }

    public void getCurrentCallFromModem() {
        ImsServiceCallTracker tracker;
        if (this.mTrackerTable != null && ImsCallProviderUtils.isVilteEnhancementSupported() && (tracker = this.mTrackerTable.get(1)) != null && tracker.haveCall()) {
            this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
        }
    }

    public void setSpeechCodec(int speechCodec) {
        Phone imsphone = getImsPhone();
        if (imsphone == null || imsphone.getContext() == null) {
            return;
        }
        Settings.System.putInt(imsphone.getContext().getContentResolver(), OPERATOR_CUSTOMER_WB_SHOW_HD, speechCodec);
        Intent intent = new Intent("com.huawei.intent.action.SPEECH_CODEC_WB");
        intent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
        intent.putExtra("speechCodecWb", speechCodec);
        intent.putExtra(SUBSCRIPTION_KEY, ImsCallProviderUtils.getSubId(this.mSub));
        imsphone.getContext().sendBroadcast(intent);
    }

    public void changeFeatureValue(CapabilityChangeRequest.CapabilityPair cap, int value) {
        int capConverted = convertCapability(cap.getCapability(), cap.getRadioTech());
        int radioTechConverted = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(cap.getRadioTech()), -1).intValue();
        String capStr = value == 1 ? "enabled" : "disabled";
        log("changeFeatureValue - cap: " + capConverted + " radioTech: " + radioTechConverted + capStr);
        this.mImsConfigImpl.setFeatureValue(capConverted, radioTechConverted, value, null);
    }

    private int convertCapability(int capability, int radioTech) {
        if (radioTech == 0) {
            if (capability != 4) {
                switch (capability) {
                    case 1:
                        return 0;
                    case 2:
                        return 1;
                    default:
                        log("convertCapability capability not expected. capatility = " + capability);
                        return -1;
                }
            }
            return 4;
        } else if (radioTech == 1) {
            if (capability != 4) {
                switch (capability) {
                    case 1:
                        return 2;
                    case 2:
                        return 3;
                    default:
                        log("convertCapability capability not expected. capatility = " + capability);
                        return -1;
                }
            }
            return 5;
        } else {
            log("convertCapability radioTech not expected. radioTech = " + radioTech + " capability = " + capability);
            return -1;
        }
    }

    public void setVoWiFiRegErrReportEnable(int enabled) {
        this.mCi.setVoWiFiRegErrReportEnable(enabled, this.mHandler.obtainMessage(EVENT_VOWIFI_REG_ERR_REPORT));
    }
}
