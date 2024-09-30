package com.huawei.telephony;

import android.content.Context;
import android.os.Message;
import android.telephony.HwTelephonyManagerInner;

public class HuaweiTelephonyManager {
    public static final int CT_NATIONAL_ROAMING_CARD = 41;
    public static final int CU_DUAL_MODE_CARD = 42;
    public static final int DUAL_MODE_CG_CARD = 40;
    public static final int DUAL_MODE_UG_CARD = 50;
    public static final int SINGLE_MODE_RUIM_CARD = 30;
    public static final int SINGLE_MODE_SIM_CARD = 10;
    public static final int SINGLE_MODE_USIM_CARD = 20;
    public static final int UNKNOWN_CARD = -1;
    private static HuaweiTelephonyManager mInstance = new HuaweiTelephonyManager();

    public static HuaweiTelephonyManager getDefault() {
        return mInstance;
    }

    public boolean isCTCdmaCardInGsmMode() {
        return false;
    }

    public boolean isCardPresent(int slotId) {
        return true;
    }

    public int getSlotIdFromSubId(int subId) {
        return subId;
    }

    public int getCardType(int slotId) {
        return -1;
    }

    public boolean isCTNationRoamingEnable() {
        return false;
    }

    public boolean isSubActive(int subId) {
        return true;
    }

    public int getSubidFromSlotId(int slotId) {
        return slotId;
    }

    public boolean setDualCardMode(int nMode) {
        return true;
    }

    public int getDefault4GSlotId() {
        return HwTelephonyManagerInner.getDefault4GSlotId();
    }


}