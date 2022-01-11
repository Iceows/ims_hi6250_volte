package com.android.internal.telephony;

import android.os.Message;

public class HwChrServiceManagerImpl implements HwChrServiceManager {

	private static HwChrServiceManager mInstance = new HwChrServiceManagerImpl();

	public static HwChrServiceManager getDefault() {
		return mInstance;
	}

	// Like HwVolteChrManagerImpl.java, see there for comments.
	public void handleMessage(Message msg) {};

	public HwChrServiceManagerImpl() {};
	public void reportCallException(String appName, int subId, int callType, String params) {};
}
