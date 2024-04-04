package com.huawei.sci;

/* loaded from: SciUpgrade.class */
public class SciUpgrade {
    public static final int FORCED_UPDATE_FLAG = 1;
    public static final int RESULT_FAIL = 952;
    public static final int RESULT_MD5ERROR = 905;
    public static final int RESULT_NETERROR = 903;
    public static final int RESULT_USERCANCEL = 902;
    public static final int RETCODE_CHECKING = 3;
    public static final int RETCODE_FAILED = 1;
    public static final int RETCODE_OK = 0;
    public static final int RETCODE_SERVER_DISCONNECT = 2;
    public static final int RETCODE_UNKNOWN = 255;

    public static native int check();

    public static native int getUpgradePackageInfo(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3);

    public static native boolean isChecking();

    public static native int result(int i);
}
