package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsCallType.class */
public final class RILImsCallType {
    public static final int CALL_TYPE_CS_VS_RX = 6;
    public static final int CALL_TYPE_CS_VS_TX = 5;
    public static final int CALL_TYPE_PS_VS_RX = 8;
    public static final int CALL_TYPE_PS_VS_TX = 7;
    public static final int CALL_TYPE_SMS = 10;
    public static final int CALL_TYPE_UNKNOWN = 9;
    public static final int CALL_TYPE_UT = 11;
    public static final int CALL_TYPE_VOICE = 0;
    public static final int CALL_TYPE_VT = 3;
    public static final int CALL_TYPE_VT_NODIR = 4;
    public static final int CALL_TYPE_VT_RX = 2;
    public static final int CALL_TYPE_VT_TX = 1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("CALL_TYPE_VOICE");
        if ((i & 1) == 1) {
            arrayList.add("CALL_TYPE_VT_TX");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("CALL_TYPE_VT_RX");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("CALL_TYPE_VT");
            i4 = i3 | 3;
        }
        int i5 = i4;
        if ((i & 4) == 4) {
            arrayList.add("CALL_TYPE_VT_NODIR");
            i5 = i4 | 4;
        }
        int i6 = i5;
        if ((i & 5) == 5) {
            arrayList.add("CALL_TYPE_CS_VS_TX");
            i6 = i5 | 5;
        }
        int i7 = i6;
        if ((i & 6) == 6) {
            arrayList.add("CALL_TYPE_CS_VS_RX");
            i7 = i6 | 6;
        }
        int i8 = i7;
        if ((i & 7) == 7) {
            arrayList.add("CALL_TYPE_PS_VS_TX");
            i8 = i7 | 7;
        }
        int i9 = i8;
        if ((i & 8) == 8) {
            arrayList.add("CALL_TYPE_PS_VS_RX");
            i9 = i8 | 8;
        }
        int i10 = i9;
        if ((i & 9) == 9) {
            arrayList.add("CALL_TYPE_UNKNOWN");
            i10 = i9 | 9;
        }
        int i11 = i10;
        if ((i & 10) == 10) {
            arrayList.add("CALL_TYPE_SMS");
            i11 = i10 | 10;
        }
        int i12 = i11;
        if ((i & 11) == 11) {
            arrayList.add("CALL_TYPE_UT");
            i12 = i11 | 11;
        }
        if (i != i12) {
            arrayList.add("0x" + Integer.toHexString(i12 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "CALL_TYPE_VOICE";
        }
        if (i == 1) {
            return "CALL_TYPE_VT_TX";
        }
        if (i == 2) {
            return "CALL_TYPE_VT_RX";
        }
        if (i == 3) {
            return "CALL_TYPE_VT";
        }
        if (i == 4) {
            return "CALL_TYPE_VT_NODIR";
        }
        if (i == 5) {
            return "CALL_TYPE_CS_VS_TX";
        }
        if (i == 6) {
            return "CALL_TYPE_CS_VS_RX";
        }
        if (i == 7) {
            return "CALL_TYPE_PS_VS_TX";
        }
        if (i == 8) {
            return "CALL_TYPE_PS_VS_RX";
        }
        if (i == 9) {
            return "CALL_TYPE_UNKNOWN";
        }
        if (i == 10) {
            return "CALL_TYPE_SMS";
        }
        if (i == 11) {
            return "CALL_TYPE_UT";
        }
        return "0x" + Integer.toHexString(i);
    }
}
