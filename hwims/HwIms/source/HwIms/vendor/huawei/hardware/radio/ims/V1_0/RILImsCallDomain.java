package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsCallDomain.class */
public final class RILImsCallDomain {
    public static final int CALL_DOMAIN_AUTOMATIC = 3;
    public static final int CALL_DOMAIN_CS = 1;
    public static final int CALL_DOMAIN_PS = 2;
    public static final int CALL_DOMAIN_UNKNOWN = 0;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("CALL_DOMAIN_UNKNOWN");
        if ((i & 1) == 1) {
            arrayList.add("CALL_DOMAIN_CS");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("CALL_DOMAIN_PS");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("CALL_DOMAIN_AUTOMATIC");
            i4 = i3 | 3;
        }
        if (i != i4) {
            arrayList.add("0x" + Integer.toHexString(i4 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "CALL_DOMAIN_UNKNOWN";
        }
        if (i == 1) {
            return "CALL_DOMAIN_CS";
        }
        if (i == 2) {
            return "CALL_DOMAIN_PS";
        }
        if (i == 3) {
            return "CALL_DOMAIN_AUTOMATIC";
        }
        return "0x" + Integer.toHexString(i);
    }
}
