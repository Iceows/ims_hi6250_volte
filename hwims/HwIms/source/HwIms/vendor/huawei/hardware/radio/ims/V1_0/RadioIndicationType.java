package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RadioIndicationType.class */
public final class RadioIndicationType {
    public static final int UNSOLICITED = 0;
    public static final int UNSOLICITED_ACK_EXP = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("UNSOLICITED");
        if ((i & 1) == 1) {
            arrayList.add("UNSOLICITED_ACK_EXP");
            i2 = 0 | 1;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i2 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "UNSOLICITED";
        }
        if (i == 1) {
            return "UNSOLICITED_ACK_EXP";
        }
        return "0x" + Integer.toHexString(i);
    }
}
