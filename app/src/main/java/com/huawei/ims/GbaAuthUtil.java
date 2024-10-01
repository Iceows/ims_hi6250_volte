package com.huawei.ims;

import com.huawei.ims.GbaAuth;
import com.huawei.sci.SciSSConfAuth;

public class GbaAuthUtil extends SciSSConfAuth {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "GbaAuthUtil";
    private GbaAuth mGbaAuth;
    private final Object mLock = new Object();

    public GbaAuthUtil(GbaAuth gbaAuth) {
        this.mGbaAuth = null;
        this.mGbaAuth = gbaAuth;
    }

    public void callBack(GbaAuth.AkaResult result, Object asyncSign) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData data = new SciSSConfAuth.CallBackData();
            SciSSConfAuth.AkaResult aka = new SciSSConfAuth.AkaResult();
            synchronized (this.mGbaAuth) {
                aka.setStatus(result.mStatus.getValue());
                if (result.mAkaData != null) {
                    aka.setAkaData(result.mAkaData.mValue);
                }
                data.setAsyncSign(asyncSign);
                data.setResultData(aka);
                callBack(data);
            }
        }
    }

    public void callBack(GbaAuth.BtidElem btid, Object asyncSign) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData data = new SciSSConfAuth.CallBackData();
            synchronized (this.mGbaAuth) {
                data.setAsyncSign(asyncSign);
                callBack(data);
            }
        }
    }

    public void callBack(GbaAuth.KsNafElem ksNaf, Object asyncSign) {
        synchronized (this.mLock) {
            SciSSConfAuth.CallBackData data = new SciSSConfAuth.CallBackData();
            synchronized (this.mGbaAuth) {
                data.setAsyncSign(asyncSign);
                callBack(data);
            }
        }
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBABootstrap(int gbaType, SciSSConfAuth.AkaAuthParams akaParams, Object asyncSign) {
        int triggerGBABootstrap;
        synchronized (this.mLock) {
            triggerGBABootstrap = this.mGbaAuth.triggerGBABootstrap(gbaType, akaParams.getRand(), akaParams.getAuth(), asyncSign);
        }
        return triggerGBABootstrap;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBABpUpdate(int gbaType, SciSSConfAuth.GbaBpParams gbaParams, Object asyncSign) {
        int triggerGBABpUpdate;
        synchronized (this.mLock) {
            triggerGBABpUpdate = this.mGbaAuth.triggerGBABpUpdate(gbaType, gbaParams.getRand(), this.mGbaAuth.stringUtf8ToBytes(gbaParams.getBtid()), gbaParams.getLifeTime(), asyncSign);
        }
        return triggerGBABpUpdate;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBAKsNAF(int gbaType, byte[] naf_id, String impi, Object asyncSign) {
        int triggerGBAKsNAF;
        synchronized (this.mLock) {
            triggerGBAKsNAF = this.mGbaAuth.triggerGBAKsNAF(gbaType, naf_id, this.mGbaAuth.stringUtf8ToBytes(impi), asyncSign);
        }
        return triggerGBAKsNAF;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public SciSSConfAuth.GbaResult getGBAKsnaf(int gbaType, byte[] naf_id) {
        SciSSConfAuth.GbaResult ret;
        synchronized (this.mLock) {
            ret = new SciSSConfAuth.GbaResult();
            synchronized (this.mGbaAuth) {
                GbaAuth.GbaResult authRet = this.mGbaAuth.getGBAKsnaf(gbaType, naf_id);
                ret.setBtid(authRet.btid);
                ret.setKsnaf(authRet.ksnaf);
                ret.setStatus(authRet.status);
            }
        }
        return ret;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int deleteGBAKsnaf(int gbaType, byte[] naf_id) {
        int deleteGBAKsnaf;
        synchronized (this.mLock) {
            deleteGBAKsnaf = this.mGbaAuth.deleteGBAKsnaf(gbaType, naf_id);
        }
        return deleteGBAKsnaf;
    }
}
