package com.huawei.ims;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.Rlog;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HemihuaLoaderManager {
    private static final int BINDER_RESULT_FAIL = -1;
    private static final int BINDER_RESULT_NOT_SUPPORT = -100;
    private static final int BINDER_RESULT_SUCCESS = 0;
    private static final int CLOSE_ENCRYPT_SWITCH = 0;
    private static final int CMCC_ENCRYPT_CALL_SWITCH = 10;
    private static final int ENCRYPTED_VERSION = 1;
    private static final String ENCRYPT_SWITCH_KEY = "open";
    private static final String HEMIHUA_PACKAGE_NAME = "com.cmcc.hemihua";
    private static final String HEMIHUA_SHA256_FINGERPRINT = "88:2D:03:DA:AF:5B:D5:A6:32:A0:EB:01:C2:A4:89:D9:F7:41:10:B2:E0:06:C8:BC:1E:2F:D3:47:8E:14:77:1A";
    private static final int INVALID_PID = -1;
    private static final String KEY_CMCC_ENCRYPT_VERSION = "cmcc_encrypt_version";
    private static final int OPEN_ENCRYPT_SWITCH = 1;
    private static final String PACKAGE_NAME = "com.huawei.ims";
    private static final int REGULAR_VERSION = 0;
    private static final String SERVICE_NAME = "com.huawei.ims.HemihuaLoaderService";
    private static final String TAG = "HemihuaLoaderManager";
    private static volatile HemihuaLoaderManager sInstance;
    private Context mContext;
    private static final String PROP_CMCC_VOLTE_ENCRYPT_ENABLE = "ro.config.cmcc.volteencrypt";
    private static final boolean IS_SUPPORT_CMCC_ENCRYPT = SystemProperties.getBoolean(PROP_CMCC_VOLTE_ENCRYPT_ENABLE, false);

    private HemihuaLoaderManager(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static HemihuaLoaderManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (HemihuaLoaderManager.class) {
                if (sInstance == null) {
                    sInstance = new HemihuaLoaderManager(context);
                }
            }
        }
        return sInstance;
    }

    public void startHemihuaLoader() {
        Intent startIntent = new Intent();
        ComponentName componentName = new ComponentName(PACKAGE_NAME, SERVICE_NAME);
        startIntent.setComponent(componentName);
        this.mContext.startService(startIntent);
        Rlog.i(TAG, "startHemihuaLoader");
    }

    public static boolean isSupportCmccEncrypt() {
        return IS_SUPPORT_CMCC_ENCRYPT;
    }

    public static String getHemihuaPackageName() {
        return HEMIHUA_PACKAGE_NAME;
    }

    public boolean isPidOfHemihua(Context context, int pid) {
        int hemihuaPid;
        return (context == null || (hemihuaPid = ImsUtils.getPidByPackageName(context, HEMIHUA_PACKAGE_NAME)) == -1 || pid != hemihuaPid) ? false : true;
    }

    public boolean isHemihuaAppExist(Context context) {
        PackageManager pm;
        if (context == null || (pm = context.getPackageManager()) == null) {
            return false;
        }
        try {
            pm.getApplicationInfo(PACKAGE_NAME, 8192);
            return isRealHemihuaByFingerprint(context);
        } catch (PackageManager.NameNotFoundException e) {
            Rlog.e(TAG, "expected app is not exist.");
            return false;
        }
    }

    public void handleEncryptSwitchChanged(Context context, boolean z) {
        if (context == null) {
            return;
        }
        boolean z2 = Settings.Secure.getInt(context.getContentResolver(), KEY_CMCC_ENCRYPT_VERSION, 0) == 1;
        if (z != z2) {
            StatisticalHelper.report(context, 10, ENCRYPT_SWITCH_KEY, z ? 1 : 0);
            Settings.Secure.putInt(context.getContentResolver(), KEY_CMCC_ENCRYPT_VERSION, z2 ? 0 : 1);
        }
        Rlog.i(TAG, "handleEncryptSwitchChanged: from " + z2 + " to " + z);
    }

    private boolean isRealHemihuaByFingerprint(Context context) {
        String fingerprint = ImsUtils.getCertificateSha256Fingerprint(context, HEMIHUA_PACKAGE_NAME);
        if (!HEMIHUA_SHA256_FINGERPRINT.equals(fingerprint)) {
            return false;
        }
        return true;
    }
}
