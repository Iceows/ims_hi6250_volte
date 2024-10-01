package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciSysCb {
    private static final String TAG = "SciSysCb";
    static Callback mCallback;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface Callback {
        int sciSysCbMwiComing();

        int sciSysCbQueryIpByName(String str, String[] strArr);

        int sciSysCbRecvNotifyMsg(String str);

        int sciSysCbServerConnected();

        int sciSysCbServerDisconnected(long j);

        int sciSysCbServerTempUnavailable(long j);

        boolean sysCbChkIfAppOnForeGround();
    }

    public static int sysCbServerConnected() {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerConnected null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerConnected();
    }

    public static int sysCbRecvNotifyMsg(String strNotifyStr) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbRecvNotifyMsg null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbRecvNotifyMsg(strNotifyStr);
    }

    public static int sysCbMwiComing() {
        SciLog.e(TAG, "sysCbMwiComing start!");
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbMwiComing null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbMwiComing();
    }

    public static int sysCbServerDisconnected(long dwStatCode) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerDisconnected null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerDisconnected(dwStatCode);
    }

    public static int sysCbServerTempUnavailable(long dwStatCode) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerTempUnavailable null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerTempUnavailable(dwStatCode);
    }

    public static boolean sysCbChkIfAppOnForeGround() {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbChkIfAppOnForeGround null == SciSysCb.mCallback");
            return false;
        }
        return mCallback.sysCbChkIfAppOnForeGround();
    }

    public static int sysCbQueryIpByName(String pcDomainName, String[] pcIP4Addr) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbQueryIpByName null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbQueryIpByName(pcDomainName, pcIP4Addr);
    }

    public static void setCallback(Callback c) {
        mCallback = c;
    }
}
