package com.huawei.ims;

import com.huawei.ims.GbaAuth;
import com.huawei.sci.SciSSConfAuth;

/* loaded from: GbaAuthUtil.class */
public class GbaAuthUtil extends SciSSConfAuth {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "GbaAuthUtil";
    private GbaAuth mGbaAuth;
    private final Object mLock = new Object();

    public GbaAuthUtil(GbaAuth gbaAuth) {
        this.mGbaAuth = null;
        this.mGbaAuth = gbaAuth;
    }

    public void callBack(GbaAuth.AkaResult akaResult, Object obj) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData callBackData = new SciSSConfAuth.CallBackData();
            SciSSConfAuth.AkaResult akaResult2 = new SciSSConfAuth.AkaResult();
            synchronized (this.mGbaAuth) {
                akaResult2.setStatus(akaResult.mStatus.getValue());
                if (akaResult.mAkaData != null) {
                    akaResult2.setAkaData(akaResult.mAkaData.mValue);
                }
                callBackData.setAsyncSign(obj);
                callBackData.setResultData(akaResult2);
                callBack(callBackData);
            }
        }
    }

    public void callBack(GbaAuth.BtidElem btidElem, Object obj) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData callBackData = new SciSSConfAuth.CallBackData();
            synchronized (this.mGbaAuth) {
                callBackData.setAsyncSign(obj);
                callBack(callBackData);
            }
        }
    }

    public void callBack(GbaAuth.KsNafElem ksNafElem, Object obj) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData callBackData = new SciSSConfAuth.CallBackData();
            synchronized (this.mGbaAuth) {
                callBackData.setAsyncSign(obj);
                callBack(callBackData);
            }
        }
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int deleteGBAKsnaf(int i, byte[] bArr) {
        int deleteGBAKsnaf;
        synchronized (this.mLock) {
            deleteGBAKsnaf = this.mGbaAuth.deleteGBAKsnaf(i, bArr);
        }
        return deleteGBAKsnaf;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public SciSSConfAuth.GbaResult getGBAKsnaf(int i, byte[] bArr) {
        SciSSConfAuth.GbaResult gbaResult;
        synchronized (this.mLock) {
            gbaResult = new SciSSConfAuth.GbaResult();
            synchronized (this.mGbaAuth) {
                GbaAuth.GbaResult gBAKsnaf = this.mGbaAuth.getGBAKsnaf(i, bArr);
                gbaResult.setBtid(gBAKsnaf.btid);
                gbaResult.setKsnaf(gBAKsnaf.ksnaf);
                gbaResult.setStatus(gBAKsnaf.status);
            }
        }
        return gbaResult;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBABootstrap(int i, SciSSConfAuth.AkaAuthParams akaAuthParams, Object obj) {
        int triggerGBABootstrap;
        synchronized (this.mLock) {
            triggerGBABootstrap = this.mGbaAuth.triggerGBABootstrap(i, akaAuthParams.getRand(), akaAuthParams.getAuth(), obj);
        }
        return triggerGBABootstrap;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBABpUpdate(int i, SciSSConfAuth.GbaBpParams gbaBpParams, Object obj) {
        int triggerGBABpUpdate;
        synchronized (this.mLock) {
            triggerGBABpUpdate = this.mGbaAuth.triggerGBABpUpdate(i, gbaBpParams.getRand(), this.mGbaAuth.stringUtf8ToBytes(gbaBpParams.getBtid()), gbaBpParams.getLifeTime(), obj);
        }
        return triggerGBABpUpdate;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBAKsNAF(int i, byte[] bArr, String str, Object obj) {
        int triggerGBAKsNAF;
        synchronized (this.mLock) {
            triggerGBAKsNAF = this.mGbaAuth.triggerGBAKsNAF(i, bArr, this.mGbaAuth.stringUtf8ToBytes(str), obj);
        }
        return triggerGBAKsNAF;
    }
}
