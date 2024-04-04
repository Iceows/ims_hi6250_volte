package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: ImsConstS32.class */
public final class ImsConstS32 {
    public static final int IPV4_ADDR_LEN = 4;
    public static final int IPV6_ADDR_LEN = 16;
    public static final int MAX_ECONF_CALLED_NUM = 5;
    public static final int MAX_IMS_CALL_TYPE = 4;
    public static final int MAX_IMS_TECH_TYPE = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        if ((i & 4) == 4) {
            arrayList.add("IPV4_ADDR_LEN");
            i2 = 0 | 4;
        }
        int i3 = i2;
        if ((i & 16) == 16) {
            arrayList.add("IPV6_ADDR_LEN");
            i3 = i2 | 16;
        }
        int i4 = i3;
        if ((i & 4) == 4) {
            arrayList.add("MAX_IMS_CALL_TYPE");
            i4 = i3 | 4;
        }
        int i5 = i4;
        if ((i & 1) == 1) {
            arrayList.add("MAX_IMS_TECH_TYPE");
            i5 = i4 | 1;
        }
        int i6 = i5;
        if ((i & 5) == 5) {
            arrayList.add("MAX_ECONF_CALLED_NUM");
            i6 = i5 | 5;
        }
        if (i != i6) {
            arrayList.add("0x" + Integer.toHexString(i6 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 4) {
            return "IPV4_ADDR_LEN";
        }
        if (i == 16) {
            return "IPV6_ADDR_LEN";
        }
        if (i == 4) {
            return "MAX_IMS_CALL_TYPE";
        }
        if (i == 1) {
            return "MAX_IMS_TECH_TYPE";
        }
        if (i == 5) {
            return "MAX_ECONF_CALLED_NUM";
        }
        return "0x" + Integer.toHexString(i);
    }
}
