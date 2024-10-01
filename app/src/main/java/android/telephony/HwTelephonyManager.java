package android.telephony;

import android.telephony.TelephonyManager;
public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();


    public static String getSimOperator(int subId) {
        return "";
    }

    public static int getCardType(int subId) {
        return 0;
    }

    public static int getNetworkType(int subId) {
        return 0;
    }

    public static boolean isNetorkRoaming(int slotId) {
        return false;
    }

    public int getDataRegisteredState(int subId) {
        return 0;
    }

    public int getSimState(int i) {
        return 0;
    }

    public int getCurrentPhoneTypeForSlot(int subId) {
        return 0;
    }

    public boolean isCTSimCard(int subId) {
        return false;
    }

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
