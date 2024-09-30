package com.android.internal.telephony;

public class HwTelephonyFactory {

    public static HwChrServiceManager getHwChrServiceManager() {
        return HwChrServiceManagerImpl.getDefault();
    }

    public static HwVolteChrManager getHwVolteChrManager() {
        return HwVolteChrManagerImpl.getDefault();
    }

    public static Object getHwTelephonyChrManager() {
        return HwTelephonyChrManagerImpl.getDefault();
    }
}