package com.huawei.sci;

import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.sci.SciSSConfAuth;

/* loaded from: SciSSConfCb.class */
public class SciSSConfCb {
    private static Callback callBack = null;
    private static SciSSConfAuth sciSSConfAuth = null;
    private static int bsfSearchResult = 0;
    private static Runnable bsfThread = new Runnable() { // from class: com.huawei.sci.SciSSConfCb.1
        @Override // java.lang.Runnable
        public void run() {
            int unused = SciSSConfCb.bsfSearchResult = SciSSConf.startBsfAuthRequest();
        }
    };

    /* loaded from: SciSSConfCb$Callback.class */
    public interface Callback {
        void sciBsfCbPostResult(String str, String str2);

        void sciSSConfCbPostResult(int i, int i2, int i3);
    }

    public static void sciCbPostAuthReq(int i, byte[] bArr, boolean z) {
        Log.i("SciSSConfCb", "sciCbPostAuthReq enter.");
        SciSSConfAuthInfo.getInstance().setGbaType(i);
        SciSSConfAuthInfo.getInstance().setNaf_id(bArr);
        if (z && sciSSConfAuth != null && sciSSConfAuth.deleteGBAKsnaf(i, bArr) != 0) {
            Log.e("SciSSConfCb", "deleteGBAKsnaf  failed.");
        }
        if (sciGetKsNaf(i, bArr, 1)) {
            return;
        }
        Log.e("SciSSConfCb", "continueSSConfService with failed.");
        SciSSConf.continueSSConfService(0, 0, 1, HwImsConfigImpl.NULL_STRING_VALUE, new byte[0]);
    }

    public static void sciCbPostBsfAuth(byte[] bArr, byte[] bArr2) {
        Log.i("SciSSConfCb", "sciCbPostBsfAuth enter.");
        if (sciSSConfAuth == null) {
            Log.e("SciSSConfCb", "sciCbPostBsfAuth the call back interface is null.");
            return;
        }
        SciSSConfAuthInfo.getInstance().setRand(bArr);
        SciSSConfAuth.AkaAuthParams akaAuthParams = new SciSSConfAuth.AkaAuthParams();
        akaAuthParams.setAuth(bArr2);
        akaAuthParams.setRand(bArr);
        sciSSConfAuth.triggerGBABootstrap(SciSSConfAuthInfo.getInstance().getGbaType(), akaAuthParams, 1);
    }

    public static void sciCbPostBsfResult(String str, String str2) {
        Log.i("SciSSConfCb", "sciCbPostBsfResult enter.");
        if (sciSSConfAuth == null) {
            Log.e("SciSSConfCb", "sciCbPostBsfResult the call back interface is null.");
            return;
        }
        SciSSConfAuth.GbaBpParams gbaBpParams = new SciSSConfAuth.GbaBpParams();
        gbaBpParams.setBtid(str);
        gbaBpParams.setLifeTime(str2);
        gbaBpParams.setRand(SciSSConfAuthInfo.getInstance().getRand());
        sciSSConfAuth.triggerGBABpUpdate(SciSSConfAuthInfo.getInstance().getGbaType(), gbaBpParams, 2);
    }

    public static boolean sciGetKsNaf(int i, byte[] bArr, int i2) {
        int continueSSConfService;
        Log.i("SciSSConfCb", "sciGetKsNaf enter.");
        boolean z = false;
        if (sciSSConfAuth == null) {
            Log.e("SciSSConfCb", "sciGetKsNaf the call back interface is null.");
            return false;
        }
        SciSSConfAuth.GbaResult gBAKsnaf = sciSSConfAuth.getGBAKsnaf(i, bArr);
        if (gBAKsnaf == null) {
            Log.e("SciSSConfCb", "sciGetKsNaf the gbaResult is null.");
            return false;
        }
        int status = gBAKsnaf.getStatus();
        if (gBAKsnaf.getKsnaf() == null) {
            Log.i("SciSSConfCb", "sciGetKsNaf the ks_naf is null.");
            gBAKsnaf.setKsnaf(new byte[0]);
        }
        switch (status) {
            case 0:
                Log.i("SciSSConfCb", "continueSSConfService with success.");
                continueSSConfService = SciSSConf.continueSSConfService(0, 0, status, gBAKsnaf.getBtid(), gBAKsnaf.getKsnaf());
                break;
            case 1:
                continueSSConfService = !sciTriggerGBAKsNAF(i, bArr) ? 1 : 0;
                break;
            case 2:
                startThread(bsfThread, "bsfthread");
                continueSSConfService = 0;
                break;
            case 3:
                if (i2 > 10) {
                    Log.e("SciSSConfCb", "sciGetKsNaf iResult=" + status);
                    return false;
                }
                return waitToGetGBAKsnaf(i, bArr, i2);
            default:
                Log.e("SciSSConfCb", "sciGetKsNaf iResult=" + status);
                return false;
        }
        if (continueSSConfService == 0) {
            z = true;
        }
        return z;
    }

    public static void sciSSConfCbPostResult(int i, int i2, int i3) {
        Log.i("SciSSConfCb", "sciSSConfCbPostResult enter.");
        if (callBack != null) {
            callBack.sciSSConfCbPostResult(i, i2, i3);
        } else {
            Log.e("SciSSConfCb", "sciSSConfCbPostResult the call back interface is null.");
        }
    }

    public static boolean sciTriggerGBAKsNAF(int i, byte[] bArr) {
        Log.i("SciSSConfCb", "sciTriggerGBAKsNAF enter.");
        String impi = SciSSConfAuthInfo.getInstance().getImpi();
        boolean z = false;
        if (impi == null) {
            Log.e("SciSSConfCb", "triggerGBAKsNAF the impi is null.");
            return false;
        }
        if (sciSSConfAuth.triggerGBAKsNAF(i, bArr, impi, 3) == 0) {
            z = true;
        }
        return z;
    }

    public static void setCallback(Callback callback) {
        callBack = callback;
    }

    public static void setSSConfAuth(SciSSConfAuth sciSSConfAuth2) {
        sciSSConfAuth = sciSSConfAuth2;
    }

    public static void startThread(Runnable runnable, String str) {
        new Thread(runnable, str).start();
    }

    private static boolean waitToGetGBAKsnaf(int i, byte[] bArr, int i2) {
        Log.i("SciSSConfCb", "waitTogetGBAKsnaf index=" + i2);
        Object obj = new Object();
        try {
            synchronized (obj) {
                obj.wait(1000L);
            }
        } catch (InterruptedException e) {
            Log.e("SciSSConfCb", "waitTogetGBAKsnaf InterruptedException.");
        }
        return sciGetKsNaf(i, bArr, i2 + 1);
    }
}
