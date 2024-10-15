package com.huawei.sci;

import android.os.Build;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciDefaultTls {
    public static native int load();

    static {
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary("crypto");
            System.loadLibrary("ssl");
            System.loadLibrary("tls_default");
            System.loadLibrary("sci_tls_default");
            return;
        }
        String str = SciSys.getLibPath();
        if (str == null || str.length() == 0) {
            SciSys.loadLib("crypto");
            SciSys.loadLib("ssl");
            SciSys.loadLib("tls_default");
            SciSys.loadLib("sci_tls_default");
            return;
        }
        System.load(str + "/libcrypto.so");
        System.load(str + "/libssl.so");
        System.load(str + "/libtls_default.so");
        System.load(str + "/libsci_tls_default.so");
    }
}
