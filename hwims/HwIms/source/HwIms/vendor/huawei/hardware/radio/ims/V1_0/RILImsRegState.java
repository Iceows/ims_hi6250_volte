package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsRegState.class */
public final class RILImsRegState {
    public static final int IMS_ERG_STATE_NOT_REGISTERED = 2;
    public static final int IMS_ERG_STATE_REGISTERED = 1;
    public static final int IMS_ERG_STATE_REGISTERING = 3;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        if ((i & 1) == 1) {
            arrayList.add("IMS_ERG_STATE_REGISTERED");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("IMS_ERG_STATE_NOT_REGISTERED");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("IMS_ERG_STATE_REGISTERING");
            i4 = i3 | 3;
        }
        if (i != i4) {
            arrayList.add("0x" + Integer.toHexString(i4 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 1) {
            return "IMS_ERG_STATE_REGISTERED";
        }
        if (i == 2) {
            return "IMS_ERG_STATE_NOT_REGISTERED";
        }
        if (i == 3) {
            return "IMS_ERG_STATE_REGISTERING";
        }
        return "0x" + Integer.toHexString(i);
    }
}
