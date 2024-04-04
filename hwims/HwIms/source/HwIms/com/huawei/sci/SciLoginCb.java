package com.huawei.sci;

/* loaded from: SciLoginCb.class */
public class SciLoginCb {
    private static Callback mCallback = null;

    /* loaded from: SciLoginCb$Callback.class */
    public interface Callback {
        int sciLoginCbAkaAuth(byte[] bArr, byte[] bArr2);
    }

    public static int loginCbAkaAuth(byte[] bArr, byte[] bArr2) {
        if (SciConfCb.mCallback != null) {
            return mCallback.sciLoginCbAkaAuth(bArr, bArr2);
        }
        return 1;
    }

    public static void setCallback(Callback callback) {
        mCallback = callback;
    }
}
