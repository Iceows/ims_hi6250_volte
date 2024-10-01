package com.huawei.sci;

import android.os.Build;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciDefaultTls {
    public static native int load();

    static {
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary("cryptotsc");
            System.loadLibrary("ssltsc");
            System.loadLibrary("tls_default");
            System.loadLibrary("sci_tls_default");
            return;
        }
        String str = SciSys.getLibPath();
        if (str == null || str.length() == 0) {
            SciSys.loadLib("cryptotsc");
            SciSys.loadLib("ssltsc");
            SciSys.loadLib("tls_default");
            SciSys.loadLib("sci_tls_default");
            return;
        }
        System.load(str + "/libcryptotsc.so");
        System.load(str + "/libssltsc.so");
        System.load(str + "/libtls_default.so");
        System.load(str + "/libsci_tls_default.so");
    }
}
