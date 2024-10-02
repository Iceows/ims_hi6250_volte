package com.huawei.sci;

import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.sci.SciSSConfAuth;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface Callback {
        void sciBsfCbPostResult(String str, String str2);

        void sciSSConfCbPostResult(int i, int i2, int i3);
    }

    public static void startThread(Runnable runnable, String name) {
        new Thread(runnable, name).start();
    }

    public static void setCallback(Callback c) {
        callBack = c;
    }

    public static void setSSConfAuth(SciSSConfAuth ssconfAuth) {
        sciSSConfAuth = ssconfAuth;
    }

    public static void sciSSConfCbPostResult(int ssType, int opType, int status) {
        Log.i("SciSSConfCb", "sciSSConfCbPostResult enter.");
        if (callBack != null) {
            callBack.sciSSConfCbPostResult(ssType, opType, status);
        } else {
            Log.e("SciSSConfCb", "sciSSConfCbPostResult the call back interface is null.");
        }
    }

    public static void sciCbPostAuthReq(int gbaType, byte[] naf_id, boolean forceGba) {
        Log.i("SciSSConfCb", "sciCbPostAuthReq enter.");
        SciSSConfAuthInfo.getInstance().setGbaType(gbaType);
        SciSSConfAuthInfo.getInstance().setNaf_id(naf_id);
        if (forceGba && sciSSConfAuth != null && sciSSConfAuth.deleteGBAKsnaf(gbaType, naf_id) != 0) {
            Log.e("SciSSConfCb", "deleteGBAKsnaf  failed.");
        }
        if (!sciGetKsNaf(gbaType, naf_id, 1)) {
            Log.e("SciSSConfCb", "continueSSConfService with failed.");
            SciSSConf.continueSSConfService(0, 0, 1, HwImsConfigImpl.NULL_STRING_VALUE, new byte[0]);
        }
    }

    public static boolean sciGetKsNaf(int i, byte[] bArr, int i2) {
        Log.i("SciSSConfCb", "sciGetKsNaf enter.");
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
        int i3 = 0;
        if (gBAKsnaf.getKsnaf() == null) {
            Log.i("SciSSConfCb", "sciGetKsNaf the ks_naf is null.");
            gBAKsnaf.setKsnaf(new byte[0]);
        }
        switch (status) {
            case 0:
                Log.i("SciSSConfCb", "continueSSConfService with success.");
                i3 = SciSSConf.continueSSConfService(0, 0, status, gBAKsnaf.getBtid(), gBAKsnaf.getKsnaf());
                break;
            case 1:
                i3 = !sciTriggerGBAKsNAF(i, bArr) ? 1 : 0;
                break;
            case 2:
                startThread(bsfThread, "bsfthread");
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
        return i3 == 0;
    }

    public static boolean sciTriggerGBAKsNAF(int gbaType, byte[] naf_id) {
        Log.i("SciSSConfCb", "sciTriggerGBAKsNAF enter.");
        String impi = SciSSConfAuthInfo.getInstance().getImpi();
        if (impi != null) {
            return sciSSConfAuth.triggerGBAKsNAF(gbaType, naf_id, impi, 3) == 0;
        }
        Log.e("SciSSConfCb", "triggerGBAKsNAF the impi is null.");
        return false;
    }

    private static boolean waitToGetGBAKsnaf(int gbaType, byte[] naf_id, int times) {
        Log.i("SciSSConfCb", "waitTogetGBAKsnaf index=" + times);
        Object lockObject = new Object();
        try {
            synchronized (lockObject) {
                lockObject.wait(1000L);
            }
        } catch (InterruptedException e) {
            Log.e("SciSSConfCb", "waitTogetGBAKsnaf InterruptedException.");
        }
        return sciGetKsNaf(gbaType, naf_id, times + 1);
    }

    public static void sciCbPostBsfAuth(byte[] rand, byte[] autn) {
        Log.i("SciSSConfCb", "sciCbPostBsfAuth enter.");
        if (sciSSConfAuth == null) {
            Log.e("SciSSConfCb", "sciCbPostBsfAuth the call back interface is null.");
            return;
        }
        SciSSConfAuthInfo.getInstance().setRand(rand);
        SciSSConfAuth.AkaAuthParams akaParams = new SciSSConfAuth.AkaAuthParams();
        akaParams.setAuth(autn);
        akaParams.setRand(rand);
        int gbaType = SciSSConfAuthInfo.getInstance().getGbaType();
        sciSSConfAuth.triggerGBABootstrap(gbaType, akaParams, 1);
    }

    public static void sciCbPostBsfResult(String btid, String lifeTime) {
        Log.i("SciSSConfCb", "sciCbPostBsfResult enter.");
        if (sciSSConfAuth == null) {
            Log.e("SciSSConfCb", "sciCbPostBsfResult the call back interface is null.");
            return;
        }
        SciSSConfAuth.GbaBpParams gbaParams = new SciSSConfAuth.GbaBpParams();
        gbaParams.setBtid(btid);
        gbaParams.setLifeTime(lifeTime);
        gbaParams.setRand(SciSSConfAuthInfo.getInstance().getRand());
        int gbaType = SciSSConfAuthInfo.getInstance().getGbaType();
        sciSSConfAuth.triggerGBABpUpdate(gbaType, gbaParams, 2);
    }
}
