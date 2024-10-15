package com.huawei.ims;

import android.content.Context;
import android.telephony.Rlog;
import com.huawei.android.app.HiViewEx;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class StatisticalHelper {
    private static final int BASE_ID = 990640000;
    private static final String TAG = "ImsStatisticalHelper";

    public static void report(Context context, int eventId, String key, int value) {
        if (key == null) {
            return;
        }
        HiViewEx.report(HiViewEx.byPair(BASE_ID + eventId, key, value).putAppInfo(context));
        Rlog.i(TAG, "report eventId: " + eventId + "value: " + value);
    }
}
