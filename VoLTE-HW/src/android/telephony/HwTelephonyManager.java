package android.telephony;

import android.telephony.TelephonyManager;
import android.util.Log;
import java.lang.Integer;

public class HwTelephonyManager {
	private final static HwTelephonyManager INSTANCE = new HwTelephonyManager();

	private HwTelephonyManager() {
	}

	public static HwTelephonyManager getDefault() {
		return INSTANCE;
	}

	public int getDefault4GSlotId() {
                int retval = SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultDataSubscriptionId());
                Log.e("HwTelephonyManager", Integer.toString(retval));
		return retval;
	}

	public int getCardType(int p) {
		return 0;
	}

	public boolean isCTSimCard(int p) {
		return false;
	}
}
