package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RadioTechnologyFamily.class */
public final class RadioTechnologyFamily {
    public static final int THREE_GPP = 0;
    public static final int THREE_GPP2 = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("THREE_GPP");
        if ((i & 1) == 1) {
            arrayList.add("THREE_GPP2");
            i2 = 0 | 1;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i2 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "THREE_GPP";
        }
        if (i == 1) {
            return "THREE_GPP2";
        }
        return "0x" + Integer.toHexString(i);
    }
}
