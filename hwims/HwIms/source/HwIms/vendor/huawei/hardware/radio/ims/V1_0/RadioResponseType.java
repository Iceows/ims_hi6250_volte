package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RadioResponseType.class */
public final class RadioResponseType {
    public static final int SOLICITED = 0;
    public static final int SOLICITED_ACK = 1;
    public static final int SOLICITED_ACK_EXP = 2;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("SOLICITED");
        if ((i & 1) == 1) {
            arrayList.add("SOLICITED_ACK");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("SOLICITED_ACK_EXP");
            i3 = i2 | 2;
        }
        if (i != i3) {
            arrayList.add("0x" + Integer.toHexString(i3 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "SOLICITED";
        }
        if (i == 1) {
            return "SOLICITED_ACK";
        }
        if (i == 2) {
            return "SOLICITED_ACK_EXP";
        }
        return "0x" + Integer.toHexString(i);
    }
}
