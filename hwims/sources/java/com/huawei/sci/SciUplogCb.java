package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciUplogCb {
    static Callback mCallback = null;
    static AnalysisLogCallback mAnalysisCallback = null;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface AnalysisLogCallback {
        void sciUplogCbPrintStatic(String str, String str2, String str3, String str4, boolean z);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface Callback {
        void sciUplogCbLogErrorCode(String str, String str2, String str3);

        void sciUplogCbUplogFileClosed(String str);

        void sciUplogCbUplogNotify(String str);

        void sciUplogCbUplogResult(int i);
    }

    public static void uplogCbUplogNotify(String url) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogNotify(url);
    }

    public static void uplogCbUplogResult(int result) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogResult(result);
    }

    public static void uplogCbLogFileClosed(String LogFileName) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbUplogFileClosed(LogFileName);
    }

    public static void uplogCbLogErrorCode(String strErrorCode, String strTime, String strDes) {
        if (mCallback == null) {
            return;
        }
        mCallback.sciUplogCbLogErrorCode(strErrorCode, strTime, strDes);
    }

    public static void setCallback(Callback c) {
        mCallback = c;
    }

    public static void uplogCbPrintStatic(String pcEventID, String pcFirstStaticParam, String pcSecondStaticParam, String pcThirdStaticParam, boolean isAutoTest) {
        if (mAnalysisCallback == null) {
            return;
        }
        mAnalysisCallback.sciUplogCbPrintStatic(pcEventID, pcFirstStaticParam, pcSecondStaticParam, pcThirdStaticParam, isAutoTest);
    }

    public static void setAnalysisCallback(AnalysisLogCallback c) {
        mAnalysisCallback = c;
    }
}
