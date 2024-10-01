package android.telephony;

public class HwTelephonyManagerInner {
    private HwTelephonyManagerInner() {
    }

    /*
    public static HwTelephonyManagerInner getDefault() {
        return sInstance;
    }

    private IHwTelephony getIHwTelephony() throws RemoteException {
        IHwTelephony iHwTelephony = IHwTelephony.Stub.asInterface(ServiceManager.getService("phone_huawei"));
        if (iHwTelephony != null) {
            return iHwTelephony;
        }
        throw new RemoteException("getIHwTelephony return null");
    }
    public void setDefaultDataSlotId(int slotId) {
        try {
            getIHwTelephony().setDefaultDataSlotId(slotId);
        } catch (RemoteException | NullPointerException e) {
        }
    }

    public int getDefault4GSlotId() {
        try {
            return getIHwTelephony().getDefault4GSlotId();
        } catch (RemoteException e) {
            return 0;
        }
    }
    */

    public static int getDefault4GSlotId() {
        return 0;
    }

    public static boolean isWifiCallingAvailable(int subId) {
        return true;
    }
}
