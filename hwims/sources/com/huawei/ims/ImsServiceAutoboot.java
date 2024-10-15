package com.huawei.ims;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.telephony.Rlog;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsServiceAutoboot extends BroadcastReceiver {
    private static final boolean IS_VOLTE_ON = SystemProperties.getBoolean("ro.config.hw_volte_on", false);
    private static final String TAG = "ImsService AutoBoot";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null || context == null) {
            Rlog.e(TAG, "Received Intent: intent or intent.getAction() is null or the context is null.");
            return;
        }
        if (IS_VOLTE_ON && "android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            ComponentName comp = new ComponentName(context.getPackageName(), HwImsService.class.getName());
            ComponentName service = context.startService(new Intent().setComponent(comp));
            if (service != null) {
                Rlog.e(TAG, "ImsService Auto Boot Started Successfully");
                return;
            }
            Rlog.e(TAG, "Could Not Start Service " + comp.toString());
            return;
        }
        Rlog.e(TAG, "Received Intent: " + intent.toString());
    }
}
