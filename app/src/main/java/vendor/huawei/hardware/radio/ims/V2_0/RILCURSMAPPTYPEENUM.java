package vendor.huawei.hardware.radio.ims.V2_0;

import java.util.ArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public final class RILCURSMAPPTYPEENUM {
    public static final int CURSM_APP_TYPE_ISIM = 1;
    public static final int CURSM_APP_TYPE_USIM = 0;

    public static final String toString(int o) {
        if (o == 0) {
            return "CURSM_APP_TYPE_USIM";
        }
        if (o == 1) {
            return "CURSM_APP_TYPE_ISIM";
        }
        return "0x" + Integer.toHexString(o);
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList<>();
        int flipped = 0;
        list.add("CURSM_APP_TYPE_USIM");
        if ((o & 1) == 1) {
            list.add("CURSM_APP_TYPE_ISIM");
            flipped = 0 | 1;
        }
        if (o != flipped) {
            list.add("0x" + Integer.toHexString((~flipped) & o));
        }
        return String.join(" | ", list);
    }
}
