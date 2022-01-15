package com.huawei.cust;

import java.lang.System;
import java.lang.Integer;
import java.io.File;
import android.util.Log;

public class HwCfgFilePolicy {
	private static String[] CFG_DIRS = null;
	static {
		String policy = System.getenv("CUST_POLICY_DIRS");
		if (policy == null || policy.length() == 0) {
			Log.e("HwCfgFilePolicy", "CUST_POLICY_DIRS not set, abusing default one.");
			policy = "/system/emui:/system/global:/system/etc:/oem:/data/cust:/cust_spec";
		}
		CFG_DIRS = policy.split(":");
	}
	public static File getCfgFile(String path, int type) {
		String typeName = "ERROR";
		switch(type) {
		case 0:
			typeName = "GLOBAL";
		case 1:
			typeName = "EMUI";
		case 2:
			typeName = "PC";
		case 3:
			typeName = "BASE";
		case 4:
			typeName = "CUST";
		case 5:
			typeName = "CLOUD_MCC";
		case 6:
			typeName = "CLOUD_DPLMN";
		case 7:
			typeName = "CLOUD_APN";
		default:
			Log.e("HwCfgFilePolicy", "requested invalid file type! "+Integer.toString(type));
		}
		Log.v("HwCfgFilePolicy", "requested config file "+path+" for type "+typeName);
		for (String file : CFG_DIRS) {
			File file2 = new File(file, path);
			if (file2.exists())
				return file2;
		}
		return null;
	}
}
