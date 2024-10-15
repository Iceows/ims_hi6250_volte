package com.huawei.ims.vt;

import android.telephony.Rlog;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class RtpController {
    public static final int RTP_DIRECTION_AUDIO = 0;
    public static final int RTP_DIRECTION_BIDIRECTIONAL = 3;
    public static final int RTP_DIRECTION_RECEIVE_ONLY = 2;
    public static final int RTP_DIRECTION_SEND_ONLY = 1;
    public static final int RTP_DIRECTION_UNDEFINED = -1;
    public static final int RTP_OPERATOR_FAILED = -1;
    public static final int RTP_OPERATOR_SUCCESS = 0;
    public static final String TAG = "RtpController";

    private RtpController() {
    }

    public static int pauseRtpStream(int direction) {
        if (isInvalidDirection(direction)) {
            Rlog.e(TAG, "pauseRtpStream direction is invalid:" + direction);
            return -1;
        }
        return ImsThinClient.pauseImsRTPStream(direction);
    }

    public static int resumeRtpStream(int direction) {
        if (isInvalidDirection(direction)) {
            Rlog.e(TAG, "resumeRtpStream direction is invalid:" + direction);
            return -1;
        }
        return ImsThinClient.resumeImsRTPStream(direction);
    }

    public static int modifyRtpStreamDirection(int oldDirection, int newDirection) {
        if (isInvalidDirection(oldDirection) || isInvalidDirection(newDirection)) {
            Rlog.e(TAG, "pauseOrResumeRTPStream direction is invalid, oldDirection:" + oldDirection + ", newDirection:" + newDirection);
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
        if (callType == 0) {
            return 0;
        }
        if (callType == 1) {
            return 1;
        }
        if (callType == 2) {
            return 2;
        }
        if (callType == 3) {
            return 3;
        }
        Rlog.e(TAG, "callType is illegal when convertCallTypeToDirection!");
        return -1;
    }

    private static boolean isInvalidDirection(int direction) {
        if (direction == 0 || direction == 1 || direction == 2 || direction == 3) {
            return false;
        }
        return true;
    }
}
