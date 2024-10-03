package android.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();


    public static String getSimOperator(int subId) {
        return "SFR";
    }
    // TODO Iceows
    public static int getCardType(int subId) {
        return 0;
    }
    // TODO Iceows
    public static int getNetworkType(int subId) {
        return 0;
    }
    // TODO Iceows
    public static boolean isNetorkRoaming(int slotId) {
        return false;
    }
    // TODO Iceows
    public static int getSimCount() {
        return 1;
    }

    // TODO Iceows
    public static boolean isWifiCallingAvailable(int subId) {
        return true;
    }

    // TODO Iceows
    public int getDataRegisteredState(int subId) {
        return 0;
    }

    // TODO Iceows
    public static int getSimState(int i) {
        return 0;
    }
    // TODO Iceows
    public static int getCurrentPhoneTypeForSlot(int subId) {
        return 0;
    }
    // TODO Iceows
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

    public static int getDefault4GSlotId() {
        return 0;
    }

    public int getImsDomain(int default4GSlotId) {
        return 0;
    }
}
