package com.huawei.sci;

import android.os.Build;

/* loaded from: SciDefaultTls.class */
public class SciDefaultTls {
    static {
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary("cryptotsc");
            System.loadLibrary("ssltsc");
            System.loadLibrary("tls_default");
            System.loadLibrary("sci_tls_default");
            return;
        }
        String libPath = SciSys.getLibPath();
        if (libPath == null || libPath.length() == 0) {
            SciSys.loadLib("cryptotsc");
            SciSys.loadLib("ssltsc");
            SciSys.loadLib("tls_default");
            SciSys.loadLib("sci_tls_default");
            return;
        }
        System.load(libPath + "/libcryptotsc.so");
        System.load(libPath + "/libssltsc.so");
        System.load(libPath + "/libtls_default.so");
        System.load(libPath + "/libsci_tls_default.so");
    }

    public static native int load();
}
