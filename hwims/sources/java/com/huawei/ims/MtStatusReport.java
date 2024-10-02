package com.huawei.ims;

import vendor.huawei.hardware.radio.ims.V1_0.RILImsMtStatusReport;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class MtStatusReport {
    public static final int IMS_MT_STATUS_HUNG_UP_RECEIVED = 1;
    public static final int IMS_MT_STATUS_INVITE_RECEIVED = 0;
    public String call_number;
    public int call_status;
    public int fail_cause;

    public MtStatusReport() {
    }

    public MtStatusReport(RILImsMtStatusReport imsMSR) {
        if (imsMSR != null) {
            this.call_number = imsMSR.pNumber;
            this.call_status = imsMSR.callStatus;
            this.fail_cause = imsMSR.failCause;
        }
    }

    public String toString() {
        return " " + HiddenPrivacyInfo.putMosaic(this.call_number, 0) + " " + this.call_status + " " + this.fail_cause;
    }
}
