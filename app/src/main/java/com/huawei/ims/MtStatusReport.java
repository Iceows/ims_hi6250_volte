package com.huawei.ims;

import vendor.huawei.hardware.radio.ims.V2_0.RILImsMtStatusReport;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class MtStatusReport {
    public static final int IMS_MT_STATUS_HUNG_UP_RECEIVED = 1;
    public static final int IMS_MT_STATUS_INVITE_RECEIVED = 0;
    private String mCallNumber;
    private int mCallStatus;
    private int mFailCause;

    public MtStatusReport() {
    }

    public MtStatusReport(RILImsMtStatusReport imsMtStatusReport) {
        if (imsMtStatusReport != null) {
            this.mCallNumber = imsMtStatusReport.pNumber;
            this.mCallStatus = imsMtStatusReport.callStatus;
            this.mFailCause = imsMtStatusReport.failCause;
        }
    }

    public String toString() {
        return HiddenPrivacyInfo.putMosaic(this.mCallNumber, 0) + HwImsConfigImpl.SEPARATOR_TAG + this.mCallStatus + HwImsConfigImpl.SEPARATOR_TAG + this.mFailCause;
    }

    public int getFailCause() {
        return this.mFailCause;
    }

    public int getCallStatus() {
        return this.mCallStatus;
    }

    public String getCallNumber() {
        return this.mCallNumber;
    }
}
