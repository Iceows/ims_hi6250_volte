package com.huawei.sci;

/* loaded from: SciUplogCb.class */
public class SciUplogCb {
    static Callback mCallback = null;
    static AnalysisLogCallback mAnalysisCallback = null;

    /* loaded from: SciUplogCb$AnalysisLogCallback.class */
    public interface AnalysisLogCallback {
        void sciUplogCbPrintStatic(String str, String str2, String str3, String str4, boolean z);
    }

    /* loaded from: SciUplogCb$Callback.class */
    public interface Callback {
        void sciUplogCbLogErrorCode(String str, String str2, String str3);

        void sciUplogCbUplogFileClosed(String str);

        void sciUplogCbUplogNotify(String str);

        void sciUplogCbUplogResult(int i);
    }

    public static void setAnalysisCallback(AnalysisLogCallback analysisLogCallback) {
        mAnalysisCallback = analysisLogCallback;
    }

    public static void setCallback(Callback callback) {
        mCallback = callback;
    }

    public static void uplogCbLogErrorCode(String str, String str2, String str3) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbLogErrorCode(str, str2, str3);
    }

    public static void uplogCbLogFileClosed(String str) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogFileClosed(str);
    }

    public static void uplogCbPrintStatic(String str, String str2, String str3, String str4, boolean z) {
        if (mAnalysisCallback == null) {
            return;
        }
        mAnalysisCallback.sciUplogCbPrintStatic(str, str2, str3, str4, z);
    }

    public static void uplogCbUplogNotify(String str) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogNotify(str);
    }

    public static void uplogCbUplogResult(int i) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogResult(i);
    }
}
