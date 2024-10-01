package com.android.ims;

import android.content.Context;

public class HwImsManager {
    public static boolean isVtEnabledByPlatform(Context mContext, int mSub) {
        return true;
    }

    public static boolean isVtEnabledByUser(Context mContext, int mSub) {
        return true;
    }

    public static boolean isNonTtyOrTtyOnVolteEnabled(Context mContext, int mSub) {
        return false;
    }

    public static boolean isWfcEnabledByPlatform(Context context, int subId) {
        return true;
    }

    public static int getWfcMode(Context context, boolean isRoaming, int slotId) {
        return 0;
    }
}
