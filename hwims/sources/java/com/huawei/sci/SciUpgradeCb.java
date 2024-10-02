package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciUpgradeCb {
    public static final int NTYCODE_NO_NEW_VER = 0;
    public static final int NTYCODE_TIMEOUT = 1;
    public static final int NTYCODE_UNKNOWN = 255;
    static Callback mCallback;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface Callback {
        void sciUpgradeCbUpgradeCheckNotify(int i);

        void sciUpgradeCbUpgradeNotify(String str, String str2, String str3, String str4, String str5, int i);
    }

    public static void upgradeCbUpgradeNotify(String newVersion, String url, String urlMd5, String url2, String url2Md5, int iForceUpgrade) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUpgradeCbUpgradeNotify(newVersion, url, urlMd5, url2, url2Md5, iForceUpgrade);
    }

    public static void upgradeCbUpgradeCheckNotify(int iResult) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUpgradeCbUpgradeCheckNotify(iResult);
    }

    public static void setCallback(Callback c) {
        mCallback = c;
    }
}
