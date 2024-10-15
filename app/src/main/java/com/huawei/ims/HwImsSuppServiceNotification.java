package com.huawei.ims;

import android.telephony.PhoneNumberUtils;
import java.util.Arrays;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsSuppSvcNotification;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsSuppServiceNotification {
    private static final String TAG = "HwImsSuppServiceNotification";
    private int callId;
    protected int code;
    private String[] histories;
    protected int index;
    protected int notificationType;
    protected String number;
    protected int type;

    public HwImsSuppServiceNotification() {
        this.notificationType = 0;
        this.code = 0;
        this.index = 0;
        this.type = 0;
        this.number = null;
        this.callId = 0;
        this.histories = null;
    }

    public HwImsSuppServiceNotification(RILImsSuppSvcNotification imsSsn) {
        this.notificationType = 0;
        this.code = 0;
        this.index = 0;
        this.type = 0;
        this.number = null;
        this.callId = 0;
        this.histories = null;
        if (imsSsn != null) {
            this.notificationType = imsSsn.notificationType;
            this.code = imsSsn.code;
            this.callId = imsSsn.callId;
            this.index = imsSsn.index;
            this.type = imsSsn.type;
            this.number = imsSsn.number;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(this.number, this.type);
        }
    }

    public int getCallId() {
        return this.callId;
    }

    public String toString() {
        return "{ notificationType=" + this.notificationType + ", code=" + this.code + ", callId=" + this.callId + ", index=" + this.index + ", type=" + this.type + ", number= xxx, history=" + Arrays.toString(this.histories) + " }";
    }
}
