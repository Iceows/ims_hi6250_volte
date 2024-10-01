package com.huawei.ims;

import android.content.Context;
import android.os.SystemProperties;
import android.telecom.VideoProfile;
import android.telephony.HwTelephonyManager;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import com.android.ims.HwImsManager;
import com.huawei.internal.telephony.HwCustRILConstants;


public class ImsCallProviderUtils {
    public static final int BUSY_REJECT_CAUSE = 0;
    public static final int IMS_DOMAIN_LTE = 0;
    public static final int IMS_DOMAIN_UNKNOWN = 2;
    public static final int IMS_DOMAIN_WIFI = 1;
    public static final int NO_REJECT_CAUSE = -1;
    public static final int USER_REJECT_CAUSE = 1;
    private static String TAG = "ImsCallProviderUtils";
    // TODO Iceows - HwImsManager.isDualImsAvailable()
    public static final boolean IS_DUAL_IMS_AVAILABLE = false;
    private static final String HW_VTLTE_ON = "ro.config.hw_vtlte_on";
    private static final boolean mIsVtLteSupported = SystemProperties.getBoolean(HW_VTLTE_ON, false);
    private static final boolean IS_VILTE_ENHANCEMENT_SUPPORTED = SystemProperties.getBoolean("ro.config.hw_vilte_enhancement", false);
    private static final String HW_CDMA_VOLTE_ISIM = "ro.config.hw_cdma_volte_isim";
    private static final boolean mIsCdmaVolteISIM = SystemProperties.getBoolean(HW_CDMA_VOLTE_ISIM, false);
    private static final String DEVICE_TYPE_TABLET = "tablet";
    private static final String PRODUCT_CHARACTERISTICS = "ro.build.characteristics";
    public static final boolean IS_TABLET = DEVICE_TYPE_TABLET.equals(SystemProperties.get(PRODUCT_CHARACTERISTICS, "default"));
    private static final boolean IS_VOWIFI_PROP__ON = SystemProperties.getBoolean("ro.vendor.config.hw_vowifi", false);

    public static boolean isVideoCall(int callType) {
        return callType == 3 || callType == 1 || callType == 2 || callType == 6 || callType == 7 || callType == 4;
    }

    public static boolean isValidRilModifyCallType(int callType) {
        return callType == 3 || callType == 1 || callType == 2 || callType == 0 || callType == 4 || callType == 8;
    }

    public static boolean isVideoPaused(HwImsCallSessionImpl conn, DriverImsCall dc) {
        int currCallType = conn.getInternalCallType();
        DriverImsCall.State currCallState = conn.getInternalState();
        int nextCallType = dc.imsCallProfile.call_type;
        DriverImsCall.State nextCallState = dc.state;
        boolean isHoldingPaused = isVideoCall(currCallType) && currCallState == DriverImsCall.State.HOLDING && isVideoCallTypeWithoutDir(nextCallType) && nextCallState == DriverImsCall.State.ACTIVE;
        boolean isActivePaused = isVideoCall(currCallType) && currCallState == DriverImsCall.State.ACTIVE && isVideoCallTypeWithoutDir(nextCallType) && nextCallState == DriverImsCall.State.ACTIVE;
        return isHoldingPaused || isActivePaused;
    }

    public static boolean canVideoPause(HwImsCallSessionImpl conn) {
        return isVideoCall(conn.getInternalCallType()) && conn.isCallActive();
    }

    public static boolean isVideoResumed(HwImsCallSessionImpl conn, DriverImsCall dc) {
        int currCallType = conn.getInternalCallType();
        DriverImsCall.State currCallState = conn.getInternalState();
        int nextCallType = dc.imsCallProfile.call_type;
        DriverImsCall.State nextCallState = dc.state;
        return isVideoCallTypeWithoutDir(currCallType) && currCallState == DriverImsCall.State.ACTIVE && isVideoCall(nextCallType) && nextCallState == DriverImsCall.State.ACTIVE;
    }

    public static boolean isAvpRetryDialing(HwImsCallSessionImpl conn, DriverImsCall dc) {
        int currCallType = conn.getInternalCallType();
        DriverImsCall.State currCallState = conn.getInternalState();
        int nextCallType = dc.imsCallProfile.call_type;
        DriverImsCall.State nextCallState = dc.state;
        boolean dialingAvpRetry = isVideoCall(currCallType) && (currCallState == DriverImsCall.State.DIALING || currCallState == DriverImsCall.State.ALERTING) && isVideoCallTypeWithoutDir(nextCallType) && nextCallState == DriverImsCall.State.ACTIVE;
        return conn.getImsCallAdapter().isAvpRetryAllowed() && dialingAvpRetry;
    }

    public static boolean isAvpRetryUpgrade(HwImsCallSessionImpl conn, DriverImsCall dc) {
        int currCallType = conn.getInternalCallType();
        DriverImsCall.State currCallState = conn.getInternalState();
        int nextCallType = dc.imsCallProfile.call_type;
        DriverImsCall.State nextCallState = dc.state;
        boolean upgradeAvpRetry = currCallType == 0 && currCallState == DriverImsCall.State.ACTIVE && isVideoCallTypeWithoutDir(nextCallType) && nextCallState == DriverImsCall.State.ACTIVE;
        return conn.getImsCallAdapter().isAvpRetryAllowed() && upgradeAvpRetry;
    }

    public static boolean isVideoCallTypeWithDir(int callType) {
        return callType == 3 || callType == 2 || callType == 1;
    }

