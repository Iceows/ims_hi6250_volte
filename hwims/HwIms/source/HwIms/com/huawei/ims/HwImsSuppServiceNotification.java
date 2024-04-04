package com.huawei.ims;

import android.telephony.PhoneNumberUtils;
import java.util.Arrays;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsSuppSvcNotification;

/* loaded from: HwImsSuppServiceNotification.class */
public class HwImsSuppServiceNotification {
    private static final String TAG = "HwImsSuppServiceNotification";
    public int callId;
    protected int code;
    private String[] history;
    protected int index;
    protected int notificationType;
    protected String number;
    protected int type;

    public HwImsSuppServiceNotification() {
        this.notificationType = 0;
        this.code = 0;
        this.callId = 0;
        this.index = 0;
        this.type = 0;
        this.number = null;
        this.history = null;
    }

    public HwImsSuppServiceNotification(RILImsSuppSvcNotification rILImsSuppSvcNotification) {
        this.notificationType = 0;
        this.code = 0;
        this.callId = 0;
        this.index = 0;
        this.type = 0;
        this.number = null;
        this.history = null;
        if (rILImsSuppSvcNotification != null) {
            this.notificationType = rILImsSuppSvcNotification.notificationType;
            this.code = rILImsSuppSvcNotification.code;
            this.callId = rILImsSuppSvcNotification.callId;
            this.index = rILImsSuppSvcNotification.index;
            this.type = rILImsSuppSvcNotification.type;
            this.number = rILImsSuppSvcNotification.number;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(this.number, this.type);
        }
    }

    public String toString() {
        return "{ notificationType=" + this.notificationType + ", code=" + this.code + ", callId=" + this.callId + ", index=" + this.index + ", type=" + this.type + ", number= xxx, history=" + Arrays.toString(this.history) + " }";
    }
}
