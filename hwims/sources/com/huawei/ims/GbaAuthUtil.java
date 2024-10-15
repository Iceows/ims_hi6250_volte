package com.huawei.ims;

import com.huawei.ims.GbaAuth;
import com.huawei.sci.SciSSConfAuth;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class GbaAuthUtil extends SciSSConfAuth {
    private static final String LOG_TAG = "GbaAuthUtil";
    private final GbaAuth mGbaAuth;
    private final Object mLock = new Object();

    public GbaAuthUtil(GbaAuth gbaAuth) {
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
        int triggerGbaBootstrap;
        if (akaParams == null) {
            return 1;
        }
        synchronized (this.mLock) {
            triggerGbaBootstrap = this.mGbaAuth.triggerGbaBootstrap(gbaType, akaParams.getRand(), akaParams.getAuth(), asyncSign);
        }
        return triggerGbaBootstrap;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBABpUpdate(int gbaType, SciSSConfAuth.GbaBpParams gbaParams, Object asyncSign) {
        int triggerGbaBpUpdate;
        if (gbaParams == null) {
            return 1;
        }
        synchronized (this.mLock) {
            triggerGbaBpUpdate = this.mGbaAuth.triggerGbaBpUpdate(gbaType, gbaParams.getRand(), this.mGbaAuth.stringUtf8ToBytes(gbaParams.getBtid()), gbaParams.getLifeTime(), asyncSign);
        }
        return triggerGbaBpUpdate;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int triggerGBAKsNAF(int gbaType, byte[] nafId, String impi, Object asyncSign) {
        int triggerGbaKsNaf;
        synchronized (this.mLock) {
            triggerGbaKsNaf = this.mGbaAuth.triggerGbaKsNaf(gbaType, nafId, this.mGbaAuth.stringUtf8ToBytes(impi), asyncSign);
        }
        return triggerGbaKsNaf;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public SciSSConfAuth.GbaResult getGBAKsnaf(int gbaType, byte[] nafId) {
        SciSSConfAuth.GbaResult ret;
        synchronized (this.mLock) {
            ret = new SciSSConfAuth.GbaResult();
            synchronized (this.mGbaAuth) {
                GbaAuth.GbaResult authRet = this.mGbaAuth.getGbaKsNaf(gbaType, nafId);
                ret.setBtid(authRet.mBtid);
                ret.setKsnaf(authRet.mKsnaf);
                ret.setStatus(authRet.mStatus);
            }
        }
        return ret;
    }

    @Override // com.huawei.sci.SciSSConfAuth
    public int deleteGBAKsnaf(int gbaType, byte[] nafId) {
        int deleteGbaKsnaf;
        synchronized (this.mLock) {
            deleteGbaKsnaf = this.mGbaAuth.deleteGbaKsnaf(gbaType, nafId);
        }
        return deleteGbaKsnaf;
    }
}
