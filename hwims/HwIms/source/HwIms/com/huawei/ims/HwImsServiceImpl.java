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
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
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

/* loaded from: HwImsServiceImpl.class */
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
            boolean z = false;
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (!intent.getBooleanExtra(HwImsServiceImpl.IMS_STATE, false)) {
                    HwImsServiceImpl.this.log("airplane mode off");
                    return;
                }
                HwImsServiceImpl.this.loge("airplane mode on");
                HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                boolean unused = HwImsServiceImpl.mFirstReg = true;
            } else if ("android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT".equals(action)) {
                HwImsServiceImpl.this.notifyImsState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
            } else if ("android.telephony.action.CARRIER_CONFIG_CHANGED".equals(action)) {
                if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE && intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, 0) != HwImsServiceImpl.this.mSub) {
                    HwImsServiceImpl.this.log("ACTION_CARRIER_CONFIG_CHANGED is not for this sub, return");
                    return;
                }
                if (intent.getIntExtra(HwImsServiceImpl.CARRIER_CONFIG_CHANGE_STATE, 1) == 1) {
                    z = true;
                }
                if (z && HwCustUtil.isVZW) {
                    HwImsServiceImpl.this.getDMUSER();
                } else {
                    HwImsServiceImpl.this.log("carrier config is not loaded or the card is not verizon!");
                }
                HwImsServiceImpl.this.handleSimRecordsLoaded();
                HwImsServiceImpl.this.loge("carrier config changed ");
                HwImsServiceImpl.this.setVTCapabilityToModem();
                HwImsServiceImpl.this.sendSimCardType();
            } else if ("android.intent.action.RADIO_TECHNOLOGY".equals(action)) {
                int subId = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
                HwImsServiceImpl.this.log("mainSlot = " + subId + "intent sub =" + intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, -1) + "intent phoneId = " + intent.getIntExtra("phone", -1));
                if (subId == intent.getIntExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, -1)) {
                    HwImsServiceImpl.this.updatePhoneBaseEvent();
                }
            } else if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                HwImsServiceImpl.this.moveSharePreferenceToDE();
            } else if (HwImsServiceImpl.ACTION_DMPROVIDER_TO_IMS.equals(action)) {
                HwImsServiceImpl.this.processDMBroadcast(intent.getIntExtra(HwImsServiceImpl.DM_IMS_TYPE, -1), intent.getStringExtra(HwImsServiceImpl.DM_IMS_DATA));
            } else if ("android.intent.action.BATTERY_CHANGED".equals(action) && HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isVolteLowbatteryEndcall()) {
                HwImsServiceImpl.this.sendBatteryStatus(intent);
            }
        }
    };
    private int mCurrentBatteryStatus = -1;
    private int mNewBatteryStatus = -1;

    /* loaded from: HwImsServiceImpl$HwImsServiceImplHandler.class */
    private class HwImsServiceImplHandler extends Handler {
        HwImsServiceImplHandler() {
        }

        private void broadcastSpeechCodecNotification(int i) {
            int subId = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("broadcastSpeechCodecNotification speechCodec = " + i + " for subId = " + subId);
            String string = Settings.System.getString(HwImsServiceImpl.this.mContext.getContentResolver(), "EVSBroadcastReceiverPkg");
            Intent intent = new Intent(HwImsServiceImpl.AUDIO_QUALITY_SET_ACTION);
            intent.setPackage(string);
            intent.putExtra(HwImsServiceImpl.AudioQualityType, i);
            intent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, subId);
            HwImsServiceImpl.this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.AUDIO_QUALITY_GET");
        }

        private void createRegCallBackThread(final int i) {
            new Thread(new Runnable() { // from class: com.huawei.ims.HwImsServiceImpl.HwImsServiceImplHandler.1
                /* JADX WARN: Code restructure failed: missing block: B:33:0x016c, code lost:
                    if (r5.this$1.this$0.mEmergencyUnderWifi != false) goto L18;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:55:0x0243, code lost:
                    if (r5.this$1.this$0.mEmergencyUnderWifi != false) goto L54;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 774
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsServiceImpl.HwImsServiceImplHandler.AnonymousClass1.run():void");
                }
            }, "HwImsServiceImplRegCallbackThread").start();
        }

        private int detectImsRegisterState(int i, int i2) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("enter detectImsRegisterState, dataRegState=" + i + ", rilRat=" + i2);
            return (i == 0 && i2 == 14) ? 3 : 0;
        }

        private int getPhoneId(Connection connection) {
            Call call = connection.getCall();
            int i = -1;
            if (call != null) {
                Phone phone = call.getPhone();
                i = -1;
                if (phone != null) {
                    i = phone.getPhoneId();
                }
            }
            return i;
        }

        private void handleBatteryStatus(AsyncResult asyncResult) {
            if (asyncResult != null && asyncResult.exception == null) {
                HwImsServiceImpl.this.mCurrentBatteryStatus = HwImsServiceImpl.this.mNewBatteryStatus;
                return;
            }
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: " + asyncResult);
        }

        private void handleExtendMethod(Message message) {
            int i = message.what;
            if (i == 22) {
                HwImsServiceImpl.this.queryCameraStatus();
                return;
            }
            switch (i) {
                case 1000:
                    handleGetDMUserData(message);
                    return;
                case 1001:
                    handleSetSmsConfig(message);
                    return;
                default:
                    switch (i) {
                        case HwImsServiceImpl.EVENT_UNSOl_IMS_REG_MODE /* 1102 */:
                            HwImsServiceImpl.this.handleImsRegMode((AsyncResult) message.obj);
                            return;
                        case HwImsServiceImpl.EVENT_UNSOL_VOWIF_REG_ERR_REPORT /* 1103 */:
                            HwImsServiceImpl.this.log("handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT");
                            handleUnsolVoWiFiRegErrReport(message);
                            return;
                        case HwImsServiceImpl.EVENT_VOWIFI_REG_ERR_REPORT /* 1104 */:
                            HwImsServiceImpl.this.log("handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing");
                            return;
                        default:
                            return;
                    }
            }
        }

        private void handleGetDMParamsDone(Message message) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            intent.setComponent(new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS));
            int i = message.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, i);
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null || asyncResult.result == null || asyncResult.exception != null) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleGetDMParamsDone fail !type = " + i);
            } else {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("handleGetDMParamsDone success !type = " + i);
                intent.putExtra(HwImsServiceImpl.DM_IMS_DATA, (String) asyncResult.result);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }

        private void handleGetDMUserData(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null || asyncResult.result == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("handleGetDMUserData fail!");
                return;
            }
            Settings.Secure.putString(HwImsServiceImpl.this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSub, HwImsServiceImpl.DM_USER_IMS_VALUE), (String) asyncResult.result);
            HwImsServiceImpl.this.log("handleGetDMUserData success.");
        }

        private void handleHandover(AsyncResult asyncResult) {
            HwImsServiceImpl.this.log("handleHandover");
            if (asyncResult == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleHandover.");
                return;
            }
            ImsServiceCallTracker.HandoverInfo handoverInfo = (ImsServiceCallTracker.HandoverInfo) asyncResult.result;
            ImsServiceCallTracker imsServiceCallTracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
            if (imsServiceCallTracker != null) {
                imsServiceCallTracker.handleHandover(handoverInfo);
            } else {
                HwImsServiceImpl.this.loge("Message for non-registered service class");
            }
        }

        private void handleImsDMCN() {
            HwImsServiceImpl.this.log("EVENT_IMS_DMCN ");
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            intent.setComponent((HwImsConfigImpl.isATT || HwCustUtil.isVZW) ? new ComponentName(HwImsServiceImpl.RCS_SERVICE_PACKAGE, HwImsServiceImpl.RCS_GLOBAL_RECEIVER_CLASS) : new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS));
            intent.addFlags(268435456);
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, 10);
            PackageManager packageManager = HwImsServiceImpl.this.mContext.getPackageManager();
            List<ResolveInfo> list = null;
            if (packageManager != null) {
                list = packageManager.queryBroadcastReceivers(intent, 0);
                HwImsServiceImpl.this.log("EVENT_IMS_DMCN, queryBroadcastReceivers done");
            }
            if (list != null && list.size() != 0) {
                HwImsServiceImpl.this.log("EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE");
                HwImsServiceImpl.this.mContext.sendBroadcast(intent);
                HwImsServiceImpl.this.mDmSyncRetryCount = 0;
                return;
            }
            HwImsServiceImpl.access$3208(HwImsServiceImpl.this);
            HwImsServiceImpl.this.log("EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: " + HwImsServiceImpl.this.mDmSyncRetryCount);
            if (HwImsServiceImpl.this.mDmSyncRetryCount < 5) {
                sendEmptyMessageDelayed(HwImsServiceImpl.EVENT_IMS_DMCN, 2000L);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x028c, code lost:
            if (com.huawei.ims.HwImsServiceImpl.mFirstReg != false) goto L76;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void handleImsStateDone(android.os.Message r6) {
            /*
                Method dump skipped, instructions count: 754
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsServiceImpl.HwImsServiceImplHandler.handleImsStateDone(android.os.Message):void");
        }

        private void handleLtePDCPInfo(AsyncResult asyncResult) {
            if (asyncResult == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("LTE_PDCP_INFO report failed!");
            } else {
                handleLtePDCPInfo((int[]) asyncResult.result);
            }
        }

        private void handleLtePDCPInfo(int[] iArr) {
            if (iArr == null || iArr.length != 4) {
                return;
            }
            ImsThinClient.setBuffInfo(iArr[0], iArr[1], iArr[2], iArr[3]);
        }

        private void handleLteRRCInfo(AsyncResult asyncResult) {
            if (asyncResult == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("LTE_RRC_INFO report failed!");
            } else {
                handleLteRRCInfo((int[]) asyncResult.result);
            }
        }

        private void handleLteRRCInfo(int[] iArr) {
            if (iArr == null || iArr.length != 4) {
                return;
            }
            ImsThinClient.setRlQualInfo(iArr[0], iArr[1], iArr[2], iArr[3]);
        }

        private void handleMtNewRingReport(Connection connection) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("handleMtNewRingReport(" + connection + ")");
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.log("handleMtNewRingReport: mMtStatusMgr is null");
            } else if (connection != null) {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("remote address: " + HiddenPrivacyInfo.putMosaic(connection.getAddress(), 0));
                HwImsServiceImpl.this.mMtStatusMgr.notifyRingCall(connection.getAddress(), getPhoneId(connection));
            }
        }

        private void handleMtStatusReport(MtStatusReport mtStatusReport) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("handleMtStatusReport(" + mtStatusReport + ")");
            if (HwImsServiceImpl.this.mMtStatusMgr == null) {
                HwImsServiceImpl.this.loge("handleMtStatusReport: mMtStatusMgr is null");
            } else if (mtStatusReport != null) {
                if (mtStatusReport.call_status == 0) {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallStarted(mtStatusReport.call_number)) {
                        HwImsServiceImpl.this.log("close do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(true);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addIncomingCall(mtStatusReport);
                } else if (1 != mtStatusReport.call_status) {
                    HwImsServiceImpl.this.loge("status not supported. ");
                } else {
                    if (HwImsServiceImpl.this.mMtStatusMgr.isNeedNotifyImsCallEnded(mtStatusReport.call_number)) {
                        HwImsServiceImpl.this.log("open do-recovery");
                        HwImsServiceImpl.this.mMtStatusMgr.setIsBusy(false);
                    }
                    HwImsServiceImpl.this.mMtStatusMgr.addFailCall(mtStatusReport);
                }
            }
        }

        private void handleNetworkStateChanged(int i, int i2) {
            if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsUtImpl != null) {
                boolean z = i == 0;
                HwImsServiceImpl.this.mImsUtImpl.setIsDataReg(z);
                boolean isSIMCardCheckedByUT = HwImsServiceImpl.this.mImsUtImpl.isSIMCardCheckedByUT();
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleNetworkStateChanged: isSIMCardCheckedByUT = " + isSIMCardCheckedByUT + ", isDataReg = " + z);
                if (HwImsServiceImpl.this.mImsConfigImpl.isUse403ForLocalCW() && !isSIMCardCheckedByUT && z) {
                    HwImsServiceImpl.this.mImsUtImpl.detectSimCardSubscriptionStatus();
                }
            }
            if (HwImsServiceImpl.this.optimizeImsRegisterState()) {
                if (i2 == 0) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.log("PS abnormal, rat = " + i2 + ", reg = " + i);
                    if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.isHangUpWhenLostNet()) {
                        hangupCallsWhenNoService();
                    }
                }
                if (HwImsServiceImpl.this.mImsConfigImpl == null || !HwImsServiceImpl.this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                    return;
                }
                int detectImsRegisterState = detectImsRegisterState(i, i2);
                HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                hwImsServiceImpl3.log("After detect, ims register state is " + detectImsRegisterState);
                if (detectImsRegisterState != 0) {
                    if (3 == detectImsRegisterState) {
                        HwImsServiceImpl.this.mCi.getImsRegistrationState(obtainMessage(3));
                        return;
                    }
                    return;
                }
                Iterator it = HwImsServiceImpl.this.mTrackerTable.entrySet().iterator();
                while (it.hasNext()) {
                    it.next();
                    createRegCallBackThread(0);
                }
            }
        }

        private void handleOnHoldTone(AsyncResult asyncResult) {
            Rlog.d(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone...");
            CarrierConfigManager carrierConfigManager = (CarrierConfigManager) HwImsServiceImpl.this.mContext.getSystemService("carrier_config");
            if (carrierConfigManager == null) {
                return;
            }
            PersistableBundle configForSubId = carrierConfigManager.getConfigForSubId(ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
            if (configForSubId == null || !configForSubId.getBoolean(HwImsServiceImpl.KEY_SUPPORT_HOLD_TONE_BOOL)) {
                Rlog.d(HwImsServiceImpl.LOG_TAG, "handleOnHoldTone,current carrier not support holdtone");
            } else if (asyncResult == null) {
            } else {
                if (asyncResult.exception != null) {
                    Rlog.e(HwImsServiceImpl.LOG_TAG, "AsyncResult exception in handleOnHoldTone.");
                    return;
                }
                boolean booleanValue = ((Boolean) asyncResult.result).booleanValue();
                ImsServiceCallTracker imsServiceCallTracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
                if (imsServiceCallTracker != null) {
                    imsServiceCallTracker.handleOnHoldTone(booleanValue);
                } else {
                    Rlog.e(HwImsServiceImpl.LOG_TAG, "Message for non-registered service class");
                }
            }
        }

        private void handleReadDomainName(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            String str = null;
            if (asyncResult != null) {
                str = null;
                if (asyncResult.exception == null) {
                    str = (String) asyncResult.result;
                }
            }
            if (HwImsServiceImpl.this.mImsConfigImpl == null || HwImsServiceImpl.this.mImsUtImpl == null) {
                return;
            }
            HwImsServiceImpl.this.mImsConfigImpl.setDomainNameFromSIM(str);
            HwImsServiceImpl.this.mImsUtImpl.setHomeDomainName();
        }

        private void handleReadIsimIMPI(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            String str = null;
            if (asyncResult != null) {
                str = null;
                if (asyncResult.exception == null) {
                    str = (String) asyncResult.result;
                }
            }
            if (HwImsServiceImpl.this.mImsConfigImpl == null || HwImsServiceImpl.this.mImsUtImpl == null) {
                return;
            }
            HwImsServiceImpl.this.mImsConfigImpl.setImpiFromSIM(str);
            HwImsServiceImpl.this.mImsUtImpl.setImsSdkImpi();
        }

        private void handleSetDMParamsDone(Message message) {
            Intent intent = new Intent(HwImsServiceImpl.ACTION_IMS_TO_DMPROVIDER);
            intent.setComponent(new ComponentName(HwImsServiceImpl.DMPROVIDER_PACKAGE, HwImsServiceImpl.DMRECEIVER_CLASS));
            int i = message.arg1;
            intent.putExtra(HwImsServiceImpl.DM_IMS_TYPE, i);
            AsyncResult asyncResult = (AsyncResult) message.obj;
            int[] iArr = (asyncResult == null || asyncResult.result == null) ? null : (int[]) asyncResult.result;
            if (asyncResult == null || asyncResult.exception != null || iArr == null || iArr.length <= 0 || iArr[0] != 1) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.log("handleSetDMParamsDone  fail!type = " + i);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, -1);
            } else {
                HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                hwImsServiceImpl2.log("handleSetDMParamsDone  success!type = " + i);
                intent.putExtra(HwImsServiceImpl.DM_IMS_RET, 1);
            }
            HwImsServiceImpl.this.mContext.sendBroadcast(intent);
        }

        private void handleSetSmsConfig(Message message) {
            HwImsServiceImpl.this.log("EVENT_IMS_SET_SMS_CONFIG");
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult != null && asyncResult.exception == null) {
                HwImsServiceImpl.this.log("handleSetSmsConfig success! ");
                return;
            }
            HwImsServiceImpl.this.loge("handleSetSmsConfig fail!");
            String imsStoredKeyWithSubId = ImsCallProviderUtils.getImsStoredKeyWithSubId(HwImsServiceImpl.this.mSub, HwImsServiceImpl.SMS_IMS_SET_VALUE);
            if (Settings.Secure.getInt(HwImsServiceImpl.this.mContext.getContentResolver(), imsStoredKeyWithSubId, 1) == 1) {
                Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), imsStoredKeyWithSubId, 0);
            } else {
                Settings.Secure.putInt(HwImsServiceImpl.this.mContext.getContentResolver(), imsStoredKeyWithSubId, 1);
            }
        }

        private void handleSrvStatusUpdate(ArrayList<ImsServiceState> arrayList) {
            int i;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImsServiceState imsServiceState = arrayList.get(i2);
                if (imsServiceState != null && isSrvTypeValid(imsServiceState.type)) {
                    if (HwImsServiceImpl.this.DBG) {
                        HwImsServiceImpl.this.log("type = " + imsServiceState.type + " state = " + imsServiceState.state + " isValid = " + imsServiceState.isValid);
                    }
                    ImsServiceState imsServiceState2 = imsServiceState.type == 11 ? HwImsServiceImpl.this.mServiceState[4] : HwImsServiceImpl.this.mServiceState[imsServiceState.type];
                    imsServiceState2.isValid = imsServiceState.isValid;
                    imsServiceState2.type = imsServiceState.type;
                    if (imsServiceState.userdata != null) {
                        imsServiceState2.userdata = new byte[imsServiceState.userdata.length];
                        imsServiceState2.userdata = Arrays.copyOf(imsServiceState.userdata, imsServiceState.userdata.length);
                    }
                    if (imsServiceState.accessTechStatus != null && imsServiceState.accessTechStatus.length > 0) {
                        imsServiceState2.accessTechStatus = new ImsServiceState.StatusForAccessTech[imsServiceState.accessTechStatus.length];
                        if (HwImsServiceImpl.this.DBG) {
                            HwImsServiceImpl.this.log("Call Type " + imsServiceState2.type + "has num updates = " + imsServiceState.accessTechStatus.length);
                        }
                        ImsServiceState.StatusForAccessTech[] statusForAccessTechArr = imsServiceState2.accessTechStatus;
                        for (int i3 = 0; i3 < imsServiceState.accessTechStatus.length; i3++) {
                            ImsServiceState.StatusForAccessTech statusForAccessTech = imsServiceState.accessTechStatus[i3];
                            if (HwImsServiceImpl.this.DBG) {
                                HwImsServiceImpl.this.log("StatusForAccessTech networkMode = " + statusForAccessTech.networkMode + " registered = " + statusForAccessTech.registered + " state = " + statusForAccessTech.state + " restrictCause = " + statusForAccessTech.restrictCause);
                            }
                            statusForAccessTechArr[i3] = new ImsServiceState.StatusForAccessTech();
                            statusForAccessTechArr[i3].networkMode = statusForAccessTech.networkMode;
                            statusForAccessTechArr[i3].registered = statusForAccessTech.registered;
                            if (statusForAccessTech.state != 2 || statusForAccessTech.restrictCause == 0) {
                                statusForAccessTechArr[i3].state = statusForAccessTech.state;
                            } else {
                                statusForAccessTechArr[i3].state = 1;
                            }
                            imsServiceState2.state = statusForAccessTechArr[i3].state;
                            statusForAccessTechArr[i3].restrictCause = statusForAccessTech.restrictCause;
                            boolean z = statusForAccessTechArr[i3].networkMode == 18 || statusForAccessTechArr[i3].networkMode == 19;
                            boolean z2 = statusForAccessTechArr[i3].networkMode == -1 || statusForAccessTechArr[i3].networkMode == 14;
                            if (z || z2) {
                                if (imsServiceState.type == 0) {
                                    i = z2 ? 0 : 2;
                                    HwImsServiceImpl.this.mEmergencyUnderWifi = z && statusForAccessTechArr[i3].state == 1;
                                } else {
                                    i = imsServiceState.type == 11 ? z2 ? 4 : 5 : z2 ? 1 : 3;
                                }
                                if (HwImsServiceImpl.this.mHandler != null && HwImsServiceImpl.this.mHandler.hasMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT)) {
                                    HwImsServiceImpl.this.mHandler.removeMessages(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT);
                                    HwImsServiceImpl.this.log("remove sos pending msg!");
                                }
                                if (statusForAccessTechArr[i3].state == 2 || statusForAccessTechArr[i3].state == 1) {
                                    HwImsServiceImpl.this.log("enabledFeature = " + i + ", mEmergencyUnderWifi = " + HwImsServiceImpl.this.mEmergencyUnderWifi + ",getImsRegisterState() = " + HwImsServiceImpl.this.getImsRegisterState());
                                    if (z) {
                                        if (HwImsServiceImpl.this.mImsConfigImpl != null && HwImsServiceImpl.this.mImsConfigImpl.getIsEmergencyUnderWifi() && HwImsServiceImpl.this.mEmergencyUnderWifi && HwImsServiceImpl.this.getImsRegisterState() == 0) {
                                            HwImsServiceImpl.this.log("Emergency call under vowifi and ims is unregisterd, not notify vowifi state.");
                                        } else {
                                            HwImsServiceImpl.this.mTelCapabilities.addCapabilities(1);
                                            notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_REGISTERED);
                                            HwImsServiceImpl.this.mAccessTechMode = 1;
                                        }
                                    } else if (z2) {
                                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                        HwImsServiceImpl.this.mAccessTechMode = 0;
                                    }
                                } else if (statusForAccessTechArr[i3].state == 0 || statusForAccessTechArr[i3].state == 3) {
                                    HwImsServiceImpl.this.log("disabledFeature = " + i);
                                    if (z) {
                                        HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                        notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                    }
                                } else if (statusForAccessTechArr[i3].state == 8 && HwImsServiceImpl.this.mHandler != null) {
                                    HwImsServiceImpl.this.log("current service status is sos pending !");
                                    HwImsServiceImpl.this.mHandler.sendMessageDelayed(HwImsServiceImpl.this.mHandler.obtainMessage(HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT), 30000L);
                                }
                            }
                        }
                    }
                }
            }
        }

        private void handleSrvccStateChanged(int[] iArr) {
            HwImsServiceImpl.this.log("handleSrvccStateChanged");
            if (iArr == null || iArr.length == 0) {
                return;
            }
            HwTelephonyFactory.getHwVolteChrManager().notifySrvccState(iArr[0]);
        }

        private void handleSuppSvc(AsyncResult asyncResult) {
            HwImsServiceImpl.this.log("handleSuppSvc");
            if (asyncResult == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleSuppSvc.");
                return;
            }
            HwImsSuppServiceNotification hwImsSuppServiceNotification = (HwImsSuppServiceNotification) asyncResult.result;
            ImsServiceCallTracker imsServiceCallTracker = (ImsServiceCallTracker) HwImsServiceImpl.this.mTrackerTable.get(1);
            if (imsServiceCallTracker != null) {
                imsServiceCallTracker.handleSuppSvcUnsol(hwImsSuppServiceNotification);
            } else {
                HwImsServiceImpl.this.loge("Message for non-registered service class");
            }
        }

        private void handleUnsolSimNvCfgFinished(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null || asyncResult.exception != null) {
                HwImsServiceImpl.this.loge("AsyncResult exception in handleUnsolSimNvCfgFinished");
                return;
            }
            Object obj = asyncResult.result;
            if (obj == null || !(obj instanceof Integer)) {
                return;
            }
            int intValue = ((Integer) obj).intValue();
            HwImsServiceImpl.this.log("handleUnsolSimNvCfgFinished: result = " + intValue);
            boolean z = true;
            if (1 != intValue) {
                z = false;
            }
            if (z) {
                HwImsServiceImpl.this.setVTCapabilityToModem();
            }
        }

        private void handleUnsolSpeechInfo(int i) {
            if (HwImsServiceImpl.IS_AMR_WB_SHOW_HD_VOLTE) {
                HwImsServiceImpl.this.setSpeechCodec(i);
            }
            HwImsServiceImpl.this.log("handleUnsolSpeechInfo speechCodec = " + i);
            broadcastSpeechCodecNotification(i);
            switch (i) {
                case 1:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_NB;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = HwImsServiceImpl.SPEECH_INFO_CODEC_WB;
                    i = 2;
                    break;
                default:
                    HwImsServiceImpl.this.mSpeechInfoCodec[0] = null;
                    break;
            }
            HwImsServiceImpl.this.log("current speechInfoCodec is : " + HwImsServiceImpl.this.mSpeechInfoCodec[0]);
            Phone defaultPhone = HwImsServiceImpl.this.getDefaultPhone();
            if (defaultPhone == null || defaultPhone.getImsPhone() == null) {
                return;
            }
            defaultPhone.setSpeechInfoCodec(i);
            Context context = defaultPhone.getContext();
            String speechInfoCodec = defaultPhone.getSpeechInfoCodec();
            HwImsServiceImpl.this.log("setAudioParameters speechInfo = " + speechInfoCodec);
            if (context == null || speechInfoCodec.equals(HwImsConfigImpl.NULL_STRING_VALUE)) {
                return;
            }
            ((AudioManager) context.getSystemService(SciSSConf.MEDIA_AUDIO)).setParameters(speechInfoCodec);
        }

        private void handleUnsolVoWiFiRegErrReport(Message message) {
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null || asyncResult.result == null || asyncResult.exception != null) {
                HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                hwImsServiceImpl.loge("Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= " + asyncResult);
            } else if (!(asyncResult.result instanceof VoWiFiRegErrReport)) {
                Rlog.d(HwImsServiceImpl.LOG_TAG, "handleUnsolVoWiFiRegErrReport ar.result: " + asyncResult.result);
            } else {
                VoWiFiRegErrReport voWiFiRegErrReport = (VoWiFiRegErrReport) asyncResult.result;
                if (voWiFiRegErrReport.errDomain == 1) {
                    Intent intent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_REG_ERROR_REPORT_ACTION);
                    intent.putExtra(HwImsServiceImpl.IMS_ERRDOMAIN, voWiFiRegErrReport.errDomain);
                    intent.putExtra(HwImsServiceImpl.IMS_ERRSTAGE, voWiFiRegErrReport.errStage);
                    intent.putExtra(HwImsServiceImpl.IMS_FAILCAUSE, voWiFiRegErrReport.failCause);
                    intent.putExtra(HwImsServiceImpl.IMS_FAILSTRING, voWiFiRegErrReport.failString);
                    intent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub));
                    HwImsServiceImpl.this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT");
                }
            }
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
            boolean isCallPresent = isCallPresent(ringingCall);
            boolean isCallPresent2 = isCallPresent(backgroundCall);
            boolean isCallPresent3 = isCallPresent(foregroundCall);
            if (isCallPresent3 || isCallPresent2 || isCallPresent) {
                HwTelephonyFactory.getHwVolteChrManager().triggerNoServiceDuringCallEvent(foregroundCall, ringingCall, backgroundCall);
            }
            if (isCallPresent) {
                HwImsServiceImpl.this.log("reject call since lost network.");
                try {
                    ringingCall.hangup();
                } catch (CallStateException e) {
                    HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                    hwImsServiceImpl.loge("hangup ring call fails. " + e.getMessage());
                }
            }
            if (isCallPresent2) {
                HwImsServiceImpl.this.log("hang up bg call since lost network.");
                try {
                    backgroundCall.hangup();
                } catch (CallStateException e2) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.loge("hangup bg call fails. " + e2.getMessage());
                }
            }
            if (isCallPresent3) {
                HwImsServiceImpl.this.log("hang up fg call since lost network.");
                try {
                    foregroundCall.hangup();
                } catch (CallStateException e3) {
                    HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                    hwImsServiceImpl3.loge("hangup fg call fails. " + e3.getMessage());
                }
            }
        }

        private boolean isCallPresent(ImsPhoneCall imsPhoneCall) {
            return imsPhoneCall != null && imsPhoneCall.getState().isAlive();
        }

        private boolean isSrvTypeValid(int i) {
            return i == 0;
        }

        private void notifyImsVoWiFiState(String str) {
            int subId = ImsCallProviderUtils.getSubId(HwImsServiceImpl.this.mSub);
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.loge("Notify IMS-VoWiFi state is " + str + ", sub is " + subId);
            if (HwImsServiceImpl.IMS_STATE_REGISTERED.equals(str)) {
                HwImsServiceImpl.this.setVTCapabilityToModem();
            }
            Intent intent = new Intent(HwImsServiceImpl.IMS_SERVICE_VOWIFI_STATE_CHANGED_ACTION);
            intent.putExtra(HwImsServiceImpl.IMS_STATE, str);
            intent.putExtra(HwImsServiceImpl.SUBSCRIPTION_KEY, subId);
            HwImsServiceImpl.this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE");
            for (Map.Entry entry : HwImsServiceImpl.this.mTrackerTable.entrySet()) {
                HwImsServiceImpl.this.createFeatureCapabilityCallBackThread(((ImsServiceCallTracker) entry.getValue()).mFeatureCapabilityListener);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
            hwImsServiceImpl.log("Message received: what = " + message.what);
            int i = message.what;
            switch (i) {
                case 1:
                    HwImsServiceImpl.this.mCi.getCurrentCalls(HwImsServiceImpl.this.mHandler.obtainMessage(7));
                    return;
                case 2:
                    HwImsServiceImpl.this.mCi.getImsRegistrationState(HwImsServiceImpl.this.mHandler.obtainMessage(3));
                    return;
                case 3:
                    handleImsStateDone(message);
                    return;
                case 4:
                    HwImsServiceImpl.this.log("Received event: EVENT_SRV_STATUS_UPDATE");
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    if (asyncResult == null || asyncResult.exception != null || asyncResult.result == null) {
                        HwImsServiceImpl.this.loge("IMS Service Status Update failed!");
                        HwImsServiceImpl.this.initServiceState();
                        return;
                    }
                    handleSrvStatusUpdate((ArrayList) asyncResult.result);
                    HwImsServiceImpl.this.getCurrentCallFromModem();
                    return;
                default:
                    switch (i) {
                        case 7:
                            HwImsServiceImpl.this.handleCalls((AsyncResult) message.obj);
                            return;
                        case 8:
                            handleSuppSvc((AsyncResult) message.obj);
                            return;
                        default:
                            switch (i) {
                                case 12:
                                    handleHandover((AsyncResult) message.obj);
                                    return;
                                case 13:
                                    AsyncResult asyncResult2 = (AsyncResult) message.obj;
                                    if (asyncResult2 != null && asyncResult2.result != null && asyncResult2.exception == null) {
                                        HwImsServiceImpl.this.handleModifyCallRequest((ImsCallAdapter.CallModify) asyncResult2.result);
                                        return;
                                    }
                                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                                    hwImsServiceImpl2.loge("Error EVENT_MODIFY_CALL AsyncResult ar= " + asyncResult2);
                                    return;
                                default:
                                    switch (i) {
                                        case 15:
                                            if (!HwImsConfigImpl.FEATURE_VOLTE_DYN) {
                                                HwImsServiceImpl.this.handleSimRecordsLoaded();
                                            } else if (HwImsServiceImpl.this.mMainSlotChange) {
                                                HwImsServiceImpl.this.log("main slot changed, handle sim records loaded.");
                                                HwImsServiceImpl.this.handleSimRecordsLoaded();
                                                HwImsServiceImpl.this.mMainSlotChange = false;
                                            }
                                            HwImsServiceImpl.this.registerReceiverForBattery();
                                            return;
                                        case 16:
                                            HwImsServiceImpl.this.onUpdateIccAvailability();
                                            return;
                                        case 17:
                                            HwImsServiceImpl.this.handleImsGetImpuDone(message);
                                            return;
                                        case 18:
                                            HwImsServiceImpl.this.log("EVENT_IMS_REG_FAIL_DELAY");
                                            ImsPhone imsPhone = HwImsServiceImpl.this.getImsPhone();
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
                                            handleReadDomainName(message);
                                            return;
                                        case 21:
                                            handleReadIsimIMPI(message);
                                            return;
                                        default:
                                            switch (i) {
                                                case 1005:
                                                    HwImsServiceImpl.this.log("EVENT_MT_STATUS_REPORT");
                                                    AsyncResult asyncResult3 = (AsyncResult) message.obj;
                                                    if (asyncResult3 != null && asyncResult3.result != null && asyncResult3.exception == null) {
                                                        handleMtStatusReport((MtStatusReport) asyncResult3.result);
                                                        return;
                                                    }
                                                    HwImsServiceImpl hwImsServiceImpl3 = HwImsServiceImpl.this;
                                                    hwImsServiceImpl3.loge("Error EVENT_MT_STATUS_REPORT AsyncResult ar= " + asyncResult3);
                                                    return;
                                                case 1006:
                                                    HwImsServiceImpl.this.log("EVENT_MT_NEW_RING_REPORT");
                                                    AsyncResult asyncResult4 = (AsyncResult) message.obj;
                                                    if (asyncResult4 != null && asyncResult4.result != null && asyncResult4.exception == null) {
                                                        handleMtNewRingReport((Connection) asyncResult4.result);
                                                        return;
                                                    }
                                                    HwImsServiceImpl hwImsServiceImpl4 = HwImsServiceImpl.this;
                                                    hwImsServiceImpl4.loge("Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= " + asyncResult4);
                                                    return;
                                                case 1007:
                                                    try {
                                                        Pair pair = (Pair) ((AsyncResult) message.obj).result;
                                                        int intValue = ((Integer) pair.first).intValue();
                                                        int intValue2 = ((Integer) pair.second).intValue();
                                                        HwImsServiceImpl hwImsServiceImpl5 = HwImsServiceImpl.this;
                                                        hwImsServiceImpl5.log("EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState=" + intValue + ", Ril RAT is " + intValue2);
                                                        handleNetworkStateChanged(intValue, intValue2);
                                                        return;
                                                    } catch (Exception e) {
                                                        HwImsServiceImpl.this.loge("[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail");
                                                        return;
                                                    }
                                                case 1008:
                                                    HwImsServiceImpl.this.log("EVENT_REGISTERED_TO_NETWORK");
                                                    if (HwImsServiceImpl.this.mImsUtImpl == null || !HwImsServiceImpl.this.mImsUtImpl.isAirModeResetCWInModem()) {
                                                        return;
                                                    }
                                                    HwImsServiceImpl.this.mImsUtImpl.queryAndSyncCallWaitingToCs();
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
                                                        AsyncResult asyncResult5 = (AsyncResult) message.obj;
                                                        if (asyncResult5 == null || asyncResult5.exception != null) {
                                                            HwImsServiceImpl.this.loge("Srvcc occurs exception.");
                                                            return;
                                                        } else {
                                                            handleSrvccStateChanged((int[]) asyncResult5.result);
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                case HwImsServiceImpl.EVENT_UNSOl_SPEECH_INFO /* 1011 */:
                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_UNSOl_SPEECH_INFO)");
                                                    AsyncResult asyncResult6 = (AsyncResult) message.obj;
                                                    if (asyncResult6 == null || asyncResult6.result == null || asyncResult6.exception != null) {
                                                        HwImsServiceImpl.this.loge("EVENT_UNSOl_SPEECH_INFO exception");
                                                        return;
                                                    } else {
                                                        handleUnsolSpeechInfo(((int[]) asyncResult6.result)[0]);
                                                        return;
                                                    }
                                                case HwImsServiceImpl.EVENT_UNSOl_LTE_PDCP_INFO /* 1012 */:
                                                    handleLtePDCPInfo((AsyncResult) message.obj);
                                                    return;
                                                case HwImsServiceImpl.EVENT_UNSOl_LTE_RRC_INFO /* 1013 */:
                                                    handleLteRRCInfo((AsyncResult) message.obj);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_SET_DM_PARAMETER_DONE /* 1014 */:
                                                    handleSetDMParamsDone(message);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_GET_DM_PARAMETER_DONE /* 1015 */:
                                                    handleGetDMParamsDone(message);
                                                    return;
                                                case HwImsServiceImpl.EVENT_IMS_DMCN /* 1016 */:
                                                    handleImsDMCN();
                                                    return;
                                                default:
                                                    switch (i) {
                                                        case HwImsServiceImpl.EVENT_IMS_ONHOLD_TONE /* 1100 */:
                                                            handleOnHoldTone((AsyncResult) message.obj);
                                                            return;
                                                        case HwImsServiceImpl.EVENT_IMS_RADIO_ON /* 1101 */:
                                                            HwImsServiceImpl.this.log("EVENT_IMS_RADIO_ON");
                                                            HwImsServiceImpl.this.setVTCapabilityToModem();
                                                            return;
                                                        default:
                                                            switch (i) {
                                                                case 23:
                                                                    handleUnsolSimNvCfgFinished(message);
                                                                    return;
                                                                case 1003:
                                                                    AsyncResult asyncResult7 = (AsyncResult) message.obj;
                                                                    if (asyncResult7 != null && asyncResult7.result != null && asyncResult7.exception == null) {
                                                                        HwImsServiceImpl.this.handleModifyCallResult((int[]) asyncResult7.result);
                                                                        return;
                                                                    }
                                                                    HwImsServiceImpl hwImsServiceImpl6 = HwImsServiceImpl.this;
                                                                    hwImsServiceImpl6.loge("Error EVENT_MODIFY_RESULT AsyncResult ar= " + asyncResult7);
                                                                    return;
                                                                case HwImsServiceImpl.EVENT_SEND_BATTERY_STATUS /* 1018 */:
                                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_SEND_BATTERY_STATUS)");
                                                                    handleBatteryStatus((AsyncResult) message.obj);
                                                                    return;
                                                                case HwImsServiceImpl.EVENT_VOWIFI_SOS_PENDING_TIMEOUT /* 1020 */:
                                                                    HwImsServiceImpl.this.log(" handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)");
                                                                    HwImsServiceImpl.this.mTelCapabilities.removeCapabilities(1);
                                                                    notifyImsVoWiFiState(HwImsServiceImpl.IMS_STATE_UNREGISTERED);
                                                                    return;
                                                                case HwImsServiceImpl.VT_FLOW_INFO_REPORT /* 40001 */:
                                                                    HwImsServiceImpl.this.log("VT_FLOW_INFO_REPORT");
                                                                    AsyncResult asyncResult8 = (AsyncResult) message.obj;
                                                                    if (asyncResult8 != null) {
                                                                        ImsMediaProvider.getInstance().vtFlowInfoReport(HwImsServiceImpl.this.mSub, ((Long) asyncResult8.result).longValue());
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    handleExtendMethod(message);
                                                                    return;
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }
    }

    static {
        REG_TECH_TO_NET_TYPE.put(0, 13);
        REG_TECH_TO_NET_TYPE.put(1, 18);
    }

    public HwImsServiceImpl(int i, Context context) {
        this.mCi = null;
        this.mImsConfigImpl = null;
        this.mImsUtImpl = null;
        this.mSub = -1;
        this.mSub = i;
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
            this.mPhoneBase.get().mCi.registerForUnsolNvCfgFinished(this.mHandler, 23, (Object) null);
        }
        onUpdateIccAvailability();
        try {
            UiccController.getInstance().registerForIccChanged(this.mHandler, 16, (Object) null);
        } catch (Exception e) {
            loge("UiccController getInstance Exception");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        if (HwImsConfigImpl.FEATURE_VOLTE_DYN) {
            intentFilter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        }
        intentFilter.addAction("android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT");
        intentFilter.addAction("android.intent.action.RADIO_TECHNOLOGY");
        context.registerReceiver(this.mIntentReceiver, intentFilter);
        if (HwImsConfigImpl.TRUE_VALUE.equals(SystemProperties.get("ro.config.hw_support_omadm", "false"))) {
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(ACTION_DMPROVIDER_TO_IMS);
            context.registerReceiver(this.mIntentReceiver, intentFilter2, "com.huawei.ims.permission.RECEIVE_DMPROVIDER_BROADCAST", null);
            this.mCi.registerForImsDMCN(this.mHandler, EVENT_IMS_DMCN, null);
        }
        log("HwImsServiceImpl init done");
    }

    static /* synthetic */ int access$3208(HwImsServiceImpl hwImsServiceImpl) {
        int i = hwImsServiceImpl.mDmSyncRetryCount;
        hwImsServiceImpl.mDmSyncRetryCount = i + 1;
        return i;
    }

    private int convertCapability(int i, int i2) {
        int i3;
        if (i2 == 0) {
            if (i != 4) {
                switch (i) {
                    case 1:
                        i3 = 0;
                        break;
                    case 2:
                        i3 = 1;
                        break;
                    default:
                        log("convertCapability capability not expected. capatility = " + i);
                        i3 = -1;
                        break;
                }
            } else {
                i3 = 4;
            }
        } else if (i2 != 1) {
            log("convertCapability radioTech not expected. radioTech = " + i2 + " capability = " + i);
            i3 = -1;
        } else if (i != 4) {
            switch (i) {
                case 1:
                    i3 = 2;
                    break;
                case 2:
                    i3 = 3;
                    break;
                default:
                    log("convertCapability capability not expected. capatility = " + i);
                    i3 = -1;
                    break;
            }
        } else {
            i3 = 5;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFeatureCapabilityCallBackThread(final ImsServiceCallTracker.FeatureCapatilityListener featureCapatilityListener) {
        new Thread(new Runnable() { // from class: com.huawei.ims.HwImsServiceImpl.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HwImsServiceImpl hwImsServiceImpl = HwImsServiceImpl.this;
                    hwImsServiceImpl.log("enter createFeatureCapabilityCallBackThread.  mTelCapabilities=" + HwImsServiceImpl.this.mTelCapabilities);
                    featureCapatilityListener.notifyCapabilitiesStatusChanged(HwImsServiceImpl.this.mTelCapabilities);
                } catch (Throwable th) {
                    HwImsServiceImpl hwImsServiceImpl2 = HwImsServiceImpl.this;
                    hwImsServiceImpl2.loge(th + " createFeatureCapabilityCallBackThread()");
                }
            }
        }, "HwImsServiceImplcreateFeatureCapabilityCallBackThread").start();
    }

    private void executeRequestLTEInfo() {
        int lpdcpThreshold = ImsThinClient.getLpdcpThreshold();
        requestLTEInfo(1, lpdcpThreshold, null);
        log("executeRequestLTEInfo, threshold is " + lpdcpThreshold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCurrentCallFromModem() {
        ImsServiceCallTracker imsServiceCallTracker;
        if (this.mTrackerTable == null || !ImsCallProviderUtils.isVilteEnhancementSupported() || (imsServiceCallTracker = this.mTrackerTable.get(1)) == null || !imsServiceCallTracker.haveCall()) {
            return;
        }
        this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
    }

    private int getCurrentPhoneTypeForSlot(int i) {
        int currentPhoneTypeForSlot = TelephonyManager.getDefault().getCurrentPhoneTypeForSlot(i);
        log("oldPhoneType = " + currentPhoneTypeForSlot);
        if (HwTelephonyManager.getDefault().isCTSimCard(i)) {
            currentPhoneTypeForSlot = 2;
        }
        log("newPhoneType = " + currentPhoneTypeForSlot);
        setCardTypeToGlobalDB(i, currentPhoneTypeForSlot);
        return currentPhoneTypeForSlot;
    }

    private int getEnhancedVideoFeature() {
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        int default4GSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        int i = -1;
        if (carrierConfigManager != null) {
            PersistableBundle configForSubId = carrierConfigManager.getConfigForSubId(default4GSlotId);
            i = -1;
            if (configForSubId != null) {
                String string = configForSubId.getString(ImsVTConstants.CARRIERCONFIG_ENHANCED_VIDEO_FEATURE);
                i = -1;
                if (string != null) {
                    try {
                        i = Integer.parseInt(string, 2);
                    } catch (NumberFormatException e) {
                        return -1;
                    }
                }
            }
        }
        log("getEnhancedVideoFeature valueKeyConfig" + i);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getImsStateBindRat() {
        return this.mImsStateBindRat;
    }

    private void handleCSVTCalls(ArrayList<DriverImsCall> arrayList) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(3);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleCalls(arrayList);
        } else if (arrayList.size() > 0) {
            loge("Call for non-registered service class CSVT");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCalls(AsyncResult asyncResult) {
        ArrayList arrayList;
        log(">handleCalls");
        if (asyncResult.exception == null) {
            arrayList = (ArrayList) asyncResult.result;
        } else if (!isImsExceptionRadioNotAvailable(asyncResult.exception)) {
            log("else???");
            return;
        } else {
            arrayList = new ArrayList();
        }
        ArrayList<DriverImsCall> arrayList2 = new ArrayList<>();
        ArrayList<DriverImsCall> arrayList3 = new ArrayList<>();
        boolean z = false;
        if (arrayList != null) {
            int size = arrayList.size();
            z = false;
            for (int i = 0; i < size; i++) {
                DriverImsCall driverImsCall = (DriverImsCall) arrayList.get(i);
                log("handleCalls: dc = " + driverImsCall);
                if (isActiveVTCall(driverImsCall)) {
                    z = true;
                }
                if (driverImsCall != null && driverImsCall.imsCallProfile != null && this.mSpeechInfoCodec[0] != null) {
                    if (driverImsCall.imsCallProfile.extras != null) {
                        log("update dc imsCallProfile extras  use mSpeechInfoCodec[0] : " + this.mSpeechInfoCodec[0]);
                        ImsCallProfiles imsCallProfiles = new ImsCallProfiles(driverImsCall.imsCallProfile);
                        imsCallProfiles.extras = this.mSpeechInfoCodec;
                        driverImsCall.imsCallProfile.update(imsCallProfiles);
                    } else {
                        driverImsCall.imsCallProfile.extras = this.mSpeechInfoCodec;
                    }
                }
                if (driverImsCall != null && driverImsCall.imsCallProfile != null && driverImsCall.imsCallProfile.call_domain == 1) {
                    arrayList3.add(driverImsCall);
                } else if (driverImsCall != null) {
                    arrayList2.add(driverImsCall);
                }
            }
        }
        openOrCloseLTEInfo(z);
        setLastCallType(arrayList2, arrayList3);
        handleMMTELCalls(arrayList2, arrayList3);
        handleCSVTCalls(arrayList3);
        isCurrentHaveCall(arrayList2, arrayList3);
    }

    private void handleMMTELCalls(ArrayList<DriverImsCall> arrayList, ArrayList<DriverImsCall> arrayList2) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker == null) {
            if (arrayList.size() > 0) {
                loge("Call for non-registered service class MMTEL");
            }
        } else if (arrayList2.size() == 0) {
            imsServiceCallTracker.handleCalls(arrayList);
        } else {
            loge("CS Call, ignore handle");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleModifyCallRequest(ImsCallAdapter.CallModify callModify) {
        log("handleCallModifyRequest(" + callModify + ")");
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleModifyCallRequest(callModify);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleModifyCallResult(int[] iArr) {
        log("handleModifyCallResult");
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleModifyCallResult(iArr);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initServiceState() {
        this.mServiceState = new ImsServiceState[5];
        for (int i = 0; i < 5; i++) {
            this.mServiceState[i] = new ImsServiceState();
            this.mServiceState[i].accessTechStatus = new ImsServiceState.StatusForAccessTech[1];
            this.mServiceState[i].accessTechStatus[0] = new ImsServiceState.StatusForAccessTech();
        }
        if (IS_VOWIFI_PROP_ON) {
            bindMapconService();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(MAPCON_SERVICE_STARTED);
            this.mContext.registerReceiver(this.mBroadCastReceiver, intentFilter, MAPCON_BROADCAST_PERMISSION, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
        if (r0 == 2) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean isActiveVTCall(com.huawei.ims.DriverImsCall r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L68
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            if (r0 != 0) goto L10
            goto L68
        L10:
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            int r0 = r0.call_type
            r6 = r0
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            r7 = r0
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L4c
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            int r0 = r0.call_type
            r6 = r0
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L4c
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            int r0 = r0.call_type
            r6 = r0
            r0 = r4
            com.huawei.ims.ImsCallProfiles r0 = r0.imsCallProfile
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L65
        L4c:
            r0 = r4
            com.huawei.ims.DriverImsCall$State r0 = r0.state
            r7 = r0
            r0 = r4
            com.huawei.ims.DriverImsCall$State r0 = r0.state
            r4 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            com.huawei.ims.DriverImsCall$State r1 = com.huawei.ims.DriverImsCall.State.ACTIVE
            if (r0 != r1) goto L65
            r0 = 1
            r8 = r0
        L65:
            r0 = r8
            return r0
        L68:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsServiceImpl.isActiveVTCall(com.huawei.ims.DriverImsCall):boolean");
    }

    private boolean isCdmaCardAndVoLTE() {
        boolean z = false;
        Phone defaultPhone = getDefaultPhone();
        if (defaultPhone != null) {
            z = defaultPhone.getCurrentUiccAppType() == IccCardApplicationStatus.AppType.APPTYPE_CSIM;
        }
        boolean isCdmaVoLTEAndISIM = ImsCallProviderUtils.isCdmaVoLTEAndISIM();
        log("isCdmaCard: " + z + ", isCdmaVoLTE: " + isCdmaVoLTEAndISIM);
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (isCdmaVoLTEAndISIM) {
                z2 = true;
            }
        }
        return z2;
    }

    private void isCurrentHaveCall(ArrayList<DriverImsCall> arrayList, ArrayList<DriverImsCall> arrayList2) {
        if (arrayList2.size() > 0 || arrayList.size() > 0) {
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

    private boolean isImsExceptionRadioNotAvailable(Throwable th) {
        return th != null && (th instanceof CommandException) && ((CommandException) th).getCommandError() == CommandException.Error.RADIO_NOT_AVAILABLE;
    }

    private boolean isVoWifiRegistered() {
        boolean z = true;
        if (this.mAccessTechMode != 1 || !this.mTelCapabilities.isCapable(1)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVolteSwitchOn() {
        Phone defaultPhone = getDefaultPhone();
        boolean z = false;
        if (defaultPhone != null) {
            z = defaultPhone.getImsSwitch();
        }
        log("Volte Switch=" + z);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        Rlog.d("HwImsServiceImpl[" + this.mSub + "]", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e("HwImsServiceImpl[" + this.mSub + "]", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveSharePreferenceToDE() {
        String defaultSharedPreferencesName = PreferenceManager.getDefaultSharedPreferencesName(this.mContext);
        if (SharePreferenceUtil.isNOrLater()) {
            log("moveSharePreferenceToDE");
            if (SharePreferenceUtil.moveSharedPreferencesFrom(this.mContext.createDeviceProtectedStorageContext(), this.mContext, defaultSharedPreferencesName)) {
                return;
            }
            loge("Failed to move shared preference");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyImsState(String str) {
        if (str.equals(IMS_STATE_REGISTERED)) {
            this.mImsStateBindRat = 1;
            this.mTelCapabilities.addCapabilities(2);
            this.mTelCapabilities.addCapabilities(1);
        } else {
            this.mImsStateBindRat = 0;
            this.mTelCapabilities.removeCapabilities(2);
            this.mTelCapabilities.removeCapabilities(1);
            this.mAccessTechMode = -1;
        }
        boolean isVoWifiRegistered = isVoWifiRegistered();
        log("Notify IMS state is " + str + ",isVowifi is " + isVoWifiRegistered);
        ImsVTGlobals.reInitVtSdk(isVoWifiRegistered);
        int subId = ImsCallProviderUtils.getSubId(this.mSub);
        Intent intent = new Intent(IMS_SERVICE_STATE_CHANGED_ACTION);
        intent.putExtra(IMS_STATE, str);
        intent.putExtra(IS_VOWIFI, isVoWifiRegistered);
        intent.putExtra(IMS_STATE_CHANGE_SUBID, subId);
        this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.GET_IMS_SERVICE_STATE");
        for (Map.Entry<Integer, ImsServiceCallTracker> entry : this.mTrackerTable.entrySet()) {
            createFeatureCapabilityCallBackThread(entry.getValue().mFeatureCapabilityListener);
        }
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
            if (uiccController.getUiccCard(ImsCallProviderUtils.getSubId(this.mSub)) == null) {
                this.mCi.getCurrentCalls(this.mHandler.obtainMessage(7));
            }
            IccCardStatus.CardState cardState = this.mCardState;
            IccCardStatus.CardState cardState2 = getCardState();
            if (cardState != cardState2) {
                log("New Card State = " + cardState2 + " Old Card State = " + cardState);
                this.mCardState = cardState2;
                if (cardState == IccCardStatus.CardState.CARDSTATE_PRESENT && IccCardStatus.CardState.CARDSTATE_PRESENT != cardState2) {
                    handleSimCardAbsent();
                }
            }
            UiccCardApplication uiccCardApplication = getUiccCardApplication();
            UiccCardApplication uiccCardApplication2 = this.mUiccApplication.get();
            if (uiccCardApplication2 != uiccCardApplication) {
                log("oldUiccApplication != newUiccApplication");
                if (uiccCardApplication2 != null) {
                    if (this.mIccRecords.get() != null) {
                        unregisterForSimRecordEvents();
                    }
                    this.mIccRecords.set(null);
                }
                if (uiccCardApplication != null) {
                    log("main slot changed, handle clear.");
                    this.mMainSlotChange = true;
                    handleSimCardAbsent();
                }
                this.mUiccApplication.set(uiccCardApplication);
                if (uiccCardApplication != null) {
                    log("New Uicc application found");
                    this.mIccRecords.set(uiccCardApplication.getIccRecords());
                    registerForSimRecordEvents();
                }
                updatePhoneBaseEvent();
            }
        } catch (Exception e) {
            loge("UiccController getInstance Exception");
        }
    }

    private void openOrCloseLTEInfo(boolean z) {
        if (z && !this.mIsReportLTEInfo) {
            queryCameraStatus();
        } else if (z || !this.mIsReportLTEInfo) {
        } else {
            requestLTEInfo(0, 100, null);
            this.mIsReportLTEInfo = false;
            this.mHandler.removeMessages(22);
            log("request close report LTE Info");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean optimizeImsRegisterState() {
        boolean z;
        if (this.mImsRegisterState == 1) {
            boolean isVoWifiRegistered = isVoWifiRegistered();
            z = true;
            if (IS_VOWIFI_PROP_ON) {
                z = true;
                if (isVoWifiRegistered) {
                    z = false;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDMBroadcast(int i, String str) {
        log("processDMBroadcast: type = " + i);
        switch (i) {
            case 1:
                this.mCi.setDMPCSCF(str, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 1, -1));
                return;
            case 2:
                this.mCi.setDMDYN(str, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 2, -1));
                return;
            case 3:
                this.mCi.setDMTIMER(str, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 3, -1));
                return;
            case 4:
                this.mCi.setDMSMS(str, this.mHandler.obtainMessage(EVENT_IMS_SET_DM_PARAMETER_DONE, 4, -1));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void queryCameraStatus() {
        CameraManager cameraManager = CameraManager.getInstance();
        if (cameraManager == null || !cameraManager.isParamReady()) {
            this.mHandler.sendEmptyMessageDelayed(22, 100L);
            return;
        }
        executeRequestLTEInfo();
        this.mIsReportLTEInfo = true;
    }

    private void registerBootCompleted() {
        log("registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        if (this.mContext != null) {
            this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
        }
    }

    private void registerForSimRecordEvents() {
        log("enter registerForSimRecordEvents");
        IccRecords iccRecords = this.mIccRecords.get();
        if (iccRecords == null) {
            log("registerForSimRecordEvents  is null");
        } else {
            iccRecords.registerForRecordsLoaded(this.mHandler, 15, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerReceiverForBattery() {
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isVolteLowbatteryEndcall() || this.mContext == null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        log("registerReceiverForBattery");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
    }

    private void requestLTEInfo(int i, int i2, Message message) {
        if (this.mCi != null) {
            this.mCi.requestGetLTEInfo(i, i2, message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBatteryStatus(Intent intent) {
        int intExtra = intent.getIntExtra("level", 100);
        int intExtra2 = intent.getIntExtra("plugged", 0);
        log("real battery level : " + intExtra);
        log("PlugType : " + intExtra2);
        if (intExtra2 != 0) {
            this.mNewBatteryStatus = 0;
        } else if (intExtra <= 2) {
            this.mNewBatteryStatus = 2;
        } else if (intExtra <= 5) {
            this.mNewBatteryStatus = 1;
        } else {
            this.mNewBatteryStatus = 0;
        }
        log("old status is : " + this.mCurrentBatteryStatus + "new status is : " + this.mNewBatteryStatus);
        if (this.mCurrentBatteryStatus != this.mNewBatteryStatus) {
            this.mCi.sendBatteryStatus(this.mNewBatteryStatus, this.mHandler.obtainMessage(EVENT_SEND_BATTERY_STATUS));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSimCardType() {
        if (TelephonyManager.getDefault().getSimState(ImsCallProviderUtils.getSubId(this.mSub) == 0 ? 1 : 0) == 5) {
            Intent intent = new Intent(IMS_SERVICE_CURRENT_PHONE_TYPE_ACTION);
            intent.putExtra(String.valueOf(0), getCurrentPhoneTypeForSlot(0));
            intent.putExtra(String.valueOf(1), getCurrentPhoneTypeForSlot(1));
            this.mContext.sendBroadcast(intent, "com.huawei.ims.permission.IMS_CURRENT_PHONE_TYPE");
        }
    }

    private void setCardTypeToGlobalDB(int i, int i2) {
        Settings.Global.putInt(this.mContext.getContentResolver(), CARD_TYPE + "_" + i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImsRegisterState(int i) {
        this.mImsRegisterState = i;
    }

    private void setLastCallType(ArrayList<DriverImsCall> arrayList, ArrayList<DriverImsCall> arrayList2) {
        if (arrayList2.size() > 0 && arrayList.size() > 0) {
            loge("impossible to be here, pls check");
            this.mLastCallType = -1;
        } else if (arrayList2.size() > 0) {
            this.mLastCallType = 0;
        } else if (arrayList.size() > 0) {
            this.mLastCallType = 1;
        } else {
            log("there is no new calling now");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeechCodec(int i) {
        Phone imsPhone = getImsPhone();
        if (imsPhone == null || imsPhone.getContext() == null) {
            return;
        }
        Settings.System.putInt(imsPhone.getContext().getContentResolver(), OPERATOR_CUSTOMER_WB_SHOW_HD, i);
        Intent intent = new Intent("com.huawei.intent.action.SPEECH_CODEC_WB");
        intent.addFlags(536870912);
        intent.putExtra("speechCodecWb", i);
        intent.putExtra(SUBSCRIPTION_KEY, ImsCallProviderUtils.getSubId(this.mSub));
        imsPhone.getContext().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVTCapabilityToModem() {
        if (this.mCurrentHaveCall) {
            log("the Current have a Call ,You should set the video capability when the call hangs up");
            this.mShouldResetVTCapability = true;
            return;
        }
        boolean isVtEnabledByPlatform = HwImsManager.isVtEnabledByPlatform(this.mContext, this.mSub);
        boolean isVtEnabledByUser = HwImsManager.isVtEnabledByUser(this.mContext, this.mSub);
        boolean isNonTtyOrTtyOnVolteEnabled = HwImsManager.isNonTtyOrTtyOnVolteEnabled(this.mContext, this.mSub);
        boolean z = isVtEnabledByPlatform && isVtEnabledByUser && isNonTtyOrTtyOnVolteEnabled;
        log("setVTCapabilityToModem: isVtEnabledByPlatform = " + isVtEnabledByPlatform + ", isVtEnabledByUser = " + isVtEnabledByUser + ", isNonTtyOrTtyOnVolteEnabled = " + isNonTtyOrTtyOnVolteEnabled + ", isSupportVt = " + z);
        this.mCi.requestSetImsVtCapability(0, z ? 1 : 0, this.mHandler.obtainMessage(19));
        if (getEnhancedVideoFeature() != -1) {
            int enhancedVideoFeature = getEnhancedVideoFeature() & 12;
            boolean z2 = enhancedVideoFeature == 4;
            log("setVTCapabilityToModem: videoCWCapability = " + enhancedVideoFeature + ", isSupportCWCapability = " + z2);
            ImsRIL imsRIL = this.mCi;
            int i = 0;
            if (z2) {
                i = 1;
            }
            imsRIL.requestSetImsVtCapability(1, i, this.mHandler.obtainMessage(19));
        }
    }

    private void unregisterForSimRecordEvents() {
        log("enter unregisterForSimRecordEvents");
        IccRecords iccRecords = this.mIccRecords.get();
        if (iccRecords == null) {
            return;
        }
        iccRecords.unregisterForRecordsLoaded(this.mHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhoneBaseEvent() {
        Phone defaultPhone = getDefaultPhone();
        Phone phone = this.mPhoneBase.get();
        if (defaultPhone != phone) {
            this.mPhoneBase.set(defaultPhone);
            if (phone != null) {
                if (this.mImsConfigImpl != null && this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                    log("Unregister listening message of data reg state from old phone base");
                    phone.getServiceStateTracker().unregisterForDataRegStateOrRatChanged(this.mHandler);
                }
                phone.getServiceStateTracker().unregisterForNetworkAttached(this.mHandler);
                phone.mCi.unregisterForSrvccStateChanged(this.mHandler);
            }
            if (defaultPhone != null) {
                if (this.mImsConfigImpl != null && this.mImsConfigImpl.isImsStateFollowVoiceDomain()) {
                    log("register listening message of data reg state from new phone base");
                    defaultPhone.getServiceStateTracker().registerForDataRegStateOrRatChanged(this.mHandler, 1007, (Object) null);
                }
                defaultPhone.getServiceStateTracker().registerForNetworkAttached(this.mHandler, 1008, (Object) null);
                defaultPhone.mCi.registerForSrvccStateChanged(this.mHandler, (int) EVENT_SRVCC_STATE_CHANGED, (Object) null);
            }
        }
    }

    public void addListener(IImsCallListListener iImsCallListListener) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.addListener(iImsCallListListener);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    protected void bindMapconService() {
        if (IS_VOWIFI_PROP_ON) {
            ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.huawei.ims.HwImsServiceImpl.4
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    HwImsServiceImpl.this.mMapconService = IMapconService.Stub.asInterface(iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    HwImsServiceImpl.this.mMapconService = null;
                }
            };
            this.mContext.bindServiceAsUser(new Intent().setClassName("com.hisi.mapcon", "com.hisi.mapcon.MapconService"), serviceConnection, 1, UserHandle.OWNER);
        }
    }

    public void changeFeatureValue(CapabilityChangeRequest.CapabilityPair capabilityPair, int i) {
        int convertCapability = convertCapability(capabilityPair.getCapability(), capabilityPair.getRadioTech());
        int intValue = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(capabilityPair.getRadioTech()), -1).intValue();
        String str = i == 1 ? "enabled" : "disabled";
        log("changeFeatureValue - cap: " + convertCapability + " radioTech: " + intValue + str);
        this.mImsConfigImpl.setFeatureValue(convertCapability, intValue, i, null);
    }

    public ImsCallProfile createCallProfile(int i, int i2) {
        ImsCallProfile imsCallProfile = null;
        if (this.mTrackerTable.get(Integer.valueOf(i)) == null) {
            loge(" Invalid service ID - cannot create profile");
        } else {
            imsCallProfile = new ImsCallProfile(i, i2);
        }
        return imsCallProfile;
    }

    public HwImsCallSessionImpl createCallSession(int i, ImsCallProfile imsCallProfile) {
        HwImsCallSessionImpl createCallSession;
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(Integer.valueOf(i));
        if (imsServiceCallTracker == null) {
            loge("Invalid service type - cannot create Call Session " + i);
            createCallSession = null;
        } else {
            createCallSession = imsServiceCallTracker.createCallSession(imsCallProfile);
        }
        return createCallSession;
    }

    public void createImsServiceCallTracker(int i, ImsServiceCallTracker.InComingListener inComingListener, ImsServiceCallTracker.FeatureCapatilityListener featureCapatilityListener) {
        log("enter createImsServiceCallTracker.  serviceClass=" + i);
        if (i == 1 || i == 3) {
            ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(Integer.valueOf(i));
            ImsServiceCallTracker imsServiceCallTracker2 = imsServiceCallTracker;
            if (imsServiceCallTracker == null) {
                imsServiceCallTracker2 = new ImsServiceCallTracker(i, null, this.mCi, this.mContext);
            }
            this.mTrackerTable.put(Integer.valueOf(i), imsServiceCallTracker2);
            imsServiceCallTracker2.mIncomingCallListener = inComingListener;
            imsServiceCallTracker2.mFeatureCapabilityListener = featureCapatilityListener;
            this.mCi.getImsRegistrationState(this.mHandler.obtainMessage(3));
        }
    }

    public HwImsCallSessionImpl findSessionByMediaId(int i) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        return imsServiceCallTracker == null ? null : imsServiceCallTracker.findSessionByMediaId(i);
    }

    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        return imsServiceCallTracker == null ? Collections.EMPTY_LIST : imsServiceCallTracker.getCallSessionByState(state);
    }

    public IccCardStatus.CardState getCardState() {
        UiccCard uiccCard = getUiccCard();
        if (uiccCard != null) {
            return uiccCard.getCardState();
        }
        log("can't get uiccCard");
        return IccCardStatus.CardState.CARDSTATE_ABSENT;
    }

    public HwImsConfigImpl getConfig() {
        return this.mImsConfigImpl;
    }

    public void getDMUSER() {
        if (this.mCi != null) {
            this.mCi.getDMUSER(this.mHandler.obtainMessage(1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phone getDefaultPhone() {
        try {
            Phone phone = PhoneFactory.getPhone(ImsCallProviderUtils.getSubId(this.mSub));
            log("getDefaultPhone phone=" + phone);
            return phone;
        } catch (Exception e) {
            loge("getDefaultPhone occurs exception");
            return null;
        }
    }

    public HwImsEcbmImpl getEcbm() {
        return this.mHwImsEcbmImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Phone getImsPhone() {
        Phone defaultPhone = getDefaultPhone();
        if (defaultPhone == null) {
            return null;
        }
        Phone imsPhone = defaultPhone.getImsPhone();
        log("getImsPhone imsPhone=" + imsPhone);
        return imsPhone;
    }

    public int getImsRegisterState() {
        return this.mImsRegisterState;
    }

    public ImsRegistrationImplBase getImsRegistrationImpl() {
        return this.mImsRegistrationImpl;
    }

    public int getLastCallType() {
        return this.mLastCallType;
    }

    public int getServiceId(int i, PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
        int i2;
        if (i == 1 || i == 3) {
            ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(Integer.valueOf(i));
            if (imsServiceCallTracker == null) {
                ImsServiceCallTracker imsServiceCallTracker2 = new ImsServiceCallTracker(i, null, this.mCi, this.mContext);
                this.mTrackerTable.put(Integer.valueOf(i), imsServiceCallTracker2);
                this.mServiceIdTable.put(Integer.valueOf(imsServiceCallTracker2.getServiceId()), imsServiceCallTracker2);
                i2 = 0;
            } else {
                imsServiceCallTracker.mRegListener = iImsRegistrationListener;
                i2 = 0;
            }
        } else {
            i2 = CODE_SERVICE_CLASS_NOT_SUPPORTED;
        }
        log("getServiceId returns " + i2);
        this.mCi.getImsRegistrationState(this.mHandler.obtainMessage(3));
        return i2;
    }

    public String getSubscriberId() {
        IccRecords iccRecords = this.mIccRecords.get();
        return iccRecords != null ? iccRecords.getIMSI() : null;
    }

    public int getSubscription() {
        return this.mSub;
    }

    public UiccCard getUiccCard() {
        Phone defaultPhone = getDefaultPhone();
        if (defaultPhone == null) {
            return null;
        }
        return defaultPhone.getUiccCard();
    }

    protected UiccCardApplication getUiccCardApplication() {
        log("enter UiccCardApplication");
        UiccController uiccController = UiccController.getInstance();
        if (this.mContext instanceof HwImsService) {
            return uiccController.getUiccCardApplication(ImsCallProviderUtils.getSubId(this.mSub), 1);
        }
        loge("mContext is not a HwImsService!");
        log("getUiccCardApplication fail");
        return null;
    }

    public HwImsUtImpl getUt() {
        return this.mImsUtImpl;
    }

    public void handleImsGetImpuDone(Message message) {
        log("enter handleImsGetImpuDone");
        AsyncResult asyncResult = (AsyncResult) message.obj;
        if (asyncResult == null || asyncResult.result == null) {
            return;
        }
        log("get impu OK, set impu to ims sdk. ");
        if (this.mImsUtImpl != null) {
            this.mImsUtImpl.handleImsGetImpuDone((String) asyncResult.result);
        }
    }

    public void handleImsRegMode(AsyncResult asyncResult) {
        if (!HwCustUtil.isVZW || asyncResult == null || asyncResult.exception != null || asyncResult.result == null) {
            return;
        }
        HwCustVZWIms.setVZWImsRegMode(this.mContext, ((int[]) asyncResult.result)[0], ImsCallProviderUtils.getSubId(this.mSub), this.mImsConfigImpl.getSimOperator(), this.mImsConfigImpl.getIccId());
    }

    public void handleSimCardAbsent() {
        log("enter handleSimCardAbsent");
        if (this.mImsUtImpl != null) {
            this.mImsUtImpl.handleSimCardAbsent();
        }
    }

    public void handleSimRecordsLoaded() {
        log("enter handleSimRecordsLoaded");
        String subscriberId = getSubscriberId();
        if (isCdmaCardAndVoLTE() && this.mCi != null) {
            this.mCi.requestReadHomeDomainName(this.mHandler.obtainMessage(20));
            this.mCi.requestReadIsimIMPI(this.mHandler.obtainMessage(21));
        }
        if (this.mImsUtImpl != null) {
            this.mImsUtImpl.handleSimRecordsLoaded(subscriberId);
        }
        log("leave handleSimRecordsLoaded");
    }

    public void registerForPhoneId(int i) {
    }

    public void removeImsServiceCallTracker(int i) {
        log("enter removeImsServiceCallTracker.  serviceClass=" + i);
        if ((i == 1 || i == 3) && this.mTrackerTable.get(Integer.valueOf(i)) != null) {
            this.mTrackerTable.remove(Integer.valueOf(i));
        }
    }

    public void removeListener(IImsCallListListener iImsCallListListener) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.removeListener(iImsCallListListener);
        } else {
            loge("ImsServiceCallTracker not found.");
        }
    }

    public void setFeatureCapabilityListener(ImsServiceCallTracker.FeatureCapatilityListener featureCapatilityListener) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.mFeatureCapabilityListener = featureCapatilityListener;
        }
    }

    public void setImsSmsConfig(int i) {
        Settings.Secure.putInt(this.mContext.getContentResolver(), ImsCallProviderUtils.getImsStoredKeyWithSubId(this.mSub, SMS_IMS_SET_VALUE), i);
        if (this.mCi != null) {
            this.mCi.setImsSmsConfig(i, this.mHandler.obtainMessage(1001));
        }
    }

    public void setIncomingListener(ImsServiceCallTracker.InComingListener inComingListener) {
        ImsServiceCallTracker imsServiceCallTracker = this.mTrackerTable.get(1);
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.mIncomingCallListener = inComingListener;
        }
    }

    public void setRegistrationListener(int i, IImsRegistrationListener iImsRegistrationListener) {
        ImsServiceCallTracker imsServiceCallTracker = this.mServiceIdTable.get(Integer.valueOf(i));
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.mRegListener = iImsRegistrationListener;
            return;
        }
        loge("Invalid service Id - cannot set reg listener " + i);
    }

    public void setUiTTYMode(int i, int i2, Message message) {
    }

    public void setVoWiFiRegErrReportEnable(int i) {
        this.mCi.setVoWiFiRegErrReportEnable(i, this.mHandler.obtainMessage(EVENT_VOWIFI_REG_ERR_REPORT));
    }
}
