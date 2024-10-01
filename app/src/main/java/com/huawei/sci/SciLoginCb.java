package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciLoginCb {
    private static Callback mCallback = null;

    public interface Callback {
        int sciLoginCbAkaAuth(byte[] bArr, byte[] bArr2);
    }

    public int loginCbAkaAuth(byte[] pcRand, byte[] pcAutn) {
        if (this.mCallback != null) {
            return mCallback.sciLoginCbAkaAuth(pcRand, pcAutn);
        }
        return 1;
    }

    public static void setCallback(Callback c) {
        mCallback = c;
    }
}
