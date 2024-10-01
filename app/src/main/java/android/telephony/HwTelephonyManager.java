package android.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();
    private static TelephonyManager sInstanceTelMngr = new TelephonyManager();


    public static TelephonyManager getTelMngrDefault() {
        //        return (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
        return sInstanceTelMngr;
    }

    public static String getSimOperator(int subId) {
        return sInstanceTelMngr.getSimOperator();
    }
    // TODO Iceows
    public static int getCardType(int subId) {
        return 0;
    }
    // TODO Iceows
    public static int getNetworkType(int subId) {
        return sInstanceTelMngr.getNetworkType();
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
    public int getSimState(int i) {
        return 0;
    }
    // TODO Iceows
    public int getCurrentPhoneTypeForSlot(int subId) {
        return (sInstanceTelMngr.getPhoneType());
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
