package com.huawei.ims;

import android.content.Context;
import android.content.IntentFilter;
import android.net.KeepalivePacketData;
import android.net.LinkProperties;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.Registrant;
import android.os.RegistrantList;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.WorkSource;
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.HwTelephonyManager;
import android.telephony.ImsiEncryptionInfo;
import android.telephony.NetworkScanRequest;
import android.telephony.Rlog;
import android.telephony.data.DataProfile;
import android.telephony.emergency.EmergencyNumber;
import com.android.internal.telephony.BaseCommands;
import com.android.internal.telephony.ClientWakelockTracker;
import com.android.internal.telephony.CommandException;
import com.android.internal.telephony.CommandsInterface;
import com.android.internal.telephony.HwTelephonyFactory;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;
import com.android.internal.telephony.UUSInfo;
import com.android.internal.telephony.cdma.CdmaSmsBroadcastConfigInfo;
import com.android.internal.telephony.gsm.SmsBroadcastConfigInfo;
import com.android.internal.util.HexDump;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.cust.HwCustUtil;
import com.huawei.ims.vt.ImsVtGlobals;
import com.huawei.internal.telephony.HwCustRILConstants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import vendor.huawei.hardware.radio.ims.V2_0.IRadioIms;
import vendor.huawei.hardware.radio.ims.V2_0.RILCURSMUPDATEFILE;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsCallModify;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsDial;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsModifyEndCause;
import vendor.huawei.hardware.radio.ims.V2_0.RILUICCAUTH;
import vendor.huawei.hardware.radio.ims.V2_0.RadioResponseInfo;
import vendor.huawei.hardware.radio.ims.V2_0.RequestPayload;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public final class ImsRIL extends BaseCommands implements CommandsInterface {
    private static final int DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS = 200;
    private static final int DEFAULT_WAKE_LOCK_TIMEOUT = 60000;
    private static final int EVENT_ACK_WAKE_LOCK_TIMEOUT = 4;
    private static final int EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE = 26;
    private static final int EVENT_RADIO_PROXY_DEAD = 6;
    private static final int EVENT_WAKE_LOCK_TIMEOUT = 2;
    private static final int FOR_ACK_WAKELOCK = 1;
    private static final int FOR_WAKELOCK = 0;
    static final int INVALID_WAKELOCK = -1;
    private static final int IRADIO_GET_SERVICE_DELAY_MILLIS = 3000;
    private static final int LENGTH_OF_IMS_END_CAUSE = 2;
    private static final String LOG_TAG = "RILJ_IMS";
    private static final int NO_ERROR = 0;
    private static final int RADIO_STATE_UNKNOWN = -1;
    private static final String RILJ_ACK_WAKELOCK_NAME = "RILJ_ACK_WL";
    private static final int RIL_APPTYPE_UNKNOWN = 0;
    private static final String[] SOCKET_NAME_IMSRILS = {"rildi", "rildi2", "rildi3"};
    private final PowerManager.WakeLock mAckWakeLock;
    private final int mAckWakeLockTimeout;
    private volatile int mAckWlSequenceNum;
    private WorkSource mActiveWakelockWorkSource;
    protected RegistrantList mCallStateRegistrants;
    private final ClientWakelockTracker mClientWakelockTracker;
    private Context mContext;
    protected RegistrantList mHandoverStatusRegistrants;
    protected RegistrantList mHoldingToneRegistrants;
    protected RegistrantList mImsCsRedialRegistrations;
    protected RegistrantList mImsDmcnRegistrants;
    protected RegistrantList mImsNetworkStateChangedRegistrants;
    protected RegistrantList mImsRegModeRegistrants;
    private WorkSource mImsRilDefaultWorkSource;
    private final ImsRilHandler mImsRilHandler;
    protected RegistrantList mLtePdcpInfoRegistrants;
    protected RegistrantList mLteRrcInfoRegistrants;
    protected RegistrantList mModifyCallRegistrants;
    protected RegistrantList mModifyCallResultRegistrants;
    protected RegistrantList mMtStatusReportRegistrants;
    private final Integer mPhoneId;
    private ImsRadioIndication mRadioIndication;
    private volatile IRadioIms mRadioProxy;
    private final AtomicLong mRadioProxyCookie;
    private final RadioProxyDeathRecipient mRadioProxyDeathRecipient;
    private ImsRadioResponse mRadioResponse;
    private int mRequestMessagesPending;
    private int mRequestMessagesWaiting;
    private final ArrayList<ImsRilRequest> mRequestsList;
    protected Registrant mRingRegistrant;
    protected RegistrantList mRingbackToneRegistrants;
    protected RegistrantList mSpeechInfoRegistrants;
    protected RegistrantList mSrvStatusRegistrations;
    protected Registrant mSsnRegistrant;
    private AtomicBoolean mTestingEmergencyCall;
    protected RegistrantList mVoicePrivacyOffRegistrants;
    protected RegistrantList mVoicePrivacyOnRegistrants;
    protected RegistrantList mVowifiRegErrReportRegistrations;
    protected RegistrantList mVtFlowInfoReportRegistrants;
    private final PowerManager.WakeLock mWakeLock;
    private int mWakeLockCount;
    private final int mWakeLockTimeout;
    private volatile int mWlSequenceNum;

    public ImsRIL(Context context, Integer instanceId) {
        super(context);
        this.mModifyCallRegistrants = new RegistrantList();
        this.mHandoverStatusRegistrants = new RegistrantList();
        this.mSrvStatusRegistrations = new RegistrantList();
        this.mImsCsRedialRegistrations = new RegistrantList();
        this.mImsDmcnRegistrants = new RegistrantList();
        this.mVowifiRegErrReportRegistrations = new RegistrantList();
        this.mLtePdcpInfoRegistrants = new RegistrantList();
        this.mLteRrcInfoRegistrants = new RegistrantList();
        this.mVtFlowInfoReportRegistrants = new RegistrantList();
        this.mSpeechInfoRegistrants = new RegistrantList();
        this.mMtStatusReportRegistrants = new RegistrantList();
        this.mCallStateRegistrants = new RegistrantList();
        this.mImsNetworkStateChangedRegistrants = new RegistrantList();
        this.mRingbackToneRegistrants = new RegistrantList();
        this.mImsRegModeRegistrants = new RegistrantList();
        this.mModifyCallResultRegistrants = new RegistrantList();
        this.mHoldingToneRegistrants = new RegistrantList();
        this.mVoicePrivacyOnRegistrants = new RegistrantList();
        this.mVoicePrivacyOffRegistrants = new RegistrantList();
        this.mTestingEmergencyCall = new AtomicBoolean(false);
        this.mRadioProxy = null;
        this.mWlSequenceNum = 0;
        this.mAckWlSequenceNum = 0;
        this.mRadioProxyCookie = new AtomicLong(0L);
        this.mClientWakelockTracker = new ClientWakelockTracker();
        this.mRequestsList = new ArrayList<>();
        this.mContext = context;
        this.mPhoneId = instanceId;
        this.mRadioResponse = new ImsRadioResponse(this);
        this.mRadioIndication = new ImsRadioIndication(this);
        this.mImsRilHandler = new ImsRilHandler();
        this.mRadioProxyDeathRecipient = new RadioProxyDeathRecipient();
        if (context != null) {
            this.mImsRilDefaultWorkSource = new WorkSource(context.getApplicationInfo().uid, context.getPackageName());
        }
        getRadioProxy(null);
        this.mPhoneType = 0;
        if (context != null && (context.getSystemService("power") instanceof PowerManager)) {
            PowerManager pm = (PowerManager) context.getSystemService("power");
            this.mWakeLock = pm.newWakeLock(1, LOG_TAG);
            this.mWakeLock.setReferenceCounted(false);
            this.mAckWakeLock = pm.newWakeLock(1, RILJ_ACK_WAKELOCK_NAME);
            this.mAckWakeLock.setReferenceCounted(false);
        } else {
            this.mWakeLock = null;
            this.mAckWakeLock = null;
            log("The context is null.");
        }
        this.mWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", DEFAULT_WAKE_LOCK_TIMEOUT);
        this.mAckWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS);
        this.mRequestMessagesPending = 0;
        this.mRequestMessagesWaiting = 0;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
    }

    public void registerForHandoverStatusChanged(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mHandoverStatusRegistrants.add(reg);
    }

    public void unregisterForHandoverStatusChanged(Handler handler) {
        this.mHandoverStatusRegistrants.remove(handler);
    }

    public void registerForSrvStatusUpdate(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mSrvStatusRegistrations.add(reg);
    }

    public void unregisterForSrvStatusUpdate(Handler handler) {
        this.mSrvStatusRegistrations.remove(handler);
    }

    public void registerForUnsolLtePdcpInfo(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mLtePdcpInfoRegistrants.add(reg);
    }

    public void unregisterForUnsolLtePdcpInfo(Handler handler) {
        this.mLtePdcpInfoRegistrants.remove(handler);
    }

    public void registerForUnsolLteRrcInfo(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mLteRrcInfoRegistrants.add(reg);
    }

    public void unregisterForUnsolLteRrcInfo(Handler handler) {
        this.mLteRrcInfoRegistrants.remove(handler);
    }

    public void registerForImsCsRedial(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mImsCsRedialRegistrations.add(reg);
    }

    public void unregisterForImsCsRedial(Handler handler) {
        this.mImsCsRedialRegistrations.remove(handler);
    }

    public void registerForImsDmcn(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mImsDmcnRegistrants.add(reg);
    }

    public void unregisterForImsDmcn(Handler handler) {
        this.mImsDmcnRegistrants.remove(handler);
    }

    public void registerForVtFlowInfo(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mVtFlowInfoReportRegistrants.add(reg);
    }

    public void unregisterForVtFlowInfo(Handler handler) {
        this.mVtFlowInfoReportRegistrants.remove(handler);
    }

    public void registerForUnsolSpeechInfo(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mSpeechInfoRegistrants.add(reg);
    }

    public void unregisterForUnsolSpeechInfo(Handler handler) {
        this.mSpeechInfoRegistrants.remove(handler);
    }

    public void registerForMtStatusReport(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mMtStatusReportRegistrants.add(reg);
    }

    public void unregisterForMtStatusReport(Handler handler) {
        this.mMtStatusReportRegistrants.remove(handler);
    }

    public void registerForCallStateChanged(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mCallStateRegistrants.add(reg);
    }

    public void unregisterForCallStateChanged(Handler handler) {
        this.mCallStateRegistrants.remove(handler);
    }

    public void registerForImsNetworkStateChanged(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mImsNetworkStateChangedRegistrants.add(reg);
    }

    public void unregisterForImsNetworkStateChanged(Handler handler) {
        this.mImsNetworkStateChangedRegistrants.remove(handler);
    }

    public void registerForRingbackTone(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mRingbackToneRegistrants.add(reg);
    }

    public void unregisterForRingbackTone(Handler handler) {
        this.mRingbackToneRegistrants.remove(handler);
    }

    public void registerForImsRegMode(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mImsRegModeRegistrants.add(reg);
    }

    public void unregisterForImsRegMode(Handler handler) {
        this.mImsRegModeRegistrants.remove(handler);
    }

    public void registerForModifyCall(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mModifyCallRegistrants.add(reg);
    }

    public void unregisterForModifyCall(Handler handler) {
        this.mModifyCallRegistrants.remove(handler);
    }

    public void registerForCallModifyResult(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mModifyCallResultRegistrants.add(reg);
    }

    public void unregisterForCallModifyResult(Handler handler) {
        this.mModifyCallResultRegistrants.remove(handler);
    }

    public void registerForVowifiRegErrReport(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mVowifiRegErrReportRegistrations.add(reg);
    }

    public void unregisterForVowifiRegErrReport(Handler handler) {
        this.mVowifiRegErrReportRegistrations.remove(handler);
    }

    public void registerForOnHoldTone(Handler handler, int what, Object obj) {
        Registrant reg = new Registrant(handler, what, obj);
        this.mHoldingToneRegistrants.add(reg);
    }

    public void unregisterForOnHoldTone(Handler handler) {
        this.mHoldingToneRegistrants.remove(handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public final class RadioProxyDeathRecipient implements IHwBinder.DeathRecipient {
        RadioProxyDeathRecipient() {
        }

        public void serviceDied(long cookie) {
            ImsRIL.this.mImsRilHandler.sendMessageDelayed(ImsRIL.this.mImsRilHandler.obtainMessage(6, Long.valueOf(cookie)), 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class ImsRilHandler extends Handler {
        ImsRilHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i != 2) {
                if (i == 6) {
                    ImsRIL.this.logd("handleMessage: EVENT_RADIO_PROXY_DEAD cookie = " + msg.obj + " mRadioProxyCookie = " + ImsRIL.this.mRadioProxyCookie.get());
                    if (((Long) msg.obj).longValue() == ImsRIL.this.mRadioProxyCookie.get()) {
                        ImsRIL.this.resetProxyAndRequestList();
                        ImsRIL.this.getRadioProxy(null);
                        return;
                    }
                    return;
                }
                ImsRIL.this.logd("handleMessage: msg.what = " + msg.what);
                return;
            }
            synchronized (ImsRIL.this.mRequestsList) {
                if (msg.arg1 == ImsRIL.this.mWlSequenceNum && ImsRIL.this.clearWakeLock(0)) {
                    int count = ImsRIL.this.mRequestsList.size();
                    ImsRIL.this.log("WAKE_LOCK_TIMEOUT  mRequestsList=" + count);
                    for (int i2 = 0; i2 < count; i2++) {
                        ImsRilRequest rr = (ImsRilRequest) ImsRIL.this.mRequestsList.get(i2);
                        ImsRIL.this.log(i2 + ": [" + rr.mSerial + "] " + ImsRIL.requestToString(rr.mRequest));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String requestToString(int request) {
        if (request == 24) {
            return "HW_IMS_DTMF";
        }
        if (request == 53) {
            return "HW_IMS_SET_MUTE";
        }
        if (request == 72) {
            return "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER";
        }
        if (request == 112) {
            return "IMS_REGISTRATION_STATE";
        }
        if (request == 2005) {
            return "RIL_REQUEST_HW_RESTRAT_RILD";
        }
        if (request == 2054) {
            return "HW_IMS_ANSWER";
        }
        if (request == 2069) {
            return "HW_IMS_IMPU";
        }
        if (request == 2076) {
            return "HW_IMS_ADD_CONFERENCE_MEMBER";
        }
        if (request == 2132) {
            return "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG";
        }
        if (request == 2170) {
            return "RIL_REQUEST_HW_IMS_REJ_CALL";
        }
        if (request == 49) {
            return "HW_IMS_DTMF_START";
        }
        if (request == 50) {
            return "HW_IMS_DTMF_STOP";
        }
        if (request == 2043) {
            return "HW_IMS_DIAL";
        }
        if (request == 2044) {
            return "HW_IMS_GET_CURRENT_CALLS";
        }
        if (request == 2078) {
            return "HW_IMS_SET_CLIR";
        }
        if (request == 2079) {
            return "HW_IMS_SET_CALL_WAITING";
        }
        if (request == 2097) {
            return "HW_IMS_MODIFY_CALL_INITIATE";
        }
        if (request != 2098) {
            switch (request) {
                case 12:
                    return "HW_IMS_HANGUP";
                case 13:
                    return "HW_IMS_HANGUP_WAITING_OR_BACKGROUND";
                case 14:
                    return "HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND";
                case 15:
                    return "HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE";
                case 16:
                    return "HW_IMS_CONFERENCE";
                case 17:
                    return "HW_IMS_UDUB";
                default:
                    switch (request) {
                        case 2081:
                            return "RIL_REQUEST_HW_UICC_AUTH";
                        case 2082:
                            return "RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP";
                        case 2083:
                            return "RIL_REQUEST_HW_UICC_FILE_UPDATE";
                        case 2084:
                            return "RIL_REQUEST_HW_GET_UICC_FILE";
                        case 2085:
                            return "RIL_REQUEST_HW_UICC_KS_NAF";
                        default:
                            switch (request) {
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_PCSCF /* 2138 */:
                                    return "HW_IMS_SET_DM_PCSCF";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_DYN /* 2139 */:
                                    return "HW_IMS_SET_DM_DYN";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_TIMER /* 2140 */:
                                    return "HW_IMS_SET_DM_TIMER";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_SMS /* 2141 */:
                                    return "HW_IMS_SET_DM_SMS";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_PCSCF /* 2142 */:
                                    return "HW_IMS_GET_DM_PCSCF";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_TIMER /* 2143 */:
                                    return "HW_IMS_GET_DM_TIMER";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_DYN /* 2144 */:
                                    return "HW_IMS_GET_DM_DYN";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_SMS /* 2145 */:
                                    return "HW_IMS_GET_DM_SMS";
                                case HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_USER /* 2146 */:
                                    return "HW_IMS_GET_DM_USER";
                                case HwCustRILConstants.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID /* 2147 */:
                                    return "HW_SET_WIFI_EMERGENCY_AID";
                                default:
                                    switch (request) {
                                        case HwCustRILConstants.RIL_REQUEST_HW_IMS_BATTERY_STATUS /* 2149 */:
                                            return "RIL_REQUEST_HW_IMS_BATTERY_STATUS";
                                        case HwCustRILConstants.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY /* 2150 */:
                                            return "RIL_REQUEST_HW_SET_IMSVT_CAPABILITY";
                                        case HwCustRILConstants.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE /* 2151 */:
                                            return "HW_IMS_LAST_CALL_FAIL_CAUSE";
                                        case HwCustRILConstants.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL /* 2152 */:
                                            return "RIL_REQUEST_CANCEL_IMS_VIDEO_CALL";
                                        case HwCustRILConstants.RIL_REQUEST_HW_VOLTE_DOMAIN /* 2153 */:
                                            return "RIL_REQUEST_HW_VOLTE_DOMAIN";
                                        case HwCustRILConstants.RIL_REQUEST_HW_VOLTE_IMPI /* 2154 */:
                                            return "RIL_REQUEST_HW_VOLTE_IMPI";
                                        case HwCustRILConstants.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG /* 2155 */:
                                            return "HW_SET_IMS_SMS_CONFIG";
                                        case HwCustRILConstants.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG /* 2156 */:
                                            return "HW_GET_IMS_SMS_CONFIG";
                                        case HwCustRILConstants.RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT /* 2157 */:
                                            return "RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT";
                                        default:
                                            return "<unknown request> " + request;
                                    }
                            }
                    }
            }
        }
        return "HW_IMS_MODIFY_CALL_CONFIRM";
    }

    static String responseToString(int request) {
        if (request == 1037) {
            return "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED";
        }
        if (request == 3036) {
            return "UNSOL_HW_IMS_MT_STATUS_REPORT";
        }
        if (request == 3038) {
            return "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY";
        }
        if (request == 3052) {
            return "RIL_UNSOL_HW_IMS_DMCN";
        }
        if (request == 3018) {
            return "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION";
        }
        if (request == 3019) {
            return "UNSOL_HW_IMS_VOICE_BAND_INFO";
        }
        if (request == 3029) {
            return "UNSOL_HW_IMS_RESPONSE_MODIFY_IND";
        }
        if (request == 3030) {
            return "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE";
        }
        if (request == 3045) {
            return "RIL_UNSOL_HW_LTE_PDCP_INFO";
        }
        if (request != 3046) {
            switch (request) {
                case HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED /* 3011 */:
                    return "UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED";
                case HwCustRILConstants.RIL_UNSOL_HW_IMS_CALL_RING /* 3012 */:
                    return "UNSOL_HW_IMS_CALL_RING";
                case HwCustRILConstants.RIL_UNSOL_HW_IMS_RINGBACK_TONE /* 3013 */:
                    return "UNSOL_HW_IMS_RINGBACK_TONE";
                case HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_HANDOVER /* 3014 */:
                    return "UNSOL_HW_IMS_RESPONSE_HANDOVER";
                case HwCustRILConstants.RIL_UNSOL_HW_IMS_SRV_STATUS_UPDATE /* 3015 */:
                    return "UNSOL_HW_IMS_SRV_STATUS_UPDATE";
                default:
                    switch (request) {
                        case HwCustRILConstants.RIL_UNSOL_HW_IMS_HOLD_TONE_IND /* 3054 */:
                            return "RIL_UNSOL_HW_IMS_HOLD_TONE_IND";
                        case HwCustRILConstants.RIL_UNSOL_HW_IMS_REG_TYPE_IND /* 3055 */:
                            return "RIL_UNSOL_HW_IMS_REG_TYPE_IND";
                        case HwCustRILConstants.RIL_UNSOL_HW_IMS_REG_ERR_REPORT /* 3056 */:
                            return "RIL_UNSOL_HW_IMS_REG_ERR_REPORT";
                        default:
                            return "<unknown response> " + request;
                    }
            }
        }
        return "RIL_UNSOL_HW_LTE_RRC_INFO";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetProxyAndRequestList() {
        this.mRadioProxy = null;
        ImsRilRequest.resetSerial();
        clearRequestList(1);
    }

    private void handleRadioProxyExceptionForRilReq(String caller) {
        logd("exception in + " + caller);
        resetProxyAndRequestList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IRadioIms getRadioProxy(Message result) {
        if (this.mRadioProxy != null) {
            return this.mRadioProxy;
        }
        try {
            try {
                IRadioIms huaweiRadio = IRadioIms.getService(SOCKET_NAME_IMSRILS[this.mPhoneId == null ? 0 : this.mPhoneId.intValue()]);
                this.mRadioProxy = huaweiRadio;
            } catch (RemoteException | RuntimeException e) {
                logd("getRadioProxy: huaweiradioProxy got V2_0 exception");
            }
            if (this.mRadioProxy != null) {
                this.mRadioProxy.linkToDeath(this.mRadioProxyDeathRecipient, this.mRadioProxyCookie.incrementAndGet());
                this.mRadioProxy.setResponseFunctionsHuawei(this.mRadioResponse, this.mRadioIndication);
            }
        } catch (RemoteException | RuntimeException e2) {
            this.mRadioProxy = null;
            log("setResponseFunctions occurs exception");
        }
        if (this.mRadioProxy == null) {
            if (result != null) {
                AsyncResult.forMessage(result, (Object) null, CommandException.fromRilErrno(1));
                result.sendToTarget();
            }
            ImsRilHandler imsRilHandler = this.mImsRilHandler;
            imsRilHandler.sendMessageDelayed(imsRilHandler.obtainMessage(6, Long.valueOf(this.mRadioProxyCookie.get())), 3000L);
        }
        return this.mRadioProxy;
    }

    private void releaseWakeLockIfDone() {
        synchronized (this.mWakeLock) {
            if (this.mWakeLock.isHeld() && this.mRequestMessagesPending == 0 && this.mRequestMessagesWaiting == 0) {
                this.mImsRilHandler.removeMessages(2);
                this.mWakeLock.release();
            }
        }
    }

    private String retToString(int req, Object ret) {
        if (ret == null) {
            return "";
        }
        if (ret instanceof int[]) {
            int[] intArray = (int[]) ret;
            int length = intArray.length;
            StringBuilder sb = new StringBuilder("{");
            if (length > 0) {
                int i = intArray[0];
                sb.append(i);
                for (int i2 = 0 + 1; i2 < length; i2++) {
                    sb.append(", ");
                    sb.append(intArray[i2]);
                }
            }
            sb.append("}");
            String str = sb.toString();
            return str;
        }
        if (ret instanceof String[]) {
            String[] strings = (String[]) ret;
            int length2 = strings.length;
            StringBuilder sb2 = new StringBuilder("{");
            if (length2 > 0) {
                sb2.append(strings[0]);
                for (int i3 = 0 + 1; i3 < length2; i3++) {
                    sb2.append(", ");
                    sb2.append(strings[i3]);
                }
            }
            sb2.append("}");
            String str2 = sb2.toString();
            return str2;
        }
        if (req == 2044) {
            ArrayList<DriverImsCall> calls = (ArrayList) ret;
            StringBuilder sb3 = new StringBuilder(" ");
            int callListSize = calls.size();
            for (int i4 = 0; i4 < callListSize; i4++) {
                sb3.append("[");
                sb3.append(calls.get(i4));
                sb3.append("] ");
            }
            String str3 = sb3.toString();
            return str3;
        }
        String str4 = ret.toString();
        return str4;
    }

    public void log(String msg) {
        Rlog.i("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logd(String msg) {
        Rlog.i("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logv(String msg) {
        Rlog.i("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logw(String msg) {
        Rlog.w("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void unsljLog(int response) {
        log("[UNSL]< " + responseToString(response) + " " + response);
    }

    public void unsljLogRet(int response, Object ret) {
        log("[UNSL]< " + responseToString(response) + " " + retToString(response, ret));
    }

    public void unsljLogvRet(int response, Object ret) {
        logv("[UNSL]< " + responseToString(response) + " " + retToString(response, ret));
    }

    public void setPhoneType(int phoneType) {
        log("setPhoneType=" + phoneType + " old value=" + this.mPhoneType);
        this.mPhoneType = phoneType;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (pw == null) {
            return;
        }
        pw.println("ImsRIL:");
        synchronized (this.mWakeLock) {
            pw.println(" mWakeLock=" + this.mWakeLock);
        }
        pw.println(" mWakeLockTimeout=" + this.mWakeLockTimeout);
        synchronized (this.mRequestsList) {
            pw.println(" mRequestMessagesPending=" + this.mRequestMessagesPending);
            pw.println(" mRequestMessagesWaiting=" + this.mRequestMessagesWaiting);
            int count = this.mRequestsList.size();
            pw.println(" mRequestList count=" + count);
            for (int i = 0; i < count; i++) {
                ImsRilRequest rr = this.mRequestsList.get(i);
                pw.println(" [" + rr.mSerial + "] " + requestToString(rr.mRequest));
            }
        }
        pw.println(" mTestingEmergencyCall=" + this.mTestingEmergencyCall.get());
    }

    private void logUnimplemented() {
        log("Unimplemented method.");
    }

    public void getIccCardStatus(Message result) {
        logUnimplemented();
    }

    public void supplyIccPin(String pin, Message result) {
        logUnimplemented();
    }

    public void supplyIccPuk(String puk, String newPin, Message result) {
        logUnimplemented();
    }

    public void supplyIccPin2(String pin, Message result) {
        logUnimplemented();
    }

    public void supplyIccPuk2(String puk, String newPin2, Message result) {
        logUnimplemented();
    }

    public void changeIccPin(String oldPin, String newPin, Message result) {
        logUnimplemented();
    }

    public void changeIccPin2(String oldPin2, String newPin2, Message result) {
        logUnimplemented();
    }

    public void supplyNetworkDepersonalization(String netpin, Message result) {
        logUnimplemented();
    }

    public void changeBarringPassword(String facility, String oldPwd, String newPwd, Message result) {
        logUnimplemented();
    }

    public void supplyDepersonalization(String netpin, int type, Message result) {
        logUnimplemented();
    }

    public void getDataCallList(Message result) {
        logUnimplemented();
    }

    public void getIMSI(Message result) {
        logUnimplemented();
    }

    public void getIMSIForApp(String aid, Message result) {
        logUnimplemented();
    }

    public void getIMEI(Message result) {
        logUnimplemented();
    }

    public void getIMEISV(Message result) {
        logUnimplemented();
    }

    public void setPreferredVoicePrivacy(boolean isEnable, Message result) {
        logUnimplemented();
    }

    public void getPreferredVoicePrivacy(Message result) {
        logUnimplemented();
    }

    public void separateConnection(int gsmIndex, Message result) {
        logUnimplemented();
    }

    public void getLastDataCallFailCause(Message result) {
        logUnimplemented();
    }

    public void getMute(Message response) {
        logUnimplemented();
    }

    public void getSignalStrength(Message result) {
        logUnimplemented();
    }

    public void getVoiceRegistrationState(Message result) {
        logUnimplemented();
    }

    public void getDataRegistrationState(Message result) {
        logUnimplemented();
    }

    public void getOperator(Message result) {
        logUnimplemented();
    }

    public void sendBurstDtmf(String dtmfString, int on, int off, Message result) {
        logUnimplemented();
    }

    public void sendSMS(String smscPdu, String pdu, Message result) {
        logUnimplemented();
    }

    public void sendCdmaSms(byte[] pdu, Message result) {
        logUnimplemented();
    }

    public void sendImsGsmSms(String smscPdu, String pdu, int retry, int messageRef, Message response) {
        logUnimplemented();
    }

    public void sendImsCdmaSms(byte[] pdu, int retry, int messageRef, Message response) {
        logUnimplemented();
    }

    public void deleteSmsOnSim(int index, Message response) {
        logUnimplemented();
    }

    public void deleteSmsOnRuim(int index, Message response) {
        logUnimplemented();
    }

    public void writeSmsToSim(int status, String smsc, String pdu, Message response) {
        logUnimplemented();
    }

    public void writeSmsToRuim(int status, String pdu, Message response) {
        logUnimplemented();
    }

    public void deactivateDataCall(int cid, int reason, Message result) {
        logUnimplemented();
    }

    public void setRadioPower(boolean isOn, Message result) {
        logUnimplemented();
    }

    public void setSuppServiceNotifications(boolean isEnable, Message result) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingGsmSms(boolean isSuccess, int cause, Message result) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingCdmaSms(boolean isSuccess, int cause, Message result) {
        logUnimplemented();
    }

    public void acknowledgeIncomingGsmSmsWithPdu(boolean isSuccess, String ackPdu, Message result) {
        logUnimplemented();
    }

    public void iccIO(int command, int fileid, String path, int p1, int p2, int p3, String data, String pin2, Message result) {
        logUnimplemented();
    }

    public void iccIOForApp(int command, int fileid, String path, int p1, int p2, int p3, String data, String pin2, String aid, Message result) {
        logUnimplemented();
    }

    public void getCLIR(Message result) {
        logv("getCLIR");
        logUnimplemented();
    }

    public void queryCallWaiting(int serviceClass, Message response) {
        logv("queryCallWaiting serviceClass = " + serviceClass);
        logUnimplemented();
    }

    public void sendDeviceState(int stateType, boolean isOn, Message result) {
        logUnimplemented();
    }

    public void setDataProfile(DataProfile[] dps, boolean isRoaming, Message result) {
        logUnimplemented();
    }

    public void setUnsolResponseFilter(int filter, Message result) {
        logUnimplemented();
    }

    public void setNetworkSelectionModeAutomatic(Message response) {
        logUnimplemented();
    }

    public void setNetworkSelectionModeManual(String operatorNumeric, Message response) {
        logUnimplemented();
    }

    public void getNetworkSelectionMode(Message response) {
        logUnimplemented();
    }

    public void getAvailableNetworks(Message response) {
        logUnimplemented();
    }

    public void setCallForward(int action, int cfReason, int serviceClass, String number, int timeSeconds, Message response) {
        logUnimplemented();
    }

    public void queryCallForwardStatus(int cfReason, int serviceClass, String number, Message response) {
        logUnimplemented();
    }

    public void queryCLIP(Message response) {
        logv("queryClip");
        logUnimplemented();
    }

    public void getBasebandVersion(Message response) {
        logUnimplemented();
    }

    public void sendUSSD(String ussdString, Message response) {
        logUnimplemented();
    }

    public void cancelPendingUssd(Message response) {
        logUnimplemented();
    }

    public void resetRadio(Message result) {
        logUnimplemented();
    }

    public void invokeOemRilRequestRaw(byte[] data, Message response) {
        logUnimplemented();
    }

    public void invokeOemRilRequestStrings(String[] strings, Message response) {
        logUnimplemented();
    }

    public void setBandMode(int bandMode, Message response) {
        logUnimplemented();
    }

    public void queryAvailableBandMode(Message response) {
        logUnimplemented();
    }

    public void sendTerminalResponse(String contents, Message response) {
        logUnimplemented();
    }

    public void sendEnvelope(String contents, Message response) {
        logUnimplemented();
    }

    public void sendEnvelopeWithStatus(String contents, Message response) {
        logUnimplemented();
    }

    public void handleCallSetupRequestFromSim(boolean isAccept, Message response) {
        logUnimplemented();
    }

    public void setPreferredNetworkType(int networkType, Message response) {
        logUnimplemented();
    }

    public void getPreferredNetworkType(Message response) {
        logUnimplemented();
    }

    public void setLocationUpdates(boolean isEnable, Message response) {
        logUnimplemented();
    }

    public void getSmscAddress(Message result) {
        logUnimplemented();
    }

    public void setSmscAddress(String address, Message result) {
        logUnimplemented();
    }

    public void reportSmsMemoryStatus(boolean isAvailable, Message result) {
        logUnimplemented();
    }

    public void reportStkServiceIsRunning(Message result) {
        logUnimplemented();
    }

    public void getCdmaSubscriptionSource(Message response) {
        logUnimplemented();
    }

    public void getGsmBroadcastConfig(Message response) {
        logUnimplemented();
    }

    public void setGsmBroadcastConfig(SmsBroadcastConfigInfo[] config, Message response) {
        logUnimplemented();
    }

    public void setGsmBroadcastActivation(boolean isActivate, Message response) {
        logUnimplemented();
    }

    public void getDeviceIdentity(Message response) {
        logUnimplemented();
    }

    public void getCDMASubscription(Message response) {
        logUnimplemented();
    }

    public void queryCdmaRoamingPreference(Message response) {
        logUnimplemented();
    }

    public void setCdmaRoamingPreference(int cdmaRoamingType, Message response) {
        logUnimplemented();
    }

    public void setCdmaSubscriptionSource(int cdmaSubscription, Message response) {
        logUnimplemented();
    }

    public void queryTTYMode(Message response) {
        logUnimplemented();
    }

    public void setTTYMode(int ttyMode, Message response) {
        logUnimplemented();
    }

    public void sendCDMAFeatureCode(String featureCode, Message response) {
        logUnimplemented();
    }

    public void getCdmaBroadcastConfig(Message response) {
        logUnimplemented();
    }

    public void setCdmaBroadcastConfig(CdmaSmsBroadcastConfigInfo[] configs, Message response) {
        logUnimplemented();
    }

    public void setCdmaBroadcastActivation(boolean isActivate, Message response) {
        logUnimplemented();
    }

    public void supplyIccPinForApp(String pin, String aid, Message response) {
        logUnimplemented();
    }

    public void supplyIccPukForApp(String puk, String newPin, String aid, Message response) {
        logUnimplemented();
    }

    public void supplyIccPin2ForApp(String pin2, String aid, Message response) {
        logUnimplemented();
    }

    public void supplyIccPuk2ForApp(String puk2, String newPin2, String aid, Message response) {
        logUnimplemented();
    }

    public void changeIccPinForApp(String oldPin, String newPin, String aidPtr, Message response) {
        logUnimplemented();
    }

    public void changeIccPin2ForApp(String oldPin2, String newPin2, String aidPtr, Message response) {
        logUnimplemented();
    }

    public void getVoiceRadioTechnology(Message result) {
        logUnimplemented();
    }

    public void setUiccSubscription(int slotId, int appIndex, int subId, int subStatus, Message response) {
        logUnimplemented();
    }

    public void queryFacilityLock(String facility, String password, int serviceClass, Message response) {
        logUnimplemented();
    }

    public void queryFacilityLockForApp(String facility, String password, int serviceClass, String appId, Message response) {
        logUnimplemented();
    }

    public void setFacilityLock(String facility, boolean isLockState, String password, int serviceClass, Message response) {
        logUnimplemented();
    }

    public void setFacilityLockForApp(String facility, boolean isLockState, String password, int serviceClass, String appId, Message response) {
        logUnimplemented();
    }

    public void setupDataCall(int accessNetworkType, DataProfile dataProfile, boolean isRoaming, boolean isAllowRoaming, int reason, LinkProperties linkProperties, Message result) {
        logUnimplemented();
    }

    public void getLastPdpFailCause(Message result) {
        logUnimplemented();
    }

    public void getPDPContextList(Message result) {
        logUnimplemented();
    }

    public int getRadioState() {
        logUnimplemented();
        return -1;
    }

    public void registerForRadioStateChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRadioStateChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForVoiceRadioTechChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForVoiceRadioTechChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForOn(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForOn(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForAvailable(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForAvailable(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForNotAvailable(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNotAvailable(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForOffOrNotAvailable(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForOffOrNotAvailable(Handler hanlder) {
        logUnimplemented();
    }

    public void startNetworkScan(NetworkScanRequest nsr, Message response) {
        logUnimplemented();
    }

    public void stopNetworkScan(Message response) {
        logUnimplemented();
    }

    public void setCarrierInfoForImsiEncryption(ImsiEncryptionInfo imsiEncryptionInfo, Message response) {
        logUnimplemented();
    }

    public void registerForModemReset(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForModemReset(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForCarrierInfoForImsiEncryption(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCarrierInfoForImsiEncryption(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForNetworkScanResult(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNetworkScanResult(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForInCallVoicePrivacyOn(Handler hanlder, int what, Object obj) {
        Registrant r = new Registrant(hanlder, what, obj);
        this.mVoicePrivacyOnRegistrants.add(r);
    }

    public void unregisterForInCallVoicePrivacyOn(Handler hanlder) {
        this.mVoicePrivacyOnRegistrants.remove(hanlder);
    }

    public void registerForInCallVoicePrivacyOff(Handler hanlder, int what, Object obj) {
        Registrant r = new Registrant(hanlder, what, obj);
        this.mVoicePrivacyOffRegistrants.add(r);
    }

    public void unregisterForInCallVoicePrivacyOff(Handler hanlder) {
        this.mVoicePrivacyOffRegistrants.remove(hanlder);
    }

    public void registerForSubscriptionStatusChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForSubscriptionStatusChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnNewGsmSms(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewGsmSms(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnNewCdmaSms(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewCdmaSms(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnNewGsmBroadcastSms(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewGsmBroadcastSms(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnSmsOnSim(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSmsOnSim(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnSmsStatus(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSmsStatus(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnNITZTime(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNITZTime(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnUSSD(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnUSSD(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnSignalStrengthUpdate(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSignalStrengthUpdate(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnIccSmsFull(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnIccSmsFull(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForIccRefresh(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForIccRefresh(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnIccRefresh(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unsetOnIccRefresh(Handler hanlder) {
        logUnimplemented();
    }

    public void unSetOnCallRing(Handler hanlder) {
        Registrant registrant = this.mRingRegistrant;
        if (registrant != null && registrant.getHandler() == hanlder) {
            this.mRingRegistrant.clear();
            this.mRingRegistrant = null;
        }
    }

    public void setOnRestrictedStateChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnRestrictedStateChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnSuppServiceNotification(Handler hanlder, int what, Object obj) {
        this.mSsnRegistrant = new Registrant(hanlder, what, obj);
    }

    public void unSetOnSuppServiceNotification(Handler hanlder) {
        this.mSsnRegistrant.clear();
    }

    public void setOnCatSessionEnd(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatSessionEnd(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnCatProactiveCmd(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatProactiveCmd(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnCatEvent(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatEvent(Handler hanlder) {
        logUnimplemented();
    }

    public void setOnCatCallSetUp(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatCallSetUp(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForDisplayInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForDisplayInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForCallWaitingInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCallWaitingInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForSignalInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForSignalInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForNumberInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNumberInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForRedirectedNumberInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRedirectedNumberInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForLineControlInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForLineControlInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerFoT53ClirlInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForT53ClirInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForT53AudioControlInfo(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForT53AudioControlInfo(Handler hanlder) {
        logUnimplemented();
    }

    public void setEmergencyCallbackMode(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void registerForCdmaOtaProvision(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaOtaProvision(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForResendIncallMute(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForResendIncallMute(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForCdmaSubscriptionChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaSubscriptionChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForCdmaPrlChanged(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaPrlChanged(Handler hanlder) {
        logUnimplemented();
    }

    public void registerForExitEmergencyCallbackMode(Handler hanlder, int what, Object obj) {
        if (HwCustUtil.IS_VZW) {
            super.registerForExitEmergencyCallbackMode(hanlder, what, obj);
        } else {
            logUnimplemented();
        }
    }

    public void unregisterForExitEmergencyCallbackMode(Handler hanlder) {
        if (HwCustUtil.IS_VZW) {
            super.unregisterForExitEmergencyCallbackMode(hanlder);
        } else {
            logUnimplemented();
        }
    }

    public void registerForRilConnected(Handler hanlder, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRilConnected(Handler hanlder) {
        logUnimplemented();
    }

    public void iccGetATR(Message result) {
        logUnimplemented();
    }

    public int getLteOnCdmaMode() {
        logUnimplemented();
        return 0;
    }

    public void testingEmergencyCall() {
        logUnimplemented();
    }

    public void riseCdmaCutoffFreq(boolean isOn, Message result) {
        logUnimplemented();
    }

    public void setInitialAttachApn(DataProfile dataProfile, boolean isRoaming, Message result) {
        logUnimplemented();
    }

    public void switchBalongSim(int modem1ToSlot, int modem2ToSlot, Message result) {
        logUnimplemented();
    }

    public void getBalongSim(Message result) {
        logUnimplemented();
    }

    public void queryCardType(Message result) {
        logUnimplemented();
    }

    public void sendSMSExpectMore(String smscPdu, String pdu, Message result) {
    }

    public void sendSMSSetLong(int flag, Message result) {
    }

    public void requestIccSimAuthentication(int authContext, String data, String aid, Message response) {
    }

    public void iccOpenLogicalChannel(String aid, int p2, Message response) {
    }

    public void iccCloseLogicalChannel(int channel, Message response) {
    }

    public void iccTransmitApduLogicalChannel(int channel, int cla, int instruction, int p1, int p2, int p3, String data, Message response) {
    }

    public void iccTransmitApduBasicChannel(int cla, int instruction, int p1, int p2, int p3, String data, Message response) {
    }

    public void getHardwareConfig(Message result) {
    }

    public void nvResetConfig(int resetType, Message response) {
    }

    public void nvWriteCdmaPrl(byte[] preferredRoamingList, Message response) {
    }

    public void setLinkCapacityReportingCriteria(int hysteresisMs, int hysteresisDlKbps, int hysteresisUlKbps, int[] thresholdsDlKbps, int[] thresholdsUlKbps, int ran, Message result) {
    }

    public void setSignalStrengthReportingCriteria(int hysteresisMs, int hysteresisDb, int[] thresholdsDbm, int ran, Message result) {
    }

    public void stopNattKeepalive(int sessionHandle, Message result) {
        logUnimplemented();
    }

    public void startNattKeepalive(int contextId, KeepalivePacketData packetData, int intervalMillis, Message result) {
        logUnimplemented();
    }

    public void setLogicalToPhysicalSlotMapping(int[] physicalSlots, Message result) {
        logUnimplemented();
    }

    public void getIccSlotsStatus(Message result) {
        logUnimplemented();
    }

    public void dial(String address, boolean isEmergencyCall, EmergencyNumber emergencyNumber, boolean hasKnownUserIntentEmergency, int clirMode, Message result) {
        logUnimplemented();
    }

    public void dial(String address, boolean isEmergencyCall, EmergencyNumber emergencyNumber, boolean hasKnownUserIntentEmergency, int clirMode, UUSInfo uusInfo, Message result) {
        logUnimplemented();
    }

    public void dial(String address, int clirMode, ImsCallProfiles imsCallProfile, Message result) {
        logd("dial address= " + HiddenPrivacyInfo.putMosaic(address, 0) + " clirMode= " + clirMode + " imsCallProfile= " + imsCallProfile);
        if (imsCallProfile != null && imsCallProfile.getCallType() == 3 && !ImsVtGlobals.isVtSdkInited()) {
            logw("dial vt call, but vt sdk init failed");
        }
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getChrReportPhoneId(), 0, "AP_FLOW_SUC");
        ImsRilRequest rr = ImsRilRequest.obtain(2043, result, this.mImsRilDefaultWorkSource);
        log(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                RILImsDial dialInfo = new RILImsDial();
                dialInfo.address = address != null ? address : "";
                dialInfo.clir = clirMode;
                if (imsCallProfile != null) {
                    dialInfo.callDetails.callType = imsCallProfile.getCallType();
                    dialInfo.callDetails.callDomain = imsCallProfile.getCallDomain();
                    dialInfo.encryptState = imsCallProfile.isEncrypt;
                    log("imsCallProfile.isEncrypt = " + imsCallProfile.isEncrypt);
                }
                radioProxy.imsDial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("dial");
            }
        }
    }

    private void addRequest(ImsRilRequest rr) {
        acquireWakeLock(rr, 0);
        synchronized (this.mRequestsList) {
            this.mRequestsList.add(rr);
        }
    }

    public void acceptCall(Message result) {
        logUnimplemented();
    }

    public void acceptCall(Message result, int callType) {
        logd("acceptCall callType=" + callType);
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getChrReportPhoneId(), 2, "AP_FLOW_SUC");
        ImsRilRequest rr = ImsRilRequest.obtain(2054, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.acceptImsCall(rr.mSerial, callType);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("acceptCall");
            }
        }
    }

    public void hangupConnection(int index, Message result) {
        logd("hangupConnection");
        ImsRilRequest rr = ImsRilRequest.obtain(12, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + index);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangup(rr.mSerial, index);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("hangupConnection");
            }
        }
    }

    public void getLastCallFailCause(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getLastImsCallFailCause(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getLastCallFailCause");
            }
        }
    }

    public void getCurrentCalls(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2044, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("getCurrentCalls,call getCurrentImsCalls");
                radioProxy.getCurrentImsCalls(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getCurrentCalls");
            }
        }
    }

    public void getImsRegistrationState(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(112, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            RequestPayload payload = new RequestPayload();
            try {
                radioProxy.imsRequest(rr.mSerial, 500, payload);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getImsRegistrationState");
            }
        }
    }

    public void getImsImpu(int source, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2069, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + source);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getImsImpu(rr.mSerial, source);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getImsImpu");
            }
        }
    }

    public int getChrReportPhoneId() {
        int phoneId;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            phoneId = this.mPhoneId.intValue();
        } else {
            phoneId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        }
        logv("getChrReportPhoneId phoneId = " + phoneId);
        return phoneId;
    }

    public void modifyCallInitiate(Message result, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallInitiate");
        if (callModify == null) {
            logd("modifyCallInitiate callModify is null");
            return;
        }
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callModify);
        RILImsCallModify imsCallModify = new RILImsCallModify();
        imsCallModify.callIndex = callModify.getCallIndex();
        imsCallModify.currCallDetails.callType = callModify.getCurrCallProfiles().getCallType();
        imsCallModify.currCallDetails.callDomain = callModify.getCurrCallProfiles().getCallDomain();
        imsCallModify.destCallDetails.callType = callModify.getDestCallProfiles().getCallType();
        imsCallModify.destCallDetails.callDomain = callModify.getDestCallProfiles().getCallDomain();
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallInitiate(rr.mSerial, imsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("modifyCallInitiate");
            }
        }
    }

    public void modifyCallUpgradeCancel(Message result, int callId) {
        logv("modifyCallUpgradeCancel callId = " + callId);
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callId);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.cancelImsVideoCall(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("modifyCallUpgradeCancel");
            }
        }
    }

    public void modifyCallConfirm(Message result, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallConfirm callModify = " + callModify);
        if (callModify == null || callModify.getCurrCallProfiles() == null || callModify.getDestCallProfiles() == null) {
            return;
        }
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callModify);
        RILImsCallModify imsCallModify = new RILImsCallModify();
        imsCallModify.callIndex = callModify.getCallIndex();
        imsCallModify.currCallDetails.callType = callModify.getCurrCallProfiles().getCallType();
        imsCallModify.currCallDetails.callDomain = callModify.getCurrCallProfiles().getCallDomain();
        imsCallModify.destCallDetails.callType = callModify.getDestCallProfiles().getCallType();
        imsCallModify.destCallDetails.callDomain = callModify.getDestCallProfiles().getCallDomain();
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallConfirm(rr.mSerial, imsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("modifyCallConfirm");
            }
        }
    }

    public void switchWaitingOrHoldingAndActive(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(15, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.switchWaitingOrHoldingAndActive(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("switchWaitingOrHoldingAndActive");
            }
        }
    }

    public void switchWaitingOrHoldingAndActiveForIms(int callType, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(15, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.switchImsWaitingOrHoldingAndActiveWithType(rr.mSerial, callType);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("switchWaitingOrHoldingAndActiveForIms");
            }
        }
    }

    public void hangupForegroundResumeBackground(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(14, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangupForegroundResumeBackground(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("hangupForegroundResumeBackground");
            }
        }
    }

    public void hangupWaitingOrBackground(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(13, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangupWaitingOrBackground(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("hangupWaitingOrBackground");
            }
        }
    }

    public void conference(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(16, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.conference(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("conference");
            }
        }
    }

    public void addToConference(String number, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2076, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.addImsConfMember(rr.mSerial, number);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("addToConference");
            }
        }
    }

    public void explicitCallTransfer(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(72, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.explicitCallTransfer(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("explicitCallTransfer");
            }
        }
    }

    public void rejectCall(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(17, result);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCall(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("rejectCall");
            }
        }
    }

    public void rejectImsCallForCause(int callIndex, int cause, Message result) {
        log("rejectImsCallForCause, cause: " + cause);
        ImsRilRequest rr = ImsRilRequest.obtain(2170, result);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCallWithReason(rr.mSerial, callIndex, cause);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("rejectImsCallForCause");
            }
        }
    }

    public void sendDtmf(char ch, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(24, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.sendDtmf(rr.mSerial, Character.toString(ch));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("sendDtmf");
            }
        }
    }

    public void startDtmf(char ch, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(49, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.startDtmf(rr.mSerial, Character.toString(ch));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("startDtmf");
            }
        }
    }

    public void stopDtmf(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(50, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.stopDtmf(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("stopDtmf");
            }
        }
    }

    public void setMute(boolean isEnableMute, Message response) {
        ImsRilRequest rr = ImsRilRequest.obtain(53, response, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + isEnableMute);
        IRadioIms radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setMute(rr.mSerial, isEnableMute);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setMute");
            }
        }
    }

    public void requestUiccAuth(byte[] rand, byte[] auth, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2081, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "[" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(rand), 4) + "][" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(auth), 4) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILUICCAUTH msg = createRilUiccAuth(0, rand, auth);
            try {
                radioProxy.uiccAuth(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestUiccAuth");
            }
        }
    }

    private RILUICCAUTH createRilUiccAuth(int type, byte[] rand, byte[] auth) {
        RILUICCAUTH msg = new RILUICCAUTH();
        String rands = HexDump.toHexString(rand);
        String auths = HexDump.toHexString(auth);
        msg.authType = type;
        msg.authParams.randLen = rands.length();
        msg.authParams.authLen = auths.length();
        msg.authParams.rand = rands;
        msg.authParams.auth = auths;
        log("randlens = " + rands.length() + " authlens = " + auths.length() + " rands = " + rands + " auths = " + auths + " msg.authType = " + msg.authType);
        return msg;
    }

    public void requestUiccGbaBootStrap(byte[] rand, byte[] auth, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2082, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "[" + HexDump.toHexString(rand) + "][" + HexDump.toHexString(auth) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILUICCAUTH msg = createRilUiccAuth(1, rand, auth);
            try {
                radioProxy.uiccGbaBootStrap(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestUiccGbaBootStrap");
            }
        }
    }

    public void requestUiccFileUpdate(int fileId, byte[] data, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2083, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileId=" + fileId + "[" + HexDump.toHexString(data) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILCURSMUPDATEFILE msg = createRilUpdateFile(fileId, data);
            try {
                radioProxy.updateUiccFile(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestUiccFileUpdate");
            }
        }
    }

    private RILCURSMUPDATEFILE createRilUpdateFile(int fileId, byte[] data) {
        RILCURSMUPDATEFILE msg = new RILCURSMUPDATEFILE();
        msg.appType = 0;
        msg.fileId = fileId;
        int dataLen = data.length;
        msg.fileParams.len = dataLen;
        String datas = new String(data);
        msg.fileParams.data = datas;
        return msg;
    }

    public void requestGetUiccFile(int fileId, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2084, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileId=" + fileId);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getUiccFile(rr.mSerial, 0, fileId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestGetUiccFile");
            }
        }
    }

    public void requestUiccKsNaf(int fileId, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2085, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileId=" + fileId);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
        }
    }

    public void requestGetLteInfo(int enableReport, int threshold, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "open=" + enableReport + "threshold=" + threshold);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setVtLlteQualityRptCfg(rr.mSerial, enableReport, threshold);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestGetLteInfo");
            }
        }
    }

    public void requestSetImsVtCapability(int type, int enabled, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "type=" + type + "open=" + enabled);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setImsvtCapability(rr.mSerial, type, enabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestSetImsVtCapability");
            }
        }
    }

    public void restartRild(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(2005, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.restartRILD(rr.mSerial);
                return;
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("restartRild");
                return;
            }
        }
        rr.onError(1, null);
        rr.release();
    }

    public void setCLIR(int clirMode, Message result) {
        logv("setCLIR clirmode = " + clirMode);
        ImsRilRequest rr = ImsRilRequest.obtain(2078, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setClir(rr.mSerial, clirMode);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setCLIR");
            }
        }
    }

    public void setCallWaiting(boolean isEnabled, int serviceClass, Message response) {
        logv("setCallWaiting enable = " + isEnabled + "serviceClass = " + serviceClass);
        ImsRilRequest rr = ImsRilRequest.obtain(2079, response, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(response);
        logv("radioProxy =" + radioProxy);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setImsCallWaiting(rr.mSerial, isEnabled, serviceClass);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setCallWaiting");
            }
        }
    }

    public void requestReadHomeDomainName(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_DOMAIN, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteDomain(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestReadHomeDomainName");
            }
        }
    }

    public void requestReadIsimImpi(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_IMPI, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteImpi(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("requestReadIsimImpi");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsRilRequest processResponse(RadioResponseInfo responseInfo) {
        if (responseInfo == null) {
            return null;
        }
        int serial = responseInfo.serial;
        int type = responseInfo.type;
        ImsRilRequest rr = findAndRemoveRequestFromList(serial);
        if (rr == null) {
            return null;
        }
        if (type == 2) {
            log("Response received for " + rr.serialString() + " " + requestToString(rr.mRequest) + " Sending ack to ril.cpp");
        }
        releaseWakeLockIfDone();
        return rr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processResponseDone(ImsRilRequest rr, RadioResponseInfo responseInfo, Object ret) {
        if (rr == null || responseInfo == null) {
            return;
        }
        if (responseInfo.error == 0) {
            if (rr.mRequest == 2069) {
                logd(rr.serialString() + "< " + requestToString(rr.mRequest) + " " + HiddenPrivacyInfo.putMosaic(retToString(rr.mRequest, ret), 2));
            } else {
                logd(rr.serialString() + "< " + requestToString(rr.mRequest) + " " + retToString(rr.mRequest, ret));
            }
        } else {
            log(rr.serialString() + "< " + requestToString(rr.mRequest) + " error " + responseInfo.error);
            rr.onError(responseInfo.error, ret);
        }
        if (responseInfo.type == 0) {
            decrementWakeLock(rr);
        }
        rr.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processIndication(int indicationType) {
        if (indicationType == 1) {
            sendAck();
            log("Unsol response received; Sending ack to ril.cpp");
        }
    }

    private void sendAck() {
        ImsRilRequest rr = ImsRilRequest.obtain(800, null, this.mImsRilDefaultWorkSource);
        IRadioIms radioProxy = getRadioProxy(null);
        if (radioProxy != null) {
            try {
                radioProxy.responseAcknowledgement();
            } catch (RemoteException | RuntimeException e) {
                resetProxyAndRequestList();
                log("sendAck occues RemoteException or RuntimeException");
            }
        } else {
            log("Error trying to send ack, radioProxy = null");
        }
        rr.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processRequestAck(int serial) {
        ImsRilRequest rr;
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            if (serial >= 0 && serial < size) {
                rr = this.mRequestsList.get(serial);
            } else {
                log("processRequestAck: Unexpected serial " + serial);
                rr = null;
            }
        }
        if (rr == null) {
            log("processRequestAck: Unexpected solicited ack response! ");
            return;
        }
        log("rr.serialString() = " + rr.serialString() + " Ack < " + requestToString(rr.mRequest));
    }

    public static int[] arrayListToPrimitiveArray(ArrayList<Integer> ints) {
        if (ints == null) {
            return null;
        }
        int[] rets = new int[ints.size()];
        for (int i = 0; i < rets.length; i++) {
            rets[i] = ints.get(i).intValue();
        }
        return rets;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] convertHalImsEndCause(RILImsModifyEndCause imsEndCause, ImsRIL ril) {
        if (imsEndCause == null) {
            return null;
        }
        int imsCallIndex = imsEndCause.callIndex;
        int imsErr = imsEndCause.err;
        Rlog.i(LOG_TAG, "RILImsModifyEndCause received: callIndex=" + imsCallIndex + " callErr=" + imsErr);
        int[] imsEndCauseResponses = {imsCallIndex, imsErr};
        return imsEndCauseResponses;
    }

    public void exitEmergencyCallbackMode(Message response) {
        Phone phone;
        logv("exitEmergencyCallbackMode");
        if (HwCustUtil.IS_VZW && (phone = PhoneFactory.getPhone(this.mPhoneId.intValue())) != null && phone.mCi != null) {
            phone.mCi.exitEmergencyCallbackMode(phone.obtainMessage(26));
            if (this.mExitEmergencyCallbackModeRegistrants != null) {
                this.mExitEmergencyCallbackModeRegistrants.notifyRegistrants();
            }
        }
    }

    public void setDmPcscf(String data, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_PCSCF, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmPcscf(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setDmPcscf");
            }
        }
    }

    public void setDmDyn(String data, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_DYN, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmDynamicPram(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setDmDyn");
            }
        }
    }

    public void setDmTimer(String data, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_TIMER, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmTimer(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setDmTimer");
            }
        }
    }

    public void setDmSms(String data, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_SMS, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmSmsPsi(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setDmSms");
            }
        }
    }

    public void getDmPcscf(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_PCSCF, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmPcscf(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getDmPcscf");
            }
        }
    }

    public void getDmTimer(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_TIMER, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmTimer(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getDmTimer");
            }
        }
    }

    public void getDmDyn(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_DYN, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmDynamicPram(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getDmDyn");
            }
        }
    }

    public void getDmSms(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_SMS, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getSmsPsi(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getDmSms");
            }
        }
    }

    public void getDmUser(Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_USER, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmUser(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getDmUser");
            }
        }
    }

    public void setWifiEmergencyAid(boolean isEnabled, Message result) {
        logd("[Wifi-Call] setWifiEmergencyAid");
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            String data = "";
            if (isEnabled) {
                try {
                    data = Settings.System.getString(this.mContext.getContentResolver(), "att_address_id_value");
                } catch (RemoteException | RuntimeException e) {
                    handleRadioProxyExceptionForRilReq("setWifiEmergencyAid");
                    return;
                }
            }
            logd("[Wifi-Call] setWifiEmergencyAid data = " + data);
            radioProxy.setWifiEmergencyAid(rr.mSerial, convertNullToEmptyString(data));
        }
    }

    private String convertNullToEmptyString(String string) {
        return string != null ? string : "";
    }

    public void setImsSmsConfig(int isEnabled, Message result) {
        logd("setImsSmsConfig ENTER ");
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("Calling setImsSmsConfig with isEnabled= " + isEnabled);
                radioProxy.setImsSmsConfig(rr.mSerial, isEnabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setImsSmsConfig no support");
            }
        }
    }

    public void getImsSmsConfig(Message result) {
        logd("getImsSmsConfig ENTER");
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("Calling getImsSmsConfig");
                radioProxy.getImsSmsConfig(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("getImsSmsConfig no support");
            }
        }
    }

    public void sendBatteryStatus(int batterySattus, Message result) {
        ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_BATTERY_STATUS, result, this.mImsRilDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.informBatteryStatus(rr.mSerial, batterySattus);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("sendBatteryStatus");
            }
        }
    }

    private String getWorkSourceClientId(WorkSource workSource) {
        if (workSource != null) {
            return String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
        }
        return null;
    }

    private void acquireWakeLock(ImsRilRequest rr, int wakeLockType) {
        synchronized (rr) {
            if (rr.mWakeLockType != -1) {
                log("Failed to aquire wakelock for " + rr.serialString());
                return;
            }
            if (wakeLockType != 0) {
                if (wakeLockType == 1) {
                    synchronized (this.mAckWakeLock) {
                        this.mAckWakeLock.acquire();
                        this.mAckWlSequenceNum++;
                        Message msg = this.mImsRilHandler.obtainMessage(4);
                        msg.arg1 = this.mAckWlSequenceNum;
                        this.mImsRilHandler.sendMessageDelayed(msg, this.mAckWakeLockTimeout);
                    }
                    rr.mWakeLockType = wakeLockType;
                }
                log("Acquiring Invalid Wakelock type " + wakeLockType);
                return;
            }
            synchronized (this.mWakeLock) {
                this.mWakeLock.acquire();
                this.mWakeLockCount++;
                this.mWlSequenceNum++;
                String clientId = getWorkSourceClientId(rr.mWorkSource);
                if (!this.mClientWakelockTracker.isClientActive(clientId)) {
                    if (this.mActiveWakelockWorkSource != null) {
                        this.mActiveWakelockWorkSource.add(rr.mWorkSource);
                    } else {
                        this.mActiveWakelockWorkSource = rr.mWorkSource;
                    }
                    this.mWakeLock.setWorkSource(this.mActiveWakelockWorkSource);
                }
                this.mClientWakelockTracker.startTracking(rr.mClientId, rr.mRequest, rr.mSerial, this.mWakeLockCount);
                Message msg2 = this.mImsRilHandler.obtainMessage(2);
                msg2.arg1 = this.mWlSequenceNum;
                this.mImsRilHandler.sendMessageDelayed(msg2, this.mWakeLockTimeout);
            }
            rr.mWakeLockType = wakeLockType;
        }
    }

    private void decrementWakeLock(ImsRilRequest rr) {
        synchronized (rr) {
            int i = rr.mWakeLockType;
            if (i != -1) {
                if (i == 0) {
                    synchronized (this.mWakeLock) {
                        this.mClientWakelockTracker.stopTracking(rr.mClientId, rr.mRequest, rr.mSerial, this.mWakeLockCount > 1 ? this.mWakeLockCount - 1 : 0);
                        String clientId = getWorkSourceClientId(rr.mWorkSource);
                        if (!this.mClientWakelockTracker.isClientActive(clientId) && this.mActiveWakelockWorkSource != null) {
                            this.mActiveWakelockWorkSource.remove(rr.mWorkSource);
                            if (this.mActiveWakelockWorkSource.size() == 0) {
                                this.mActiveWakelockWorkSource = null;
                            }
                            this.mWakeLock.setWorkSource(this.mActiveWakelockWorkSource);
                        }
                        if (this.mWakeLockCount > 1) {
                            this.mWakeLockCount--;
                        } else {
                            this.mWakeLockCount = 0;
                            this.mWakeLock.release();
                        }
                    }
                } else if (i != 1) {
                    logw("Decrementing Invalid Wakelock type " + rr.mWakeLockType);
                }
            }
            rr.mWakeLockType = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean clearWakeLock(int wakeLockType) {
        if (wakeLockType == 0) {
            synchronized (this.mWakeLock) {
                if (this.mWakeLockCount == 0 && !this.mWakeLock.isHeld()) {
                    return false;
                }
                log("NOTE: mWakeLockCount is " + this.mWakeLockCount + "at time of clearing");
                this.mWakeLockCount = 0;
                this.mWakeLock.release();
                this.mClientWakelockTracker.stopTrackingAll();
                this.mActiveWakelockWorkSource = null;
                return true;
            }
        }
        synchronized (this.mAckWakeLock) {
            if (!this.mAckWakeLock.isHeld()) {
                return false;
            }
            this.mAckWakeLock.release();
            return true;
        }
    }

    private void clearRequestList(int error) {
        synchronized (this.mRequestsList) {
            int count = this.mRequestsList.size();
            for (int i = 0; i < count; i++) {
                ImsRilRequest rr = this.mRequestsList.get(i);
                rr.onError(error, null);
                decrementWakeLock(rr);
                rr.release();
            }
            this.mRequestsList.clear();
        }
    }

    private ImsRilRequest findAndRemoveRequestFromList(int serial) {
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            for (int i = 0; i < size; i++) {
                ImsRilRequest rr = this.mRequestsList.get(i);
                if (rr.mSerial == serial) {
                    this.mRequestsList.remove(i);
                    if (this.mRequestMessagesWaiting > 0) {
                        this.mRequestMessagesWaiting--;
                    }
                    return rr;
                }
            }
            return null;
        }
    }

    public boolean isSupportCnap() {
        CarrierConfigManager manager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        if (manager == null) {
            return false;
        }
        int subId = ImsCallProviderUtils.getSubIdUsingSlotId(ImsCallProviderUtils.getSlotId(this.mPhoneId.intValue()));
        PersistableBundle bundle = manager.getConfigForSubId(subId);
        if (bundle == null) {
            return false;
        }
        return bundle.getBoolean("suppport_cnap_bool");
    }

    public void setVowifiRegErrReportEnable(int enabled, Message result) {
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT, result, this.mImsRilDefaultWorkSource);
            logd(rr.serialString() + "> " + requestToString(rr.mRequest));
            addRequest(rr);
            try {
                radioProxy.setImsRegErrReport(rr.mSerial, enabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setVowifiRegErrReportEnable");
            }
        }
    }

    public void setEncryptVolteCallSwitch(int flag, Message result) {
        logd("setEncryptVolteCallSwitch valid flag = " + flag);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            ImsRilRequest rr = ImsRilRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_ENCRYPT_DEVICE_VALID_FLAG, result, this.mImsRilDefaultWorkSource);
            logd(rr.serialString() + "> " + requestToString(rr.mRequest));
            addRequest(rr);
            try {
                radioProxy.setEncryptVolteCallSwitch(rr.mSerial, flag);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRilReq("setEncryptDeviceValidFlag");
            }
        }
    }
}
