package com.huawei.sci;

import android.util.Log;
import com.huawei.sci.SciSSConfAuth;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciSSConfCb {
    private static Callback callBack = null;
    private static SciSSConfAuth sciSSConfAuth = null;
    private static int bsfSearchResult = 0;
    private static final Object BSF_LOCK = new Object();
    private static Runnable bsfThread = new Runnable() { // from class: com.huawei.sci.SciSSConfCb.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (SciSSConfCb.BSF_LOCK) {
                int unused = SciSSConfCb.bsfSearchResult = SciSSConf.startBsfAuthRequest();
                if (SciSSConfCb.bsfSearchResult != 0) {
                    Log.i("SciSSConfCb", "run startBsfAuthRequest ret=[" + SciSSConfCb.bsfSearchResult + "].");
                }
            }
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface Callback {
        void sciBsfCbPostResult(String str, String str2);

        void sciSSConfCbPostResult(int i, int i2, int i3);
    }

    public static void startThread(Runnable runnable, String name) {
        new Thread(runnable, name).start();
    }

    public static void setCallback(Callback cb) {
        callBack = cb;
    }

    public static void setSSConfAuth(SciSSConfAuth ssconfAuth) {
        sciSSConfAuth = ssconfAuth;
    }

    public static void sciSSConfCbPostResult(int ssType, int opType, int status) {
        Log.i("SciSSConfCb", "sciSSConfCbPostResult enter.");
        Callback callback = callBack;
        if (callback == null) {
            Log.e("SciSSConfCb", "sciSSConfCbPostResult the call back interface is null.");
        } else {
            callback.sciSSConfCbPostResult(ssType, opType, status);
        }
    }

    public static void sciCbPostAuthReq(int gbaType, byte[] nafId, boolean isForceGba) {
        SciSSConfAuth sciSSConfAuth2;
        Log.i("SciSSConfCb", "sciCbPostAuthReq enter.");
        SciSSConfAuthInfo.getInstance().setGbaType(gbaType);
        SciSSConfAuthInfo.getInstance().setNafId(nafId);
        if (isForceGba && (sciSSConfAuth2 = sciSSConfAuth) != null && sciSSConfAuth2.deleteGBAKsnaf(gbaType, nafId) != 0) {
            Log.e("SciSSConfCb", "deleteGBAKsnaf  failed.");
        }
        if (!sciGetKsNaf(gbaType, nafId, 1)) {
            Log.e("SciSSConfCb", "continueSSConfService with failed.");
            SciSSConf.continueSSConfService(1, "", new byte[0]);
        }
    }

    public static boolean sciGetKsNaf(int i, byte[] bArr, int i2) {
        Log.i("SciSSConfCb", "sciGetKsNaf enter.");
        SciSSConfAuth sciSSConfAuth2 = sciSSConfAuth;
        if (sciSSConfAuth2 == null) {
            Log.e("SciSSConfCb", "sciGetKsNaf the call back interface is null.");
            return false;
        }
        SciSSConfAuth.GbaResult gBAKsnaf = sciSSConfAuth2.getGBAKsnaf(i, bArr);
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
        if (status == 0) {
            Log.i("SciSSConfCb", "continueSSConfService with success.");
            i3 = SciSSConf.continueSSConfService(status, gBAKsnaf.getBtid(), gBAKsnaf.getKsnaf());
        } else if (status == 1) {
            i3 = !sciTriggerGBAKsNAF(i, bArr) ? 1 : 0;
        } else {
            if (status != 2) {
                if (status == 3) {
                    if (i2 > 10) {
                        Log.e("SciSSConfCb", "sciGetKsNaf result = 0");
                        return false;
                    }
                    return waitToGetGBAKsnaf(i, bArr, i2);
                }
                Log.e("SciSSConfCb", "sciGetKsNaf result = 0");
                return false;
            }
            startThread(bsfThread, "bsfthread");
        }
        return i3 == 0;
    }

    public static boolean sciTriggerGBAKsNAF(int gbaType, byte[] nafId) {
        Log.i("SciSSConfCb", "sciTriggerGBAKsNAF enter.");
        String impi = SciSSConfAuthInfo.getInstance().getImpi();
        if (impi != null) {
            return sciSSConfAuth.triggerGBAKsNAF(gbaType, nafId, impi, 3) == 0;
        }
        Log.e("SciSSConfCb", "triggerGBAKsNAF the impi is null.");
        return false;
    }

    private static boolean waitToGetGBAKsnaf(int gbaType, byte[] nafId, int times) {
        Log.i("SciSSConfCb", "waitTogetGBAKsnaf index=" + times);
        Object lockObject = new Object();
        try {
            synchronized (lockObject) {
                lockObject.wait(1000L);
            }
        } catch (InterruptedException e) {
            Log.e("SciSSConfCb", "waitTogetGBAKsnaf InterruptedException.");
        }
        return sciGetKsNaf(gbaType, nafId, times + 1);
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
