package com.huawei.sci;

import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;

/* loaded from: SciSSConfAuth.class */
public abstract class SciSSConfAuth {
    private static final int AKA_ALGORITHM_SUCCESS = 0;
    private static final int AKA_ALGORITHM_SYNC_FAILURE = 1;
    public static final int GBABOOTSTRAP = 1;
    public static final int GBABPUPDATE = 2;
    public static final int GBAKSNAF = 3;

    /* loaded from: SciSSConfAuth$AkaAuthParams.class */
    public static class AkaAuthParams {
        private byte[] auth;
        private byte[] rand;

        public byte[] getAuth() {
            return this.auth;
        }

        public byte[] getRand() {
            return this.rand;
        }

        public void setAuth(byte[] bArr) {
            this.auth = bArr;
        }

        public void setRand(byte[] bArr) {
            this.rand = bArr;
        }
    }

    /* loaded from: SciSSConfAuth$AkaResult.class */
    public static class AkaResult {
        private byte[] akaData;
        private int status;

        public byte[] getAkaData() {
            return this.akaData;
        }

        public int getStatus() {
            return this.status;
        }

        public void setAkaData(byte[] bArr) {
            this.akaData = bArr;
        }

        public void setStatus(int i) {
            this.status = i;
        }
    }

    /* loaded from: SciSSConfAuth$CallBackData.class */
    public static class CallBackData {
        private Object asyncSign;
        private Object resultData;

        public Object getAsyncSign() {
            return this.asyncSign;
        }

        public Object getResultData() {
            return this.resultData;
        }

        public void setAsyncSign(Object obj) {
            this.asyncSign = obj;
        }

        public void setResultData(Object obj) {
            this.resultData = obj;
        }
    }

    /* loaded from: SciSSConfAuth$GbaBpParams.class */
    public static class GbaBpParams {
        private String btid;
        private String lifeTime;
        private byte[] rand;

        public String getBtid() {
            return this.btid;
        }

        public String getLifeTime() {
            return this.lifeTime;
        }

        public byte[] getRand() {
            return this.rand;
        }

        public void setBtid(String str) {
            this.btid = str;
        }

        public void setLifeTime(String str) {
            this.lifeTime = str;
        }

        public void setRand(byte[] bArr) {
            this.rand = bArr;
        }
    }

    /* loaded from: SciSSConfAuth$GbaResult.class */
    public static class GbaResult {
        private String btid = null;
        private byte[] ksnaf;
        private int status;

        public String getBtid() {
            return this.btid;
        }

        public byte[] getKsnaf() {
            return this.ksnaf;
        }

        public int getStatus() {
            return this.status;
        }

        public void setBtid(String str) {
            this.btid = str;
        }

        public void setKsnaf(byte[] bArr) {
            this.ksnaf = bArr;
        }

        public void setStatus(int i) {
            this.status = i;
        }
    }

    private boolean procAkaResult(CallBackData callBackData) {
        boolean z = false;
        if (!(callBackData.getResultData() instanceof AkaResult)) {
            Log.e("SciSSConfAuth", "procAkaResult the AkaResult is error.");
            return false;
        }
        AkaResult akaResult = (AkaResult) callBackData.getResultData();
        int status = akaResult.getStatus();
        byte[] bArr = null;
        byte[] bArr2 = null;
        switch (status) {
            case 0:
                bArr = akaResult.getAkaData();
                break;
            case 1:
                bArr2 = akaResult.getAkaData();
                break;
            default:
                Log.i("SciSSConfAuth", "procAkaResult operate failed.");
                break;
        }
        byte[] bArr3 = bArr;
        if (bArr == null) {
            bArr3 = new byte[0];
        }
        byte[] bArr4 = bArr2;
        if (bArr2 == null) {
            bArr4 = new byte[0];
        }
        Log.i("SciSSConfAuth", "continueConfWithAuth: iResult=" + status);
        if (SciSSConf.continueConfWithAuth(0, 0, status, bArr3, bArr4) == 0) {
            z = true;
        }
        return z;
    }

    public void callBack(CallBackData callBackData) {
        boolean procAkaResult;
        Log.i("SciSSConfAuth", "callBack enter.");
        if (callBackData == null) {
            Log.e("SciSSConfAuth", "callBackData is null.");
        } else if (!(callBackData.getAsyncSign() instanceof Integer)) {
            Log.e("SciSSConfAuth", "callBackData the asyncSign is error.");
        } else {
            int gbaType = SciSSConfAuthInfo.getInstance().getGbaType();
            byte[] naf_id = SciSSConfAuthInfo.getInstance().getNaf_id();
            switch (((Integer) callBackData.getAsyncSign()).intValue()) {
                case 1:
                    procAkaResult = procAkaResult(callBackData);
                    break;
                case 2:
                    procAkaResult = SciSSConfCb.sciTriggerGBAKsNAF(gbaType, naf_id);
                    break;
                case 3:
                    procAkaResult = SciSSConfCb.sciGetKsNaf(gbaType, naf_id, 1);
                    break;
                default:
                    Log.e("SciSSConfAuth", "callBackData the asyncSign is error.");
                    return;
            }
            if (procAkaResult) {
                return;
            }
            Log.e("SciSSConfAuth", "continueSSConfService with failed.");
            SciSSConf.continueSSConfService(0, 0, 1, HwImsConfigImpl.NULL_STRING_VALUE, new byte[0]);
        }
    }

    public abstract int deleteGBAKsnaf(int i, byte[] bArr);

    public abstract GbaResult getGBAKsnaf(int i, byte[] bArr);

    public abstract int triggerGBABootstrap(int i, AkaAuthParams akaAuthParams, Object obj);

    public abstract int triggerGBABpUpdate(int i, GbaBpParams gbaBpParams, Object obj);

    public abstract int triggerGBAKsNAF(int i, byte[] bArr, String str, Object obj);
}
