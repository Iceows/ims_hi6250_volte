package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILUICCAUTHTYPEENUM {
    public static final int UICC_AUTH_TYPE_ISIM = 1;
    public static final int UICC_AUTH_TYPE_USIM = 0;

    public static final String toString(int o) {
        if (o == 0) {
            return "UICC_AUTH_TYPE_USIM";
        }
        if (o == 1) {
            return "UICC_AUTH_TYPE_ISIM";
        }
        return "0x" + Integer.toHexString(o);
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList<>();
        int flipped = 0;
        list.add("UICC_AUTH_TYPE_USIM");
        if ((o & 1) == 1) {
            list.add("UICC_AUTH_TYPE_ISIM");
            flipped = 0 | 1;
        }
        if (o != flipped) {
            list.add("0x" + Integer.toHexString((~flipped) & o));
        }
        return String.join(" | ", list);
    }
}
