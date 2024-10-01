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
import android.service.carrier.CarrierIdentifier;
import android.telephony.CarrierConfigManager;
import android.telephony.HwTelephonyManager;
import android.telephony.ImsiEncryptionInfo;
import android.telephony.NetworkScanRequest;
import android.telephony.Rlog;
import android.telephony.TelephonyHistogram;
import android.telephony.data.DataProfile;
import android.util.SparseArray;
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
import com.huawei.internal.telephony.HwCustRILConstants;
import com.huawei.sci.SciLogin;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import vendor.huawei.hardware.radio.ims.V1_0.IRadioIms;
import vendor.huawei.hardware.radio.ims.V1_0.RILCURSMUPDATEFILE;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallModify;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsDial;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsModifyEndCause;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTH;
import vendor.huawei.hardware.radio.ims.V1_0.RadioError;
import vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public final class ImsRIL extends BaseCommands implements CommandsInterface {
    private static final int DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS = 200;
    private static final int DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS = 2000;
    private static final int DEFAULT_WAKE_LOCK_TIMEOUT = 60000;
    static final int EVENT_ACK_WAKE_LOCK_TIMEOUT = 4;
    static final int EVENT_BLOCKING_RESPONSE_TIMEOUT = 5;
    private static final int EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE = 26;
    static final int EVENT_RADIO_PROXY_DEAD = 6;
    static final int EVENT_SEND = 1;
    static final int EVENT_WAKE_LOCK_TIMEOUT = 2;
    public static final int FOR_ACK_WAKELOCK = 1;
    public static final int FOR_WAKELOCK = 0;
    public static final int INVALID_WAKELOCK = -1;
    static final int IRADIO_GET_SERVICE_DELAY_MILLIS = 3000;
    private static final int LENGTH_OF_REQUEST_GETLTEINFO = 2;
    static final String LOG_TAG = "RILJ_IMS";
    static final int MAX_COMMAND_BYTES = 8192;
    static final int MAX_RETRY_COUNT = 8;
    static final int RESPONSE_SOLICITED = 0;
    static final int RESPONSE_UNSOLICITED = 1;
    static final String RILJ_ACK_WAKELOCK_NAME = "RILJ_ACK_WL";
    static final int RIL_HISTOGRAM_BUCKET_COUNT = 5;
    static final int SOCKET_OPEN_RETRY_MILLIS = 4000;
    public static final String VIDEO_RING_TONES = "ims_video_ring";
    protected WorkSource imsRILDefaultWorkSource;
    final ImsRilHandler imsRilHandler;
    final PowerManager.WakeLock mAckWakeLock;
    final int mAckWakeLockTimeout;
    volatile int mAckWlSequenceNum;
    protected WorkSource mActiveWakelockWorkSource;
    protected final RegistrantList mCallModifyRegistrants;
    protected RegistrantList mCallStateRegistrants;
    private final ClientWakelockTracker mClientWakelockTracker;
    private Context mContext;
    protected RegistrantList mHandoverStatusRegistrants;
    public RegistrantList mHoldingToneRegistrants;
    protected RegistrantList mImsCSRedialRegistrations;
    protected RegistrantList mImsDMCNRegistrants;
    protected RegistrantList mImsNetworkStateChangedRegistrants;
    protected RegistrantList mImsRegModeRegistrants;
    protected RegistrantList mLtePDCPInfoRegistrants;
    protected RegistrantList mLteRRCInfoRegistrants;
    protected RegistrantList mModifyCallRegistrants;
    protected final RegistrantList mModifyCallResultRegistrants;
    protected RegistrantList mMtStatusReportRegistrants;
    final Integer mPhoneId;
    ImsRadioIndication mRadioIndication;
    volatile IRadioIms mRadioProxy;
    final AtomicLong mRadioProxyCookie;
    final RadioProxyDeathRecipient mRadioProxyDeathRecipient;
    ImsRadioResponse mRadioResponse;
    int mRequestMessagesPending;
    int mRequestMessagesWaiting;
    ArrayList<ImsRILRequest> mRequestsList;
    public Registrant mRingRegistrant;
    protected RegistrantList mRingbackToneRegistrants;
    protected RegistrantList mSpeechInfoRegistrants;
    protected RegistrantList mSrvStatusRegistrations;
    protected Registrant mSsnRegistrant;
    AtomicBoolean mTestingEmergencyCall;
    protected RegistrantList mVoWiFiRegErrReportRegistrations;
    protected RegistrantList mVoicePrivacyOffRegistrants;
    protected RegistrantList mVoicePrivacyOnRegistrants;
    protected RegistrantList mVtFlowInfoReportRegistrants;
    final PowerManager.WakeLock mWakeLock;
    int mWakeLockCount;
    final int mWakeLockTimeout;
    volatile int mWlSequenceNum;
    static SparseArray<TelephonyHistogram> mRilTimeHistograms = new SparseArray<>();
    static final String[] SOCKET_NAME_IMSRIL = {"rildi", "rildi2", "rildi3"};

    public void registerForHandoverStatusChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mHandoverStatusRegistrants.add(r);
    }

    public void unregisterForHandoverStatusChanged(Handler h) {
        this.mHandoverStatusRegistrants.remove(h);
    }

    public void registerForSrvStatusUpdate(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mSrvStatusRegistrations.add(r);
    }

    public void unregisterForSrvStatusUpdate(Handler h) {
        this.mSrvStatusRegistrations.remove(h);
    }

    public void registerForUnsolLTE_PDCPInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mLtePDCPInfoRegistrants.add(r);
    }

    public void unregisterForUnsolLTE_PDCPInfo(Handler h) {
        this.mLtePDCPInfoRegistrants.remove(h);
    }

    public void registerForUnsolLTE_RRCInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mLteRRCInfoRegistrants.add(r);
    }

    public void unregisterForUnsolLTE_RRCInfo(Handler h) {
        this.mLteRRCInfoRegistrants.remove(h);
    }

    public void registerForImsCSRedial(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsCSRedialRegistrations.add(r);
    }

    public void unregisterForImsCSRedial(Handler h) {
        this.mImsCSRedialRegistrations.remove(h);
    }

    public void registerForImsDMCN(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsDMCNRegistrants.add(r);
    }

    public void unregisterForImsDMCN(Handler h) {
        this.mImsDMCNRegistrants.remove(h);
    }

    public void registerForVtFlowInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVtFlowInfoReportRegistrants.add(r);
    }

    public void unregisterForVtFlowInfo(Handler h) {
        this.mVtFlowInfoReportRegistrants.remove(h);
    }

    public void registerForUnsolSpeechInfo(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mSpeechInfoRegistrants.add(r);
    }

    public void unregisterForUnsolSpeechInfo(Handler h) {
        this.mSpeechInfoRegistrants.remove(h);
    }

    public void registerForMtStatusReport(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mMtStatusReportRegistrants.add(r);
    }

    public void unregisterForMtStatusReport(Handler h) {
        this.mMtStatusReportRegistrants.remove(h);
    }

    public void registerForCallStateChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mCallStateRegistrants.add(r);
    }

    public void unregisterForCallStateChanged(Handler h) {
        this.mCallStateRegistrants.remove(h);
    }

    public void registerForImsNetworkStateChanged(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsNetworkStateChangedRegistrants.add(r);
    }

    public void unregisterForImsNetworkStateChanged(Handler h) {
        this.mImsNetworkStateChangedRegistrants.remove(h);
    }

    public void registerForRingbackTone(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mRingbackToneRegistrants.add(r);
    }

    public void unregisterForRingbackTone(Handler h) {
        this.mRingbackToneRegistrants.remove(h);
    }

    public void registerForImsRegMode(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mImsRegModeRegistrants.add(r);
    }

    public void unregisterForImsRegMode(Handler h) {
        this.mImsRegModeRegistrants.remove(h);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public final class RadioProxyDeathRecipient implements IHwBinder.DeathRecipient {
        RadioProxyDeathRecipient() {
            ImsRIL.this = this$0;
        }

        @Override // android.os.IHwBinder.DeathRecipient
        public void serviceDied(long cookie) {
            ImsRIL.this.imsRilHandler.sendMessageDelayed(ImsRIL.this.imsRilHandler.obtainMessage(6, Long.valueOf(cookie)), 3000L);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class ImsRilHandler extends Handler {
        ImsRilHandler() {
            ImsRIL.this = this$0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i != 2) {
                if (i == 6) {
                    ImsRIL imsRIL = ImsRIL.this;
                    imsRIL.logd("handleMessage: EVENT_RADIO_PROXY_DEAD cookie = " + msg.obj + " mRadioProxyCookie = " + ImsRIL.this.mRadioProxyCookie.get());
                    if (((Long) msg.obj).longValue() == ImsRIL.this.mRadioProxyCookie.get()) {
                        ImsRIL.this.resetProxyAndRequestList();
                        ImsRIL.this.getRadioProxy(null);
                        return;
                    }
                    return;
                }
                return;
            }
            synchronized (ImsRIL.this.mRequestsList) {
                if (msg.arg1 == ImsRIL.this.mWlSequenceNum) {
                    if (ImsRIL.this.clearWakeLock(0)) {
                        int count = ImsRIL.this.mRequestsList.size();
                        ImsRIL imsRIL2 = ImsRIL.this;
                        imsRIL2.log("WAKE_LOCK_TIMEOUT  mRequestsList=" + count);
                        for (int i2 = 0; i2 < count; i2++) {
                            ImsRILRequest rr = ImsRIL.this.mRequestsList.get(i2);
                            ImsRIL imsRIL3 = ImsRIL.this;
                            imsRIL3.log(i2 + ": [" + rr.mSerial + "] " + ImsRIL.requestToString(rr.mRequest));
                        }
                    }
                }
            }
        }
    }

    public void resetProxyAndRequestList() {
        this.mRadioProxy = null;
        ImsRILRequest.resetSerial();
        clearRequestList(1, false);
    }

    private void handleRadioProxyExceptionForRR(String caller, Exception e, ImsRILRequest rr) {
        logd(caller + ": " + e);
        resetProxyAndRequestList();
    }

    public IRadioIms getRadioProxy(Message result) {
        if (this.mRadioProxy != null) {
            return this.mRadioProxy;
        }
        try {
            try {
                IRadioIms huaweiRadio1_0 = IRadioIms.getService(SOCKET_NAME_IMSRIL[this.mPhoneId == null ? 0 : this.mPhoneId.intValue()]);
                this.mRadioProxy = huaweiRadio1_0;
            } catch (RemoteException | RuntimeException e) {
                logd("getRadioProxy: huaweiradioProxy got V1_0 exception = " + e);
            }
            if (this.mRadioProxy != null) {
                this.mRadioProxy.linkToDeath(this.mRadioProxyDeathRecipient, this.mRadioProxyCookie.incrementAndGet());
                this.mRadioProxy.setResponseFunctionsHuawei(this.mRadioResponse, this.mRadioIndication);
            }
        } catch (RemoteException | RuntimeException e2) {
            this.mRadioProxy = null;
            log("setResponseFunctions occurs exception = " + e2);
        }
        if (this.mRadioProxy == null) {
            if (result != null) {
                AsyncResult.forMessage(result, (Object) null, CommandException.fromRilErrno(1));
                result.sendToTarget();
            }
            this.imsRilHandler.sendMessageDelayed(this.imsRilHandler.obtainMessage(6, Long.valueOf(this.mRadioProxyCookie.get())), 3000L);
        }
        return this.mRadioProxy;
    }

    public ImsRIL(Context context, Integer instanceId) {
        super(context);
        this.mWlSequenceNum = 0;
        this.mAckWlSequenceNum = 0;
        this.mClientWakelockTracker = new ClientWakelockTracker();
        this.mRequestsList = new ArrayList<>();
        this.mModifyCallRegistrants = new RegistrantList();
        this.mTestingEmergencyCall = new AtomicBoolean(false);
        this.mHandoverStatusRegistrants = new RegistrantList();
        this.mSrvStatusRegistrations = new RegistrantList();
        this.mImsCSRedialRegistrations = new RegistrantList();
        this.mImsDMCNRegistrants = new RegistrantList();
        this.mVoWiFiRegErrReportRegistrations = new RegistrantList();
        this.mLtePDCPInfoRegistrants = new RegistrantList();
        this.mLteRRCInfoRegistrants = new RegistrantList();
        this.mVtFlowInfoReportRegistrants = new RegistrantList();
        this.mSpeechInfoRegistrants = new RegistrantList();
        this.mMtStatusReportRegistrants = new RegistrantList();
        this.mCallStateRegistrants = new RegistrantList();
        this.mImsNetworkStateChangedRegistrants = new RegistrantList();
        this.mRingbackToneRegistrants = new RegistrantList();
        this.mImsRegModeRegistrants = new RegistrantList();
        this.mRadioProxy = null;
        this.mRadioProxyCookie = new AtomicLong(0L);
        this.mVoicePrivacyOnRegistrants = new RegistrantList();
        this.mVoicePrivacyOffRegistrants = new RegistrantList();
        this.mCallModifyRegistrants = new RegistrantList();
        this.mModifyCallResultRegistrants = new RegistrantList();
        this.mHoldingToneRegistrants = new RegistrantList();
        this.mContext = context;
        this.mPhoneId = instanceId;
        this.mRadioResponse = new ImsRadioResponse(this);
        this.mRadioIndication = new ImsRadioIndication(this);
        this.imsRilHandler = new ImsRilHandler();
        this.mRadioProxyDeathRecipient = new RadioProxyDeathRecipient();
        this.imsRILDefaultWorkSource = new WorkSource(context.getApplicationInfo().uid, context.getPackageName());
        getRadioProxy(null);
        this.mPhoneType = 0;
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mWakeLock = pm.newWakeLock(1, LOG_TAG);
        this.mWakeLock.setReferenceCounted(false);
        this.mAckWakeLock = pm.newWakeLock(1, RILJ_ACK_WAKELOCK_NAME);
        this.mAckWakeLock.setReferenceCounted(false);
        this.mWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", (int) DEFAULT_WAKE_LOCK_TIMEOUT);
        this.mAckWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", (int) DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS);
        this.mRequestMessagesPending = 0;
        this.mRequestMessagesWaiting = 0;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
    }

    private void releaseWakeLockIfDone() {
        synchronized (this.mWakeLock) {
            if (this.mWakeLock.isHeld() && this.mRequestMessagesPending == 0 && this.mRequestMessagesWaiting == 0) {
                this.imsRilHandler.removeMessages(2);
                this.mWakeLock.release();
            }
        }
    }

    private String retToString(int req, Object ret) {
        if (ret == null) {
            return HwImsConfigImpl.NULL_STRING_VALUE;
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
            String s = sb.toString();
            return s;
        } else if (ret instanceof String[]) {
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
            String s2 = sb2.toString();
            return s2;
        } else if (req == 2044) {
            ArrayList<DriverImsCall> calls = (ArrayList) ret;
            StringBuilder sb3 = new StringBuilder(" ");
            int callListSize = calls.size();
            for (int i4 = 0; i4 < callListSize; i4++) {
                sb3.append("[");
                sb3.append(calls.get(i4));
                sb3.append("] ");
            }
            String s3 = sb3.toString();
            return s3;
        } else {
            String s4 = ret.toString();
            return s4;
        }
    }

    public static String requestToString(int request) {
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
                    case 49:
                        return "HW_IMS_DTMF_START";
                    case 50:
                        return "HW_IMS_DTMF_STOP";
                    default:
                        switch (request) {
                            case 2043:
                                return "HW_IMS_DIAL";
                            case 2044:
                                return "HW_IMS_GET_CURRENT_CALLS";
                            default:
                                switch (request) {
                                    case 2078:
                                        return "HW_IMS_SET_CLIR";
                                    case 2079:
                                        return "HW_IMS_SET_CALL_WAITING";
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
                                                    case HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE /* 2097 */:
                                                        return "HW_IMS_MODIFY_CALL_INITIATE";
                                                    case HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM /* 2098 */:
                                                        return "HW_IMS_MODIFY_CALL_CONFIRM";
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
                                                                        switch (request) {
                                                                            case 24:
                                                                                return "HW_IMS_DTMF";
                                                                            case RadioError.NETWORK_REJECT /* 53 */:
                                                                                return "HW_IMS_SET_MUTE";
                                                                            case SciLogin.EN_CRS_CFG_MAJOR_MULTI_DEV /* 72 */:
                                                                                return "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER";
                                                                            case 112:
                                                                                return "IMS_REGISTRATION_STATE";
                                                                            case 2005:
                                                                                return "RIL_REQUEST_HW_RESTRAT_RILD";
                                                                            case 2054:
                                                                                return "HW_IMS_ANSWER";
                                                                            case 2069:
                                                                                return "HW_IMS_IMPU";
                                                                            case 2076:
                                                                                return "HW_IMS_ADD_CONFERENCE_MEMBER";
                                                                            case HwCustRILConstants.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG /* 2132 */:
                                                                                return "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG";
                                                                            case 2170:
                                                                                return "RIL_REQUEST_HW_IMS_REJ_CALL";
                                                                            default:
                                                                                return "<unknown request> " + request;
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    static String responseToString(int request) {
        switch (request) {
            case 1037:
                return "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED";
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
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION /* 3018 */:
                return "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_VOICE_BAND_INFO /* 3019 */:
                return "UNSOL_HW_IMS_VOICE_BAND_INFO";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_IND /* 3029 */:
                return "UNSOL_HW_IMS_RESPONSE_MODIFY_IND";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE /* 3030 */:
                return "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_MT_STATUS_REPORT /* 3036 */:
                return "UNSOL_HW_IMS_MT_STATUS_REPORT";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY /* 3038 */:
                return "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY";
            case HwCustRILConstants.RIL_UNSOL_HW_LTE_PDCP_INFO /* 3045 */:
                return "RIL_UNSOL_HW_LTE_PDCP_INFO";
            case HwCustRILConstants.RIL_UNSOL_HW_LTE_RRC_INFO /* 3046 */:
                return "RIL_UNSOL_HW_LTE_RRC_INFO";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_DMCN /* 3052 */:
                return "RIL_UNSOL_HW_IMS_DMCN";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_HOLD_TONE_IND /* 3054 */:
                return "RIL_UNSOL_HW_IMS_HOLD_TONE_IND";
            case HwCustRILConstants.RIL_UNSOL_HW_IMS_REG_TYPE_IND /* 3055 */:
                return "RIL_UNSOL_HW_IMS_REG_TYPE_IND";
            case HwCustRILConstants.RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT /* 3056 */:
                return "RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT";
            default:
                return "<unknown response> " + request;
        }
    }

    public void log(String msg) {
        Rlog.d("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logd(String msg) {
        Rlog.d("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logv(String msg) {
        Rlog.v("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logw(String msg) {
        Rlog.w("RILJ_IMS[" + this.mPhoneId + "]", msg);
    }

    public void logUnimplemented() {
        try {
            Exception e = new Exception();
            throw e;
        } catch (Exception e2) {
            log("Unimplemented method. Stack trace: ");
        }
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
                ImsRILRequest rr = this.mRequestsList.get(i);
                pw.println(" [" + rr.mSerial + "] " + requestToString(rr.mRequest));
            }
        }
        pw.println(" mTestingEmergencyCall=" + this.mTestingEmergencyCall.get());
    }

    public void dial(String address, int clirMode, ImsCallProfiles imsCallProfile, Message result) {
        logd("dial address= " + HiddenPrivacyInfo.putMosaic(address, 0) + " clirMode= " + clirMode + " imsCallProfile= " + imsCallProfile);
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getCHRReportPhoneId(), 0, "AP_FLOW_SUC");
        ImsRILRequest rr = ImsRILRequest.obtain(2043, result, this.imsRILDefaultWorkSource);
        RILImsDial dialInfo = new RILImsDial();
        dialInfo.address = address != null ? address : HwImsConfigImpl.NULL_STRING_VALUE;
        dialInfo.clir = clirMode;
        if (imsCallProfile != null) {
            dialInfo.callDetails.callType = imsCallProfile.call_type;
            dialInfo.callDetails.callDomain = imsCallProfile.call_domain;
        }
        log(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.imsDial(rr.mSerial, dialInfo);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("dial", e, rr);
            }
        }
    }

    private void addRequest(ImsRILRequest rr) {
        acquireWakeLock(rr, 0);
        synchronized (this.mRequestsList) {
            this.mRequestsList.add(rr);
        }
    }

    public void acceptCall(Message result, int callType) {
        logd("acceptCall callType=" + callType);
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getCHRReportPhoneId(), 2, "AP_FLOW_SUC");
        ImsRILRequest rr = ImsRILRequest.obtain(2054, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.acceptImsCall(rr.mSerial, callType);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("acceptCall", e, rr);
            }
        }
    }

    public void acceptCall(Message result, int callType, int presentation) {
        logUnimplemented();
    }

    public void hangupConnection(int index, Message result) {
        logd("hangupConnection: ImsIndex=" + index);
        ImsRILRequest rr = ImsRILRequest.obtain(12, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + index);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangup(rr.mSerial, index);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupConnection", e, rr);
            }
        }
    }

    public void getLastCallFailCause(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getLastImsCallFailCause(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getLastCallFailCause", e, rr);
            }
        }
    }

    public void getCurrentCalls(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2044, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("getCurrentCalls,call getCurrentImsCallsV1_2");
                radioProxy.getCurrentImsCallsV1_2(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getCurrentCalls", e, rr);
            }
        }
    }

    public void getImsRegistrationState(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(112, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getImsRegistrationState(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsRegistrationState", e, rr);
            }
        }
    }

    public void getImsImpu(int source, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2069, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + source);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getImsImpu(rr.mSerial, source);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsImpu", e, rr);
            }
        }
    }

    public int getCHRReportPhoneId() {
        int phoneid;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            phoneid = this.mPhoneId.intValue();
        } else {
            phoneid = HwTelephonyManager.getDefault().getDefault4GSlotId();
        }
        logv("getCHRReportPhoneId phoneid = " + phoneid);
        return phoneid;
    }

    public void sendImsRegistrationState(int imsRegState, Message result) {
        logUnimplemented();
    }

    public void modifyCallInitiate(Message result, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallInitiate callModify = " + callModify);
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callModify);
        RILImsCallModify imsCallModify = new RILImsCallModify();
        imsCallModify.callIndex = callModify.call_index;
        imsCallModify.currCallDetails.callType = callModify.curr_call_details.call_type;
        imsCallModify.currCallDetails.callDomain = callModify.curr_call_details.call_domain;
        imsCallModify.destCallDetails.callType = callModify.dest_call_details.call_type;
        imsCallModify.destCallDetails.callDomain = callModify.dest_call_details.call_domain;
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallInitiate(rr.mSerial, imsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallInitiate", e, rr);
            }
        }
    }

    public void modifyCallUpgradeCancel(Message result, int callId) {
        logv("modifyCallUpgradeCancel callId = " + callId);
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callId);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.cancelImsVideoCall(rr.mSerial, callId);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallUpgradeCancel", e, rr);
            }
        }
    }

    public void modifyCallConfirm(Message result, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallConfirm callModify = " + callModify);
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + callModify);
        RILImsCallModify imsCallModify = new RILImsCallModify();
        imsCallModify.callIndex = callModify.call_index;
        imsCallModify.currCallDetails.callType = callModify.curr_call_details.call_type;
        imsCallModify.currCallDetails.callDomain = callModify.curr_call_details.call_domain;
        imsCallModify.destCallDetails.callType = callModify.dest_call_details.call_type;
        imsCallModify.destCallDetails.callDomain = callModify.dest_call_details.call_domain;
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallConfirm(rr.mSerial, imsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallConfirm", e, rr);
            }
        }
    }

    public void switchWaitingOrHoldingAndActive(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(15, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.switchWaitingOrHoldingAndActive(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("switchWaitingOrHoldingAndActive", e, rr);
            }
        }
    }

    public void switchWaitingOrHoldingAndActiveForIms(int calltype, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(15, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.switchImsWaitingOrHoldingAndActiveWithType(rr.mSerial, calltype);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("switchWaitingOrHoldingAndActiveForIms ", e, rr);
            }
        }
    }

    public void hangupForegroundResumeBackground(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(14, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangupForegroundResumeBackground(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupForegroundResumeBackground", e, rr);
            }
        }
    }

    public void hangupWaitingOrBackground(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(13, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.hangupWaitingOrBackground(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupWaitingOrBackground", e, rr);
            }
        }
    }

    public void conference(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(16, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.conference(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("conference", e, rr);
            }
        }
    }

    public void addToConference(String number, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2076, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.addImsConfMember(rr.mSerial, number);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("addToConference", e, rr);
            }
        }
    }

    public void explicitCallTransfer(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(72, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.explicitCallTransfer(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("explicitCallTransfer", e, rr);
            }
        }
    }

    public void rejectCall(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(17, result);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCall(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("rejectCall", e, rr);
            }
        }
    }

    public void rejectImsCallForCause(int callIndex, int cause, Message result) {
        log("rejectImsCallForCause , cause: " + cause);
        ImsRILRequest rr = ImsRILRequest.obtain(2170, result);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCallWithReason(rr.mSerial, callIndex, cause);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("rejectImsCallForCause", e, rr);
            }
        }
    }

    public void sendDtmf(char c, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(24, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.sendDtmf(rr.mSerial, Character.toString(c));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("sendDtmf", e, rr);
            }
        }
    }

    public void startDtmf(char c, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(49, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.startDtmf(rr.mSerial, Character.toString(c));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("startDtmf", e, rr);
            }
        }
    }

    public void stopDtmf(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(50, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.stopDtmf(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("stopDtmf", e, rr);
            }
        }
    }

    public void setMute(boolean enableMute, Message response) {
        ImsRILRequest rr = ImsRILRequest.obtain(53, response, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + " " + enableMute);
        IRadioIms radioProxy = getRadioProxy(response);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setMute(rr.mSerial, enableMute);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setMute", e, rr);
            }
        }
    }

    public void requestUiccAuth(byte[] rand, byte[] auth, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2081, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "[" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(rand), 4) + "][" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(auth), 4) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILUICCAUTH msg = createRilUiccAuth(0, rand, auth);
            try {
                radioProxy.uiccAuth(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccAuth", e, rr);
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
        log("randlens = " + rands.length());
        log("authlens = " + auths.length());
        log("rands = " + rands);
        log("auths = " + auths);
        log("msg.authType = " + msg.authType);
        return msg;
    }

    public void requestUiccGbaBootstrap(byte[] rand, byte[] auth, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2082, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "[" + HexDump.toHexString(rand) + "][" + HexDump.toHexString(auth) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILUICCAUTH msg = createRilUiccAuth(1, rand, auth);
            try {
                radioProxy.uiccGbaBootStrap(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccGbaBootstrap", e, rr);
            }
        }
    }

    public void requestUiccFileUpdate(int file_id, byte[] data, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2083, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileid=" + file_id + "[" + HexDump.toHexString(data) + "]");
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            RILCURSMUPDATEFILE msg = createRilUpdateFile(file_id, data);
            try {
                radioProxy.updateUiccFile(rr.mSerial, msg);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccFileUpdate", e, rr);
            }
        }
    }

    private RILCURSMUPDATEFILE createRilUpdateFile(int file_id, byte[] data) {
        RILCURSMUPDATEFILE msg = new RILCURSMUPDATEFILE();
        String datas = new String(data);
        int dataLen = data.length;
        msg.appType = 0;
        msg.fileId = file_id;
        msg.fileParams.len = dataLen;
        msg.fileParams.data = datas;
        return msg;
    }

    public void requestGetUiccFile(int file_id, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2084, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileid=" + file_id);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getUiccFile(rr.mSerial, 0, file_id);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestGetUiccFile", e, rr);
            }
        }
    }

    public void requestUiccKsNaf(int file_id, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2085, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + ", fileid=" + file_id);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
        }
    }

    public void requestGetLTEInfo(int enableReport, int threshold, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "open=" + enableReport + "threshold=" + threshold);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setVtLlteQualityRptCfg(rr.mSerial, enableReport, threshold);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestGetLTEInfo", e, rr);
            }
        }
    }

    public void requestSetImsVtCapability(int type, int enabled, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest) + "type=" + type + "open=" + enabled);
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setImsvtCapability(rr.mSerial, type, enabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestSetImsVtCapability", e, rr);
            }
        }
    }

    public void restartRild(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(2005, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.restartRILD(rr.mSerial);
                return;
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("restartRild", e, rr);
                return;
            }
        }
        rr.onError(1, null);
        rr.release();
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

    public void dial(String address, int clirMode, Message result) {
        logUnimplemented();
    }

    public void dial(String address, int clirMode, UUSInfo uusInfo, Message result) {
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

    public void setPreferredVoicePrivacy(boolean enable, Message result) {
        logUnimplemented();
    }

    public void getPreferredVoicePrivacy(Message result) {
        logUnimplemented();
    }

    public void separateConnection(int gsmIndex, Message result) {
        logUnimplemented();
    }

    public void acceptCall(Message result) {
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

    public void sendSMS(String smscPDU, String pdu, Message result) {
        logUnimplemented();
    }

    public void sendCdmaSms(byte[] pdu, Message result) {
        logUnimplemented();
    }

    public void sendImsGsmSms(String smscPDU, String pdu, int retry, int messageRef, Message response) {
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

    public void setupQosReq(int callId, ArrayList<String> qosFlows, Message result) {
        logUnimplemented();
    }

    public void releaseQos(int qosId, Message result) {
        logUnimplemented();
    }

    public void modifyQos(int qosId, ArrayList<String> qosFlows, Message result) {
        logUnimplemented();
    }

    public void suspendQos(int qosId, Message result) {
        logUnimplemented();
    }

    public void resumeQos(int qosId, Message result) {
        logUnimplemented();
    }

    public void getQosStatus(int qosId, Message result) {
        logUnimplemented();
    }

    public void deactivateDataCall(int cid, int reason, Message result) {
        logUnimplemented();
    }

    public void setRadioPower(boolean on, Message result) {
        logUnimplemented();
    }

    public void setSuppServiceNotifications(boolean enable, Message result) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingGsmSms(boolean success, int cause, Message result) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingCdmaSms(boolean success, int cause, Message result) {
        logUnimplemented();
    }

    public void acknowledgeIncomingGsmSmsWithPdu(boolean success, String ackPdu, Message result) {
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

    public void setCLIR(int clirMode, Message result) {
        logv("setCLIR clirmode = " + clirMode);
        ImsRILRequest rr = ImsRILRequest.obtain(2078, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setClir(rr.mSerial, clirMode);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setCLIR", e, rr);
            }
        }
    }

    public void queryCallWaiting(int serviceClass, Message response) {
        logv("queryCallWaiting serviceClass = " + serviceClass);
        logUnimplemented();
    }

    public void setCallWaiting(boolean enable, int serviceClass, Message response) {
        logv("setCallWaiting enable = " + enable + "serviceClass = " + serviceClass);
        ImsRILRequest rr = ImsRILRequest.obtain(2079, response, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(response);
        logv("radioProxy =" + radioProxy);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setImsCallWaiting(rr.mSerial, enable, serviceClass);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setCallWaiting", e, rr);
            }
        }
    }

    public void requestReadHomeDomainName(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_DOMAIN, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteDomain(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestReadHomeDomainName", e, rr);
            }
        }
    }

    public void requestReadIsimIMPI(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_IMPI, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteImpi(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestReadIsimIMPI", e, rr);
            }
        }
    }

    public ImsRILRequest processResponse(RadioResponseInfo responseInfo) {
        int serial = responseInfo.serial;
        int type = responseInfo.type;
        ImsRILRequest rr = findAndRemoveRequestFromList(serial);
        if (rr == null) {
            return null;
        }
        if (type == 2) {
            log("Response received for " + rr.serialString() + " " + requestToString(rr.mRequest) + " Sending ack to ril.cpp");
        }
        int i = rr.mRequest;
        releaseWakeLockIfDone();
        return rr;
    }

    public void processResponseDone(ImsRILRequest rr, RadioResponseInfo responseInfo, Object ret) {
        if (responseInfo.error == 0) {
            if (2069 == rr.mRequest) {
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

    public void processIndication(int indicationType) {
        if (indicationType == 1) {
            sendAck();
            log("Unsol response received; Sending ack to ril.cpp");
        }
    }

    private void sendAck() {
        ImsRILRequest rr = ImsRILRequest.obtain(800, null, this.imsRILDefaultWorkSource);
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

    public void processRequestAck(int serial) {
        ImsRILRequest rr;
        ImsRILRequest rr2;
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            if (serial >= 0 && serial < size) {
                rr = this.mRequestsList.get(serial);
            } else {
                log("processRequestAck: Unexpected serial " + serial);
                rr = null;
            }
            rr2 = rr;
        }
        if (rr2 == null) {
            log("processRequestAck: Unexpected solicited ack response! ");
            return;
        }
        log("rr.serialString() = " + rr2.serialString() + " Ack < " + requestToString(rr2.mRequest));
    }

    public static int[] arrayListToPrimitiveArray(ArrayList<Integer> ints) {
        int[] ret = new int[ints.size()];
        for (int i = 0; i < ret.length; i++) {
            ret[i] = ints.get(i).intValue();
        }
        return ret;
    }

    public static int[] convertHalImsEndCause(RILImsModifyEndCause imsEndCause, ImsRIL ril) {
        int imsCallIndex = imsEndCause.callIndex;
        int imsErr = imsEndCause.err;
        Rlog.d(LOG_TAG, "RILImsModifyEndCause received: callIndex=" + imsCallIndex + " callErr=" + imsErr);
        int[] imsEndCauseResponse = {imsCallIndex, imsErr};
        return imsEndCauseResponse;
    }

    public void sendDeviceState(int stateType, boolean state, Message result) {
        logUnimplemented();
    }

    public void setDataProfile(DataProfile[] dps, boolean isRoaming, Message result) {
        logUnimplemented();
    }

    public void setSimCardPower(int state, Message result) {
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

    public void setISMCOEX(String strings) {
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

    public void handleCallSetupRequestFromSim(boolean accept, Message response) {
        logUnimplemented();
    }

    public void setPreferredNetworkType(int networkType, Message response) {
        logUnimplemented();
    }

    public void getPreferredNetworkType(Message response) {
        logUnimplemented();
    }

    public void getNeighboringCids(Message response) {
        logUnimplemented();
    }

    public void setLocationUpdates(boolean enable, Message response) {
        logUnimplemented();
    }

    public void getSmscAddress(Message result) {
        logUnimplemented();
    }

    public void setSmscAddress(String address, Message result) {
        logUnimplemented();
    }

    public void reportSmsMemoryStatus(boolean available, Message result) {
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

    public void setGsmBroadcastActivation(boolean activate, Message response) {
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

    public void sendCDMAFeatureCode(String FeatureCode, Message response) {
        logUnimplemented();
    }

    public void getCdmaBroadcastConfig(Message response) {
        logUnimplemented();
    }

    public void setCdmaBroadcastConfig(int[] configValuesArray, Message response) {
        logUnimplemented();
    }

    public void setCdmaBroadcastConfig(CdmaSmsBroadcastConfigInfo[] configs, Message response) {
        logUnimplemented();
    }

    public void setCdmaBroadcastActivation(boolean activate, Message response) {
        logUnimplemented();
    }

    public void exitEmergencyCallbackMode(Message response) {
        Phone phone;
        logv("exitEmergencyCallbackMode");
        if (HwCustUtil.isVZW && (phone = PhoneFactory.getPhone(this.mPhoneId.intValue())) != null && phone.mCi != null) {
            phone.mCi.exitEmergencyCallbackMode(phone.obtainMessage(26));
            if (this.mExitEmergencyCallbackModeRegistrants != null) {
                this.mExitEmergencyCallbackModeRegistrants.notifyRegistrants();
                return;
            }
            return;
        }
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

    public void setFacilityLock(String facility, boolean lockState, String password, int serviceClass, Message response) {
        logUnimplemented();
    }

    public void setFacilityLockForApp(String facility, boolean lockState, String password, int serviceClass, String appId, Message response) {
        logUnimplemented();
    }

    public void setupDataCall(int accessNetworkType, DataProfile dataProfile, boolean isRoaming, boolean allowRoaming, int reason, LinkProperties linkProperties, Message result) {
        logUnimplemented();
    }

    public void getLastPdpFailCause(Message result) {
        logUnimplemented();
    }

    @Deprecated
    public void getPDPContextList(Message result) {
        logUnimplemented();
    }

    public CommandsInterface.RadioState getRadioState() {
        logUnimplemented();
        return null;
    }

    public void registerForRadioStateChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRadioStateChanged(Handler h) {
        logUnimplemented();
    }

    public void registerForVoiceRadioTechChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForVoiceRadioTechChanged(Handler h) {
        logUnimplemented();
    }

    public void registerForOn(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForOn(Handler h) {
        logUnimplemented();
    }

    public void registerForAvailable(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForAvailable(Handler h) {
        logUnimplemented();
    }

    public void registerForNotAvailable(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNotAvailable(Handler h) {
        logUnimplemented();
    }

    public void registerForOffOrNotAvailable(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForOffOrNotAvailable(Handler h) {
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

    public void registerForModemReset(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForModemReset(Handler h) {
        logUnimplemented();
    }

    public void registerForCarrierInfoForImsiEncryption(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCarrierInfoForImsiEncryption(Handler h) {
        logUnimplemented();
    }

    public void registerForNetworkScanResult(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNetworkScanResult(Handler h) {
        logUnimplemented();
    }

    public void registerForInCallVoicePrivacyOn(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVoicePrivacyOnRegistrants.add(r);
    }

    public void unregisterForInCallVoicePrivacyOn(Handler h) {
        this.mVoicePrivacyOnRegistrants.remove(h);
    }

    public void registerForInCallVoicePrivacyOff(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVoicePrivacyOffRegistrants.add(r);
    }

    public void unregisterForInCallVoicePrivacyOff(Handler h) {
        this.mVoicePrivacyOffRegistrants.remove(h);
    }

    public void registerForSubscriptionStatusChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForSubscriptionStatusChanged(Handler h) {
        logUnimplemented();
    }

    public void setOnNewGsmSms(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewGsmSms(Handler h) {
        logUnimplemented();
    }

    public void setOnNewCdmaSms(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewCdmaSms(Handler h) {
        logUnimplemented();
    }

    public void setOnNewGsmBroadcastSms(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNewGsmBroadcastSms(Handler h) {
        logUnimplemented();
    }

    public void setOnSmsOnSim(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSmsOnSim(Handler h) {
        logUnimplemented();
    }

    public void setOnSmsStatus(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSmsStatus(Handler h) {
        logUnimplemented();
    }

    public void setOnNITZTime(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnNITZTime(Handler h) {
        logUnimplemented();
    }

    public void setOnUSSD(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnUSSD(Handler h) {
        logUnimplemented();
    }

    public void setOnSignalStrengthUpdate(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnSignalStrengthUpdate(Handler h) {
        logUnimplemented();
    }

    public void setOnIccSmsFull(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnIccSmsFull(Handler h) {
        logUnimplemented();
    }

    public void registerForIccRefresh(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForIccRefresh(Handler h) {
        logUnimplemented();
    }

    public void setOnIccRefresh(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unsetOnIccRefresh(Handler h) {
        logUnimplemented();
    }

    public void unSetOnCallRing(Handler h) {
        if (this.mRingRegistrant != null && this.mRingRegistrant.getHandler() == h) {
            this.mRingRegistrant.clear();
            this.mRingRegistrant = null;
        }
    }

    public void setOnRestrictedStateChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnRestrictedStateChanged(Handler h) {
        logUnimplemented();
    }

    public void setOnSuppServiceNotification(Handler h, int what, Object obj) {
        this.mSsnRegistrant = new Registrant(h, what, obj);
    }

    public void unSetOnSuppServiceNotification(Handler h) {
        this.mSsnRegistrant.clear();
    }

    public void setOnCatSessionEnd(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatSessionEnd(Handler h) {
        logUnimplemented();
    }

    public void setOnCatProactiveCmd(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatProactiveCmd(Handler h) {
        logUnimplemented();
    }

    public void setOnCatEvent(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatEvent(Handler h) {
        logUnimplemented();
    }

    public void setOnCatCallSetUp(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unSetOnCatCallSetUp(Handler h) {
        logUnimplemented();
    }

    public void registerForDisplayInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForDisplayInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForCallWaitingInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCallWaitingInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForSignalInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForSignalInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForNumberInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForNumberInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForRedirectedNumberInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRedirectedNumberInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForLineControlInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForLineControlInfo(Handler h) {
        logUnimplemented();
    }

    public void registerFoT53ClirlInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForT53ClirInfo(Handler h) {
        logUnimplemented();
    }

    public void registerForT53AudioControlInfo(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForT53AudioControlInfo(Handler h) {
        logUnimplemented();
    }

    public void setEmergencyCallbackMode(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void registerForCdmaOtaProvision(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaOtaProvision(Handler h) {
        logUnimplemented();
    }

    public void registerForResendIncallMute(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForResendIncallMute(Handler h) {
        logUnimplemented();
    }

    public void registerForCdmaSubscriptionChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaSubscriptionChanged(Handler h) {
        logUnimplemented();
    }

    public void registerForCdmaPrlChanged(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForCdmaPrlChanged(Handler h) {
        logUnimplemented();
    }

    public void registerForExitEmergencyCallbackMode(Handler h, int what, Object obj) {
        if (HwCustUtil.isVZW) {
            super.registerForExitEmergencyCallbackMode(h, what, obj);
        } else {
            logUnimplemented();
        }
    }

    public void unregisterForExitEmergencyCallbackMode(Handler h) {
        if (HwCustUtil.isVZW) {
            super.unregisterForExitEmergencyCallbackMode(h);
        } else {
            logUnimplemented();
        }
    }

    public void registerForRilConnected(Handler h, int what, Object obj) {
        logUnimplemented();
    }

    public void unregisterForRilConnected(Handler h) {
        logUnimplemented();
    }

    public void iccExchangeAPDU(int cla, int command, int channel, int p1, int p2, int p3, String data, Message response) {
    }

    public void iccOpenChannel(String AID, Message response) {
    }

    public void iccCloseChannel(int channel, Message response) {
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

    public void riseCdmaCutoffFreq(boolean on, Message result) {
        logUnimplemented();
    }

    public void setInitialAttachApn(DataProfile dataProfile, boolean isRoaming, Message result) {
        logUnimplemented();
    }

    public void getAllowedCarriers(Message response) {
        logUnimplemented();
    }

    public void setAllowedCarriers(List<CarrierIdentifier> list, Message message) {
        logUnimplemented();
    }

    public void switchBalongSim(int modem1ToSlot, int modem2ToSlot, Message result) {
        logUnimplemented();
    }

    public void getBalongSim(Message result) {
        logUnimplemented();
    }

    public void setLTEReleaseVersion(boolean state, Message result) {
        logUnimplemented();
    }

    public void queryCardType(Message result) {
        logUnimplemented();
    }

    public void sendSMSExpectMore(String smscPDU, String pdu, Message result) {
    }

    public void sendSMSSetLong(int flag, Message result) {
    }

    public void requestIccSimAuthentication(int authContext, String data, String aid, Message response) {
    }

    public void iccOpenLogicalChannel(String AID, int p2, Message response) {
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

    public void nvReadItem(int itemID, Message response) {
    }

    public void nvWriteItem(int itemID, String itemValue, Message response) {
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

    public void registerForModifyCall(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mModifyCallRegistrants.add(r);
    }

    public void unregisterForModifyCall(Handler h) {
        this.mModifyCallRegistrants.remove(h);
    }

    public void registerForCallModifyResult(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mModifyCallResultRegistrants.add(r);
    }

    public void unregisterForCallModifyResult(Handler h) {
        this.mModifyCallResultRegistrants.remove(h);
    }

    public void setDMPCSCF(String data, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_PCSCF, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmPcscf(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMPCSCF", e, rr);
            }
        }
    }

    public void setDMDYN(String data, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_DYN, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmDynamicPram(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMDYN", e, rr);
            }
        }
    }

    public void setDMTIMER(String data, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_TIMER, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmTimer(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMTIMER", e, rr);
            }
        }
    }

    public void setDMSMS(String data, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_SMS, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.setDmSmsPsi(rr.mSerial, data);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMSMS", e, rr);
            }
        }
    }

    public void getDMPCSCF(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_PCSCF, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmPcscf(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMPCSCF", e, rr);
            }
        }
    }

    public void getDMTIMER(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_TIMER, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmTimer(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMTIMER", e, rr);
            }
        }
    }

    public void getDMDYN(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_DYN, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmDynamicPram(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMDYN", e, rr);
            }
        }
    }

    public void getDMSMS(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_SMS, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getSmsPsi(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMSMS", e, rr);
            }
        }
    }

    public void getDMUSER(Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_USER, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.getDmUser(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(HwImsConfigImpl.IMS_CONFIG_KEY_GETDMUSER, e, rr);
            }
        }
    }

    public void setWifiEmergencyAid(boolean enabled, Message result) {
        logd("[Wifi-Call] setWifiEmergencyAid");
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            String data = HwImsConfigImpl.NULL_STRING_VALUE;
            if (enabled) {
                try {
                    data = Settings.System.getString(this.mContext.getContentResolver(), "att_address_id_value");
                } catch (RemoteException | RuntimeException e) {
                    handleRadioProxyExceptionForRR("setWifiEmergencyAid", e, rr);
                    return;
                }
            }
            logd("[Wifi-Call] setWifiEmergencyAid data = " + data);
            radioProxy.setWifiEmergencyAid(rr.mSerial, convertNullToEmptyString(data));
        }
    }

    private String convertNullToEmptyString(String string) {
        return string != null ? string : HwImsConfigImpl.NULL_STRING_VALUE;
    }

    public void setImsSmsConfig(int enabled, Message result) {
        logd("setImsSmsConfig ENTER ");
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("Calling setImsSmsConfiYou g -VENDOR 1.2 with enabled= " + enabled);
                radioProxy.setImsSmsConfig(rr.mSerial, enabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio", e, rr);
            }
        }
    }

    public void getImsSmsConfig(Message result) {
        logd("getImsSmsConfig ENTER");
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                logd("Calling getImsSmsConfig -VENDOR 1.2");
                radioProxy.getImsSmsConfig(rr.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio ", e, rr);
            }
        }
    }

    public void getModemActivityInfo(Message result) {
    }

    public void sendBatteryStatus(int batterySattus, Message result) {
        ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_BATTERY_STATUS, result, this.imsRILDefaultWorkSource);
        logd(rr.serialString() + "> " + requestToString(rr.mRequest));
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            addRequest(rr);
            try {
                radioProxy.informBatteryStatus(rr.mSerial, batterySattus);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("sendBatteryStatus", e, rr);
            }
        }
    }

    public void registerForOnHoldTone(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mHoldingToneRegistrants.add(r);
    }

    public void unregisterForOnHoldTone(Handler h) {
        this.mHoldingToneRegistrants.remove(h);
    }

    private String getWorkSourceClientId(WorkSource workSource) {
        if (workSource != null) {
            return String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
        }
        return null;
    }

    private void acquireWakeLock(ImsRILRequest rr, int wakeLockType) {
        synchronized (rr) {
            if (rr.mWakeLockType != -1) {
                log("Failed to aquire wakelock for " + rr.serialString());
                return;
            }
            switch (wakeLockType) {
                case 0:
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
                        Message msg = this.imsRilHandler.obtainMessage(2);
                        msg.arg1 = this.mWlSequenceNum;
                        this.imsRilHandler.sendMessageDelayed(msg, this.mWakeLockTimeout);
                        break;
                    }
                case 1:
                    synchronized (this.mAckWakeLock) {
                        this.mAckWakeLock.acquire();
                        this.mAckWlSequenceNum++;
                        Message msg2 = this.imsRilHandler.obtainMessage(4);
                        msg2.arg1 = this.mAckWlSequenceNum;
                        this.imsRilHandler.sendMessageDelayed(msg2, this.mAckWakeLockTimeout);
                    }
                    break;
                default:
                    log("Acquiring Invalid Wakelock type " + wakeLockType);
                    return;
            }
            rr.mWakeLockType = wakeLockType;
        }
    }

    private void decrementWakeLock(ImsRILRequest rr) {
        synchronized (rr) {
            switch (rr.mWakeLockType) {
                case -1:
                    break;
                case 0:
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
                    break;
                case 1:
                    break;
                default:
                    logw("Decrementing Invalid Wakelock type " + rr.mWakeLockType);
                    break;
            }
            rr.mWakeLockType = -1;
        }
    }

    public boolean clearWakeLock(int wakeLockType) {
        if (wakeLockType == 0) {
            synchronized (this.mWakeLock) {
                if (this.mWakeLockCount != 0 || this.mWakeLock.isHeld()) {
                    log("NOTE: mWakeLockCount is " + this.mWakeLockCount + "at time of clearing");
                    this.mWakeLockCount = 0;
                    this.mWakeLock.release();
                    this.mClientWakelockTracker.stopTrackingAll();
                    this.mActiveWakelockWorkSource = null;
                    return true;
                }
                return false;
            }
        }
        synchronized (this.mAckWakeLock) {
            if (this.mAckWakeLock.isHeld()) {
                this.mAckWakeLock.release();
                return true;
            }
            return false;
        }
    }

    private void clearRequestList(int error, boolean loggable) {
        synchronized (this.mRequestsList) {
            int count = this.mRequestsList.size();
            for (int i = 0; i < count; i++) {
                ImsRILRequest rr = this.mRequestsList.get(i);
                rr.onError(error, null);
                decrementWakeLock(rr);
                rr.release();
            }
            this.mRequestsList.clear();
        }
    }

    private ImsRILRequest findAndRemoveRequestFromList(int serial) {
        synchronized (this.mRequestsList) {
            int s = this.mRequestsList.size();
            for (int i = 0; i < s; i++) {
                ImsRILRequest rr = this.mRequestsList.get(i);
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
        int subId = ImsCallProviderUtils.getSubId(this.mPhoneId.intValue());
        PersistableBundle bundle = manager.getConfigForSubId(subId);
        if (bundle == null) {
            return false;
        }
        return bundle.getBoolean("suppport_cnap_bool");
    }

    public boolean isSupportVideoRingTones() {
        CarrierConfigManager manager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        if (manager == null) {
            return false;
        }
        int subId = ImsCallProviderUtils.getSubId(this.mPhoneId.intValue());
        PersistableBundle bundle = manager.getConfigForSubId(subId);
        if (bundle == null || bundle.get(VIDEO_RING_TONES) == null) {
            return false;
        }
        return bundle.getBoolean(VIDEO_RING_TONES);
    }

    public void setVoWiFiRegErrReportEnable(int enabled, Message result) {
        IRadioIms radioProxy = getRadioProxy(result);
        if (radioProxy != null) {
            ImsRILRequest rr = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT, result, this.imsRILDefaultWorkSource);
            logd(rr.serialString() + "> " + requestToString(rr.mRequest));
            addRequest(rr);
            try {
                radioProxy.setImsRegErrReport(rr.mSerial, enabled);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setVoWiFiRegErrReportEnable", e, rr);
            }
        }
    }

    public void registerForVoWiFiRegErrReport(Handler h, int what, Object obj) {
        Registrant r = new Registrant(h, what, obj);
        this.mVoWiFiRegErrReportRegistrations.add(r);
    }

    public void unregisterForVoWiFiRegErrReport(Handler h) {
        this.mVoWiFiRegErrReportRegistrations.remove(h);
    }
}
