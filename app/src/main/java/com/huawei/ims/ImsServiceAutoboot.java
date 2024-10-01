package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.telephony.Rlog;

public class ImsServiceAutoboot extends BroadcastReceiver {
    private static final String TAG = "ImsService AutoBoot";
    private static final boolean volte = SystemProperties.getBoolean("ro.config.hw_volte_on", false);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (volte && "android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            ComponentName comp = new ComponentName(context.getPackageName(), HwImsService.class.getName());
            ComponentName service = context.startService(new Intent().setComponent(comp));
            if (service == null) {
                Rlog.e(TAG, "Could Not Start Service " + comp.toString());
                return;
            }
            Rlog.e(TAG, "ImsService Auto Boot Started Successfully");
            return;
        }
        Rlog.e(TAG, "Received Intent: " + intent.toString());
    }
}
