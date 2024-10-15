package com.huawei.ims;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SharePreferenceUtil {
    private SharePreferenceUtil() {
    }

    public static SharedPreferences getDefaultDevSharedPreferences(Context context) {
        if (context == null) {
            return null;
        }
        return PreferenceManager.getDefaultSharedPreferences(context.createDeviceProtectedStorageContext());
    }

    public static SharedPreferences getDefaultNormalSharedPreferences(Context context) {
        if (context == null) {
            return null;
        }
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static boolean isVersionHigherThanM() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static boolean moveSharedPreferencesFrom(Context targetContext, Context sourceContext, String sharedPreferenceName) {
        if (targetContext == null || sourceContext == null || sharedPreferenceName == null) {
            return false;
        }
        return targetContext.moveSharedPreferencesFrom(sourceContext, sharedPreferenceName);
    }
}
