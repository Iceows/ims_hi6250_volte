package com.huawei.ims;

import android.os.SystemProperties;
import android.telecom.VideoProfile;
import android.telephony.HwTelephonyManager;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import com.android.ims.HwImsManager;
import com.huawei.ims.DriverImsCall;

/* loaded from: ImsCallProviderUtils.class */
public class ImsCallProviderUtils {
    public static final int BUSY_REJECT_CAUSE = 0;
    public static final int IMS_DOMAIN_LTE = 0;
    public static final int IMS_DOMAIN_UNKNOWN = 2;
    public static final int IMS_DOMAIN_WIFI = 1;
    public static final int NO_REJECT_CAUSE = -1;
    public static final int USER_REJECT_CAUSE = 1;
    private static String TAG = "ImsCallProviderUtils";
    public static final boolean IS_DUAL_IMS_AVAILABLE = HwImsManager.isDualImsAvailable();
    private static final String HW_VTLTE_ON = "ro.config.hw_vtlte_on";
    private static final boolean mIsVtLteSupported = SystemProperties.getBoolean(HW_VTLTE_ON, false);
    private static final boolean IS_VILTE_ENHANCEMENT_SUPPORTED = SystemProperties.getBoolean("ro.config.hw_vilte_enhancement", false);
    private static final String HW_CDMA_VOLTE_ISIM = "ro.config.hw_cdma_volte_isim";
    private static final boolean mIsCdmaVolteISIM = SystemProperties.getBoolean(HW_CDMA_VOLTE_ISIM, false);
    private static final String DEVICE_TYPE_TABLET = "tablet";
    private static final String PRODUCT_CHARACTERISTICS = "ro.build.characteristics";
    public static final boolean IS_TABLET = DEVICE_TYPE_TABLET.equals(SystemProperties.get(PRODUCT_CHARACTERISTICS, "default"));
    private static final boolean IS_VOWIFI_PROP__ON = SystemProperties.getBoolean("ro.vendor.config.hw_vowifi", false);

    public static boolean canVideoPause(HwImsCallSessionImpl hwImsCallSessionImpl) {
        return isVideoCall(hwImsCallSessionImpl.getInternalCallType()) && hwImsCallSessionImpl.isCallActive();
    }

    public static int convertCallTypeToVideoState(int i) {
        int i2;
        if (i != 6) {
            if (i != 8) {
                switch (i) {
                    case 0:
                        i2 = 0;
                        break;
                    case 1:
                        i2 = 1;
                        break;
                    case 2:
                        i2 = 2;
                        break;
                    case 3:
                        i2 = 3;
                        break;
                    case 4:
                        break;
                    default:
                        i2 = 0;
                        break;
                }
            } else {
                i2 = 8;
            }
            return i2;
        }
        i2 = 4;
        return i2;
    }

    public static int convertImsErrorToUiError(int i) {
        if (i == 7) {
            return 4;
        }
        if (i == 0 || i == 16) {
            return 1;
        }
        if (i == 1) {
            return 100;
        }
        if (i == 2) {
            return 101;
        }
        return i == 3 ? 102 : 2;
    }

    public static int convertRilCauseCodeToImsCode(int i) {
        switch (i) {
            case 0:
                i = 510;
                break;
            case 241:
                i = 21;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BAD_REQUEST /* 18832 */:
                i = 331;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_FORBIDDEN /* 18835 */:
                i = 332;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_FOUND /* 18836 */:
                i = 333;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_ACCEPTABLE /* 18838 */:
            case 18920:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_GLOBAL_NOT_ACCEPTABLE /* 19038 */:
                i = 340;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_REQUEST_TIMEOUT /* 18840 */:
                i = 335;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_GONE /* 18842 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_DOES_NOT_EXIST_ANYWHERE /* 19036 */:
                i = 341;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_UNSUPPORTED_MEDIA_TYPE /* 18847 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_UNSUPPORTED_URI_SCHEME /* 18848 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BAD_EXTENSION /* 18852 */:
                i = 334;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_TEMPORARILY_UNAVAILABLE /* 18912 */:
                i = 336;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_ADDRESS_INCOMPLETE /* 18916 */:
                i = 337;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BUSY_HERE /* 18918 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BUSY_EVERYWHERE /* 19032 */:
                i = 338;
                break;
            case 18919:
                i = 339;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_IMPLEMENTED /* 18933 */:
                i = 351;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_SERVICE_UNAVAILABLE /* 18935 */:
                i = 352;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_SERVER_TIME_OUT /* 18936 */:
                i = 353;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_DECLINE /* 19035 */:
                i = 361;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_CALL_DROP_WIFI_SIGNAL_DEGRADED /* 19483 */:
                i = 1100;
                break;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_CALL_DROP_WIFI_CONGEST /* 19484 */:
                i = 3001;
                break;
        }
        return i;
    }

    public static int convertToInternalCallType(int i) {
        int i2;
        switch (i) {
            case 1:
            case 2:
                i2 = 0;
                break;
            case 3:
            case 4:
                i2 = 3;
                break;
            case 5:
                i2 = 1;
                break;
            case 6:
                i2 = 2;
                break;
            case 7:
                i2 = 4;
                break;
            default:
                Rlog.e(TAG, "convertToInternalCallType invalid calltype " + i);
                i2 = 10;
                break;
        }
        return i2;
    }

    public static VideoProfile convertToVideoProfile(int i, int i2) {
        return new VideoProfile(convertCallTypeToVideoState(i), i2);
    }

