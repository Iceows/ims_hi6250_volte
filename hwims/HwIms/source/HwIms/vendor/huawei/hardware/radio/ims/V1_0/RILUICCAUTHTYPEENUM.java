package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILUICCAUTHTYPEENUM.class */
public final class RILUICCAUTHTYPEENUM {
    public static final int UICC_AUTH_TYPE_ISIM = 1;
    public static final int UICC_AUTH_TYPE_USIM = 0;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("UICC_AUTH_TYPE_USIM");
        if ((i & 1) == 1) {
            arrayList.add("UICC_AUTH_TYPE_ISIM");
            i2 = 0 | 1;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i2 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "UICC_AUTH_TYPE_USIM";
        }
        if (i == 1) {
            return "UICC_AUTH_TYPE_ISIM";
        }
        return "0x" + Integer.toHexString(i);
    }
}
