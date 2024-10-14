package android.telephony;


import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;

import java.lang.reflect.Method;

public class HwTelephonyManager {
    private static HwTelephonyManager sInstance = new HwTelephonyManager();
    private static final String TAG = "HwTelephonyManager";
    private Context myCtx = null;

    public HwTelephonyManager() {

    }

    public HwTelephonyManager(Context myContext) {
        myCtx = myContext;
    }

    public TelephonyManager getTelephony(Context context) {

        TelephonyManager telephonyManager = ((TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE));
        printTelephonyManagerMethodNamesForThisDevice(telephonyManager);

        return telephonyManager;
    }

    public void printTelephonyManagerMethodNamesForThisDevice(TelephonyManager telephony) {
        Class<?> telephonyClass;
        try {
            telephonyClass = Class.forName(telephony.getClass().getName());
            Method[] methods = telephonyClass.getMethods();
            for (int idx = 0; idx < methods.length; idx++) {
                Log.d("METHOD", "\n" + methods[idx] + " declared by " + methods[idx].getDeclaringClass() + " return " + methods[idx].getReturnType());
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public String getSimOperator(int subId) {
        TelephonyManager myTelMgr = getTelephony(myCtx);

        if (myTelMgr.getSimState() == TelephonyManager.SIM_STATE_READY) {
            String simOperator = myTelMgr.getSimOperator();
            if (simOperator != null && simOperator.length() > 3) {
                return simOperator.substring(3);
            }
            return simOperator;
        }
        return "";
    }

    // TODO Iceows
    public int getCardType(int subId) {
        return 0;
    }

    // TODO Iceows
    public int getNetworkType(int subId) {
        return 0;
    }
    // TODO Iceows
    public boolean isNetorkRoaming(int slotId) {
        return false;
    }
    // TODO Iceows
    public static int getSimCount() {
        return 1;
    }

    // TODO Iceows
    public boolean isWifiCallingAvailable(int subId) {
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

    public int getDefault4GSlotId() {
        return 0;
    }

    public int getImsDomain(int default4GSlotId) {
        return 0;
    }
}
