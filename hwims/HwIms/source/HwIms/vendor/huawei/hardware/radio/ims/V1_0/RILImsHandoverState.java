package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsHandoverState.class */
public final class RILImsHandoverState {
    public static final int IMS_HANDOVER_STATE_CANCEL = 3;
    public static final int IMS_HANDOVER_STATE_COMPLETE_FAIL = 2;
    public static final int IMS_HANDOVER_STATE_COMPLETE_SUCCESS = 1;
    public static final int IMS_HANDOVER_STATE_NOT_TRIGGERED = 4;
    public static final int IMS_HANDOVER_STATE_START = 0;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("IMS_HANDOVER_STATE_START");
        if ((i & 1) == 1) {
            arrayList.add("IMS_HANDOVER_STATE_COMPLETE_SUCCESS");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("IMS_HANDOVER_STATE_COMPLETE_FAIL");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("IMS_HANDOVER_STATE_CANCEL");
            i4 = i3 | 3;
        }
        int i5 = i4;
        if ((i & 4) == 4) {
            arrayList.add("IMS_HANDOVER_STATE_NOT_TRIGGERED");
            i5 = i4 | 4;
        }
        if (i != i5) {
            arrayList.add("0x" + Integer.toHexString(i5 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "IMS_HANDOVER_STATE_START";
        }
        if (i == 1) {
            return "IMS_HANDOVER_STATE_COMPLETE_SUCCESS";
        }
        if (i == 2) {
            return "IMS_HANDOVER_STATE_COMPLETE_FAIL";
        }
        if (i == 3) {
            return "IMS_HANDOVER_STATE_CANCEL";
        }
        if (i == 4) {
            return "IMS_HANDOVER_STATE_NOT_TRIGGERED";
        }
        return "0x" + Integer.toHexString(i);
    }
}
