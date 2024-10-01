package com.huawei.ims;

import android.telephony.PhoneNumberUtils;
import java.util.Arrays;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsSuppSvcNotification;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
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

    public HwImsSuppServiceNotification(RILImsSuppSvcNotification imsSSN) {
        this.notificationType = 0;
        this.code = 0;
        this.callId = 0;
        this.index = 0;
        this.type = 0;
        this.number = null;
        this.history = null;
        if (imsSSN != null) {
            this.notificationType = imsSSN.notificationType;
            this.code = imsSSN.code;
            this.callId = imsSSN.callId;
            this.index = imsSSN.index;
            this.type = imsSSN.type;
            this.number = imsSSN.number;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(this.number, this.type);
        }
    }

    public String toString() {
        return "{ notificationType=" + this.notificationType + ", code=" + this.code + ", callId=" + this.callId + ", index=" + this.index + ", type=" + this.type + ", number= xxx, history=" + Arrays.toString(this.history) + " }";
    }
}
