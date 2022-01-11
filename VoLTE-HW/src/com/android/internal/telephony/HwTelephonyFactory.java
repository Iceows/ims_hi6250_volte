package com.android.internal.telephony;

public class HwTelephonyFactory {

	// Everything requested from or by this class is "Chr". A google search reveals that is Call History Recording aka a useless feature we can just ignore. We just implement useless stubs.

	public HwChrServiceManager getHwChrServiceManager() {
		return HwChrServiceManagerImpl.getDefault();
	};

	public HwVolteChrManager getHwVolteChrManager() {
		return HwVolteChrManagerImpl.getDefault();
	};
}
