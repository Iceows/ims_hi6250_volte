package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: CallState.class */
public final class CallState {
    public static final int ACTIVE = 0;
    public static final int ALERTING = 3;
    public static final int DIALING = 2;
    public static final int HOLDING = 1;
    public static final int INCOMING = 4;
    public static final int WAITING = 5;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("ACTIVE");
        if ((i & 1) == 1) {
            arrayList.add("HOLDING");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("DIALING");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("ALERTING");
            i4 = i3 | 3;
        }
        int i5 = i4;
        if ((i & 4) == 4) {
            arrayList.add("INCOMING");
            i5 = i4 | 4;
        }
        int i6 = i5;
        if ((i & 5) == 5) {
            arrayList.add("WAITING");
            i6 = i5 | 5;
        }
        if (i != i6) {
            arrayList.add("0x" + Integer.toHexString(i6 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "ACTIVE";
        }
        if (i == 1) {
            return "HOLDING";
        }
        if (i == 2) {
            return "DIALING";
        }
        if (i == 3) {
            return "ALERTING";
        }
        if (i == 4) {
            return "INCOMING";
        }
        if (i == 5) {
            return "WAITING";
        }
        return "0x" + Integer.toHexString(i);
    }
}
