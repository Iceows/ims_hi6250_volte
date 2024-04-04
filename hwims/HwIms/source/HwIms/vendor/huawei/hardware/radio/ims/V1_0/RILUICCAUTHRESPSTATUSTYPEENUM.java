package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILUICCAUTHRESPSTATUSTYPEENUM.class */
public final class RILUICCAUTHRESPSTATUSTYPEENUM {
    public static final int AUTH_RESP_FAIL = 1;
    public static final int AUTH_RESP_SUCCESS = 0;
    public static final int AUTH_RESP_SYNC_FAIL = 2;
    public static final int AUTH_RESP_UNSUPPORTED = 3;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("AUTH_RESP_SUCCESS");
        if ((i & 1) == 1) {
            arrayList.add("AUTH_RESP_FAIL");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("AUTH_RESP_SYNC_FAIL");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("AUTH_RESP_UNSUPPORTED");
            i4 = i3 | 3;
        }
        if (i != i4) {
            arrayList.add("0x" + Integer.toHexString(i4 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "AUTH_RESP_SUCCESS";
        }
        if (i == 1) {
            return "AUTH_RESP_FAIL";
        }
        if (i == 2) {
            return "AUTH_RESP_SYNC_FAIL";
        }
        if (i == 3) {
            return "AUTH_RESP_UNSUPPORTED";
        }
        return "0x" + Integer.toHexString(i);
    }
}
