package com.huawei.ims.vt;

import android.telephony.Rlog;
import android.util.Log;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: RTPController.class */
public class RTPController {
    public static final int RTP_DIRECTION_AUDIO = 0;
    public static final int RTP_DIRECTION_BIDIRECTIONAL = 3;
    public static final int RTP_DIRECTION_RECEIVE_ONLY = 2;
    public static final int RTP_DIRECTION_SEND_ONLY = 1;
    public static final int RTP_DIRECTION_UNDEFINED = -1;
    public static final int RTP_OPERATOR_FAILED = -1;
    public static final int RTP_OPERATOR_SUCCESS = 0;
    public static final String TAG = "RTPController";

    public static int convertCallTypeToDirection(int i) {
        int i2;
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
            default:
                Rlog.e(TAG, "callType is illegal when convertCallTypeToDirection!");
                i2 = -1;
                break;
        }
        return i2;
    }

    private static boolean isInvalidDirection(int i) {
        boolean z = false;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
                break;
            default:
                z = true;
                break;
        }
        return z;
    }

    public static int modifyRTPStreamDirection(int i, int i2) {
        if (!isInvalidDirection(i) && !isInvalidDirection(i2)) {
            int i3 = i2 - i;
            if (i3 != 0) {
                return i3 < 0 ? ImsThinClient.pauseImsRTPStream(Math.abs(i3)) : ImsThinClient.resumeImsRTPStream(i3);
            }
            Rlog.e(TAG, "direction didn't change, just return");
            return -1;
        }
        Log.e(TAG, "pauseOrResumeRTPStream direction is invalid, oldDirection:" + i + ", newDirection:" + i2);
        return -1;
    }

    public static int pauseRTPStream(int i) {
        if (isInvalidDirection(i)) {
            Log.e(TAG, "pauseRTPStream direction is invalid:" + i);
            return -1;
        }
        return ImsThinClient.pauseImsRTPStream(i);
    }

    public static int resumeRTPStream(int i) {
        if (isInvalidDirection(i)) {
            Log.e(TAG, "resumeRTPStream direction is invalid:" + i);
            return -1;
        }
        return ImsThinClient.resumeImsRTPStream(i);
    }
}
