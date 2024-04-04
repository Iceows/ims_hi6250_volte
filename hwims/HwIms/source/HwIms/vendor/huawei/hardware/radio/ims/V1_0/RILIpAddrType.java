package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILIpAddrType.class */
public final class RILIpAddrType {
    public static final int IP_ADDR_TYPE_V4 = 0;
    public static final int IP_ADDR_TYPE_V6 = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("IP_ADDR_TYPE_V4");
        if ((i & 1) == 1) {
            arrayList.add("IP_ADDR_TYPE_V6");
            i2 = 0 | 1;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i2 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "IP_ADDR_TYPE_V4";
        }
        if (i == 1) {
            return "IP_ADDR_TYPE_V6";
        }
        return "0x" + Integer.toHexString(i);
    }
}
