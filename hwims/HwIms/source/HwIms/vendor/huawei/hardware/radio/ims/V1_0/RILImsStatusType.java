package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsStatusType.class */
public final class RILImsStatusType {
    public static final int IMS_STATUS_TYPE_DISABLED = 0;
    public static final int IMS_STATUS_TYPE_ENABLED = 2;
    public static final int IMS_STATUS_TYPE_NOT_SUPPORTED = 3;
    public static final int IMS_STATUS_TYPE_PARTIALLY_ENABLED = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("IMS_STATUS_TYPE_DISABLED");
        if ((i & 1) == 1) {
            arrayList.add("IMS_STATUS_TYPE_PARTIALLY_ENABLED");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("IMS_STATUS_TYPE_ENABLED");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("IMS_STATUS_TYPE_NOT_SUPPORTED");
            i4 = i3 | 3;
        }
        if (i != i4) {
            arrayList.add("0x" + Integer.toHexString(i4 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "IMS_STATUS_TYPE_DISABLED";
        }
        if (i == 1) {
            return "IMS_STATUS_TYPE_PARTIALLY_ENABLED";
        }
        if (i == 2) {
            return "IMS_STATUS_TYPE_ENABLED";
        }
        if (i == 3) {
            return "IMS_STATUS_TYPE_NOT_SUPPORTED";
        }
        return "0x" + Integer.toHexString(i);
    }
}
