package com.huawei.ims.vt;

import android.telephony.Rlog;
import android.util.Log;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class RTPController {
    public static final int RTP_DIRECTION_AUDIO = 0;
    public static final int RTP_DIRECTION_BIDIRECTIONAL = 3;
    public static final int RTP_DIRECTION_RECEIVE_ONLY = 2;
    public static final int RTP_DIRECTION_SEND_ONLY = 1;
    public static final int RTP_DIRECTION_UNDEFINED = -1;
    public static final int RTP_OPERATOR_FAILED = -1;
    public static final int RTP_OPERATOR_SUCCESS = 0;
    public static final String TAG = "RTPController";

    public static int pauseRTPStream(int direction) {
        if (isInvalidDirection(direction)) {
            Log.e(TAG, "pauseRTPStream direction is invalid:" + direction);
            return -1;
        }
        return ImsThinClient.pauseImsRTPStream(direction);
    }

    public static int resumeRTPStream(int direction) {
        if (isInvalidDirection(direction)) {
            Log.e(TAG, "resumeRTPStream direction is invalid:" + direction);
            return -1;
        }
        return ImsThinClient.resumeImsRTPStream(direction);
    }

    public static int modifyRTPStreamDirection(int oldDirection, int newDirection) {
        if (isInvalidDirection(oldDirection) || isInvalidDirection(newDirection)) {
            Log.e(TAG, "pauseOrResumeRTPStream direction is invalid, oldDirection:" + oldDirection + ", newDirection:" + newDirection);
            return -1;
        }
        int change = newDirection - oldDirection;
        if (change == 0) {
            Rlog.e(TAG, "direction didn't change, just return");
            return -1;
        }
        if (change < 0) {
            int result = ImsThinClient.pauseImsRTPStream(Math.abs(change));
            return result;
        }
        int result2 = ImsThinClient.resumeImsRTPStream(change);
        return result2;
    }

    public static int convertCallTypeToDirection(int callType) {
        switch (callType) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            default:
                Rlog.e(TAG, "callType is illegal when convertCallTypeToDirection!");
                return -1;
        }
    }

    private static boolean isInvalidDirection(int direction) {
        switch (direction) {
            case 0:
            case 1:
            case 2:
            case 3:
                return false;
            default:
                return true;
        }
    }
}
