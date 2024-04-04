package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.telephony.Rlog;

/* loaded from: ImsServiceAutoboot.class */
public class ImsServiceAutoboot extends BroadcastReceiver {
    private static final String TAG = "ImsService AutoBoot";
    private static final boolean volte = SystemProperties.getBoolean("ro.config.hw_volte_on", false);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!volte || !"android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            Rlog.e(TAG, "Received Intent: " + intent.toString());
            return;
        }
        ComponentName componentName = new ComponentName(context.getPackageName(), HwImsService.class.getName());
        if (context.startService(new Intent().setComponent(componentName)) != null) {
            Rlog.e(TAG, "ImsService Auto Boot Started Successfully");
            return;
        }
        Rlog.e(TAG, "Could Not Start Service " + componentName.toString());
    }
}
