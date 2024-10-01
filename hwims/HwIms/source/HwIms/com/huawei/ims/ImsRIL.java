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

/* loaded from: ImsRIL.class */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: ImsRIL$ImsRilHandler.class */
    public class ImsRilHandler extends Handler {
        ImsRilHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 2) {
                if (i != 6) {
                    return;
                }
                ImsRIL.this.logd("handleMessage: EVENT_RADIO_PROXY_DEAD cookie = " + message.obj + " mRadioProxyCookie = " + ImsRIL.this.mRadioProxyCookie.get());
                if (((Long) message.obj).longValue() == ImsRIL.this.mRadioProxyCookie.get()) {
                    ImsRIL.this.resetProxyAndRequestList();
                    ImsRIL.this.getRadioProxy(null);
                    return;
                }
                return;
            }
            synchronized (ImsRIL.this.mRequestsList) {
                if (message.arg1 == ImsRIL.this.mWlSequenceNum) {
                    if (ImsRIL.this.clearWakeLock(0)) {
                        int size = ImsRIL.this.mRequestsList.size();
                        ImsRIL.this.log("WAKE_LOCK_TIMEOUT  mRequestsList=" + size);
                        for (int i2 = 0; i2 < size; i2++) {
                            ImsRILRequest imsRILRequest = ImsRIL.this.mRequestsList.get(i2);
                            ImsRIL.this.log(i2 + ": [" + imsRILRequest.mSerial + "] " + ImsRIL.requestToString(imsRILRequest.mRequest));
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: ImsRIL$RadioProxyDeathRecipient.class */
    public final class RadioProxyDeathRecipient implements IHwBinder.DeathRecipient {
        RadioProxyDeathRecipient() {
        }

        @Override // android.os.IHwBinder.DeathRecipient
        public void serviceDied(long j) {
            ImsRIL.this.imsRilHandler.sendMessageDelayed(ImsRIL.this.imsRilHandler.obtainMessage(6, Long.valueOf(j)), 3000L);
        }
    }

    public ImsRIL(Context context, Integer num) {
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
        this.mPhoneId = num;
        this.mRadioResponse = new ImsRadioResponse(this);
        this.mRadioIndication = new ImsRadioIndication(this);
        this.imsRilHandler = new ImsRilHandler();
        this.mRadioProxyDeathRecipient = new RadioProxyDeathRecipient();
        this.imsRILDefaultWorkSource = new WorkSource(context.getApplicationInfo().uid, context.getPackageName());
        getRadioProxy(null);
        this.mPhoneType = 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mWakeLock = powerManager.newWakeLock(1, LOG_TAG);
        this.mWakeLock.setReferenceCounted(false);
        this.mAckWakeLock = powerManager.newWakeLock(1, RILJ_ACK_WAKELOCK_NAME);
        this.mAckWakeLock.setReferenceCounted(false);
        this.mWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", (int) DEFAULT_WAKE_LOCK_TIMEOUT);
        this.mAckWakeLockTimeout = SystemProperties.getInt("ro.ril.wake_lock_timeout", (int) DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS);
        this.mRequestMessagesPending = 0;
        this.mRequestMessagesWaiting = 0;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    private void acquireWakeLock(ImsRILRequest imsRILRequest, int i) {
        synchronized (imsRILRequest) {
            if (imsRILRequest.mWakeLockType != -1) {
                log("Failed to aquire wakelock for " + imsRILRequest.serialString());
                return;
            }
            switch (i) {
                case 0:
                    synchronized (this.mWakeLock) {
                        this.mWakeLock.acquire();
                        this.mWakeLockCount++;
                        this.mWlSequenceNum++;
                        if (!this.mClientWakelockTracker.isClientActive(getWorkSourceClientId(imsRILRequest.mWorkSource))) {
                            if (this.mActiveWakelockWorkSource != null) {
                                this.mActiveWakelockWorkSource.add(imsRILRequest.mWorkSource);
                            } else {
                                this.mActiveWakelockWorkSource = imsRILRequest.mWorkSource;
                            }
                            this.mWakeLock.setWorkSource(this.mActiveWakelockWorkSource);
                        }
                        this.mClientWakelockTracker.startTracking(imsRILRequest.mClientId, imsRILRequest.mRequest, imsRILRequest.mSerial, this.mWakeLockCount);
                        Message obtainMessage = this.imsRilHandler.obtainMessage(2);
                        obtainMessage.arg1 = this.mWlSequenceNum;
                        this.imsRilHandler.sendMessageDelayed(obtainMessage, this.mWakeLockTimeout);
                        break;
                    }
                case 1:
                    synchronized (this.mAckWakeLock) {
                        this.mAckWakeLock.acquire();
                        this.mAckWlSequenceNum++;
                        Message obtainMessage2 = this.imsRilHandler.obtainMessage(4);
                        obtainMessage2.arg1 = this.mAckWlSequenceNum;
                        this.imsRilHandler.sendMessageDelayed(obtainMessage2, this.mAckWakeLockTimeout);
                    }
                    break;
                default:
                    log("Acquiring Invalid Wakelock type " + i);
                    return;
            }
            imsRILRequest.mWakeLockType = i;
        }
    }

    private void addRequest(ImsRILRequest imsRILRequest) {
        acquireWakeLock(imsRILRequest, 0);
        synchronized (this.mRequestsList) {
            this.mRequestsList.add(imsRILRequest);
        }
    }

    public static int[] arrayListToPrimitiveArray(ArrayList<Integer> arrayList) {
        int[] iArr = new int[arrayList.size()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        return iArr;
    }

    private void clearRequestList(int i, boolean z) {
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImsRILRequest imsRILRequest = this.mRequestsList.get(i2);
                imsRILRequest.onError(i, null);
                decrementWakeLock(imsRILRequest);
                imsRILRequest.release();
            }
            this.mRequestsList.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean clearWakeLock(int i) {
        if (i != 0) {
            synchronized (this.mAckWakeLock) {
                if (this.mAckWakeLock.isHeld()) {
                    this.mAckWakeLock.release();
                    return true;
                }
                return false;
            }
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] convertHalImsEndCause(RILImsModifyEndCause rILImsModifyEndCause, ImsRIL imsRIL) {
        int i = rILImsModifyEndCause.callIndex;
        int i2 = rILImsModifyEndCause.err;
        Rlog.d(LOG_TAG, "RILImsModifyEndCause received: callIndex=" + i + " callErr=" + i2);
        return new int[]{i, i2};
    }

    private String convertNullToEmptyString(String str) {
        if (str == null) {
            str = HwImsConfigImpl.NULL_STRING_VALUE;
        }
        return str;
    }

    private RILUICCAUTH createRilUiccAuth(int i, byte[] bArr, byte[] bArr2) {
        RILUICCAUTH riluiccauth = new RILUICCAUTH();
        String hexString = HexDump.toHexString(bArr);
        String hexString2 = HexDump.toHexString(bArr2);
        riluiccauth.authType = i;
        riluiccauth.authParams.randLen = hexString.length();
        riluiccauth.authParams.authLen = hexString2.length();
        riluiccauth.authParams.rand = hexString;
        riluiccauth.authParams.auth = hexString2;
        log("randlens = " + hexString.length());
        log("authlens = " + hexString2.length());
        log("rands = " + hexString);
        log("auths = " + hexString2);
        log("msg.authType = " + riluiccauth.authType);
        return riluiccauth;
    }

    private RILCURSMUPDATEFILE createRilUpdateFile(int i, byte[] bArr) {
        RILCURSMUPDATEFILE rilcursmupdatefile = new RILCURSMUPDATEFILE();
        String str = new String(bArr);
        int length = bArr.length;
        rilcursmupdatefile.appType = 0;
        rilcursmupdatefile.fileId = i;
        rilcursmupdatefile.fileParams.len = length;
        rilcursmupdatefile.fileParams.data = str;
        return rilcursmupdatefile;
    }

    private void decrementWakeLock(ImsRILRequest imsRILRequest) {
        synchronized (imsRILRequest) {
            switch (imsRILRequest.mWakeLockType) {
                case -1:
                    break;
                case 0:
                    synchronized (this.mWakeLock) {
                        this.mClientWakelockTracker.stopTracking(imsRILRequest.mClientId, imsRILRequest.mRequest, imsRILRequest.mSerial, this.mWakeLockCount > 1 ? this.mWakeLockCount - 1 : 0);
                        if (!this.mClientWakelockTracker.isClientActive(getWorkSourceClientId(imsRILRequest.mWorkSource)) && this.mActiveWakelockWorkSource != null) {
                            this.mActiveWakelockWorkSource.remove(imsRILRequest.mWorkSource);
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
                    logw("Decrementing Invalid Wakelock type " + imsRILRequest.mWakeLockType);
                    break;
            }
            imsRILRequest.mWakeLockType = -1;
        }
    }

    private ImsRILRequest findAndRemoveRequestFromList(int i) {
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImsRILRequest imsRILRequest = this.mRequestsList.get(i2);
                if (imsRILRequest.mSerial == i) {
                    this.mRequestsList.remove(i2);
                    if (this.mRequestMessagesWaiting > 0) {
                        this.mRequestMessagesWaiting--;
                    }
                    return imsRILRequest;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IRadioIms getRadioProxy(Message message) {
        if (this.mRadioProxy != null) {
            return this.mRadioProxy;
        }
        try {
            try {
                this.mRadioProxy = IRadioIms.getService(SOCKET_NAME_IMSRIL[this.mPhoneId == null ? 0 : this.mPhoneId.intValue()]);
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
            if (message != null) {
                AsyncResult.forMessage(message, (Object) null, CommandException.fromRilErrno(1));
                message.sendToTarget();
            }
            this.imsRilHandler.sendMessageDelayed(this.imsRilHandler.obtainMessage(6, Long.valueOf(this.mRadioProxyCookie.get())), 3000L);
        }
        return this.mRadioProxy;
    }

    private String getWorkSourceClientId(WorkSource workSource) {
        if (workSource != null) {
            return String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
        }
        return null;
    }

    private void handleRadioProxyExceptionForRR(String str, Exception exc, ImsRILRequest imsRILRequest) {
        logd(str + ": " + exc);
        resetProxyAndRequestList();
    }

    private void releaseWakeLockIfDone() {
        synchronized (this.mWakeLock) {
            if (this.mWakeLock.isHeld() && this.mRequestMessagesPending == 0 && this.mRequestMessagesWaiting == 0) {
                this.imsRilHandler.removeMessages(2);
                this.mWakeLock.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String requestToString(int i) {
        switch (i) {
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
                switch (i) {
                    case 49:
                        return "HW_IMS_DTMF_START";
                    case 50:
                        return "HW_IMS_DTMF_STOP";
                    default:
                        switch (i) {
                            case 2043:
                                return "HW_IMS_DIAL";
                            case 2044:
                                return "HW_IMS_GET_CURRENT_CALLS";
                            default:
                                switch (i) {
                                    case 2078:
                                        return "HW_IMS_SET_CLIR";
                                    case 2079:
                                        return "HW_IMS_SET_CALL_WAITING";
                                    default:
                                        switch (i) {
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
                                                switch (i) {
                                                    case HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE /* 2097 */:
                                                        return "HW_IMS_MODIFY_CALL_INITIATE";
                                                    case HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM /* 2098 */:
                                                        return "HW_IMS_MODIFY_CALL_CONFIRM";
                                                    default:
                                                        switch (i) {
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
                                                                switch (i) {
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
                                                                        switch (i) {
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
                                                                                return "<unknown request> " + i;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void resetProxyAndRequestList() {
        this.mRadioProxy = null;
        ImsRILRequest.resetSerial();
        clearRequestList(1, false);
    }

    static String responseToString(int i) {
        switch (i) {
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
                return "<unknown response> " + i;
        }
    }

    private String retToString(int i, Object obj) {
        String obj2;
        if (obj == null) {
            return HwImsConfigImpl.NULL_STRING_VALUE;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            StringBuilder sb = new StringBuilder("{");
            if (length > 0) {
                sb.append(iArr[0]);
                for (int i2 = 0 + 1; i2 < length; i2++) {
                    sb.append(", ");
                    sb.append(iArr[i2]);
                }
            }
            sb.append("}");
            obj2 = sb.toString();
        } else if (obj instanceof String[]) {
            String[] strArr = (String[]) obj;
            int length2 = strArr.length;
            StringBuilder sb2 = new StringBuilder("{");
            if (length2 > 0) {
                sb2.append(strArr[0]);
                for (int i3 = 0 + 1; i3 < length2; i3++) {
                    sb2.append(", ");
                    sb2.append(strArr[i3]);
                }
            }
            sb2.append("}");
            obj2 = sb2.toString();
        } else if (i == 2044) {
            ArrayList arrayList = (ArrayList) obj;
            StringBuilder sb3 = new StringBuilder(" ");
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                sb3.append("[");
                sb3.append(arrayList.get(i4));
                sb3.append("] ");
            }
            obj2 = sb3.toString();
        } else {
            obj2 = obj.toString();
        }
        return obj2;
    }

    private void sendAck() {
        ImsRILRequest obtain = ImsRILRequest.obtain(800, null, this.imsRILDefaultWorkSource);
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
        obtain.release();
    }

    public void acceptCall(Message message) {
        logUnimplemented();
    }

    public void acceptCall(Message message, int i) {
        logd("acceptCall callType=" + i);
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getCHRReportPhoneId(), 2, "AP_FLOW_SUC");
        ImsRILRequest obtain = ImsRILRequest.obtain(2054, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.acceptImsCall(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("acceptCall", e, obtain);
            }
        }
    }

    public void acceptCall(Message message, int i, int i2) {
        logUnimplemented();
    }

    public void acknowledgeIncomingGsmSmsWithPdu(boolean z, String str, Message message) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingCdmaSms(boolean z, int i, Message message) {
        logUnimplemented();
    }

    public void acknowledgeLastIncomingGsmSms(boolean z, int i, Message message) {
        logUnimplemented();
    }

    public void addToConference(String str, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2076, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.addImsConfMember(obtain.mSerial, str);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("addToConference", e, obtain);
            }
        }
    }

    public void cancelPendingUssd(Message message) {
        logUnimplemented();
    }

    public void changeBarringPassword(String str, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void changeIccPin(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void changeIccPin2(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void changeIccPin2ForApp(String str, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void changeIccPinForApp(String str, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void conference(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(16, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.conference(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("conference", e, obtain);
            }
        }
    }

    public void deactivateDataCall(int i, int i2, Message message) {
        logUnimplemented();
    }

    public void deleteSmsOnRuim(int i, Message message) {
        logUnimplemented();
    }

    public void deleteSmsOnSim(int i, Message message) {
        logUnimplemented();
    }

    public void dial(String str, int i, Message message) {
        logUnimplemented();
    }

    public void dial(String str, int i, UUSInfo uUSInfo, Message message) {
        logUnimplemented();
    }

    public void dial(String str, int i, ImsCallProfiles imsCallProfiles, Message message) {
        logd("dial address= " + HiddenPrivacyInfo.putMosaic(str, 0) + " clirMode= " + i + " imsCallProfile= " + imsCallProfiles);
        HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", getCHRReportPhoneId(), 0, "AP_FLOW_SUC");
        ImsRILRequest obtain = ImsRILRequest.obtain(2043, message, this.imsRILDefaultWorkSource);
        RILImsDial rILImsDial = new RILImsDial();
        if (str == null) {
            str = HwImsConfigImpl.NULL_STRING_VALUE;
        }
        rILImsDial.address = str;
        rILImsDial.clir = i;
        if (imsCallProfiles != null) {
            rILImsDial.callDetails.callType = imsCallProfiles.call_type;
            rILImsDial.callDetails.callDomain = imsCallProfiles.call_domain;
        }
        log(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.imsDial(obtain.mSerial, rILImsDial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("dial", e, obtain);
            }
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("ImsRIL:");
        synchronized (this.mWakeLock) {
            printWriter.println(" mWakeLock=" + this.mWakeLock);
        }
        printWriter.println(" mWakeLockTimeout=" + this.mWakeLockTimeout);
        synchronized (this.mRequestsList) {
            printWriter.println(" mRequestMessagesPending=" + this.mRequestMessagesPending);
            printWriter.println(" mRequestMessagesWaiting=" + this.mRequestMessagesWaiting);
            int size = this.mRequestsList.size();
            printWriter.println(" mRequestList count=" + size);
            for (int i = 0; i < size; i++) {
                ImsRILRequest imsRILRequest = this.mRequestsList.get(i);
                printWriter.println(" [" + imsRILRequest.mSerial + "] " + requestToString(imsRILRequest.mRequest));
            }
        }
        printWriter.println(" mTestingEmergencyCall=" + this.mTestingEmergencyCall.get());
    }

    public void exitEmergencyCallbackMode(Message message) {
        Phone phone;
        logv("exitEmergencyCallbackMode");
        if (!HwCustUtil.isVZW || (phone = PhoneFactory.getPhone(this.mPhoneId.intValue())) == null || phone.mCi == null) {
            logUnimplemented();
            return;
        }
        phone.mCi.exitEmergencyCallbackMode(phone.obtainMessage(26));
        if (this.mExitEmergencyCallbackModeRegistrants != null) {
            this.mExitEmergencyCallbackModeRegistrants.notifyRegistrants();
        }
    }

    public void explicitCallTransfer(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(72, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.explicitCallTransfer(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("explicitCallTransfer", e, obtain);
            }
        }
    }

    public void getAllowedCarriers(Message message) {
        logUnimplemented();
    }

    public void getAvailableNetworks(Message message) {
        logUnimplemented();
    }

    public void getBalongSim(Message message) {
        logUnimplemented();
    }

    public void getBasebandVersion(Message message) {
        logUnimplemented();
    }

    public void getCDMASubscription(Message message) {
        logUnimplemented();
    }

    public int getCHRReportPhoneId() {
        int intValue = ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE ? this.mPhoneId.intValue() : HwTelephonyManager.getDefault().getDefault4GSlotId();
        logv("getCHRReportPhoneId phoneid = " + intValue);
        return intValue;
    }

    public void getCLIR(Message message) {
        logv("getCLIR");
        logUnimplemented();
    }

    public void getCdmaBroadcastConfig(Message message) {
        logUnimplemented();
    }

    public void getCdmaSubscriptionSource(Message message) {
        logUnimplemented();
    }

    public void getCurrentCalls(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2044, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                logd("getCurrentCalls,call getCurrentImsCallsV1_2");
                radioProxy.getCurrentImsCallsV1_2(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getCurrentCalls", e, obtain);
            }
        }
    }

    public void getDMDYN(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_DYN, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getDmDynamicPram(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMDYN", e, obtain);
            }
        }
    }

    public void getDMPCSCF(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_PCSCF, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getDmPcscf(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMPCSCF", e, obtain);
            }
        }
    }

    public void getDMSMS(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_SMS, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getSmsPsi(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMSMS", e, obtain);
            }
        }
    }

    public void getDMTIMER(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_TIMER, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getDmTimer(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getDMTIMER", e, obtain);
            }
        }
    }

    public void getDMUSER(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_GET_DM_USER, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getDmUser(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR(HwImsConfigImpl.IMS_CONFIG_KEY_GETDMUSER, e, obtain);
            }
        }
    }

    public void getDataCallList(Message message) {
        logUnimplemented();
    }

    public void getDataRegistrationState(Message message) {
        logUnimplemented();
    }

    public void getDeviceIdentity(Message message) {
        logUnimplemented();
    }

    public void getGsmBroadcastConfig(Message message) {
        logUnimplemented();
    }

    public void getHardwareConfig(Message message) {
    }

    public void getIMEI(Message message) {
        logUnimplemented();
    }

    public void getIMEISV(Message message) {
        logUnimplemented();
    }

    public void getIMSI(Message message) {
        logUnimplemented();
    }

    public void getIMSIForApp(String str, Message message) {
        logUnimplemented();
    }

    public void getIccCardStatus(Message message) {
        logUnimplemented();
    }

    public void getIccSlotsStatus(Message message) {
        logUnimplemented();
    }

    public void getImsImpu(int i, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2069, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + i);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getImsImpu(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsImpu", e, obtain);
            }
        }
    }

    public void getImsRegistrationState(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(112, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getImsRegistrationState(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsRegistrationState", e, obtain);
            }
        }
    }

    public void getImsSmsConfig(Message message) {
        logd("getImsSmsConfig ENTER");
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                logd("Calling getImsSmsConfig -VENDOR 1.2");
                radioProxy.getImsSmsConfig(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio ", e, obtain);
            }
        }
    }

    public void getLastCallFailCause(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.getLastImsCallFailCause(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("getLastCallFailCause", e, obtain);
            }
        }
    }

    public void getLastDataCallFailCause(Message message) {
        logUnimplemented();
    }

    public void getLastPdpFailCause(Message message) {
        logUnimplemented();
    }

    public int getLteOnCdmaMode() {
        logUnimplemented();
        return 0;
    }

    public void getModemActivityInfo(Message message) {
    }

    public void getMute(Message message) {
        logUnimplemented();
    }

    public void getNeighboringCids(Message message) {
        logUnimplemented();
    }

    public void getNetworkSelectionMode(Message message) {
        logUnimplemented();
    }

    public void getOperator(Message message) {
        logUnimplemented();
    }

    @Deprecated
    public void getPDPContextList(Message message) {
        logUnimplemented();
    }

    public void getPreferredNetworkType(Message message) {
        logUnimplemented();
    }

    public void getPreferredVoicePrivacy(Message message) {
        logUnimplemented();
    }

    public void getQosStatus(int i, Message message) {
        logUnimplemented();
    }

    public CommandsInterface.RadioState getRadioState() {
        logUnimplemented();
        return null;
    }

    public void getSignalStrength(Message message) {
        logUnimplemented();
    }

    public void getSmscAddress(Message message) {
        logUnimplemented();
    }

    public void getVoiceRadioTechnology(Message message) {
        logUnimplemented();
    }

    public void getVoiceRegistrationState(Message message) {
        logUnimplemented();
    }

    public void handleCallSetupRequestFromSim(boolean z, Message message) {
        logUnimplemented();
    }

    public void hangupConnection(int i, Message message) {
        logd("hangupConnection: ImsIndex=" + i);
        ImsRILRequest obtain = ImsRILRequest.obtain(12, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + i);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.hangup(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupConnection", e, obtain);
            }
        }
    }

    public void hangupForegroundResumeBackground(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(14, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.hangupForegroundResumeBackground(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupForegroundResumeBackground", e, obtain);
            }
        }
    }

    public void hangupWaitingOrBackground(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(13, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.hangupWaitingOrBackground(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("hangupWaitingOrBackground", e, obtain);
            }
        }
    }

    public void iccCloseChannel(int i, Message message) {
    }

    public void iccCloseLogicalChannel(int i, Message message) {
    }

    public void iccExchangeAPDU(int i, int i2, int i3, int i4, int i5, int i6, String str, Message message) {
    }

    public void iccGetATR(Message message) {
        logUnimplemented();
    }

    public void iccIO(int i, int i2, String str, int i3, int i4, int i5, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void iccIOForApp(int i, int i2, String str, int i3, int i4, int i5, String str2, String str3, String str4, Message message) {
        logUnimplemented();
    }

    public void iccOpenChannel(String str, Message message) {
    }

    public void iccOpenLogicalChannel(String str, int i, Message message) {
    }

    public void iccTransmitApduBasicChannel(int i, int i2, int i3, int i4, int i5, String str, Message message) {
    }

    public void iccTransmitApduLogicalChannel(int i, int i2, int i3, int i4, int i5, int i6, String str, Message message) {
    }

    public void invokeOemRilRequestRaw(byte[] bArr, Message message) {
        logUnimplemented();
    }

    public void invokeOemRilRequestStrings(String[] strArr, Message message) {
        logUnimplemented();
    }

    public boolean isSupportCnap() {
        PersistableBundle configForSubId;
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        if (carrierConfigManager == null || (configForSubId = carrierConfigManager.getConfigForSubId(ImsCallProviderUtils.getSubId(this.mPhoneId.intValue()))) == null) {
            return false;
        }
        return configForSubId.getBoolean("suppport_cnap_bool");
    }

    public boolean isSupportVideoRingTones() {
        PersistableBundle configForSubId;
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        if (carrierConfigManager == null || (configForSubId = carrierConfigManager.getConfigForSubId(ImsCallProviderUtils.getSubId(this.mPhoneId.intValue()))) == null || configForSubId.get(VIDEO_RING_TONES) == null) {
            return false;
        }
        return configForSubId.getBoolean(VIDEO_RING_TONES);
    }

    public void log(String str) {
        Rlog.d("RILJ_IMS[" + this.mPhoneId + "]", str);
    }

    public void logUnimplemented() {
        try {
            throw new Exception();
        } catch (Exception e) {
            log("Unimplemented method. Stack trace: ");
        }
    }

    public void logd(String str) {
        Rlog.d("RILJ_IMS[" + this.mPhoneId + "]", str);
    }

    public void logv(String str) {
        Rlog.v("RILJ_IMS[" + this.mPhoneId + "]", str);
    }

    public void logw(String str) {
        Rlog.w("RILJ_IMS[" + this.mPhoneId + "]", str);
    }

    public void modifyCallConfirm(Message message, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallConfirm callModify = " + callModify);
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + callModify);
        RILImsCallModify rILImsCallModify = new RILImsCallModify();
        rILImsCallModify.callIndex = callModify.call_index;
        rILImsCallModify.currCallDetails.callType = callModify.curr_call_details.call_type;
        rILImsCallModify.currCallDetails.callDomain = callModify.curr_call_details.call_domain;
        rILImsCallModify.destCallDetails.callType = callModify.dest_call_details.call_type;
        rILImsCallModify.destCallDetails.callDomain = callModify.dest_call_details.call_domain;
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallConfirm(obtain.mSerial, rILImsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallConfirm", e, obtain);
            }
        }
    }

    public void modifyCallInitiate(Message message, ImsCallAdapter.CallModify callModify) {
        logv("modifyCallInitiate callModify = " + callModify);
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + callModify);
        RILImsCallModify rILImsCallModify = new RILImsCallModify();
        rILImsCallModify.callIndex = callModify.call_index;
        rILImsCallModify.currCallDetails.callType = callModify.curr_call_details.call_type;
        rILImsCallModify.currCallDetails.callDomain = callModify.curr_call_details.call_domain;
        rILImsCallModify.destCallDetails.callType = callModify.dest_call_details.call_type;
        rILImsCallModify.destCallDetails.callDomain = callModify.dest_call_details.call_domain;
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.modifyImsCallInitiate(obtain.mSerial, rILImsCallModify);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallInitiate", e, obtain);
            }
        }
    }

    public void modifyCallUpgradeCancel(Message message, int i) {
        logv("modifyCallUpgradeCancel callId = " + i);
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + i);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.cancelImsVideoCall(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("modifyCallUpgradeCancel", e, obtain);
            }
        }
    }

    public void modifyQos(int i, ArrayList<String> arrayList, Message message) {
        logUnimplemented();
    }

    public void nvReadItem(int i, Message message) {
    }

    public void nvResetConfig(int i, Message message) {
    }

    public void nvWriteCdmaPrl(byte[] bArr, Message message) {
    }

    public void nvWriteItem(int i, String str, Message message) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processIndication(int i) {
        if (i == 1) {
            sendAck();
            log("Unsol response received; Sending ack to ril.cpp");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processRequestAck(int i) {
        ImsRILRequest imsRILRequest;
        synchronized (this.mRequestsList) {
            int size = this.mRequestsList.size();
            if (i < 0 || i >= size) {
                log("processRequestAck: Unexpected serial " + i);
                imsRILRequest = null;
            } else {
                imsRILRequest = this.mRequestsList.get(i);
            }
        }
        if (imsRILRequest == null) {
            log("processRequestAck: Unexpected solicited ack response! ");
            return;
        }
        log("rr.serialString() = " + imsRILRequest.serialString() + " Ack < " + requestToString(imsRILRequest.mRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsRILRequest processResponse(RadioResponseInfo radioResponseInfo) {
        int i = radioResponseInfo.serial;
        int i2 = radioResponseInfo.type;
        ImsRILRequest findAndRemoveRequestFromList = findAndRemoveRequestFromList(i);
        if (findAndRemoveRequestFromList == null) {
            return null;
        }
        if (i2 == 2) {
            log("Response received for " + findAndRemoveRequestFromList.serialString() + " " + requestToString(findAndRemoveRequestFromList.mRequest) + " Sending ack to ril.cpp");
        }
        int i3 = findAndRemoveRequestFromList.mRequest;
        releaseWakeLockIfDone();
        return findAndRemoveRequestFromList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processResponseDone(ImsRILRequest imsRILRequest, RadioResponseInfo radioResponseInfo, Object obj) {
        if (radioResponseInfo.error != 0) {
            log(imsRILRequest.serialString() + "< " + requestToString(imsRILRequest.mRequest) + " error " + radioResponseInfo.error);
            imsRILRequest.onError(radioResponseInfo.error, obj);
        } else if (2069 == imsRILRequest.mRequest) {
            logd(imsRILRequest.serialString() + "< " + requestToString(imsRILRequest.mRequest) + " " + HiddenPrivacyInfo.putMosaic(retToString(imsRILRequest.mRequest, obj), 2));
        } else {
            logd(imsRILRequest.serialString() + "< " + requestToString(imsRILRequest.mRequest) + " " + retToString(imsRILRequest.mRequest, obj));
        }
        if (radioResponseInfo.type == 0) {
            decrementWakeLock(imsRILRequest);
        }
        imsRILRequest.release();
    }

    public void queryAvailableBandMode(Message message) {
        logUnimplemented();
    }

    public void queryCLIP(Message message) {
        logv("queryClip");
        logUnimplemented();
    }

    public void queryCallForwardStatus(int i, int i2, String str, Message message) {
        logUnimplemented();
    }

    public void queryCallWaiting(int i, Message message) {
        logv("queryCallWaiting serviceClass = " + i);
        logUnimplemented();
    }

    public void queryCardType(Message message) {
        logUnimplemented();
    }

    public void queryCdmaRoamingPreference(Message message) {
        logUnimplemented();
    }

    public void queryFacilityLock(String str, String str2, int i, Message message) {
        logUnimplemented();
    }

    public void queryFacilityLockForApp(String str, String str2, int i, String str3, Message message) {
        logUnimplemented();
    }

    public void queryTTYMode(Message message) {
        logUnimplemented();
    }

    public void registerFoT53ClirlInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForAvailable(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForCallModifyResult(Handler handler, int i, Object obj) {
        this.mModifyCallResultRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForCallStateChanged(Handler handler, int i, Object obj) {
        this.mCallStateRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForCallWaitingInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForCarrierInfoForImsiEncryption(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForCdmaOtaProvision(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForCdmaPrlChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForCdmaSubscriptionChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForDisplayInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForExitEmergencyCallbackMode(Handler handler, int i, Object obj) {
        if (HwCustUtil.isVZW) {
            super.registerForExitEmergencyCallbackMode(handler, i, obj);
        } else {
            logUnimplemented();
        }
    }

    public void registerForHandoverStatusChanged(Handler handler, int i, Object obj) {
        this.mHandoverStatusRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForIccRefresh(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForImsCSRedial(Handler handler, int i, Object obj) {
        this.mImsCSRedialRegistrations.add(new Registrant(handler, i, obj));
    }

    public void registerForImsDMCN(Handler handler, int i, Object obj) {
        this.mImsDMCNRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForImsNetworkStateChanged(Handler handler, int i, Object obj) {
        this.mImsNetworkStateChangedRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForImsRegMode(Handler handler, int i, Object obj) {
        this.mImsRegModeRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForInCallVoicePrivacyOff(Handler handler, int i, Object obj) {
        this.mVoicePrivacyOffRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForInCallVoicePrivacyOn(Handler handler, int i, Object obj) {
        this.mVoicePrivacyOnRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForLineControlInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForModemReset(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForModifyCall(Handler handler, int i, Object obj) {
        this.mModifyCallRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForMtStatusReport(Handler handler, int i, Object obj) {
        this.mMtStatusReportRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForNetworkScanResult(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForNotAvailable(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForNumberInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForOffOrNotAvailable(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForOn(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForOnHoldTone(Handler handler, int i, Object obj) {
        this.mHoldingToneRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForRadioStateChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForRedirectedNumberInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForResendIncallMute(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForRilConnected(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForRingbackTone(Handler handler, int i, Object obj) {
        this.mRingbackToneRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForSignalInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForSrvStatusUpdate(Handler handler, int i, Object obj) {
        this.mSrvStatusRegistrations.add(new Registrant(handler, i, obj));
    }

    public void registerForSubscriptionStatusChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForT53AudioControlInfo(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForUnsolLTE_PDCPInfo(Handler handler, int i, Object obj) {
        this.mLtePDCPInfoRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForUnsolLTE_RRCInfo(Handler handler, int i, Object obj) {
        this.mLteRRCInfoRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForUnsolSpeechInfo(Handler handler, int i, Object obj) {
        this.mSpeechInfoRegistrants.add(new Registrant(handler, i, obj));
    }

    public void registerForVoWiFiRegErrReport(Handler handler, int i, Object obj) {
        this.mVoWiFiRegErrReportRegistrations.add(new Registrant(handler, i, obj));
    }

    public void registerForVoiceRadioTechChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void registerForVtFlowInfo(Handler handler, int i, Object obj) {
        this.mVtFlowInfoReportRegistrants.add(new Registrant(handler, i, obj));
    }

    public void rejectCall(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(17, message);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCall(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("rejectCall", e, obtain);
            }
        }
    }

    public void rejectImsCallForCause(int i, int i2, Message message) {
        log("rejectImsCallForCause , cause: " + i2);
        ImsRILRequest obtain = ImsRILRequest.obtain(2170, message);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.rejectCallWithReason(obtain.mSerial, i, i2);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("rejectImsCallForCause", e, obtain);
            }
        }
    }

    public void releaseQos(int i, Message message) {
        logUnimplemented();
    }

    public void reportSmsMemoryStatus(boolean z, Message message) {
        logUnimplemented();
    }

    public void reportStkServiceIsRunning(Message message) {
        logUnimplemented();
    }

    public void requestGetLTEInfo(int i, int i2, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + "open=" + i + "threshold=" + i2);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setVtLlteQualityRptCfg(obtain.mSerial, i, i2);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestGetLTEInfo", e, obtain);
            }
        }
    }

    public void requestGetUiccFile(int i, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2084, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + ", fileid=" + i);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getUiccFile(obtain.mSerial, 0, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestGetUiccFile", e, obtain);
            }
        }
    }

    public void requestIccSimAuthentication(int i, String str, String str2, Message message) {
    }

    public void requestReadHomeDomainName(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_DOMAIN, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteDomain(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestReadHomeDomainName", e, obtain);
            }
        }
    }

    public void requestReadIsimIMPI(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOLTE_IMPI, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.getVolteImpi(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestReadIsimIMPI", e, obtain);
            }
        }
    }

    public void requestSetImsVtCapability(int i, int i2, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + "type=" + i + "open=" + i2);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.setImsvtCapability(obtain.mSerial, i, i2);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestSetImsVtCapability", e, obtain);
            }
        }
    }

    public void requestUiccAuth(byte[] bArr, byte[] bArr2, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2081, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + "[" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(bArr), 4) + "][" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(bArr2), 4) + "]");
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.uiccAuth(obtain.mSerial, createRilUiccAuth(0, bArr, bArr2));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccAuth", e, obtain);
            }
        }
    }

    public void requestUiccFileUpdate(int i, byte[] bArr, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2083, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + ", fileid=" + i + "[" + HexDump.toHexString(bArr) + "]");
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.updateUiccFile(obtain.mSerial, createRilUpdateFile(i, bArr));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccFileUpdate", e, obtain);
            }
        }
    }

    public void requestUiccGbaBootstrap(byte[] bArr, byte[] bArr2, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2082, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + "[" + HexDump.toHexString(bArr) + "][" + HexDump.toHexString(bArr2) + "]");
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.uiccGbaBootStrap(obtain.mSerial, createRilUiccAuth(1, bArr, bArr2));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("requestUiccGbaBootstrap", e, obtain);
            }
        }
    }

    public void requestUiccKsNaf(int i, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2085, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + ", fileid=" + i);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
        }
    }

    public void resetRadio(Message message) {
        logUnimplemented();
    }

    public void restartRild(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(2005, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy == null) {
            obtain.onError(1, null);
            obtain.release();
            return;
        }
        addRequest(obtain);
        log("radioProxy = " + radioProxy);
        try {
            radioProxy.restartRILD(obtain.mSerial);
        } catch (RemoteException | RuntimeException e) {
            handleRadioProxyExceptionForRR("restartRild", e, obtain);
        }
    }

    public void resumeQos(int i, Message message) {
        logUnimplemented();
    }

    public void riseCdmaCutoffFreq(boolean z, Message message) {
        logUnimplemented();
    }

    public void sendBatteryStatus(int i, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_BATTERY_STATUS, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.informBatteryStatus(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("sendBatteryStatus", e, obtain);
            }
        }
    }

    public void sendBurstDtmf(String str, int i, int i2, Message message) {
        logUnimplemented();
    }

    public void sendCDMAFeatureCode(String str, Message message) {
        logUnimplemented();
    }

    public void sendCdmaSms(byte[] bArr, Message message) {
        logUnimplemented();
    }

    public void sendDeviceState(int i, boolean z, Message message) {
        logUnimplemented();
    }

    public void sendDtmf(char c, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(24, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.sendDtmf(obtain.mSerial, Character.toString(c));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("sendDtmf", e, obtain);
            }
        }
    }

    public void sendEnvelope(String str, Message message) {
        logUnimplemented();
    }

    public void sendEnvelopeWithStatus(String str, Message message) {
        logUnimplemented();
    }

    public void sendImsCdmaSms(byte[] bArr, int i, int i2, Message message) {
        logUnimplemented();
    }

    public void sendImsGsmSms(String str, String str2, int i, int i2, Message message) {
        logUnimplemented();
    }

    public void sendImsRegistrationState(int i, Message message) {
        logUnimplemented();
    }

    public void sendSMS(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void sendSMSExpectMore(String str, String str2, Message message) {
    }

    public void sendSMSSetLong(int i, Message message) {
    }

    public void sendTerminalResponse(String str, Message message) {
        logUnimplemented();
    }

    public void sendUSSD(String str, Message message) {
        logUnimplemented();
    }

    public void separateConnection(int i, Message message) {
        logUnimplemented();
    }

    public void setAllowedCarriers(List<CarrierIdentifier> list, Message message) {
        logUnimplemented();
    }

    public void setBandMode(int i, Message message) {
        logUnimplemented();
    }

    public void setCLIR(int i, Message message) {
        logv("setCLIR clirmode = " + i);
        ImsRILRequest obtain = ImsRILRequest.obtain(2078, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setClir(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setCLIR", e, obtain);
            }
        }
    }

    public void setCallForward(int i, int i2, int i3, String str, int i4, Message message) {
        logUnimplemented();
    }

    public void setCallWaiting(boolean z, int i, Message message) {
        logv("setCallWaiting enable = " + z + "serviceClass = " + i);
        ImsRILRequest obtain = ImsRILRequest.obtain(2079, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        logv("radioProxy =" + radioProxy);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setImsCallWaiting(obtain.mSerial, z, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setCallWaiting", e, obtain);
            }
        }
    }

    public void setCarrierInfoForImsiEncryption(ImsiEncryptionInfo imsiEncryptionInfo, Message message) {
        logUnimplemented();
    }

    public void setCdmaBroadcastActivation(boolean z, Message message) {
        logUnimplemented();
    }

    public void setCdmaBroadcastConfig(int[] iArr, Message message) {
        logUnimplemented();
    }

    public void setCdmaBroadcastConfig(CdmaSmsBroadcastConfigInfo[] cdmaSmsBroadcastConfigInfoArr, Message message) {
        logUnimplemented();
    }

    public void setCdmaRoamingPreference(int i, Message message) {
        logUnimplemented();
    }

    public void setCdmaSubscriptionSource(int i, Message message) {
        logUnimplemented();
    }

    public void setDMDYN(String str, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_DYN, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setDmDynamicPram(obtain.mSerial, str);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMDYN", e, obtain);
            }
        }
    }

    public void setDMPCSCF(String str, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_PCSCF, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setDmPcscf(obtain.mSerial, str);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMPCSCF", e, obtain);
            }
        }
    }

    public void setDMSMS(String str, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_SMS, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setDmSmsPsi(obtain.mSerial, str);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMSMS", e, obtain);
            }
        }
    }

    public void setDMTIMER(String str, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_IMS_SET_DM_TIMER, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setDmTimer(obtain.mSerial, str);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setDMTIMER", e, obtain);
            }
        }
    }

    public void setDataProfile(DataProfile[] dataProfileArr, boolean z, Message message) {
        logUnimplemented();
    }

    public void setEmergencyCallbackMode(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setFacilityLock(String str, boolean z, String str2, int i, Message message) {
        logUnimplemented();
    }

    public void setFacilityLockForApp(String str, boolean z, String str2, int i, String str3, Message message) {
        logUnimplemented();
    }

    public void setGsmBroadcastActivation(boolean z, Message message) {
        logUnimplemented();
    }

    public void setGsmBroadcastConfig(SmsBroadcastConfigInfo[] smsBroadcastConfigInfoArr, Message message) {
        logUnimplemented();
    }

    public void setISMCOEX(String str) {
        logUnimplemented();
    }

    public void setImsSmsConfig(int i, Message message) {
        logd("setImsSmsConfig ENTER ");
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                logd("Calling setImsSmsConfiYou g -VENDOR 1.2 with enabled= " + i);
                radioProxy.setImsSmsConfig(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio", e, obtain);
            }
        }
    }

    public void setInitialAttachApn(DataProfile dataProfile, boolean z, Message message) {
        logUnimplemented();
    }

    public void setLTEReleaseVersion(boolean z, Message message) {
        logUnimplemented();
    }

    public void setLinkCapacityReportingCriteria(int i, int i2, int i3, int[] iArr, int[] iArr2, int i4, Message message) {
    }

    public void setLocationUpdates(boolean z, Message message) {
        logUnimplemented();
    }

    public void setLogicalToPhysicalSlotMapping(int[] iArr, Message message) {
        logUnimplemented();
    }

    public void setMute(boolean z, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(53, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest) + " " + z);
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.setMute(obtain.mSerial, z);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setMute", e, obtain);
            }
        }
    }

    public void setNetworkSelectionModeAutomatic(Message message) {
        logUnimplemented();
    }

    public void setNetworkSelectionModeManual(String str, Message message) {
        logUnimplemented();
    }

    public void setOnCatCallSetUp(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnCatEvent(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnCatProactiveCmd(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnCatSessionEnd(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnIccRefresh(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnIccSmsFull(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnNITZTime(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnNewCdmaSms(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnNewGsmBroadcastSms(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnNewGsmSms(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnRestrictedStateChanged(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnSignalStrengthUpdate(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnSmsOnSim(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnSmsStatus(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setOnSuppServiceNotification(Handler handler, int i, Object obj) {
        this.mSsnRegistrant = new Registrant(handler, i, obj);
    }

    public void setOnUSSD(Handler handler, int i, Object obj) {
        logUnimplemented();
    }

    public void setPhoneType(int i) {
        log("setPhoneType=" + i + " old value=" + this.mPhoneType);
        this.mPhoneType = i;
    }

    public void setPreferredNetworkType(int i, Message message) {
        logUnimplemented();
    }

    public void setPreferredVoicePrivacy(boolean z, Message message) {
        logUnimplemented();
    }

    public void setRadioPower(boolean z, Message message) {
        logUnimplemented();
    }

    public void setSignalStrengthReportingCriteria(int i, int i2, int[] iArr, int i3, Message message) {
    }

    public void setSimCardPower(int i, Message message) {
        logUnimplemented();
    }

    public void setSmscAddress(String str, Message message) {
        logUnimplemented();
    }

    public void setSuppServiceNotifications(boolean z, Message message) {
        logUnimplemented();
    }

    public void setTTYMode(int i, Message message) {
        logUnimplemented();
    }

    public void setUiccSubscription(int i, int i2, int i3, int i4, Message message) {
        logUnimplemented();
    }

    public void setUnsolResponseFilter(int i, Message message) {
        logUnimplemented();
    }

    public void setVoWiFiRegErrReportEnable(int i, Message message) {
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT, message, this.imsRILDefaultWorkSource);
            logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
            addRequest(obtain);
            try {
                radioProxy.setImsRegErrReport(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("setVoWiFiRegErrReportEnable", e, obtain);
            }
        }
    }

    public void setWifiEmergencyAid(boolean z, Message message) {
        logd("[Wifi-Call] setWifiEmergencyAid");
        ImsRILRequest obtain = ImsRILRequest.obtain(HwCustRILConstants.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            String str = HwImsConfigImpl.NULL_STRING_VALUE;
            if (z) {
                try {
                    str = Settings.System.getString(this.mContext.getContentResolver(), "att_address_id_value");
                } catch (RemoteException | RuntimeException e) {
                    handleRadioProxyExceptionForRR("setWifiEmergencyAid", e, obtain);
                    return;
                }
            }
            logd("[Wifi-Call] setWifiEmergencyAid data = " + str);
            radioProxy.setWifiEmergencyAid(obtain.mSerial, convertNullToEmptyString(str));
        }
    }

    public void setupDataCall(int i, DataProfile dataProfile, boolean z, boolean z2, int i2, LinkProperties linkProperties, Message message) {
        logUnimplemented();
    }

    public void setupQosReq(int i, ArrayList<String> arrayList, Message message) {
        logUnimplemented();
    }

    public void startDtmf(char c, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(49, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.startDtmf(obtain.mSerial, Character.toString(c));
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("startDtmf", e, obtain);
            }
        }
    }

    public void startNattKeepalive(int i, KeepalivePacketData keepalivePacketData, int i2, Message message) {
        logUnimplemented();
    }

    public void startNetworkScan(NetworkScanRequest networkScanRequest, Message message) {
        logUnimplemented();
    }

    public void stopDtmf(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(50, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            log("radioProxy = " + radioProxy);
            try {
                radioProxy.stopDtmf(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("stopDtmf", e, obtain);
            }
        }
    }

    public void stopNattKeepalive(int i, Message message) {
        logUnimplemented();
    }

    public void stopNetworkScan(Message message) {
        logUnimplemented();
    }

    public void supplyDepersonalization(String str, int i, Message message) {
        logUnimplemented();
    }

    public void supplyIccPin(String str, Message message) {
        logUnimplemented();
    }

    public void supplyIccPin2(String str, Message message) {
        logUnimplemented();
    }

    public void supplyIccPin2ForApp(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void supplyIccPinForApp(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void supplyIccPuk(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void supplyIccPuk2(String str, String str2, Message message) {
        logUnimplemented();
    }

    public void supplyIccPuk2ForApp(String str, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void supplyIccPukForApp(String str, String str2, String str3, Message message) {
        logUnimplemented();
    }

    public void supplyNetworkDepersonalization(String str, Message message) {
        logUnimplemented();
    }

    public void suspendQos(int i, Message message) {
        logUnimplemented();
    }

    public void switchBalongSim(int i, int i2, Message message) {
        logUnimplemented();
    }

    public void switchWaitingOrHoldingAndActive(Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(15, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.switchWaitingOrHoldingAndActive(obtain.mSerial);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("switchWaitingOrHoldingAndActive", e, obtain);
            }
        }
    }

    public void switchWaitingOrHoldingAndActiveForIms(int i, Message message) {
        ImsRILRequest obtain = ImsRILRequest.obtain(15, message, this.imsRILDefaultWorkSource);
        logd(obtain.serialString() + "> " + requestToString(obtain.mRequest));
        IRadioIms radioProxy = getRadioProxy(message);
        if (radioProxy != null) {
            addRequest(obtain);
            try {
                radioProxy.switchImsWaitingOrHoldingAndActiveWithType(obtain.mSerial, i);
            } catch (RemoteException | RuntimeException e) {
                handleRadioProxyExceptionForRR("switchWaitingOrHoldingAndActiveForIms ", e, obtain);
            }
        }
    }

    public void testingEmergencyCall() {
        logUnimplemented();
    }

    public void unSetOnCallRing(Handler handler) {
        if (this.mRingRegistrant == null || this.mRingRegistrant.getHandler() != handler) {
            return;
        }
        this.mRingRegistrant.clear();
        this.mRingRegistrant = null;
    }

    public void unSetOnCatCallSetUp(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnCatEvent(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnCatProactiveCmd(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnCatSessionEnd(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnIccSmsFull(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnNITZTime(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnNewCdmaSms(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnNewGsmBroadcastSms(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnNewGsmSms(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnRestrictedStateChanged(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnSignalStrengthUpdate(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnSmsOnSim(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnSmsStatus(Handler handler) {
        logUnimplemented();
    }

    public void unSetOnSuppServiceNotification(Handler handler) {
        this.mSsnRegistrant.clear();
    }

    public void unSetOnUSSD(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForAvailable(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForCallModifyResult(Handler handler) {
        this.mModifyCallResultRegistrants.remove(handler);
    }

    public void unregisterForCallStateChanged(Handler handler) {
        this.mCallStateRegistrants.remove(handler);
    }

    public void unregisterForCallWaitingInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForCarrierInfoForImsiEncryption(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForCdmaOtaProvision(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForCdmaPrlChanged(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForCdmaSubscriptionChanged(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForDisplayInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForExitEmergencyCallbackMode(Handler handler) {
        if (HwCustUtil.isVZW) {
            super.unregisterForExitEmergencyCallbackMode(handler);
        } else {
            logUnimplemented();
        }
    }

    public void unregisterForHandoverStatusChanged(Handler handler) {
        this.mHandoverStatusRegistrants.remove(handler);
    }

    public void unregisterForIccRefresh(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForImsCSRedial(Handler handler) {
        this.mImsCSRedialRegistrations.remove(handler);
    }

    public void unregisterForImsDMCN(Handler handler) {
        this.mImsDMCNRegistrants.remove(handler);
    }

    public void unregisterForImsNetworkStateChanged(Handler handler) {
        this.mImsNetworkStateChangedRegistrants.remove(handler);
    }

    public void unregisterForImsRegMode(Handler handler) {
        this.mImsRegModeRegistrants.remove(handler);
    }

    public void unregisterForInCallVoicePrivacyOff(Handler handler) {
        this.mVoicePrivacyOffRegistrants.remove(handler);
    }

    public void unregisterForInCallVoicePrivacyOn(Handler handler) {
        this.mVoicePrivacyOnRegistrants.remove(handler);
    }

    public void unregisterForLineControlInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForModemReset(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForModifyCall(Handler handler) {
        this.mModifyCallRegistrants.remove(handler);
    }

    public void unregisterForMtStatusReport(Handler handler) {
        this.mMtStatusReportRegistrants.remove(handler);
    }

    public void unregisterForNetworkScanResult(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForNotAvailable(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForNumberInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForOffOrNotAvailable(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForOn(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForOnHoldTone(Handler handler) {
        this.mHoldingToneRegistrants.remove(handler);
    }

    public void unregisterForRadioStateChanged(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForRedirectedNumberInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForResendIncallMute(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForRilConnected(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForRingbackTone(Handler handler) {
        this.mRingbackToneRegistrants.remove(handler);
    }

    public void unregisterForSignalInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForSrvStatusUpdate(Handler handler) {
        this.mSrvStatusRegistrations.remove(handler);
    }

    public void unregisterForSubscriptionStatusChanged(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForT53AudioControlInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForT53ClirInfo(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForUnsolLTE_PDCPInfo(Handler handler) {
        this.mLtePDCPInfoRegistrants.remove(handler);
    }

    public void unregisterForUnsolLTE_RRCInfo(Handler handler) {
        this.mLteRRCInfoRegistrants.remove(handler);
    }

    public void unregisterForUnsolSpeechInfo(Handler handler) {
        this.mSpeechInfoRegistrants.remove(handler);
    }

    public void unregisterForVoWiFiRegErrReport(Handler handler) {
        this.mVoWiFiRegErrReportRegistrations.remove(handler);
    }

    public void unregisterForVoiceRadioTechChanged(Handler handler) {
        logUnimplemented();
    }

    public void unregisterForVtFlowInfo(Handler handler) {
        this.mVtFlowInfoReportRegistrants.remove(handler);
    }

    public void unsetOnIccRefresh(Handler handler) {
        logUnimplemented();
    }

    public void unsljLog(int i) {
        log("[UNSL]< " + responseToString(i) + " " + i);
    }

    public void unsljLogRet(int i, Object obj) {
        log("[UNSL]< " + responseToString(i) + " " + retToString(i, obj));
    }

    public void unsljLogvRet(int i, Object obj) {
        logv("[UNSL]< " + responseToString(i) + " " + retToString(i, obj));
    }

    public void writeSmsToRuim(int i, String str, Message message) {
        logUnimplemented();
    }

    public void writeSmsToSim(int i, String str, String str2, Message message) {
        logUnimplemented();
    }
}
