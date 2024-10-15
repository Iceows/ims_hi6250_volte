package com.huawei.ims;

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
import android.os.BadParcelableException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.RemoteException;
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
import com.android.internal.telephony.Call;
import com.android.internal.telephony.CallManager;
import com.android.internal.telephony.CallStateException;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.CommandsInterface;
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
import com.huawei.ims.cust.HwCustVzwIms;
import com.huawei.ims.vt.CameraManager;
import com.huawei.ims.vt.ImsMediaProvider;
import com.huawei.ims.vt.ImsVtConstants;
import com.huawei.ims.vt.ImsVtGlobals;
import com.huawei.ims.vt.VtUtils;
import com.huawei.sci.SciSSConf;
import com.huawei.vtproxy.ImsThinClient;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsServiceImpl {
    private static final String ACTION_DMPROVIDER_TO_IMS = "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS";
    private static final String ACTION_IMS_TO_DMPROVIDER = "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE";
    private static final String ACTION_SWITCH_DUAL_CARDS_SLOT = "huawei.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT";
    private static final int AT_DMCN = 10;
    private static final String AUDIO_QUALITY_BROADCAST_PERMISSION = "com.huawei.ims.permission.AUDIO_QUALITY_GET";
    private static final String AUDIO_QUALITY_SET_ACTION = "com.huawei.intent.action.AUDIO_QUALITY_SET";
    private static final String AUDIO_QUALITY_TYPE = "AUDIO_QUALITY_TYPE";
    private static final int BATTERY_CLOSE_LEVEL = 2;
    private static final int BATTERY_LOWER_LEVEL = 5;
    private static final int BATTERY_STATUS_CLOSE = 2;
    private static final int BATTERY_STATUS_FULL = 100;
    private static final int BATTERY_STATUS_INVALID = -1;
    private static final int BATTERY_STATUS_NORMAL = 0;
    private static final int BATTERY_STATUS_REJECT = 1;
    private static final int BINARY = 2;
    private static final String CARD_TYPE = "card_type";
    private static final String CARRIER_CONFIG_CHANGE_STATE = "carrierConfigChangeState";
    private static final int CARRIER_CONFIG_STATE_LOAD = 1;
    private static final int CARRIER_CONFIG_STATE_UNKNOW = 0;
    private static final int CODE_SERVICE_CLASS_NOT_SUPPORTED = -2;
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
    private static final int EVENT_GET_CURRENT_CALLS_AND_HANGUP = 24;
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
    private static final int EVENT_SET_VONR_SWITCH_DONE = 1105;
    private static final int EVENT_SIM_RECORDS_LOADED = 15;
    protected static final int EVENT_SRVCC_STATE_CHANGED = 1010;
    private static final int EVENT_SRV_STATUS_UPDATE = 4;
    private static final int EVENT_SUPP_SRV_UPDATE = 8;
    private static final int EVENT_TTY_STATE_CHANGED = 10;
    protected static final int EVENT_UNSOL_IMS_REG_MODE = 1102;
    private static final int EVENT_UNSOL_LTE_PDCP_INFO = 1012;
    private static final int EVENT_UNSOL_LTE_RRC_INFO = 1013;
    private static final int EVENT_UNSOL_SIM_NVCFG_FINISHED = 23;
    private static final int EVENT_UNSOL_SPEECH_INFO = 1011;
    private static final int EVENT_UNSOL_VOWIF_REG_ERR_REPORT = 1103;
    private static final int EVENT_VOWIFI_REG_ERR_REPORT = 1104;
    private static final int EVENT_VOWIFI_SOS_PENDING_TIMEOUT = 1020;
    public static final int FEATURE_DISABLED = 0;
    public static final int FEATURE_ENABLED = 1;
    public static final int FEATURE_UNKNOWN = -1;
    private static final int FLAG_IS_VOLTE = 1;
    private static final String IMS_ERRDOMAIN = "errDomain";
    private static final String IMS_ERRSTAGE = "errStage";
    private static final String IMS_FAILCAUSE = "failcause";
    private static final String IMS_FAILSTRING = "failstring";
    private static final String IMS_RECEIVE_DMPROVIDER_BROADCAST_PERMISSION = "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST";
    private static final int IMS_REG_FAIL_DELAY_TIMER_LENGTH = 70000;
    private static final String IMS_RIL_RADIO_TECH = "imsRilTech";
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
    private static final int INVALID_NEGATIVE_ONE = -1;
    private static final int INVALID_VALUE_KEY = -1;
    private static final String IS_VOWIFI = "vowifi_state";
    private static final String KEY_SUPPORT_HOLD_TONE_BOOL = "support_hold_tone_bool";
    private static final int LAST_CALL_TYPE_CS = 0;
    private static final int LAST_CALL_TYPE_UNKNOWN = -1;
    private static final int LAST_CALL_TYPE_VOLTE = 1;
    private static final int LAST_CALL_TYPE_VOWIFI = 2;
    private static final int LENGTH_FOUR = 4;
    private static final int LENGTH_TWO = 2;
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
    private static final int RESULT_INVALID = -1;
    private static final int RESULT_SUCCESS = 0;
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
    private boolean mIsNrModeSa;
    private IMapconService mMapconService;
    private MtStatusManager mMtStatusMgr;
    protected int mSlotId;
    private MmTelFeature.MmTelCapabilities mTelCapabilities;
    private ImsServiceCallTracker mTracker;
    public static final boolean IS_AMR_WB_SHOW_HD_VOLTE = SystemProperties.getBoolean("ro.config.amr_wb_show_hd_volte", false);
    private static final boolean IS_SPEECH_CODEC_ADJUST = HwModemCapability.isCapabilitySupport(11);
    private static final String[] CARD_VOLTE_FLAG = {"card_volte_flag_0", "card_volte_flag_1"};
    private static final boolean IS_SUPPORT_CMCC_ENCRYPT = SystemProperties.getBoolean("ro.config.cmcc.volteencrypt", false);
    private static final boolean IS_VOWIFI_PROP_ON = ImsCallProviderUtils.isVowifiPropOn();
    private static final Map<Integer, Integer> REG_TECH_TO_NET_TYPE = new HashMap(2);
    private static final String DMUSER_DEFAULT_VALUE = null;
    private static final boolean IS_HARMONY_WATCH = "watch".equals(SystemProperties.get(ImsCallProviderUtils.PRODUCT_CHARACTERISTICS, ""));
    private static boolean sIsFirstReg = true;
    private static boolean sIsVowifiForbidden = false;
    protected AtomicReference<Phone> mPhoneBase = new AtomicReference<>();
    private AtomicReference<IccRecords> mIccRecords = new AtomicReference<>();
    private int mImsRilTech = 0;
    private AtomicReference<UiccCardApplication> mUiccApplication = new AtomicReference<>();
    private IccCardStatus.CardState mCardState = IccCardStatus.CardState.CARDSTATE_ABSENT;
    private ImsServiceState[] mServiceState = null;
    private String[] mSpeechInfoCodec = new String[1];
    private boolean mIsEmergencyUnderWifi = false;
    private boolean mIsRemoveVowifiIconFlag = false;
    private int mImsRegisterState = 0;
    private int mImsStateBindRat = 0;
    private boolean mIsResetVtCapability = false;
    private boolean mIsCurrentHaveCall = false;
    private int mLastCallType = -1;
    private boolean mIsMainSlotChange = false;
    private boolean mIsCarrierConfigChange = false;
    private boolean mIsImsStateRegBeforeCarrierConfig = false;
    private int mAccessTechMode = -1;
    private int mDmSyncRetryCount = 0;
    private boolean mIsReportLteInfo = false;
    private int mCurrentBatteryStatus = -1;
    private int mNewBatteryStatus = -1;
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HwImsServiceImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                HwImsServiceImpl.this.log("mIntentReceiver: Received Intent: intent or intent.getAction() is null");
                return;
            }
            String action = intent.getAction();
            HwImsServiceImpl.this.log("mIntentReceiver: action " + action);
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.getBooleanExtra(HwImsServiceImpl.IMS_STATE, false)) {
                    HwImsServiceImpl.this.loge("airplane mode on");
                    HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                    boolean unused = HwImsServiceImpl.sIsFirstReg = true;
                    return;
                }
                HwImsServiceImpl.this.log("airplane mode off");
                return;
            }
            if (HwImsServiceImpl.ACTION_SWITCH_DUAL_CARDS_SLOT.equals(action)) {
                HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                return;
            }
            if ("android.telephony.action.CARRIER_CONFIG_CHANGED".equals(action)) {
                HwImsServiceImpl.this.notifyCarrierConfigChanged(intent);
                return;
            }
            if ("android.intent.action.RADIO_TECHNOLOGY".equals(action)) {
                int mainSlot = ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId);
                HwImsServiceImpl.this.log("mainSlot = " + mainSlot + "intent phoneId = " + intent.getIntExtra("phone", -1));
                if (mainSlot == intent.getIntExtra("phone", -1)) {
                    HwImsServiceImpl.this.updatePhoneBaseEvent();
                    return;
                }
                return;
            }
            if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                HwImsServiceImpl.this.moveSharePreferenceToDe();
                return;
            }
            if (HwImsServiceImpl.ACTION_DMPROVIDER_TO_IMS.equals(action)) {
                try {
                    int type = intent.getIntExtra(HwImsServiceImpl.DM_IMS_TYPE, -1);
                    String data = intent.getStringExtra(HwImsServiceImpl.DM_IMS_DATA);
                    HwImsServiceImpl.this.processDmBroadcast(type, data);
                    return;
                } catch (BadParcelableException e) {
                    HwImsServiceImpl.this.loge("ACTION_DMPROVIDER_TO_IMS BadParcelableException");
                    return;
                } catch (RuntimeException e2) {
                    HwImsServiceImpl.this.loge("ACTION_DMPROVIDER_TO_IMS RuntimeException");
                    return;
                }
            }
            if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
                if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isVolteLowbatteryEndcall()) {
                    HwImsServiceImpl.this.sendBatteryStatus(intent);
                    return;
                }
                return;
            }
            if (HwImsServiceImpl.MAPCON_SERVICE_STARTED.equals(action)) {
                if (HwImsServiceImpl.this.mMapconService == null) {
                    HwImsServiceImpl.this.bindMapconService();
                    return;
                }
                return;
            }
            HwImsServiceImpl.this.log("not define action");
        }
    };

    static /* synthetic */ int access$4108(HwImsServiceImpl x0) {
        int i = x0.mDmSyncRetryCount;
        x0.mDmSyncRetryCount = i + 1;
        return i;
    }

    static {
        REG_TECH_TO_NET_TYPE.put(0, 13);
        REG_TECH_TO_NET_TYPE.put(1, 18);
    }

    public HwImsServiceImpl(int slotId, Context context) {
        this.mSlotId = -1;
        this.mCi = null;
        this.mIsNrModeSa = false;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSlotId = slotId;
        log("HwImsServiceImpl Constructor");
        this.mContext = context;
        this.mCi = new ImsRIL(this.mContext, Integer.valueOf(this.mSlotId));
        this.mHandler = new HwImsServiceImplHandler();
        this.mTelCapabilities = new MmTelFeature.MmTelCapabilities();
        if (VtUtils.isVtFlowInfo()) {
            this.mCi.registerForVtFlowInfo(this.mHandler, VT_FLOW_INFO_REPORT, null);
        }
        this.mImsConfigImpl = ImsConfigImpl.getInstance().getConfigInterface(this, this.mSlotId);
        this.mImsUtImpl = ImsUtImpl.getInstance().getUtInterface(this, this.mSlotId);
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
        this.mCi.registerForImsCsRedial(this.mHandler, 1009, null);
        if (IS_SPEECH_CODEC_ADJUST) {
            this.mCi.registerForUnsolSpeechInfo(this.mHandler, EVENT_UNSOL_SPEECH_INFO, null);
        }
        this.mCi.registerForUnsolLtePdcpInfo(this.mHandler, EVENT_UNSOL_LTE_PDCP_INFO, null);
        this.mCi.registerForUnsolLteRrcInfo(this.mHandler, EVENT_UNSOL_LTE_RRC_INFO, null);
        this.mCi.registerForSrvStatusUpdate(this.mHandler, 4, null);
        this.mCi.registerForHandoverStatusChanged(this.mHandler, 12, null);
        this.mCi.setOnSuppServiceNotification(this.mHandler, 8, null);
        this.mCi.registerForOnHoldTone(this.mHandler, EVENT_IMS_ONHOLD_TONE, null);
        if (HwCustUtil.IS_VZW) {
            this.mCi.registerForImsRegMode(this.mHandler, EVENT_UNSOL_IMS_REG_MODE, null);
        }
        this.mCi.registerForVowifiRegErrReport(this.mHandler, EVENT_UNSOL_VOWIF_REG_ERR_REPORT, null);
        initServiceState();
        this.mPhoneBase.set(null);
        updatePhoneBaseEvent();
        if (this.mPhoneBase.get() != null) {
            this.mPhoneBase.get().mCi.registerForOn(this.mHandler, EVENT_IMS_RADIO_ON, (Object) null);
            this.mPhoneBase.get().mCi.registerForUnsolNvCfgFinished(this.mHandler, 23, (Object) null);
        }
        onUpdateIccAvailability();
        try {
            UiccController uiccController = UiccController.getInstance();
            uiccController.registerForIccChanged(this.mHandler, 16, (Object) null);
        } catch (RuntimeException e) {
            loge("UiccController getInstance RuntimeException");
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.AIRPLANE_MODE");
        filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        filter.addAction(ACTION_SWITCH_DUAL_CARDS_SLOT);
        filter.addAction("android.intent.action.RADIO_TECHNOLOGY");
        if (context != null) {
            context.registerReceiver(this.mIntentReceiver, filter);
        }
        if (HwImsConfigImpl.TRUE_VALUE.equals(SystemProperties.get("ro.config.hw_support_omadm", "false"))) {
            IntentFilter intentFilter = new IntentFilter();
            filter.addAction(ACTION_DMPROVIDER_TO_IMS);
            if (context != null) {
                context.registerReceiver(this.mIntentReceiver, intentFilter, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST", null);
            }
            this.mCi.registerForImsDmcn(this.mHandler, EVENT_IMS_DMCN, null);
        }
        if (context != null) {
            initVolteEncrypt(context);
        }
        this.mIsNrModeSa = ImsCallProviderUtils.isSaModeSupported(context);
        getCurrentCallsAndHangup();
        log("HwImsServiceImpl init done");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerReceiverForBattery() {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.isVolteLowbatteryEndcall() && this.mContext != null) {
            IntentFilter filter = new IntentFilter();
            log("registerReceiverForBattery");
            filter.addAction("android.intent.action.BATTERY_CHANGED");
            this.mContext.registerReceiver(this.mIntentReceiver, filter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        int i = this.mCurrentBatteryStatus;
        int i2 = this.mNewBatteryStatus;
        if (i != i2) {
            this.mCi.sendBatteryStatus(i2, this.mHandler.obtainMessage(EVENT_SEND_BATTERY_STATUS));
        }
    }

    private void supplementImsStateBroadcastIfNeeded() {
        log("supplementImsStateBroadcastIfNeeded,mIsImsStateRegBeforeCarrierConfig=" + this.mIsImsStateRegBeforeCarrierConfig);
        if (this.mIsImsStateRegBeforeCarrierConfig) {
            log("ims has registered before receive CarrierConfig broadcast,need supplement the broadcast here");
            notifyImsState(IMS_STATE_REGISTERED);
            this.mIsImsStateRegBeforeCarrierConfig = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCarrierConfigChanged(Intent intent) {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            int intentSlotId = intent.getIntExtra("phone", 0);
            if (intentSlotId != this.mSlotId) {
                log("ACTION_CARRIER_CONFIG_CHANGED is not for this slot, return");
                return;
            }
        }
        this.mIsCarrierConfigChange = intent.getIntExtra(CARRIER_CONFIG_CHANGE_STATE, 0) == 1;
        supplementImsStateBroadcastIfNeeded();
        if (!HwImsConfigImpl.IS_FEATURE_VOLTE_DYN) {
            log("volte feature not support dyn,do nothing when receive CARRIER_CONFIG_CHANGED broadcast!");
            return;
        }
        if (this.mIsCarrierConfigChange && HwCustUtil.IS_VZW) {
            getDMUSER();
        } else if (this.mIsCarrierConfigChange) {
            setVideoCapabilityToCallTracker();
        } else {
            log("carrier config is not loaded or the card is not verizon!");
        }
        handleSimRecordsLoaded();
        loge("carrier config changed ");
        setVtCapabilityToModem();
        sendSimCardType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyImsState(String state) {
        boolean isVowifi = isVoWifiRegistered();
        if (isVowifi && this.mIsRemoveVowifiIconFlag) {
            log("IMS state,there is CS call now to keep remove vowifi icon.");
            return;
        }
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
        boolean isImsRegistered = this.mImsStateBindRat == 1;
        log("Notify IMS state is " + state + ",isVowifi is " + isVowifi + ",isImsRegistered is " + isImsRegistered + ", imsRilTech is " + this.mImsRilTech);
        if (VtUtils.isVtSupported()) {
            ImsVtGlobals.reInitVtSdk(isImsRegistered);
        }
        Intent imsStateIntent = new Intent(IMS_SERVICE_STATE_CHANGED_ACTION);
        imsStateIntent.putExtra(IMS_STATE, state);
        imsStateIntent.putExtra(IS_VOWIFI, isVowifi);
        if (this.mIsNrModeSa) {
            imsStateIntent.putExtra(IMS_RIL_RADIO_TECH, this.mImsRilTech);
        }
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        imsStateIntent.putExtra(IMS_STATE_CHANGE_SUBID, slotId);
        imsStateIntent.putExtra("slot", slotId);
        this.mContext.sendBroadcast(imsStateIntent, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE");
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker != null) {
            imsFeatureCapabilityChangeCallBack(imsServiceCallTracker.getFeatureCapabilityListener());
        }
    }

    private void initVolteEncrypt(Context context) {
        if (IS_SUPPORT_CMCC_ENCRYPT) {
            VolteEncryptCallCmdService.init(context, this);
            VolteEncryptTelephonyServiceProxy.init(context, this);
        } else {
            log("not support cmcc encrypt call.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initServiceState() {
        this.mServiceState = new ImsServiceState[5];
        for (int i = 0; i < 5; i++) {
            this.mServiceState[i] = new ImsServiceState();
            ImsServiceState[] imsServiceStateArr = this.mServiceState;
            imsServiceStateArr[i].accessTechStatus = new ImsServiceState.StatusForAccessTech[1];
            imsServiceStateArr[i].accessTechStatus[0] = new ImsServiceState.StatusForAccessTech();
        }
        if (IS_VOWIFI_PROP_ON) {
            bindMapconService();
            IntentFilter filter = new IntentFilter();
            filter.addAction(MAPCON_SERVICE_STARTED);
            this.mContext.registerReceiver(this.mIntentReceiver, filter, MAPCON_BROADCAST_PERMISSION, null);
        }
    }

    public ImsCallProfile createCallProfile(int serviceType, int callType) {
        if (this.mTracker == null) {
            loge(" No ImsServiceCallTracker - cannot create profile");
            return null;
        }
        ImsCallProfile profile = new ImsCallProfile(serviceType, callType);
        return profile;
    }

    public HwImsCallSessionImpl createCallSession(int serviceType, ImsCallProfile profile) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker == null) {
            loge("No ImsServiceCallTracker - cannot create Call Session " + serviceType);
            return null;
        }
        HwImsCallSessionImpl session = imsServiceCallTracker.createCallSession(profile);
        return session;
    }

    public void setUiTtyMode(int serviceId, int uiTtyMode, Message onComplete) {
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

    public void createImsServiceCallTracker(ImsServiceCallTracker.InComingListener inComingListener, ImsServiceCallTracker.FeatureCapabilityListener featureListener) {
        log("enter createImsServiceCallTracker.");
        if (this.mTracker == null) {
            this.mTracker = new ImsServiceCallTracker(null, this.mCi, this.mContext);
        }
        this.mTracker.setIncomingCallListener(inComingListener);
        this.mTracker.setFeatureCapabilityListener(featureListener);
        this.mCi.getImsRegistrationState(this.mHandler.obtainMessage(3));
    }

    public void removeImsServiceCallTracker() {
        log("enter removeImsServiceCallTracker.");
        this.mTracker = null;
    }

    public HwImsEcbmImpl getEcbm() {
        return this.mHwImsEcbmImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void imsFeatureCapabilityChangeCallBack(ImsServiceCallTracker.FeatureCapabilityListener listener) {
        try {
            log("imsFeatureCapabilityChangeCallBack. mTelCapabilities=" + this.mTelCapabilities);
            listener.notifyCapabilitiesStatusChanged(this.mTelCapabilities);
        } catch (Throwable th) {
            loge("imsFeatureCapabilityChangeCallBack exceptionN");
        }
    }

    private boolean isImsExceptionRadioNotAvailable(Throwable throwable) {
        return throwable != null && (throwable instanceof CommandException) && ((CommandException) throwable).getCommandError() == CommandException.Error.RADIO_NOT_AVAILABLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVolteSwitchOn() {
        Phone defPhone = getDefaultPhone();
        boolean isVolteSwitchOn = false;
        if (defPhone != null) {
            isVolteSwitchOn = defPhone.getImsSwitch();
        }
        log("Volte Switch=" + isVolteSwitchOn);
        return isVolteSwitchOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCalls(AsyncResult ar) {
        ArrayList<DriverImsCall> callList;
        DriverImsCall dc;
        log(">handleCalls");
        if (ar.exception == null && (ar.result instanceof ArrayList)) {
            callList = (ArrayList) ar.result;
        } else if (isImsExceptionRadioNotAvailable(ar.exception)) {
            callList = new ArrayList<>();
        } else {
            log("else???");
            return;
        }
        ArrayList<DriverImsCall> mmTelList = new ArrayList<>();
        ArrayList<DriverImsCall> csvtList = new ArrayList<>();
        boolean isHasActiveVideoCall = false;
        if (callList != null) {
            int callListSize = callList.size();
            for (int i = 0; i < callListSize; i++) {
                try {
                    dc = callList.get(i);
                } catch (ClassCastException e) {
                    log("handleCalls cast exception, clear dc");
                    dc = null;
                }
                log("handleCalls: dc = " + dc);
                if (isActiveVtCall(dc)) {
                    isHasActiveVideoCall = true;
                }
                if (dc != null && dc.imsCallProfile != null && this.mSpeechInfoCodec[0] != null) {
                    if (dc.imsCallProfile.extras != null) {
                        log("update dc imsCallProfile extras use mSpeechInfoCodec[0] : " + this.mSpeechInfoCodec[0]);
                        ImsCallProfiles newCdetails = new ImsCallProfiles(dc.imsCallProfile);
                        newCdetails.extras = this.mSpeechInfoCodec;
                        dc.imsCallProfile.update(newCdetails);
                    } else {
                        dc.imsCallProfile.extras = this.mSpeechInfoCodec;
                    }
                }
                if (dc != null && dc.imsCallProfile != null && dc.imsCallProfile.getCallDomain() == 1) {
                    csvtList.add(dc);
                } else if (dc != null) {
                    mmTelList.add(dc);
                    updateVideoCapability(dc);
                }
            }
        }
        processDriverImsCallsList(mmTelList);
        openOrCloseLteInfo(isHasActiveVideoCall);
        setLastCallType(mmTelList, csvtList);
        handleMmTelCalls(mmTelList, csvtList);
        handleCsVtCalls(csvtList);
        isCurrentHaveCall(mmTelList, csvtList);
    }

    private void processDriverImsCallsList(ArrayList<DriverImsCall> dcList) {
        if (dcList == null || dcList.isEmpty()) {
            return;
        }
        Collections.sort(dcList, new Comparator<DriverImsCall>() { // from class: com.huawei.ims.HwImsServiceImpl.2
            @Override // java.util.Comparator
            public int compare(DriverImsCall dc1, DriverImsCall dc2) {
                if (dc1.state == DriverImsCall.State.HOLDING && dc2.state != DriverImsCall.State.HOLDING) {
                    return -1;
                }
                return 0;
            }
        });
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
            log("isCurrentHaveCall there new calling now");
            this.mIsCurrentHaveCall = true;
            return;
        }
        log("isCurrentHaveCall there is no new calling now");
        this.mIsCurrentHaveCall = false;
        if (this.mIsResetVtCapability) {
            setVtCapabilityToModem();
            this.mIsResetVtCapability = false;
        }
    }

    private void removeVowifiIconWhenCsCall(ArrayList<DriverImsCall> csvtList) {
        if (this.mIsRemoveVowifiIconFlag) {
            return;
        }
        int dcListSize = csvtList.size();
        for (int i = 0; i < dcListSize; i++) {
            DriverImsCall dc = csvtList.get(i);
            if (dc.state == DriverImsCall.State.DIALING || dc.state == DriverImsCall.State.INCOMING) {
                if (isVoWifiRegistered() && (this.mHandler instanceof HwImsServiceImplHandler)) {
                    log("This is CS call number and will send Broadcast to remove vowifi icon.");
                    ((HwImsServiceImplHandler) this.mHandler).notifyImsVoWiFiState(IMS_STATE_UNREGISTERED);
                }
                this.mIsRemoveVowifiIconFlag = true;
                return;
            }
        }
    }

    private void recoveryVowifiIconWhenCsCall() {
        boolean isEndCallOnVowifi = this.mIsRemoveVowifiIconFlag && isVoWifiRegistered();
        this.mIsRemoveVowifiIconFlag = false;
        if (isEndCallOnVowifi && (this.mHandler instanceof HwImsServiceImplHandler)) {
            log("There is no CS call now then will send Broadcast to recovery vowifi icon.");
            ((HwImsServiceImplHandler) this.mHandler).notifyImsVoWiFiState(IMS_STATE_REGISTERED);
        }
    }

    private void handleMmTelCalls(ArrayList<DriverImsCall> mmTelList, ArrayList<DriverImsCall> csvtList) {
        if (this.mTracker == null) {
            if (mmTelList.size() > 0) {
                loge("Call for non-registered service class MMTEL");
            }
        } else if (csvtList.size() == 0) {
            this.mTracker.handleCalls(mmTelList);
        } else {
            loge("CS Call, ignore handle");
        }
    }

    private void handleCsVtCalls(ArrayList<DriverImsCall> csvtList) {
        if (csvtList.size() > 0) {
            loge("Call for non-registered service class CSVT");
        }
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.isRemoveVowifiIconUnderCsCall()) {
            if (csvtList.size() > 0) {
                removeVowifiIconWhenCsCall(csvtList);
            } else {
                recoveryVowifiIconWhenCsCall();
            }
        }
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.processPendingSessionList(csvtList);
        }
    }

    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        return imsServiceCallTracker == null ? Collections.EMPTY_LIST : imsServiceCallTracker.getCallSessionByState(state);
    }

    public int getSubscription() {
        return this.mSlotId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleModifyCallRequest(ImsCallAdapter.CallModify cm) {
        log("handleCallModifyRequest:" + cm);
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleModifyCallRequest(cm);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleModifyCallResult(int[] modifyResult) {
        log("handleModifyCallResult");
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleModifyCallResult(modifyResult);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class HwImsServiceImplHandler extends Handler {
        HwImsServiceImplHandler() {
        }

        private void imsRegStateChangeCallBack(int registrationState) {
            HwImsServiceImpl.this.log("registrationState=" + registrationState + " mAccessTechMode = " + HwImsServiceImpl.this.mAccessTechMode + ",mIsCarrierConfigChange = " + HwImsServiceImpl.this.mIsCarrierConfigChange);
            try {
                if (registrationState == 0) {
                    ImsReasonInfo imsReasonInfo = new ImsReasonInfo(1000, 0, null);
                    if (HwCustUtil.IS_VZW) {
                        HwCustVzwIms.cleanVzwImsRegMode(HwImsServiceImpl.this.mContext, ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId));
                    }
                    HwImsServiceImpl.this.mImsRegistrationImpl.onDeregistered(imsReasonInfo);
                } else if (registrationState == 1) {
                    if (HwCustUtil.IS_VZW && !HwCustUtil.isVzwCard(HwImsServiceImpl.this.mImsConfigImpl.getSimOperator(), HwImsServiceImpl.this.mImsConfigImpl.getIccId())) {
                        HwCustVzwIms.cleanVzwImsRegMode(HwImsServiceImpl.this.mContext, ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId));
                    }
                    HwImsServiceImpl.this.mImsRegistrationImpl.onRegistered(HwImsServiceImpl.this.mAccessTechMode);
                } else if (registrationState == 2) {
                    HwImsServiceImpl.this.mImsRegistrationImpl.onRegistering(HwImsServiceImpl.this.mAccessTechMode);
                }
            } catch (Throwable throwable) {
                HwImsServiceImpl.this.loge(throwable + "imsRegStateChangeCallBack()");
            }
            String imsState = registrationState == 1 ? HwImsServiceImpl.IMS_STATE_REGISTERED : HwImsServiceImpl.IMS_STATE_UNREGISTERED;
            boolean isEmergencyUnderWifi = HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi();
            boolean isMsgSosPending = (HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) || HwImsServiceImpl.this.mIsEmergencyUnderWifi;
            if (!isEmergencyUnderWifi || !isMsgSosPending) {
                if (HwImsServiceImpl.this.mIsCarrierConfigChange) {
                    HwImsServiceImpl.this.notifyImsState(imsState);
                    return;
                } else if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(imsState)) {
                    HwImsServiceImpl.this.mIsImsStateRegBeforeCarrierConfig = true;
                    HwImsServiceImpl.this.log("ims state broadcast will send when carrierconfig is ok!");
                    return;
                } else {
                    HwImsServiceImpl.this.notifyImsState(imsState);
                    HwImsServiceImpl.this.mIsImsStateRegBeforeCarrierConfig = false;
                    return;
                }
            }
            HwImsServiceImpl.this.log("not notify ims state change, imsState:" + imsState + ",mIsEmergencyUnderWifi:" + HwImsServiceImpl.this.mIsEmergencyUnderWifi);
        }

        private void handleSuppSvc(AsyncResult ar) {
            HwImsServiceImpl.this.log("handleSuppSvc");
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleSuppSvc.");
                return;
            }
            HwImsSuppServiceNotification notification = (HwImsSuppServiceNotification) ar.result;
            if (HwImsServiceImpl.this.mTracker != null) {
                HwImsServiceImpl.this.mTracker.handleSuppSvcUnsol(notification);
            } else {
                HwImsServiceImpl.this.loge("handleSuppSvc:Message for non-registered service class");
            }
        }

        private void handleOnHoldTone(AsyncResult ar) {
            Rlog.i(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone...");
            CarrierConfigManager cfgMgr = (CarrierConfigManager) HwImsServiceImpl.this.mContext.getSystemService("carrier_config");
            if (cfgMgr == null) {
                return;
            }
            int slotId = ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId);
            PersistableBundle bundle = cfgMgr.getConfigForSubId(ImsCallProviderUtils.getSubIdUsingSlotId(slotId));
            if (bundle == null || !bundle.getBoolean(HwImsServiceImpl.KEY_SUPPORT_HOLD_TONE_BOOL)) {
                Rlog.i(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone,current carrier not support holdtone");
                return;
            }
            if (ar == null) {
                return;
            }
            if (ar.exception != null) {
                Rlog.e(HwImsServiceImpl.LOG_TAG, "AsyncResult exception in handleOnHoldTone.");
                return;
            }
            boolean startOnHoldLocalTone = ((Boolean) ar.result).booleanValue();
            if (HwImsServiceImpl.this.mTracker != null) {
                HwImsServiceImpl.this.mTracker.handleOnHoldTone(startOnHoldLocalTone);
            } else {
                Rlog.e(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone:Message for non-registered service class");
            }
        }

        private void handleHandover(AsyncResult ar) {
            HwImsServiceImpl.this.log("handleHandover");
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleHandover.");
                return;
            }
            ImsServiceCallTracker.HandoverInfo handover = (ImsServiceCallTracker.HandoverInfo) ar.result;
            if (HwImsServiceImpl.this.mTracker != null) {
                HwImsServiceImpl.this.mTracker.handleHandover(handover);
            } else {
                HwImsServiceImpl.this.loge("handleHandover:Message for non-registered service class");
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
            ImsServiceState update;
            int updateListSize = updateList.size();
            for (int j = 0; j < updateListSize; j++) {
                ImsServiceState update2 = updateList.get(j);
                if (update2 != null && isSrvTypeValid(update2.type)) {
                    ImsServiceState srvSt = update2.type == 11 ? HwImsServiceImpl.this.mServiceState[4] : HwImsServiceImpl.this.mServiceState[update2.type];
                    srvSt.isValid = update2.isValid;
                    srvSt.type = update2.type;
                    if (update2.userdata != null) {
                        srvSt.userdata = new byte[update2.userdata.length];
                        srvSt.userdata = Arrays.copyOf(update2.userdata, update2.userdata.length);
                    }
                    if (update2.accessTechStatus != null && update2.accessTechStatus.length > 0) {
                        srvSt.accessTechStatus = new ImsServiceState.StatusForAccessTech[update2.accessTechStatus.length];
                        ImsServiceState.StatusForAccessTech[] actSt = srvSt.accessTechStatus;
                        int i = 0;
                        while (i < update2.accessTechStatus.length) {
                            ImsServiceState.StatusForAccessTech actUpdate = update2.accessTechStatus[i];
                            actSt[i] = new ImsServiceState.StatusForAccessTech();
                            actSt[i].networkMode = actUpdate.networkMode;
                            actSt[i].registered = actUpdate.registered;
                            if (actUpdate.state == 2 && actUpdate.restrictCause != 0) {
                                actSt[i].state = 1;
                            } else {
                                actSt[i].state = actUpdate.state;
                            }
                            srvSt.state = actSt[i].state;
                            actSt[i].restrictCause = actUpdate.restrictCause;
                            boolean isModeWifi = actSt[i].networkMode == 18 || actSt[i].networkMode == 19;
                            boolean isModeLte = actSt[i].networkMode == -1 || actSt[i].networkMode == 14;
                            boolean isModeNr = actSt[i].networkMode == 20;
                            if (isModeWifi || isModeLte || isModeNr) {
                                if (update2.type == 0) {
                                    feature = isModeLte ? 0 : 2;
                                    HwImsServiceImpl.this.mIsEmergencyUnderWifi = isModeWifi && actSt[i].state == 1;
                                } else if (update2.type == 11) {
                                    feature = isModeLte ? 4 : 5;
                                } else {
                                    feature = isModeLte ? 1 : 3;
                                }
                                if (HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) {
                                    HwImsServiceImpl.this.mHandler.removeMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT);
                                    HwImsServiceImpl.this.log("remove sos pending msg!");
                                }
                                if (actSt[i].state == 2) {
                                    update = update2;
                                } else if (actSt[i].state == 1) {
                                    update = update2;
                                } else {
                                    if (actSt[i].state == 0) {
                                        update = update2;
                                    } else if (actSt[i].state == 3) {
                                        update = update2;
                                    } else if (actSt[i].state == 8 && HwImsServiceImpl.this.mHandler != null) {
                                        HwImsServiceImpl.this.log("current service status is sos pending !");
                                        Message msg = HwImsServiceImpl.this.mHandler.obtainMessage(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT);
                                        update = update2;
                                        HwImsServiceImpl.this.mHandler.sendMessageDelayed(msg, 30000L);
                                    } else {
                                        update = update2;
                                    }
                                    HwImsServiceImpl.this.log("disabledFeature = " + feature);
                                    if (isModeWifi) {
                                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                    }
                                }
                                HwImsServiceImpl.this.log("enabledFeature = " + feature + ", mIsEmergencyUnderWifi = " + HwImsServiceImpl.this.mIsEmergencyUnderWifi + ",getImsRegisterState() = " + HwImsServiceImpl.this.getImsRegisterState());
                                if (isModeWifi) {
                                    if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() && HwImsServiceImpl.this.mIsEmergencyUnderWifi && HwImsServiceImpl.this.getImsRegisterState() == 0) {
                                        HwImsServiceImpl.this.log("Emergency call under vowifi and ims is unregisterd, not notify vowifi state.");
                                    } else {
                                        HwImsServiceImpl.this.mTelCapabilities.addCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_REGISTERED);
                                        HwImsServiceImpl.this.mAccessTechMode = 1;
                                    }
                                } else if (isModeLte) {
                                    HwImsServiceImpl.this.mTelCapabilities.addCapabilities(1);
                                    notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                    HwImsServiceImpl.this.mAccessTechMode = 0;
                                } else if (!isModeNr || !HwImsServiceImpl.this.mIsNrModeSa) {
                                    HwImsServiceImpl.this.log("Nothing to do, just log");
                                } else {
                                    HwImsServiceImpl.this.mTelCapabilities.addCapabilities(1);
                                    notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                    HwImsServiceImpl.this.mAccessTechMode = 0;
                                }
                            } else {
                                update = update2;
                            }
                            i++;
                            update2 = update;
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyImsVoWiFiState(String state) {
            if (HwImsServiceImpl.this.mIsRemoveVowifiIconFlag) {
                HwImsServiceImpl.this.log("IMS-VoWiFi state,there is CS call now to keep remove vowifi icon.");
                return;
            }
            int slotId = ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId);
            HwImsServiceImpl.this.loge("Notify IMS-VoWiFi state is " + state + ", slot is " + slotId);
            if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(state)) {
                HwImsServiceImpl.this.setVtCapabilityToModem();
            }
            Intent imsVoWiFiStateIntent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION);
            imsVoWiFiStateIntent.putExtra(HwImsServiceImpl.IMS_STATE, state);
            imsVoWiFiStateIntent.putExtra("subscription", slotId);
            imsVoWiFiStateIntent.putExtra("slot", slotId);
            HwImsServiceImpl.this.mContext.sendBroadcast(imsVoWiFiStateIntent, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE");
            if (HwImsServiceImpl.this.mTracker != null) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.imsFeatureCapabilityChangeCallBack(hwImsServiceImpl.mTracker.getFeatureCapabilityListener());
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            HwImsServiceImpl.this.log("Message received: what = " + msg.what);
            int i = msg.what;
            if (i == 1) {
                HwImsServiceImpl.this.mCi.getCurrentCalls(HwImsServiceImpl.this.mHandler.obtainMessage(7));
                return;
            }
            if (i == 2) {
                if (!HwImsServiceImpl.IS_HARMONY_WATCH || HwImsServiceImpl.this.isEuiccProvisioned()) {
                    HwImsServiceImpl.this.mCi.getImsRegistrationState(HwImsServiceImpl.this.mHandler.obtainMessage(3));
                    return;
                }
                return;
            }
            if (i == 3) {
                handleImsStateDone(msg);
                return;
            }
            if (i == 4) {
                HwImsServiceImpl.this.log("Received event: EVENT_SRV_STATUS_UPDATE");
                AsyncResult arResult = (AsyncResult) msg.obj;
                if (arResult == null || arResult.exception != null || arResult.result == null) {
                    HwImsServiceImpl.this.loge("IMS Service Status Update failed!");
                    HwImsServiceImpl.this.initServiceState();
                    return;
                } else {
                    ArrayList<ImsServiceState> responseArray = (ArrayList) arResult.result;
                    handleSrvStatusUpdate(responseArray);
                    HwImsServiceImpl.this.getCurrentCallFromModem();
                    return;
                }
            }
            if (i == 7) {
                AsyncResult ar = (AsyncResult) msg.obj;
                HwImsServiceImpl.this.handleCalls(ar);
                return;
            }
            if (i == 8) {
                AsyncResult ar2 = (AsyncResult) msg.obj;
                handleSuppSvc(ar2);
                return;
            }
            if (i == 12) {
                AsyncResult ar3 = (AsyncResult) msg.obj;
                handleHandover(ar3);
                return;
            }
            if (i == 13) {
                AsyncResult ar4 = (AsyncResult) msg.obj;
                if (ar4 != null && ar4.result != null && ar4.exception == null) {
                    HwImsServiceImpl.this.handleModifyCallRequest((ImsCallAdapter.CallModify) ar4.result);
                    return;
                }
                HwImsServiceImpl.this.loge("Error EVENT_MODIFY_CALL AsyncResult ar= " + ar4);
                return;
            }
            if (i == 23) {
                handleUnsolSimNvCfgFinished(msg);
                return;
            }
            if (i == 1003) {
                AsyncResult ar5 = (AsyncResult) msg.obj;
                if (ar5 != null && ar5.result != null && ar5.exception == null) {
                    HwImsServiceImpl.this.handleModifyCallResult((int[]) ar5.result);
                    return;
                }
                HwImsServiceImpl.this.loge("Error EVENT_MODIFY_RESULT AsyncResult ar= " + ar5);
                return;
            }
            if (i == HwImsServiceImpl.EVENT_SEND_BATTERY_STATUS) {
                HwImsServiceImpl.this.log(" handleMessage (EVENT_SEND_BATTERY_STATUS)");
                AsyncResult ar6 = (AsyncResult) msg.obj;
                handleBatteryStatus(ar6);
                return;
            }
            if (i == HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT) {
                HwImsServiceImpl.this.log(" handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)");
                HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                return;
            }
            if (i == HwImsServiceImpl.VT_FLOW_INFO_REPORT) {
                HwImsServiceImpl.this.log("VT_FLOW_INFO_REPORT");
                AsyncResult asyncresult = (AsyncResult) msg.obj;
                if (asyncresult != null) {
                    long data = ((Long) asyncresult.result).longValue();
                    ImsMediaProvider.getInstance().vtFlowInfoReport(HwImsServiceImpl.this.mSlotId, data);
                    return;
                }
                return;
            }
            if (i == HwImsServiceImpl.EVENT_IMS_ONHOLD_TONE) {
                AsyncResult ar7 = (AsyncResult) msg.obj;
                handleOnHoldTone(ar7);
                return;
            }
            if (i == HwImsServiceImpl.EVENT_IMS_RADIO_ON) {
                HwImsServiceImpl.this.log("EVENT_IMS_RADIO_ON");
                HwImsServiceImpl.this.setVtCapabilityToModem();
                return;
            }
            switch (i) {
                case 15:
                    if (HwImsConfigImpl.IS_FEATURE_VOLTE_DYN) {
                        if (HwImsServiceImpl.this.mIsMainSlotChange) {
                            HwImsServiceImpl.this.log("main slot changed, handle sim records loaded.");
                            HwImsServiceImpl.this.handleSimRecordsLoaded();
                            HwImsServiceImpl.this.mIsMainSlotChange = false;
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
                    if (!(HwImsServiceImpl.this.getImsPhone() instanceof ImsPhone) || HwImsServiceImpl.this.mImsRegisterState == 1) {
                        HwImsServiceImpl.this.log("get imsphone fail, can't trigger Ims Reg Fail Event ");
                        return;
                    } else {
                        boolean unused = HwImsServiceImpl.sIsFirstReg = !HwTelephonyFactory.getHwVolteChrManager().triggerImsRegFailEvent(r0);
                        return;
                    }
                case 19:
                    HwImsServiceImpl.this.log(" handleMessage (EVENT_IMS_SET_VT_CAPABILITY)");
                    return;
                case 20:
                    handleReadDomainName(msg);
                    return;
                case 21:
                    handleReadIsimImpi(msg);
                    return;
                default:
                    switch (i) {
                        case 1005:
                            HwImsServiceImpl.this.log("EVENT_MT_STATUS_REPORT");
                            AsyncResult ar8 = (AsyncResult) msg.obj;
                            if (ar8 != null && ar8.result != null && ar8.exception == null) {
                                handleMtStatusReport((MtStatusReport) ar8.result);
                                return;
                            }
                            HwImsServiceImpl.this.loge("Error EVENT_MT_STATUS_REPORT AsyncResult ar= " + ar8);
                            return;
                        case 1006:
                            HwImsServiceImpl.this.log("EVENT_MT_NEW_RING_REPORT");
                            AsyncResult ar9 = (AsyncResult) msg.obj;
                            if (ar9 != null && ar9.result != null && ar9.exception == null) {
                                handleMtNewRingReport((Connection) ar9.result);
                                return;
                            }
                            HwImsServiceImpl.this.loge("Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= " + ar9);
                            return;
                        case 1007:
                            try {
                                AsyncResult ar10 = (AsyncResult) msg.obj;
                                Pair<Integer, Integer> drsRatPair = (Pair) ar10.result;
                                int dataRegState = ((Integer) drsRatPair.first).intValue();
                                int rilRat = ((Integer) drsRatPair.second).intValue();
                                HwImsServiceImpl.this.log("EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState=" + dataRegState + ", Ril RAT is " + rilRat);
                                handleNetworkStateChanged(dataRegState, rilRat);
                                return;
                            } catch (Exception e) {
                                HwImsServiceImpl.this.loge("[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail");
                                return;
                            }
                        case 1008:
                            HwImsServiceImpl.this.log("EVENT_REGISTERED_TO_NETWORK");
                            if (HwImsServiceImpl.this.mImsUtImpl != null && HwImsServiceImpl.this.mImsUtImpl.isAirModeResetCwInModem()) {
                                HwImsServiceImpl.this.mImsUtImpl.queryAndSyncCallWaitingToCs();
                                return;
                            }
                            return;
                        case 1009:
                            HwImsServiceImpl.this.log("EVENT_IMS_CS_REDIAL");
                            if (HwImsServiceImpl.this.getImsStateBindRat() == 1) {
                                HwTelephonyFactory.getHwVolteChrManager().notifyCSRedial();
                                return;
                            }
                            return;
                        case HwImsServiceImpl.EVENT_SRVCC_STATE_CHANGED /* 1010 */:
                            HwImsServiceImpl.this.log("EVENT_SRVCC_STATE_CHANGED");
                            if (HwImsServiceImpl.this.getImsStateBindRat() == 1) {
                                AsyncResult ar11 = (AsyncResult) msg.obj;
                                if (ar11 == null || ar11.exception != null) {
                                    HwImsServiceImpl.this.loge("Srvcc occurs exception.");
                                    return;
                                } else {
                                    handleSrvccStateChanged((int[]) ar11.result);
                                    return;
                                }
                            }
                            return;
                        case HwImsServiceImpl.EVENT_UNSOL_SPEECH_INFO /* 1011 */:
                            HwImsServiceImpl.this.log(" handleMessage (EVENT_UNSOl_SPEECH_INFO)");
                            AsyncResult ar12 = (AsyncResult) msg.obj;
                            if (ar12 == null || ar12.result == null || ar12.exception != null) {
                                HwImsServiceImpl.this.loge("EVENT_UNSOL_SPEECH_INFO exception");
                                return;
                            } else {
                                int[] intResult = (int[]) ar12.result;
                                handleUnsolSpeechInfo(intResult[0]);
                                return;
                            }
                        case HwImsServiceImpl.EVENT_UNSOL_LTE_PDCP_INFO /* 1012 */:
                            AsyncResult ar13 = (AsyncResult) msg.obj;
                            handleLtePdcpInfo(ar13);
                            return;
                        case HwImsServiceImpl.EVENT_UNSOL_LTE_RRC_INFO /* 1013 */:
                            AsyncResult ar14 = (AsyncResult) msg.obj;
                            handleLteRrcInfo(ar14);
                            return;
                        case HwImsServiceImpl.EVENT_IMS_SET_DM_PARAMETER_DONE /* 1014 */:
                            handleSetDmParamsDone(msg);
                            return;
                        case HwImsServiceImpl.EVENT_IMS_GET_DM_PARAMETER_DONE /* 1015 */:
                            handleGetDmParamsDone(msg);
                            return;
                        case HwImsServiceImpl.EVENT_IMS_DMCN /* 1016 */:
                            handleImsDmcn();
                            return;
                        default:
                            handleExtendMethod(msg);
                            return;
                    }
            }
        }

        private void handleExtendMethod(Message msg) {
            int i = msg.what;
            if (i == 22) {
                HwImsServiceImpl.this.queryCameraStatus();
                return;
            }
            if (i == 24) {
                AsyncResult ar = (AsyncResult) msg.obj;
                HwImsServiceImpl.this.hanldeGetCurrentCallsAndHangup(ar);
                return;
            }
            if (i == 1000) {
                handleGetDmUserData(msg);
                return;
            }
            if (i != 1001) {
                switch (i) {
                    case HwImsServiceImpl.EVENT_UNSOL_IMS_REG_MODE /* 1102 */:
                        AsyncResult ar2 = (AsyncResult) msg.obj;
                        HwImsServiceImpl.this.handleImsRegMode(ar2);
                        return;
                    case HwImsServiceImpl.EVENT_UNSOL_VOWIF_REG_ERR_REPORT /* 1103 */:
                        HwImsServiceImpl.this.log("handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT");
                        handleUnsolVoWiFiRegErrReport(msg);
                        return;
                    case HwImsServiceImpl.EVENT_VOWIFI_REG_ERR_REPORT /* 1104 */:
                        HwImsServiceImpl.this.log("handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing");
                        return;
                    case HwImsServiceImpl.EVENT_SET_VONR_SWITCH_DONE /* 1105 */:
                        HwImsServiceImpl.this.handleSetVoNrSwitchDone(msg);
                        return;
                    default:
                        return;
                }
            }
            handleSetSmsConfig(msg);
        }

        private void handleUnsolVoWiFiRegErrReport(Message msg) {
            AsyncResult ar = (AsyncResult) msg.obj;
            int slotId = ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId);
            if (ar != null && ar.result != null && ar.exception == null) {
                if (ar.result instanceof ImsRegErrReport) {
                    ImsRegErrReport result = (ImsRegErrReport) ar.result;
                    if (result.getErrDomain() == 1) {
                        Intent voWiFiReportIntent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION);
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_ERRDOMAIN, result.getErrDomain());
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_ERRSTAGE, result.getErrStage());
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_FAILCAUSE, result.getFailCause());
                        voWiFiReportIntent.putExtra(HwImsServiceImpl.IMS_FAILSTRING, result.getFailString());
                        voWiFiReportIntent.putExtra("subscription", slotId);
                        HwImsServiceImpl.this.mContext.sendBroadcast(voWiFiReportIntent, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT");
                    }
                    HwImsServiceImpl.this.handleIllegalmeFailCause(result);
                    return;
                }
                Rlog.i(HwImsServiceImpl.LOG_TAG, "handleUnsolVoWiFiRegErrReport ar.result: " + ar.result);
                return;
            }
            HwImsServiceImpl.this.loge("Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= " + ar);
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
                HwImsServiceImpl.this.log("handleUnsolSimNvCfgFinished: result=" + result);
                if (result == 1) {
                    HwImsServiceImpl.this.setVtCapabilityToModem();
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
                HwImsServiceImpl.this.mImsConfigImpl.setDomainNameFromSim(domainName);
                HwImsServiceImpl.this.mImsUtImpl.setHomeDomainName();
            }
        }

        private void handleReadIsimImpi(Message msg) {
            String impi = null;
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.exception == null) {
                impi = (String) ar.result;
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                HwImsServiceImpl.this.mImsConfigImpl.setImpiFromSim(impi);
                HwImsServiceImpl.this.mImsUtImpl.setImsSdkImpi();
            }
        }

        private void handleImsDmcn() {
            ComponentName component;
            HwImsServiceImpl.this.log("EVENT_IMS_DMCN ");
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            if (HwImsConfigImpl.IS_ATT || HwCustUtil.IS_VZW) {
                component = new ComponentName(HwImsServiceImpl.RCS_SERVICE_PACKAGE, HwImsServiceImpl.RCS_GLOBAL_RECEIVER_CLASS);
            } else {
                component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            }
            intent.setComponent(component);
            intent.addFlags(268435456);
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
            HwImsServiceImpl.access$4108(HwImsServiceImpl.this);
            HwImsServiceImpl.this.log("EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: " + HwImsServiceImpl.this.mDmSyncRetryCount);
            if (HwImsServiceImpl.this.mDmSyncRetryCount < 5) {
                sendEmptyMessageDelayed(HwImsServiceImpl.EVENT_IMS_DMCN, 2000L);
            }
        }

        private void handleSetSmsConfig(Message msg) {
            HwImsServiceImpl.this.log("EVENT_IMS_SET_SMS_CONFIG");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("handleSetSmsConfig fail!");
                String key = ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSlotId, HwImsServiceImpl.SMS_IMS_SET_VALUE);
                boolean isSmsImsSet = Settings.Secure.getInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 1) == 1;
                if (isSmsImsSet) {
                    Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 0);
                    return;
                } else {
                    Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), key, 1);
                    return;
                }
            }
            HwImsServiceImpl.this.log("handleSetSmsConfig success! ");
        }

        private void handleGetDmUserData(Message msg) {
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null || ar.result == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("handleGetDmUserData fail!");
            } else {
                Settings.Secure.putString(HwImsServiceImpl.this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSlotId, HwImsServiceImpl.DM_USER_IMS_VALUE), (String) ar.result);
                HwImsServiceImpl.this.log("handleGetDmUserData success.");
            }
        }

        private void handleBatteryStatus(AsyncResult ar) {
            if (ar != null && ar.exception == null) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.mCurrentBatteryStatus = hwImsServiceImpl.mNewBatteryStatus;
                return;
            }
            HwImsServiceImpl.this.loge("Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: " + ar);
        }

        private void handleUnsolSpeechInfo(int speechCodec) {
            if (HwImsServiceImpl.IS_AMR_WB_SHOW_HD_VOLTE) {
                HwImsServiceImpl.this.setSpeechCodec(speechCodec);
            }
            HwImsServiceImpl.this.log("handleUnsolSpeechInfo speechCodec = " + speechCodec);
            broadcastSpeechCodecNotification(speechCodec);
            int tmpSpeechCodec = speechCodec;
            if (speechCodec == 1) {
                HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_NB;
            } else if (speechCodec == 2 || speechCodec == 3 || speechCodec == 4 || speechCodec == 5) {
                HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_WB;
                tmpSpeechCodec = 2;
            } else {
                HwImsServiceImpl.this.mSpeechInfoCodec[0] = null;
            }
            HwImsServiceImpl.this.log("current speechInfoCodec is : " + HwImsServiceImpl.this.mSpeechInfoCodec[0]);
            Phone phone = HwImsServiceImpl.this.getDefaultPhone();
            if (phone != null && phone.getImsPhone() != null) {
                phone.setSpeechInfoCodec(tmpSpeechCodec);
                Context context = phone.getContext();
                String speechInfo = phone.getSpeechInfoCodec();
                HwImsServiceImpl.this.log("setAudioParameters speechInfo = " + speechInfo);
                if (context != null && !"".equals(speechInfo)) {
                    AudioManager audioManager = (AudioManager) context.getSystemService(SciSSConf.MEDIA_AUDIO);
                    audioManager.setParameters(speechInfo);
                }
            }
        }

        private void broadcastSpeechCodecNotification(int speechCodec) {
            int slotId = ImsCallProviderUtils.getSlotId(HwImsServiceImpl.this.mSlotId);
            HwImsServiceImpl.this.log("broadcastSpeechCodecNotification speechCodec = " + speechCodec + " for slotId = " + slotId);
            String pkgName = Settings.System.getString(HwImsServiceImpl.this.mContext.getContentResolver(), "EVSBroadcastReceiverPkg");
            Intent intent = new Intent(HwImsServiceImpl.AUDIO_QUALITY_SET_ACTION);
            intent.setPackage(pkgName);
            intent.putExtra(HwImsServiceImpl.AUDIO_QUALITY_TYPE, speechCodec);
            intent.putExtra("subscription", slotId);
            HwImsServiceImpl.this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.AUDIO_QUALITY_GET");
        }

        private void handleImsStateDone(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult.exception != null) {
                CommandException.Error error = null;
                if (asyncResult.exception instanceof CommandException) {
                    error = asyncResult.exception.getCommandError();
                }
                if (error == CommandException.Error.RADIO_NOT_AVAILABLE) {
                    HwImsServiceImpl.this.log("Radio is not available");
                    HwImsServiceImpl.this.mImsRegisterState = 0;
                    if (HwImsServiceImpl.this.mTracker != null) {
                        imsRegStateChangeCallBack(0);
                        return;
                    }
                    return;
                }
            }
            if (asyncResult.exception != null || !(asyncResult.result instanceof int[]) || ((int[]) asyncResult.result).length < 2) {
                HwImsServiceImpl.this.loge("IMS State query failed!");
                return;
            }
            int i = ((int[]) asyncResult.result)[0];
            HwImsServiceImpl.this.loge("IMS registration state is: " + i);
            String str = HwImsServiceImpl.IMS_STATE_UNREGISTERED;
            int i2 = HwImsServiceImpl.this.mImsRegisterState;
            HwImsServiceImpl.this.setImsRegisterState(i);
            if (i == 1) {
                str = handleImsRegistered(i2);
            } else {
                handleImsNotRegistered(i2);
            }
            if (HwImsServiceImpl.this.mAccessTechMode == -1) {
                HwImsServiceImpl.this.mAccessTechMode = handleAccessRechModeByRadioRechnology();
            }
            boolean equals = HwImsServiceImpl.IMS_STATE_REGISTERED.equals(str);
            if (HwImsServiceImpl.this.mTracker != null) {
                imsRegStateChangeCallBack(equals ? 1 : 0);
            }
        }

        private void handleImsNotRegistered(int oldState) {
            if (HwImsServiceImpl.IS_VOWIFI_PROP_ON) {
                HwImsServiceImpl.this.log("mIsEmergencyUnderWifi:" + HwImsServiceImpl.this.mIsEmergencyUnderWifi);
                boolean isEmergencyUnderWifi = HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi();
                boolean isMsgSos = (HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) || HwImsServiceImpl.this.mIsEmergencyUnderWifi;
                if (!isEmergencyUnderWifi || !isMsgSos) {
                    HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                    notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                } else {
                    HwImsServiceImpl.this.log("sos pending, not disable vowifi capability.");
                }
            }
            if (HwImsServiceImpl.this.isVolteSwitchOn()) {
                if (oldState == 1 || HwImsServiceImpl.sIsFirstReg) {
                    HwImsServiceImpl.this.mHandler.sendMessageDelayed(HwImsServiceImpl.this.mHandler.obtainMessage(18), 70000L);
                    boolean unused = HwImsServiceImpl.sIsFirstReg = false;
                }
            }
        }

        private String handleImsRegistered(int oldState) {
            Phone defPhone;
            String imsState = HwImsServiceImpl.IMS_STATE_REGISTERED;
            boolean isOptimize = HwImsServiceImpl.this.optimizeImsRegisterState();
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isImsStateFollowVoiceDomain() && isOptimize && (defPhone = HwImsServiceImpl.this.getDefaultPhone()) != null) {
                ServiceState serviceState = defPhone.getServiceState();
                int dataRegState = serviceState.getDataRegState();
                int rilRat = serviceState.getRilDataRadioTechnology();
                if (detectImsRegisterState(dataRegState, rilRat) == 0) {
                    imsState = HwImsServiceImpl.IMS_STATE_UNREGISTERED;
                }
            }
            if (oldState == 0) {
                boolean unused = HwImsServiceImpl.sIsFirstReg = false;
                if (HwImsServiceImpl.this.mImsConfigImpl != null && !HwImsServiceImpl.this.mImsConfigImpl.isImpuConfigured()) {
                    HwImsServiceImpl.this.log("get IMPU from modem");
                    HwImsServiceImpl.this.mCi.getImsImpu(0, obtainMessage(17));
                }
                if (HwImsServiceImpl.this.mImsUtImpl != null) {
                    HwImsServiceImpl.this.mImsUtImpl.queryAndSyncCallWaitingToImsSdk();
                }
            }
            Settings.Global.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), "volte_vt_enabled", 1);
            if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(imsState)) {
                Settings.Global.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), HwImsServiceImpl.CARD_VOLTE_FLAG[HwImsServiceImpl.this.mSlotId], 1);
            }
            return imsState;
        }

        private void hangupCallsWhenNoService() {
            ImsPhone imsPhone = HwImsServiceImpl.this.getImsPhone();
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
                    HwImsServiceImpl.this.loge("hangup ring call fails. " + e.getMessage());
                }
            }
            if (isBackgroundCallPresent) {
                HwImsServiceImpl.this.log("hang up bg call since lost network.");
                try {
                    backgroundCall.hangup();
                } catch (CallStateException e2) {
                    HwImsServiceImpl.this.loge("hangup bg call fails. " + e2.getMessage());
                }
            }
            if (isForegroundCallPresent) {
                HwImsServiceImpl.this.log("hang up fg call since lost network.");
                try {
                    foregroundCall.hangup();
                } catch (CallStateException e3) {
                    HwImsServiceImpl.this.loge("hangup fg call fails. " + e3.getMessage());
                }
            }
        }

        private boolean isCallPresent(ImsPhoneCall call) {
            if (call != null && call.getState().isAlive()) {
                return true;
            }
            return false;
        }

        private boolean isChangeBetweenLteAndNr(int oldRilTech, int newRilTech) {
            if (oldRilTech == 20 && newRilTech == 14) {
                return true;
            }
            if (oldRilTech == 14 && newRilTech == 20) {
                return true;
            }
            return false;
        }

        private void handleNetworkStateChanged(int dataRegState, int rilRat) {
            boolean isChangedBetweenLteAndNr = false;
            if (HwImsServiceImpl.this.mIsNrModeSa && dataRegState == 0) {
                isChangedBetweenLteAndNr = isChangeBetweenLteAndNr(HwImsServiceImpl.this.mImsRilTech, rilRat);
                HwImsServiceImpl.this.mImsRilTech = rilRat;
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                boolean isDataReg = dataRegState == 0;
                HwImsServiceImpl.this.mImsUtImpl.setIsDataReg(isDataReg);
                boolean isSimCardCheckedByUt = HwImsServiceImpl.this.mImsUtImpl.isSimCardCheckedByUt();
                HwImsServiceImpl.this.log("handleNetworkStateChanged: isSimCardCheckedByUt = " + isSimCardCheckedByUt + ", isDataReg = " + isDataReg);
                if (HwImsServiceImpl.this.mImsConfigImpl.isUse403ForLocalCw() && !isSimCardCheckedByUt && isDataReg) {
                    HwImsServiceImpl.this.mImsUtImpl.detectSimCardSubscriptionStatus();
                }
            }
            if (!HwImsServiceImpl.this.optimizeImsRegisterState()) {
                return;
            }
            if (rilRat == 0) {
                HwImsServiceImpl.this.log("PS abnormal, rat = " + rilRat + ", reg = " + dataRegState);
                if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isHangUpWhenLostNet()) {
                    hangupCallsWhenNoService();
                }
            }
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                int imsRegistration = detectImsRegisterState(dataRegState, rilRat);
                HwImsServiceImpl.this.log("After detect, ims register state is " + imsRegistration);
                if (imsRegistration == 0) {
                    if (HwImsServiceImpl.this.mTracker != null) {
                        imsRegStateChangeCallBack(0);
                    }
                } else if (imsRegistration == 3) {
                    if (HwImsServiceImpl.this.mIsNrModeSa && HwImsServiceImpl.this.mIsCurrentHaveCall && isChangedBetweenLteAndNr) {
                        HwImsServiceImpl.this.mCi.getCurrentCalls(HwImsServiceImpl.this.mHandler.obtainMessage(7));
                    }
                    HwImsServiceImpl.this.mCi.getImsRegistrationState(obtainMessage(3));
                }
            }
        }

        private void handleMtStatusReport(MtStatusReport rp) {
            HwImsServiceImpl.this.log("handleMtStatusReport: " + rp);
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.loge("handleMtStatusReport: mMtStatusMgr is null");
                return;
            }
            if (rp != null) {
                if (rp.getCallStatus() == 0) {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallStarted(rp.getCallNumber())) {
                        HwImsServiceImpl.this.log("close do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(true);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addIncomingCall(rp);
                    return;
                }
                if (rp.getCallStatus() == 1) {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallEnded(rp.getCallNumber())) {
                        HwImsServiceImpl.this.log("open do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(false);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addFailCall(rp);
                    return;
                }
                HwImsServiceImpl.this.loge("status not supported. ");
            }
        }

        private int getPhoneId(Connection connection) {
            Phone phone;
            Call call = connection.getCall();
            if (call == null || (phone = call.getPhone()) == null) {
                return -1;
            }
            int phoneId = phone.getPhoneId();
            return phoneId;
        }

        private void handleMtNewRingReport(Connection connection) {
            HwImsServiceImpl.this.log("handleMtNewRingReport: " + connection);
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.log("handleMtNewRingReport: mMtStatusMgr is null");
                return;
            }
            if (connection != null) {
                HwImsServiceImpl.this.log("remote address: " + HiddenPrivacyInfo.putMosaic(connection.getAddress(), 0));
                if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallEnded(connection.getAddress())) {
                    HwImsServiceImpl.this.log("open do-recovery");
                    HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(false);
                }
                HwImsServiceImpl.this.mMtStatusMgr.notifyRingCall(connection.getAddress(), getPhoneId(connection));
            }
        }

        private int detectImsRegisterState(int dataRegState, int rilRat) {
            HwImsServiceImpl.this.log("enter detectImsRegisterState, dataRegState=" + dataRegState + ", rilRat=" + rilRat);
            if (dataRegState != 0 || !isRadioTechnologyLteOrNr(rilRat)) {
                return 0;
            }
            return 3;
        }

        private boolean isRadioTechnologyLteOrNr(int rilRat) {
            return rilRat == 14 || rilRat == 20;
        }

        private int handleAccessRechModeByRadioRechnology() {
            Phone defPhone = HwImsServiceImpl.this.getDefaultPhone();
            if (defPhone != null) {
                ServiceState serviceState = defPhone.getServiceState();
                int rilRat = serviceState.getRilDataRadioTechnology();
                return getAccessRechModeByRadioRechnology(rilRat);
            }
            return -1;
        }

        private int getAccessRechModeByRadioRechnology(int rilRat) {
            HwImsServiceImpl.this.log("enter getAccessRechModeByRadioRechnology, rilRat=" + rilRat);
            if (isRadioTechnologyLteOrNr(rilRat)) {
                return 0;
            }
            if (rilRat == 18) {
                return 1;
            }
            return -1;
        }

        private void handleSrvccStateChanged(int[] ret) {
            HwImsServiceImpl.this.log("handleSrvccStateChanged");
            if (ret != null && ret.length != 0) {
                int state = ret[0];
                HwTelephonyFactory.getHwVolteChrManager().notifySrvccState(state);
            }
        }

        private void handleLtePdcpInfo(AsyncResult ar) {
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("LTE_PDCP_INFO report failed!");
            } else {
                handleLtePdcpInfo((int[]) ar.result);
            }
        }

        private void handleLtePdcpInfo(int[] ret) {
            if (ret != null && ret.length == 4) {
                ImsThinClient.setBuffInfo(ret[0], ret[1], ret[2], ret[3]);
            }
        }

        private void handleLteRrcInfo(AsyncResult ar) {
            if (ar == null || ar.exception != null) {
                HwImsServiceImpl.this.loge("LTE_RRC_INFO report failed!");
            } else {
                handleLteRrcInfo((int[]) ar.result);
            }
        }

        private void handleLteRrcInfo(int[] ret) {
            if (ret != null && ret.length == 4) {
                ImsThinClient.setRlQualInfo(ret[0], ret[1], ret[2], ret[3]);
            }
        }

        private void handleSetDmParamsDone(Message msg) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            ComponentName component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            intent.setComponent(component);
            int cmdType = msg.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, cmdType);
            AsyncResult ar = (AsyncResult) msg.obj;
            int[] result = (ar == null || ar.result == null) ? null : (int[]) ar.result;
            boolean isResultCheck = false;
            boolean isArCheck = ar != null && ar.exception == null;
            if (result != null && result.length > 0 && result[0] == 1) {
                isResultCheck = true;
            }
            if (isArCheck && isResultCheck) {
                HwImsServiceImpl.this.log("handleSetDmParamsDone success!type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, 1);
            } else {
                HwImsServiceImpl.this.log("handleSetDmParamsDone fail!type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, -1);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }

        private void handleGetDmParamsDone(Message msg) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            ComponentName component = new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS);
            intent.setComponent(component);
            int cmdType = msg.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, cmdType);
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.result != null && ar.exception == null) {
                HwImsServiceImpl.this.log("handleGetDmParamsDone success !type = " + cmdType);
                intent.putExtra(HwImsServiceImpl.DM_IMS_DATA, (String) ar.result);
            } else {
                HwImsServiceImpl.this.log("handleGetDmParamsDone fail !type = " + cmdType);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImsRegisterState(int state) {
        this.mImsRegisterState = state;
    }

    public int getImsRegisterState() {
        return this.mImsRegisterState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getImsStateBindRat() {
        return this.mImsStateBindRat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEuiccProvisioned() {
        Context context = this.mContext;
        return (context == null || Settings.Global.getInt(context.getContentResolver(), "euicc_provisioned", 0) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String msg) {
        Rlog.i("HwImsServiceImpl[" + this.mSlotId + "]", msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String msg) {
        Rlog.e("HwImsServiceImpl[" + this.mSlotId + "]", msg);
    }

    protected UiccCardApplication getUiccCardApplication() {
        log("enter UiccCardApplication");
        UiccController uiccController = UiccController.getInstance();
        if (this.mContext instanceof HwImsService) {
            int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
            return uiccController.getUiccCardApplication(phoneId, 1);
        }
        loge("mContext is not a HwImsService!");
        log("getUiccCardApplication fail");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateIccAvailability() {
        log("enter onUpdateIccAvailability");
        try {
            UiccController uiccController = UiccController.getInstance();
            if (uiccController == null) {
                log("uiccController is null");
                return;
            }
            int phoneId = ImsCallProviderUtils.getSlotId(this.mSlotId);
            if (uiccController.getUiccCard(phoneId) == null) {
                this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
            }
            IccCardStatus.CardState oldState = this.mCardState;
            IccCardStatus.CardState newState = getCardState();
            if (oldState != newState) {
                log("New Card State = " + newState + " Old Card State = " + oldState);
                this.mCardState = newState;
                if (oldState == IccCardStatus.CardState.CARDSTATE_PRESENT && newState != IccCardStatus.CardState.CARDSTATE_PRESENT) {
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
                    this.mIsMainSlotChange = true;
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
        } catch (RuntimeException e) {
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
        HwImsUtImpl hwImsUtImpl = this.mImsUtImpl;
        if (hwImsUtImpl != null) {
            hwImsUtImpl.handleSimCardAbsent();
        }
    }

    public void setImsSmsConfig(int imsSmsConfig) {
        Settings.Secure.putInt(this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(this.mSlotId, SMS_IMS_SET_VALUE), imsSmsConfig);
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.setImsSmsConfig(imsSmsConfig, this.mHandler.obtainMessage(1001));
        }
    }

    public void getDMUSER() {
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.getDmUser(this.mHandler.obtainMessage(1000));
        }
    }

    private void registerForSimRecordEvents() {
        log("enter registerForSimRecordEvents");
        IccRecords records = this.mIccRecords.get();
        if (records == null) {
            log("registerForSimRecordEvents is null");
        } else {
            records.registerForRecordsLoaded(this.mHandler, 15, (Object) null);
        }
    }

    private void unregisterForSimRecordEvents() {
        log("enter unregisterForSimRecordEvents");
        IccRecords records = this.mIccRecords.get();
        if (records == null) {
            return;
        }
        records.unregisterForRecordsLoaded(this.mHandler);
    }

    public void handleImsGetImpuDone(Message msg) {
        log("enter handleImsGetImpuDone");
        AsyncResult arImpu = (AsyncResult) msg.obj;
        if (arImpu != null && arImpu.result != null) {
            log("get impu OK, set impu to ims sdk. ");
            HwImsUtImpl hwImsUtImpl = this.mImsUtImpl;
            if (hwImsUtImpl != null) {
                hwImsUtImpl.handleImsGetImpuDone((String) arImpu.result);
            }
        }
    }

    public void handleSimRecordsLoaded() {
        ImsRIL imsRIL;
        log("enter handleSimRecordsLoaded");
        String newImsi = getSubscriberId();
        if (isCdmaCardAndVoLte() && (imsRIL = this.mCi) != null) {
            imsRIL.requestReadHomeDomainName(this.mHandler.obtainMessage(20));
            this.mCi.requestReadIsimImpi(this.mHandler.obtainMessage(21));
        }
        HwImsUtImpl hwImsUtImpl = this.mImsUtImpl;
        if (hwImsUtImpl != null) {
            hwImsUtImpl.handleSimRecordsLoaded(newImsi);
        }
        log("leave handleSimRecordsLoaded");
    }

    private void sendSimCardType() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int simState = TelephonyManager.getDefault().getSimState(slotId == 0 ? 1 : 0);
        if (simState == 5) {
            Intent phoneTypeIntent = new Intent(IMS_SERVICE_CURRENT_PHONE_TYPE_ACTION);
            phoneTypeIntent.putExtra(String.valueOf(0), getCurrentPhoneTypeForSlot(0));
            phoneTypeIntent.putExtra(String.valueOf(1), getCurrentPhoneTypeForSlot(1));
            this.mContext.sendBroadcast(phoneTypeIntent, "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE");
        }
    }

    private int getCurrentPhoneTypeForSlot(int slotId) {
        int phoneType = TelephonyManager.getDefault().getCurrentPhoneTypeForSlot(slotId);
        log("oldPhoneType = " + phoneType);
        if (HwTelephonyManager.getDefault().isCTSimCard(slotId)) {
            phoneType = 2;
        }
        log("newPhoneType = " + phoneType);
        setCardTypeToGlobalDb(slotId, phoneType);
        return phoneType;
    }

    private void setCardTypeToGlobalDb(int slotId, int cardType) {
        Settings.Global.putInt(this.mContext.getContentResolver(), CARD_TYPE + "_" + slotId, cardType);
    }

    private boolean isCdmaCardAndVoLte() {
        boolean isCdmaCard = false;
        Phone phone = getDefaultPhone();
        if (phone != null) {
            IccCardApplicationStatus.AppType type = phone.getCurrentUiccAppType();
            isCdmaCard = type == IccCardApplicationStatus.AppType.APPTYPE_CSIM;
        }
        boolean isCdmaVoLte = ImsCallProviderUtils.isCdmaVoLteAndIsim();
        log("isCdmaCard: " + isCdmaCard + ", isCdmaVoLte: " + isCdmaVoLte);
        return isCdmaCard && isCdmaVoLte;
    }

    public void handleImsRegMode(AsyncResult ar) {
        if (HwCustUtil.IS_VZW && ar != null && ar.exception == null && ar.result != null) {
            int regMode = ((int[]) ar.result)[0];
            HwCustVzwIms.setVzwImsRegMode(this.mContext, regMode, ImsCallProviderUtils.getSlotId(this.mSlotId), this.mImsConfigImpl.getSimOperator(), this.mImsConfigImpl.getIccId());
        }
    }

    public String getSubscriberId() {
        IccRecords records = this.mIccRecords.get();
        if (records != null) {
            return records.getIMSI();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phone getImsPhone() {
        Phone phone = getDefaultPhone();
        if (phone == null) {
            return null;
        }
        Phone imsPhone = phone.getImsPhone();
        log("getImsPhone imsPhone=" + imsPhone);
        return imsPhone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phone getDefaultPhone() {
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        try {
            Phone phone = PhoneFactory.getPhone(slotId);
            log("getDefaultPhone phone=" + phone);
            return phone;
        } catch (IllegalStateException e) {
            loge("getDefaultPhone occurs IllegalStateException");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhoneBaseEvent() {
        Phone newPhoneBase = getDefaultPhone();
        Phone oldPhoneBase = this.mPhoneBase.get();
        if (newPhoneBase != oldPhoneBase) {
            this.mPhoneBase.set(newPhoneBase);
            if (oldPhoneBase != null) {
                updateOldPhoneBase(oldPhoneBase);
            }
            if (newPhoneBase != null) {
                updateNewPhoneBase(newPhoneBase);
            }
        }
    }

    private void updateNewPhoneBase(Phone newPhoneBase) {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.isImsStateFollowVoiceDomain()) {
            log("register listening message of data reg state from new phone base");
            if (newPhoneBase.getServiceStateTracker() != null && newPhoneBase.getTransportManager() != null) {
                for (int transport : newPhoneBase.getTransportManager().getAvailableTransports()) {
                    newPhoneBase.getServiceStateTracker().registerForDataRegStateOrRatChanged(transport, this.mHandler, 1007, (Object) null);
                }
            }
        }
        newPhoneBase.getServiceStateTracker().registerForNetworkAttached(this.mHandler, 1008, (Object) null);
        newPhoneBase.mCi.registerForSrvccStateChanged(this.mHandler, EVENT_SRVCC_STATE_CHANGED, (Object) null);
    }

    private void updateOldPhoneBase(Phone oldPhoneBase) {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null && hwImsConfigImpl.isImsStateFollowVoiceDomain()) {
            log("Unregister listening message of data reg state from old phone base");
            if (oldPhoneBase.getServiceStateTracker() != null && oldPhoneBase.getTransportManager() != null) {
                for (int transport : oldPhoneBase.getTransportManager().getAvailableTransports()) {
                    oldPhoneBase.getServiceStateTracker().unregisterForDataRegStateOrRatChanged(transport, this.mHandler);
                }
            }
        }
        oldPhoneBase.getServiceStateTracker().unregisterForNetworkAttached(this.mHandler);
        oldPhoneBase.mCi.unregisterForSrvccStateChanged(this.mHandler);
    }

    public int getLastCallType() {
        return this.mLastCallType;
    }

    /* JADX INFO: Access modifiers changed from: private */
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
            ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsServiceImpl.3
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
            this.mContext.bindServiceAsUser(intent, mConnection, 1, UserHandle.OWNER);
        }
    }

    private void registerBootCompleted() {
        log("registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        Context context = this.mContext;
        if (context != null) {
            context.registerReceiver(this.mIntentReceiver, intentFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveSharePreferenceToDe() {
        String sharedPreferenceName = PreferenceManager.getDefaultSharedPreferencesName(this.mContext);
        if (SharePreferenceUtil.isVersionHigherThanM()) {
            log("moveSharePreferenceToDe");
            Context deviceContext = this.mContext.createDeviceProtectedStorageContext();
            if (!SharePreferenceUtil.moveSharedPreferencesFrom(deviceContext, this.mContext, sharedPreferenceName)) {
                loge("Failed to move shared preference");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDmBroadcast(int type, String data) {
        log("processDmBroadcast: type = " + type);
        switch (type) {
            case 1:
                this.mCi.setDmPcscf(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 1, -1));
                return;
            case 2:
                this.mCi.setDmDyn(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 2, -1));
                return;
            case 3:
                this.mCi.setDmTimer(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 3, -1));
                return;
            case 4:
                this.mCi.setDmSms(data, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 4, -1));
                return;
            case 5:
                this.mCi.getDmPcscf(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 5, -1));
                return;
            case 6:
                this.mCi.getDmTimer(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 6, -1));
                return;
            case 7:
                this.mCi.getDmDyn(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 7, -1));
                return;
            case 8:
                this.mCi.getDmSms(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 8, -1));
                return;
            case 9:
                this.mCi.getDmUser(this.mHandler.obtainMessage(EVENT_IMS_GET_DM_PARAMETER_DONE, 9, -1));
                return;
            default:
                log("processDmBroadcast: invalid type! ");
                return;
        }
    }

    private boolean isSupportViLte() {
        boolean isVtEnabledByPlatform = HwImsManager.isVtEnabledByPlatform(this.mContext, this.mSlotId);
        boolean isVtEnabledByUser = HwImsManager.isVtEnabledByUser(this.mContext, this.mSlotId);
        boolean isNonTtyOrTtyOnVolteEnabled = HwImsManager.isNonTtyOrTtyOnVolteEnabled(this.mContext, this.mSlotId);
        boolean isSupportVt = isVtEnabledByPlatform && isVtEnabledByUser && isNonTtyOrTtyOnVolteEnabled;
        log("isSupportVt: isVtEnabledByPlatform = " + isVtEnabledByPlatform + ", isVtEnabledByUser = " + isVtEnabledByUser + ", isNonTtyOrTtyOnVolteEnabled = " + isNonTtyOrTtyOnVolteEnabled + ", isSupportVt = " + isSupportVt);
        return isSupportVt;
    }

    private void setVideoCapabilityToCallTracker() {
        if (this.mTracker != null) {
            boolean isSupportVt = isSupportViLte();
            this.mTracker.updateVtCapability(isSupportVt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVtCapabilityToModem() {
        if (this.mIsCurrentHaveCall) {
            log("the Current have Call ,You should set the video capability when the call hangs up");
            this.mIsResetVtCapability = true;
            return;
        }
        this.mCi.requestSetImsVtCapability(0, isSupportViLte() ? 1 : 0, this.mHandler.obtainMessage(19));
        if (getEnhancedVideoFeature() != -1) {
            int enhancedVideoFeature = getEnhancedVideoFeature() & 12;
            boolean z = enhancedVideoFeature == 4;
            log("setVTCapabilityToModem: videoCwCapability = " + enhancedVideoFeature + ", isSupportCwCapability = " + z);
            this.mCi.requestSetImsVtCapability(1, z ? 1 : 0, this.mHandler.obtainMessage(19));
        }
    }

    private int getEnhancedVideoFeature() {
        PersistableBundle bundle;
        String mValueKeyConfig;
        int valueKeyConfig = -1;
        CarrierConfigManager cfgMgr = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        int subId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if (cfgMgr != null && (bundle = cfgMgr.getConfigForSubId(ImsCallProviderUtils.getSubIdUsingSlotId(subId))) != null && (mValueKeyConfig = bundle.getString(ImsVtConstants.CARRIERCONFIG_ENHANCED_VIDEO_FEATURE)) != null) {
            try {
                valueKeyConfig = Integer.parseInt(mValueKeyConfig, 2);
            } catch (NumberFormatException e) {
                return -1;
            }
        }
        log("getEnhancedVideoFeature valueKeyConfig" + valueKeyConfig);
        return valueKeyConfig;
    }

    private boolean isActiveVtCall(DriverImsCall dc) {
        if (dc == null || dc.imsCallProfile == null) {
            return false;
        }
        int callType = dc.imsCallProfile.getCallType();
        ImsCallProfiles imsCallProfiles = dc.imsCallProfile;
        if (callType != 3) {
            int callType2 = dc.imsCallProfile.getCallType();
            ImsCallProfiles imsCallProfiles2 = dc.imsCallProfile;
            if (callType2 != 1) {
                int callType3 = dc.imsCallProfile.getCallType();
                ImsCallProfiles imsCallProfiles3 = dc.imsCallProfile;
                if (callType3 != 2) {
                    return false;
                }
            }
        }
        DriverImsCall.State state = dc.state;
        DriverImsCall.State state2 = dc.state;
        return state == DriverImsCall.State.ACTIVE;
    }

    private void updateVideoCapability(DriverImsCall dc) {
        log("updateVideoCapability");
        if (isMtVideoCall(dc) && !this.mTelCapabilities.isCapable(2)) {
            this.mTelCapabilities.addCapabilities(2);
            ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
            if (imsServiceCallTracker != null) {
                imsFeatureCapabilityChangeCallBack(imsServiceCallTracker.getFeatureCapabilityListener());
            }
        }
    }

    private boolean isMtVideoCall(DriverImsCall dc) {
        if (dc == null || dc.imsCallProfile == null) {
            return false;
        }
        if (dc.state == DriverImsCall.State.INCOMING || dc.state == DriverImsCall.State.WAITING) {
            return dc.imsCallProfile.getCallType() == 3 || dc.imsCallProfile.getCallType() == 1 || dc.imsCallProfile.getCallType() == 2;
        }
        return false;
    }

    private void openOrCloseLteInfo(boolean isHasActiveVideoCall) {
        if (isHasActiveVideoCall && !this.mIsReportLteInfo) {
            queryCameraStatus();
            return;
        }
        if (!isHasActiveVideoCall && this.mIsReportLteInfo) {
            requestLteInfo(0, 100, null);
            this.mIsReportLteInfo = false;
            this.mHandler.removeMessages(22);
            log("request close report LTE Info");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryCameraStatus() {
        CameraManager cameraManager = CameraManager.getInstance();
        if (cameraManager != null && cameraManager.isParamReady()) {
            executeRequestLteInfo();
            this.mIsReportLteInfo = true;
        } else {
            this.mHandler.sendEmptyMessageDelayed(22, 100L);
        }
    }

    private void executeRequestLteInfo() {
        int threshold = ImsThinClient.getLpdcpThreshold();
        requestLteInfo(1, threshold, null);
        log("executeRequestLteInfo, threshold is " + threshold);
    }

    private void requestLteInfo(int enableReport, int threshold, Message result) {
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.requestGetLteInfo(enableReport, threshold, result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCurrentCallFromModem() {
        ImsServiceCallTracker imsServiceCallTracker;
        if (ImsCallProviderUtils.isVilteEnhancementSupported() && (imsServiceCallTracker = this.mTracker) != null && imsServiceCallTracker.haveCall()) {
            this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeechCodec(int speechCodec) {
        Phone imsphone = getImsPhone();
        if (imsphone == null || imsphone.getContext() == null) {
            return;
        }
        Settings.System.putInt(imsphone.getContext().getContentResolver(), OPERATOR_CUSTOMER_WB_SHOW_HD, speechCodec);
        Intent intent = new Intent("com.huawei.intent.action.SPEECH_CODEC_WB");
        intent.addFlags(536870912);
        intent.putExtra("speechCodecWb", speechCodec);
        int slotId = ImsCallProviderUtils.getSlotId(this.mSlotId);
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(slotId);
        intent.putExtra("subscription", subId);
        intent.putExtra("phone", slotId);
        imsphone.getContext().sendBroadcast(intent);
    }

    public void changeFeatureValue(CapabilityChangeRequest.CapabilityPair cap, int value) {
        if (cap == null) {
            return;
        }
        int capConverted = convertCapability(cap.getCapability(), cap.getRadioTech());
        int radioTechConverted = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(cap.getRadioTech()), -1).intValue();
        String capStr = value == 1 ? "enabled" : "disabled";
        log("changeFeatureValue - cap: " + capConverted + " radioTech: " + radioTechConverted + capStr);
        if (sIsVowifiForbidden && capConverted == 2 && value == 1) {
            log("vowifi is forbidden, ignore");
        } else {
            this.mImsConfigImpl.setFeatureValue(capConverted, radioTechConverted, value, null);
        }
    }

    private int convertCapability(int capability, int radioTech) {
        if (radioTech == 0) {
            if (capability == 1) {
                return 0;
            }
            if (capability == 2) {
                return 1;
            }
            if (capability == 4) {
                return 4;
            }
            log("convertCapability capability not expected. capatility = " + capability);
            return -1;
        }
        if (radioTech == 1) {
            if (capability == 1) {
                return 2;
            }
            if (capability == 2) {
                return 3;
            }
            if (capability == 4) {
                return 5;
            }
            log("convertCapability capability not expected. capatility = " + capability);
            return -1;
        }
        log("convertCapability radioTech not expected. radioTech = " + radioTech + " capability = " + capability);
        return -1;
    }

    public void setVoWiFiRegErrReportEnable(int enabled) {
        this.mCi.setVowifiRegErrReportEnable(enabled, this.mHandler.obtainMessage(EVENT_VOWIFI_REG_ERR_REPORT));
    }

    public void setVoNrSwitch(int status) {
        CommandsInterface ci = getCommandsInterface(this.mSlotId);
        if (ci != null) {
            Message setVoNrSwitchMsg = this.mHandler.obtainMessage(EVENT_SET_VONR_SWITCH_DONE);
            ci.setVoNrSwitch(status, setVoNrSwitchMsg);
        } else {
            loge("setVoNrSwitch, phone or ci is null");
        }
    }

    private CommandsInterface getCommandsInterface(int slotId) {
        if (!ImsCallProviderUtils.isValidSlotId(slotId)) {
            log("getCommandsInterface the slotId is invalid");
            return null;
        }
        return PhoneFactory.getPhones()[slotId].mCi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetVoNrSwitchDone(Message msg) {
        AsyncResult ar = (AsyncResult) msg.obj;
        int result = -1;
        if (ar != null && ar.exception == null) {
            result = 0;
        }
        log("handleSetVoNrSwitch result: " + result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIllegalmeFailCause(ImsRegErrReport result) {
        if (result.getErrDomain() != 100 || result.getErrStage() != 100 || this.mMapconService == null) {
            Rlog.i(LOG_TAG, "handleUnsolVoWiFiRegErrReport not EE custom or MapconService is null");
            return;
        }
        try {
            if (result.getFailCause() == 6) {
                sIsVowifiForbidden = true;
                if (HwImsManager.isWfcEnabledByUser(this.mContext, 0)) {
                    this.mMapconService.setVoWifiOff(0);
                }
                HwTelephonyManager.getDefault();
                if (HwTelephonyManager.isMultiSimEnabled() && HwImsManager.isWfcEnabledByUser(this.mContext, 1)) {
                    this.mMapconService.setVoWifiOff(1);
                    return;
                }
                return;
            }
            if (result.getFailCause() == 0) {
                sIsVowifiForbidden = false;
                if (HwImsManager.isWfcEnabledByUser(this.mContext, 0)) {
                    this.mMapconService.setVoWifiOn(0);
                }
                HwTelephonyManager.getDefault();
                if (HwTelephonyManager.isMultiSimEnabled() && HwImsManager.isWfcEnabledByUser(this.mContext, 1)) {
                    this.mMapconService.setVoWifiOn(1);
                    return;
                }
                return;
            }
            Rlog.i(LOG_TAG, "handleUnsolVoWiFiRegErrReport unknow failcause");
        } catch (RemoteException e) {
            Rlog.i(LOG_TAG, "handleUnsolVoWiFiRegErrReport exception");
        }
    }

    private void getCurrentCallsAndHangup() {
        Handler handler;
        log("getCurrentCallsAndHangup");
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null && (handler = this.mHandler) != null) {
            imsRIL.getCurrentCalls(handler.obtainMessage(24));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hanldeGetCurrentCallsAndHangup(AsyncResult ar) {
        DriverImsCall dc;
        log("hanldeGetCurrentCallsAndHangup");
        if (ar != null && ar.exception == null && (ar.result instanceof ArrayList)) {
            ArrayList<DriverImsCall> callList = (ArrayList) ar.result;
            if (callList == null || callList.size() <= 0) {
                log("current callList is null");
                return;
            }
            for (int i = 0; i < callList.size(); i++) {
                try {
                    dc = callList.get(i);
                } catch (ClassCastException e) {
                    log("handleCalls cast exception, clear dc");
                    dc = null;
                }
                if (this.mCi != null && dc != null && dc.imsCallProfile != null && dc.imsCallProfile.getCallDomain() != 1) {
                    this.mCi.hangupConnection(dc.index, null);
                    if (isActiveVtCall(dc)) {
                        requestLteInfo(0, 100, null);
                        log("hanldeGetCurrentCallsAndHangup: release requestLteInfo");
                    }
                }
            }
            return;
        }
        log("there is no current call");
    }
}
