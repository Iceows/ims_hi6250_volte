package com.huawei.sci;

/* loaded from: SciUpgradeCb.class */
public class SciUpgradeCb {
    public static final int NTYCODE_NO_NEW_VER = 0;
    public static final int NTYCODE_TIMEOUT = 1;
    public static final int NTYCODE_UNKNOWN = 255;
    static Callback mCallback;

    /* loaded from: SciUpgradeCb$Callback.class */
    public interface Callback {
        void sciUpgradeCbUpgradeCheckNotify(int i);

        void sciUpgradeCbUpgradeNotify(String str, String str2, String str3, String str4, String str5, int i);
    }

    public static void setCallback(Callback callback) {
        mCallback = callback;
    }

    public static void upgradeCbUpgradeCheckNotify(int i) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUpgradeCbUpgradeCheckNotify(i);
    }

    public static void upgradeCbUpgradeNotify(String str, String str2, String str3, String str4, String str5, int i) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUpgradeCbUpgradeNotify(str, str2, str3, str4, str5, i);
    }
}
