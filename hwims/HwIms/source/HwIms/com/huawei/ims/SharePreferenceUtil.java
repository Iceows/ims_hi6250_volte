package com.huawei.ims;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;

/* loaded from: SharePreferenceUtil.class */
public class SharePreferenceUtil {
    public static SharedPreferences getDefaultSharedPreferencesCE(Context context) {
        if (context == null) {
            return null;
        }
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static SharedPreferences getDefaultSharedPreferencesDE(Context context) {
        if (context == null) {
            return null;
        }
        return PreferenceManager.getDefaultSharedPreferences(context.createDeviceProtectedStorageContext());
    }

    public static boolean isNOrLater() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static boolean moveSharedPreferencesFrom(Context context, Context context2, String str) {
        if (context == null || context2 == null || str == null) {
            return false;
        }
        return context.moveSharedPreferencesFrom(context2, str);
    }
}
