package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciLoginCb {
    private static Callback mCallback = null;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface Callback {
        int sciLoginCbAkaAuth(byte[] bArr, byte[] bArr2);
    }

    public static int loginCbAkaAuth(byte[] pcRand, byte[] pcAutn) {
        if (SciConfCb.mCallback != null) {
            return mCallback.sciLoginCbAkaAuth(pcRand, pcAutn);
        }
        return 1;
    }

    public static void setCallback(Callback c) {
        mCallback = c;
    }
}