    public static int convertVideoStateToCallType(int i) {
        int i2;
        if (i != 8) {
            switch (i) {
                case 0:
                    i2 = 0;
                    break;
                case 1:
                    i2 = 1;
                    break;
                case 2:
                    i2 = 2;
                    break;
                case 3:
                    i2 = 3;
                    break;
                case 4:
                    i2 = 4;
                    break;
                default:
                    i2 = 0;
                    break;
            }
        } else {
            i2 = 8;
        }
        return i2;
    }

    public static int getImsCallRejectCause(int i) {
        int i2;
        switch (i) {
            case 520:
                i2 = 0;
                break;
            case 521:
                i2 = 1;
                break;
            default:
                i2 = -1;
                break;
        }
        return i2;
    }

    public static String getImsStoredKeyWithSubId(int i, String str) {
        StringBuilder sb = new StringBuilder();
        if (IS_DUAL_IMS_AVAILABLE) {
            sb.append(str);
            sb.append(i);
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public static int getSubId(int i) {
        int default4GSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if (isValidSubId(i)) {
            if (IS_DUAL_IMS_AVAILABLE) {
                default4GSlotId = i;
            }
            return default4GSlotId;
        }
        String str = TAG;
        Rlog.e(str, "getSubId: invalid subId, subId = " + i);
        return default4GSlotId;
    }

    public static boolean isAvpRetryDialing(HwImsCallSessionImpl hwImsCallSessionImpl, DriverImsCall driverImsCall) {
        int internalCallType = hwImsCallSessionImpl.getInternalCallType();
        DriverImsCall.State internalState = hwImsCallSessionImpl.getInternalState();
        boolean z = isVideoCall(internalCallType) && (internalState == DriverImsCall.State.DIALING || internalState == DriverImsCall.State.ALERTING) && isVideoCallTypeWithoutDir(driverImsCall.imsCallProfile.call_type) && driverImsCall.state == DriverImsCall.State.ACTIVE;
        boolean z2 = false;
        if (hwImsCallSessionImpl.getImsCallAdapter().isAvpRetryAllowed()) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        return z2;
    }

    public static boolean isAvpRetryUpgrade(HwImsCallSessionImpl hwImsCallSessionImpl, DriverImsCall driverImsCall) {
        boolean z = hwImsCallSessionImpl.getInternalCallType() == 0 && hwImsCallSessionImpl.getInternalState() == DriverImsCall.State.ACTIVE && isVideoCallTypeWithoutDir(driverImsCall.imsCallProfile.call_type) && driverImsCall.state == DriverImsCall.State.ACTIVE;
        boolean z2 = false;
        if (hwImsCallSessionImpl.getImsCallAdapter().isAvpRetryAllowed()) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        return z2;
    }

    public static boolean isCdmaVoLTEAndISIM() {
        return mIsCdmaVolteISIM;
    }

    public static boolean isVTUpgradeCallType(int i, int i2, int i3) {
        boolean z = true;
        if (i != 0 || i2 != 3 || (i3 != 2 && i3 != 1 && i3 != 3 && i3 != 0)) {
            z = false;
        }
        return z;
    }

    public static boolean isValidRilModifyCallType(int i) {
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 1) {
                z = true;
                if (i != 2) {
                    z = true;
                    if (i != 0) {
                        z = true;
                        if (i != 4) {
                            z = i == 8;
                        }
                    }
                }
            }
        }
        return z;
    }

    public static boolean isValidServiceSubIndex(int i) {
        return i >= 0 && i < HwImsService.getNumSubscriptions();
    }

    public static boolean isValidSubId(int i) {
        return i >= 0 && i < TelephonyManager.getDefault().getSimCount();
    }

    public static boolean isVideoCall(int i) {
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 1) {
                z = true;
                if (i != 2) {
                    z = true;
                    if (i != 6) {
                        z = true;
                        if (i != 7) {
                            z = i == 4;
                        }
                    }
                }
            }
        }
        return z;
    }

    public static boolean isVideoCallTypeWithDir(int i) {
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 2) {
                z = i == 1;
            }
        }
        return z;
    }

    public static boolean isVideoCallTypeWithoutDir(int i) {
        return i == 4;
    }

    public static boolean isVideoPaused(HwImsCallSessionImpl hwImsCallSessionImpl, DriverImsCall driverImsCall) {
        int internalCallType = hwImsCallSessionImpl.getInternalCallType();
        DriverImsCall.State internalState = hwImsCallSessionImpl.getInternalState();
        int i = driverImsCall.imsCallProfile.call_type;
        DriverImsCall.State state = driverImsCall.state;
        boolean z = false;
        boolean z2 = isVideoCall(internalCallType) && internalState == DriverImsCall.State.HOLDING && isVideoCallTypeWithoutDir(i) && state == DriverImsCall.State.ACTIVE;
        boolean z3 = isVideoCall(internalCallType) && internalState == DriverImsCall.State.ACTIVE && isVideoCallTypeWithoutDir(i) && state == DriverImsCall.State.ACTIVE;
        if (z2 || z3) {
            z = true;
        }
        return z;
    }

    public static boolean isVideoResumed(HwImsCallSessionImpl hwImsCallSessionImpl, DriverImsCall driverImsCall) {
        return isVideoCallTypeWithoutDir(hwImsCallSessionImpl.getInternalCallType()) && hwImsCallSessionImpl.getInternalState() == DriverImsCall.State.ACTIVE && isVideoCall(driverImsCall.imsCallProfile.call_type) && driverImsCall.state == DriverImsCall.State.ACTIVE;
    }

    public static boolean isVilteEnhancementSupported() {
        return mIsVtLteSupported && IS_VILTE_ENHANCEMENT_SUPPORTED;
    }

    public static boolean isVowifiPropOn() {
        return IS_VOWIFI_PROP__ON;
    }
}
