package android.telephony;

public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();

    public enum MultiSimVariantsEx {
        DSDS,
        DSDA,
        TSTS,
        UNKNOWN
    }

    public static HwTelephonyManager getDefault() {
        return sInstance;
    }



    public int getDefault4GSlotId() {
        return 0;
    }

    public int getImsDomain(int default4GSlotId) {
        return 0;
    }
}
