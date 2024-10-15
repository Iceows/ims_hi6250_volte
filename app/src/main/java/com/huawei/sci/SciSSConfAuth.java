package com.huawei.sci;

import android.util.Log;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public abstract class SciSSConfAuth {
    private static final int AKA_ALGORITHM_SUCCESS = 0;
    private static final int AKA_ALGORITHM_SYNC_FAILURE = 1;
    public static final int GBABOOTSTRAP = 1;
    public static final int GBABPUPDATE = 2;
    public static final int GBAKSNAF = 3;

    public abstract int deleteGBAKsnaf(int i, byte[] bArr);

    public abstract GbaResult getGBAKsnaf(int i, byte[] bArr);

    public abstract int triggerGBABootstrap(int i, AkaAuthParams akaAuthParams, Object obj);

    public abstract int triggerGBABpUpdate(int i, GbaBpParams gbaBpParams, Object obj);

    public abstract int triggerGBAKsNAF(int i, byte[] bArr, String str, Object obj);

    public void callBack(CallBackData callBackData) {
        boolean isSuccess;
        Log.i("SciSSConfAuth", "callBack enter.");
        if (callBackData == null) {
            Log.e("SciSSConfAuth", "callBackData is null.");
            return;
        }
        if (!(callBackData.getAsyncSign() instanceof Integer)) {
            Log.e("SciSSConfAuth", "callBackData the asyncSign is error.");
            return;
        }
        int gbaType = SciSSConfAuthInfo.getInstance().getGbaType();
        byte[] nafId = SciSSConfAuthInfo.getInstance().getNafId();
        int intValue = ((Integer) callBackData.getAsyncSign()).intValue();
        if (intValue == 1) {
            isSuccess = procAkaResult(callBackData);
        } else if (intValue == 2) {
            isSuccess = SciSSConfCb.sciTriggerGBAKsNAF(gbaType, nafId);
        } else if (intValue == 3) {
            isSuccess = SciSSConfCb.sciGetKsNaf(gbaType, nafId, 1);
        } else {
            Log.e("SciSSConfAuth", "callBackData the asyncSign is error.");
            return;
        }
        if (!isSuccess) {
            Log.e("SciSSConfAuth", "continueSSConfService with failed.");
            SciSSConf.continueSSConfService(1, "", new byte[0]);
        }
    }

    private boolean procAkaResult(CallBackData callBackData) {
        if (!(callBackData.getResultData() instanceof AkaResult)) {
            Log.e("SciSSConfAuth", "procAkaResult the AkaResult is error.");
            return false;
        }
        AkaResult akaResult = (AkaResult) callBackData.getResultData();
        int result = akaResult.getStatus();
        byte[] res = null;
        byte[] auts = null;
        if (result != 0) {
            if (result == 1) {
                auts = akaResult.getAkaData();
            } else {
                Log.i("SciSSConfAuth", "procAkaResult operate failed.");
            }
        } else {
            res = akaResult.getAkaData();
        }
        if (res == null) {
            res = new byte[0];
        }
        if (auts == null) {
            auts = new byte[0];
        }
        Log.i("SciSSConfAuth", "continueConfWithAuth: result=" + result);
        return SciSSConf.continueConfWithAuth(result, res, auts) == 0;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AkaAuthParams {
        private byte[] auth;
        private byte[] rand;

        public byte[] getRand() {
            return this.rand;
        }

        public void setRand(byte[] rand) {
            this.rand = rand;
        }

        public byte[] getAuth() {
            return this.auth;
        }

        public void setAuth(byte[] auth) {
            this.auth = auth;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AkaResult {
        private byte[] akaData;
        private int status;

        public int getStatus() {
            return this.status;
        }

        public void setStatus(int status) {
            this.status = status;
        }

        public byte[] getAkaData() {
            return this.akaData;
        }

        public void setAkaData(byte[] akaData) {
            this.akaData = akaData;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class GbaBpParams {
        private String btid;
        private String lifeTime;
        private byte[] rand;

        public byte[] getRand() {
            return this.rand;
        }

        public void setRand(byte[] rand) {
            this.rand = rand;
        }

        public String getBtid() {
            return this.btid;
        }

        public void setBtid(String btid) {
            this.btid = btid;
        }

        public String getLifeTime() {
            return this.lifeTime;
        }

        public void setLifeTime(String lifeTime) {
            this.lifeTime = lifeTime;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class GbaResult {
        private String btid = null;
        private byte[] ksnaf;
        private int status;

        public int getStatus() {
            return this.status;
        }

        public void setStatus(int status) {
            this.status = status;
        }

        public String getBtid() {
            return this.btid;
        }

        public void setBtid(String btid) {
            this.btid = btid;
        }

        public byte[] getKsnaf() {
            return this.ksnaf;
        }

        public void setKsnaf(byte[] ksnaf) {
            this.ksnaf = ksnaf;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class CallBackData {
        private Object asyncSign;
        private Object resultData;

        public Object getAsyncSign() {
            return this.asyncSign;
        }

        public void setAsyncSign(Object asyncSign) {
            this.asyncSign = asyncSign;
        }

        public Object getResultData() {
            return this.resultData;
        }

        public void setResultData(Object resultData) {
            this.resultData = resultData;
        }
    }
}
