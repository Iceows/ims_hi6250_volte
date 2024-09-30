package android.telephony;

import android.telephony.TelephonyManager;
public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();


    public static String getSimOperator(int subId) {
         TelephonyManager.getD


                .getDefault().getSimOperator(subId);
    }

    public static int getCardType(int subId) {
    }

    public static int getNetworkType(int subId) {
    }

    public static boolean isNetorkRoaming(int slotId) {
    }

    public int getDataRegisteredState(int subId) {
        return 0;
    }

    public int getSimState(int i) {
    }

    public int getCurrentPhoneTypeForSlot(int subId) {
    }

    public boolean isCTSimCard(int subId) {
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
