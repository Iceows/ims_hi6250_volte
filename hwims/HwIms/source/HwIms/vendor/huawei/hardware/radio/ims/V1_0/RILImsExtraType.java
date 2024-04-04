package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsExtraType.class */
public final class RILImsExtraType {
    public static final int IMS_EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL = 1;
    public static final int IMS_EXTRA_TYPE_NULL = 0;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("IMS_EXTRA_TYPE_NULL");
        if ((i & 1) == 1) {
            arrayList.add("IMS_EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL");
            i2 = 0 | 1;
        }
        if (i != i2) {
            arrayList.add("0x" + Integer.toHexString(i2 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "IMS_EXTRA_TYPE_NULL";
        }
        if (i == 1) {
            return "IMS_EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL";
        }
        return "0x" + Integer.toHexString(i);
    }
}
