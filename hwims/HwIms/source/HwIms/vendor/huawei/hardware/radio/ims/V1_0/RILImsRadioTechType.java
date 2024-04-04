package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RILImsRadioTechType.class */
public final class RILImsRadioTechType {
    public static final int IMS_RADIO_TECH_TYPE_1X_RTT = 6;
    public static final int IMS_RADIO_TECH_TYPE_EDGE = 2;
    public static final int IMS_RADIO_TECH_TYPE_EHRPD = 13;
    public static final int IMS_RADIO_TECH_TYPE_EVDO_0 = 7;
    public static final int IMS_RADIO_TECH_TYPE_EVDO_A = 8;
    public static final int IMS_RADIO_TECH_TYPE_EVDO_B = 12;
    public static final int IMS_RADIO_TECH_TYPE_GPRS = 1;
    public static final int IMS_RADIO_TECH_TYPE_GSM = 16;
    public static final int IMS_RADIO_TECH_TYPE_HSDPA = 9;
    public static final int IMS_RADIO_TECH_TYPE_HSPA = 11;
    public static final int IMS_RADIO_TECH_TYPE_HSPAP = 15;
    public static final int IMS_RADIO_TECH_TYPE_HSUPA = 10;
    public static final int IMS_RADIO_TECH_TYPE_IS95A = 4;
    public static final int IMS_RADIO_TECH_TYPE_IS95B = 5;
    public static final int IMS_RADIO_TECH_TYPE_IWLAN = 19;
    public static final int IMS_RADIO_TECH_TYPE_LTE = 14;
    public static final int IMS_RADIO_TECH_TYPE_TD_SCDMA = 17;
    public static final int IMS_RADIO_TECH_TYPE_UMTS = 3;
    public static final int IMS_RADIO_TECH_TYPE_UNKNOW = 0;
    public static final int IMS_RADIO_TECH_TYPE_WIFI = 18;
    public static final int IMS_RAIDO_THCH_TYPE_ANY = -1;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        if ((i & (-1)) == -1) {
            arrayList.add("IMS_RAIDO_THCH_TYPE_ANY");
            i2 = 0 | (-1);
        }
        arrayList.add("IMS_RADIO_TECH_TYPE_UNKNOW");
        int i3 = i2;
        if ((i & 1) == 1) {
            arrayList.add("IMS_RADIO_TECH_TYPE_GPRS");
            i3 = i2 | 1;
        }
        int i4 = i3;
        if ((i & 2) == 2) {
            arrayList.add("IMS_RADIO_TECH_TYPE_EDGE");
            i4 = i3 | 2;
        }
        int i5 = i4;
        if ((i & 3) == 3) {
            arrayList.add("IMS_RADIO_TECH_TYPE_UMTS");
            i5 = i4 | 3;
        }
        int i6 = i5;
        if ((i & 4) == 4) {
            arrayList.add("IMS_RADIO_TECH_TYPE_IS95A");
            i6 = i5 | 4;
        }
        int i7 = i6;
        if ((i & 5) == 5) {
            arrayList.add("IMS_RADIO_TECH_TYPE_IS95B");
            i7 = i6 | 5;
        }
        int i8 = i7;
        if ((i & 6) == 6) {
            arrayList.add("IMS_RADIO_TECH_TYPE_1X_RTT");
            i8 = i7 | 6;
        }
        int i9 = i8;
        if ((i & 7) == 7) {
            arrayList.add("IMS_RADIO_TECH_TYPE_EVDO_0");
            i9 = i8 | 7;
        }
        int i10 = i9;
        if ((i & 8) == 8) {
            arrayList.add("IMS_RADIO_TECH_TYPE_EVDO_A");
            i10 = i9 | 8;
        }
        int i11 = i10;
        if ((i & 9) == 9) {
            arrayList.add("IMS_RADIO_TECH_TYPE_HSDPA");
            i11 = i10 | 9;
        }
        int i12 = i11;
        if ((i & 10) == 10) {
            arrayList.add("IMS_RADIO_TECH_TYPE_HSUPA");
            i12 = i11 | 10;
        }
        int i13 = i12;
        if ((i & 11) == 11) {
            arrayList.add("IMS_RADIO_TECH_TYPE_HSPA");
            i13 = i12 | 11;
        }
        int i14 = i13;
        if ((i & 12) == 12) {
            arrayList.add("IMS_RADIO_TECH_TYPE_EVDO_B");
            i14 = i13 | 12;
        }
        int i15 = i14;
        if ((i & 13) == 13) {
            arrayList.add("IMS_RADIO_TECH_TYPE_EHRPD");
            i15 = i14 | 13;
        }
        int i16 = i15;
        if ((i & 14) == 14) {
            arrayList.add("IMS_RADIO_TECH_TYPE_LTE");
            i16 = i15 | 14;
        }
        int i17 = i16;
        if ((i & 15) == 15) {
            arrayList.add("IMS_RADIO_TECH_TYPE_HSPAP");
            i17 = i16 | 15;
        }
        int i18 = i17;
        if ((i & 16) == 16) {
            arrayList.add("IMS_RADIO_TECH_TYPE_GSM");
            i18 = i17 | 16;
        }
        int i19 = i18;
        if ((i & 17) == 17) {
            arrayList.add("IMS_RADIO_TECH_TYPE_TD_SCDMA");
            i19 = i18 | 17;
        }
        int i20 = i19;
        if ((i & 18) == 18) {
            arrayList.add("IMS_RADIO_TECH_TYPE_WIFI");
            i20 = i19 | 18;
        }
        int i21 = i20;
        if ((i & 19) == 19) {
            arrayList.add("IMS_RADIO_TECH_TYPE_IWLAN");
            i21 = i20 | 19;
        }
        if (i != i21) {
            arrayList.add("0x" + Integer.toHexString(i21 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == -1) {
            return "IMS_RAIDO_THCH_TYPE_ANY";
        }
        if (i == 0) {
            return "IMS_RADIO_TECH_TYPE_UNKNOW";
        }
        if (i == 1) {
            return "IMS_RADIO_TECH_TYPE_GPRS";
        }
        if (i == 2) {
            return "IMS_RADIO_TECH_TYPE_EDGE";
        }
        if (i == 3) {
            return "IMS_RADIO_TECH_TYPE_UMTS";
        }
        if (i == 4) {
            return "IMS_RADIO_TECH_TYPE_IS95A";
        }
        if (i == 5) {
            return "IMS_RADIO_TECH_TYPE_IS95B";
        }
        if (i == 6) {
            return "IMS_RADIO_TECH_TYPE_1X_RTT";
        }
        if (i == 7) {
            return "IMS_RADIO_TECH_TYPE_EVDO_0";
        }
        if (i == 8) {
            return "IMS_RADIO_TECH_TYPE_EVDO_A";
        }
        if (i == 9) {
            return "IMS_RADIO_TECH_TYPE_HSDPA";
        }
        if (i == 10) {
            return "IMS_RADIO_TECH_TYPE_HSUPA";
        }
        if (i == 11) {
            return "IMS_RADIO_TECH_TYPE_HSPA";
        }
        if (i == 12) {
            return "IMS_RADIO_TECH_TYPE_EVDO_B";
        }
        if (i == 13) {
            return "IMS_RADIO_TECH_TYPE_EHRPD";
        }
        if (i == 14) {
            return "IMS_RADIO_TECH_TYPE_LTE";
        }
        if (i == 15) {
            return "IMS_RADIO_TECH_TYPE_HSPAP";
        }
        if (i == 16) {
            return "IMS_RADIO_TECH_TYPE_GSM";
        }
        if (i == 17) {
            return "IMS_RADIO_TECH_TYPE_TD_SCDMA";
        }
        if (i == 18) {
            return "IMS_RADIO_TECH_TYPE_WIFI";
        }
        if (i == 19) {
            return "IMS_RADIO_TECH_TYPE_IWLAN";
        }
        return "0x" + Integer.toHexString(i);
    }
}