    public static boolean isVideoCallTypeWithoutDir(int callType) {
        return callType == 4;
    }

    public static int convertVideoStateToCallType(int videoState) {
        if (videoState != 8) {
            switch (videoState) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                default:
                    return 0;
            }
        }
        return 8;
    }

    public static int convertCallTypeToVideoState(int callType) {
        if (callType != 6) {
            if (callType != 8) {
                switch (callType) {
                    case 0:
                        return 0;
                    case 1:
                        return 1;
                    case 2:
                        return 2;
                    case 3:
                        return 3;
                    case 4:
                        break;
                    default:
                        return 0;
                }
            } else {
                return 8;
            }
        }
        return 4;
    }

    public static int convertToInternalCallType(int imsCallProfileCallType) {
        switch (imsCallProfileCallType) {
            case 1:
            case 2:
                return 0;
            case 3:
            case 4:
                return 3;
            case 5:
                return 1;
            case 6:
                return 2;
            case 7:
                return 4;
            default:
                String str = TAG;
                Rlog.e(str, "convertToInternalCallType invalid calltype " + imsCallProfileCallType);
                return 10;
        }
    }

    public static VideoProfile convertToVideoProfile(int callType, int callQuality) {
        VideoProfile videoCallProfile = new VideoProfile(convertCallTypeToVideoState(callType), callQuality);
        return videoCallProfile;
    }

    public static int convertImsErrorToUiError(int error) {
        if (error == 7) {
            return 4;
        }
        if (error == 0 || error == 16) {
            return 1;
        }
        if (error == 1) {
            return 100;
        }
        if (error == 2) {
            return 101;
        }
        if (error != 3) {
            return 2;
        }
        return 102;
    }

    public static int convertRilCauseCodeToImsCode(int causeCode) {
        switch (causeCode) {
            case 0:
                return 510;
            case 241:
                return 21;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BAD_REQUEST /* 18832 */:
                return 331;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_FORBIDDEN /* 18835 */:
                return 332;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_FOUND /* 18836 */:
                return 333;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_ACCEPTABLE /* 18838 */:
            case 18920:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_GLOBAL_NOT_ACCEPTABLE /* 19038 */:
                return 340;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_REQUEST_TIMEOUT /* 18840 */:
                return 335;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_GONE /* 18842 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_DOES_NOT_EXIST_ANYWHERE /* 19036 */:
                return 341;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_UNSUPPORTED_MEDIA_TYPE /* 18847 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_UNSUPPORTED_URI_SCHEME /* 18848 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BAD_EXTENSION /* 18852 */:
                return 334;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_TEMPORARILY_UNAVAILABLE /* 18912 */:
                return 336;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_ADDRESS_INCOMPLETE /* 18916 */:
                return 337;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BUSY_HERE /* 18918 */:
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_BUSY_EVERYWHERE /* 19032 */:
                return 338;
            case 18919:
                return 339;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_NOT_IMPLEMENTED /* 18933 */:
                return 351;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_SERVICE_UNAVAILABLE /* 18935 */:
                return 352;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_SERVER_TIME_OUT /* 18936 */:
                return 353;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_DECLINE /* 19035 */:
                return 361;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_CALL_DROP_WIFI_SIGNAL_DEGRADED /* 19483 */:
                return 1100;
            case ImsRilCauseCode.IMS_TAF_CS_CAUSE_IMS_CALL_DROP_WIFI_CONGEST /* 19484 */:
                return HwCustRILConstants.RIL_UNSOL_HW_RESIDENT_NETWORK_CHANGED;
            default:
                return causeCode;
        }
    }

    public static boolean isVowifiPropOn() {
        return IS_VOWIFI_PROP__ON;
    }

    public static boolean isVTUpgradeCallType(int curCallType, int destCallType, int callType) {
        return curCallType == 0 && destCallType == 3 && (callType == 2 || callType == 1 || callType == 3 || callType == 0);
    }

    public static int getSubId(int currentSubId) {
        int subId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        if (!isValidSubId(currentSubId)) {
            String str = TAG;
            Rlog.e(str, "getSubId: invalid subId, subId = " + currentSubId);
            return subId;
        } else if (IS_DUAL_IMS_AVAILABLE) {
            return currentSubId;
        } else {
            return subId;
        }
    }

    // TODO Iceows Ok - && subId < TelephonyManager.getDefault().getSimCount()
    public static boolean isValidSubId(int subId) {
        return ((subId >= 0) && (subId < HwTelephonyManager.getSimCount()));
    }

    public static String getImsStoredKeyWithSubId(int subId, String key) {
        StringBuilder stroedKey = new StringBuilder();
        if (IS_DUAL_IMS_AVAILABLE) {
            stroedKey.append(key);
            stroedKey.append(subId);
        } else {
            stroedKey.append(key);
        }
        return stroedKey.toString();
    }

    public static boolean isValidServiceSubIndex(int index) {
        return index >= 0 && index < HwImsService.getNumSubscriptions();
    }

    public static boolean isVilteEnhancementSupported() {
        return mIsVtLteSupported && IS_VILTE_ENHANCEMENT_SUPPORTED;
    }

    public static int getImsCallRejectCause(int reason) {
        switch (reason) {
            case 520:
                return 0;
            case 521:
                return 1;
            default:
                return -1;
        }
    }

    public static boolean isCdmaVoLTEAndISIM() {
        return mIsCdmaVolteISIM;
    }
}
