package com.huawei.sci;

/* loaded from: SciSysCb.class */
public class SciSysCb {
    private static final String TAG = "SciSysCb";
    static Callback mCallback;

    /* loaded from: SciSysCb$Callback.class */
    public interface Callback {
        int sciSysCbMwiComing();

        int sciSysCbQueryIpByName(String str, String[] strArr);

        int sciSysCbRecvNotifyMsg(String str);

        int sciSysCbServerConnected();

        int sciSysCbServerDisconnected(long j);

        int sciSysCbServerTempUnavailable(long j);

        boolean sysCbChkIfAppOnForeGround();
    }

    public static void setCallback(Callback callback) {
        mCallback = callback;
    }

    public static boolean sysCbChkIfAppOnForeGround() {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbChkIfAppOnForeGround null == SciSysCb.mCallback");
            return false;
        }
        return mCallback.sysCbChkIfAppOnForeGround();
    }

    public static int sysCbMwiComing() {
        SciLog.e(TAG, "sysCbMwiComing start!");
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbMwiComing null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbMwiComing();
    }

    public static int sysCbQueryIpByName(String str, String[] strArr) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbQueryIpByName null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbQueryIpByName(str, strArr);
    }

    public static int sysCbRecvNotifyMsg(String str) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbRecvNotifyMsg null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbRecvNotifyMsg(str);
    }

    public static int sysCbServerConnected() {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerConnected null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerConnected();
    }

    public static int sysCbServerDisconnected(long j) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerDisconnected null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerDisconnected(j);
    }

    public static int sysCbServerTempUnavailable(long j) {
        if (mCallback == null) {
            SciLog.e(TAG, "sysCbServerTempUnavailable null == SciSysCb.mCallback");
            return 1;
        }
        return mCallback.sciSysCbServerTempUnavailable(j);
    }
}
