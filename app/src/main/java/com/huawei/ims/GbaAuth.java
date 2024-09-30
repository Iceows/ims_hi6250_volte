package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import android.util.Base64;
import com.android.internal.util.HexDump;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class GbaAuth extends Handler {
    public static final int AUTH_RESP_FAIL = 1;
    public static final int AUTH_RESP_SUCCESS = 0;
    public static final int AUTH_RESP_SYNC_FAIL = 2;
    public static final int AUTH_RESP_UNSUPPORTED = 3;
    private static final boolean DEBUG = false;
    public static final int DEFAULT_LIFETIME_IN_MINUTE = 30;
    public static final int EFAIL = 1;
    public static final int EVENT_NOTIFY_BP_UPDATE = 7;
    public static final int EVENT_NOTIFY_GBA_KSNAF = 8;
    public static final int EVENT_NOTIFY_UICC_AUTH = 6;
    public static final int EVENT_REQUEST_GET_UICC_FILE_DONE = 4;
    public static final int EVENT_REQUEST_UICC_AUTH_DONE = 1;
    public static final int EVENT_REQUEST_UICC_BOOTSTRAP_DONE = 2;
    public static final int EVENT_REQUEST_UICC_FILE_UPDATE_DONE = 3;
    public static final int EVENT_REQUEST_UICC_KS_NAF_DONE = 5;
    public static final int GBA_LIFETIME_PROTECT_IN_MINUTE = 5;
    public static final int GBA_ME = 0;
    public static final int GBA_U = 1;
    private static final String LOG_TAG = "GbaAuth";
    private static int MAX_AUTH_COUNTS = 4;
    private static int MAX_BOOTSTRAP_COUNTS = 4;
    public static final int SUCCESS = 0;
    private ImsRIL mCm;
    private GbaAuthUtil mGbaAuthUtil;
    private boolean mKsnafEncodedByBase64;
    private int mSubId;
    private HashMap<String, BtidElem> mBtidTable = new HashMap<>();
    private HashMap<String, KsNafElem> mKsNafTable = new HashMap<>();
    private HashMap<String, Integer> mAuthCountsTable = new HashMap<>();
    private HashMap<String, Integer> mBootstrapCountsTable = new HashMap<>();
    private BtidElem mCurrBTid = null;
    private Object mAsyncSign = null;
    private GbaStatus mGbaStatus = GbaStatus.GBA_NULL;
    private String mNafIdHexString = null;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class AuthResp {
        Object mResp;
        int mStatus;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class AuthRespChallenge {
        DataValue mCk;
        DataValue mIk;
        DataValue mRes;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class AuthSyncfail {
        DataValue mAuts;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class DataValue {
        int mPresent;
        byte[] mValue;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum GbaStatus {
        GBA_NULL,
        GBA_BOOTSTRAP,
        GBA_BP_UPDATE,
        GBA_DERIVATION,
        GBA_DONE
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    enum UiccGbaType {
        USIM_GBA,
        ISIM_GBA
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class BtidElem {
        byte[] mBTid;
        byte[] mKs;
        Date mLifeTime;
        byte[] mRand;
        int mType;
        boolean mbUsed;

        BtidElem() {
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class KsNafElem {
        byte[] mBTid;
        byte[] mKsNaf;
        byte[] mNafId;
        int mType;

        KsNafElem() {
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum AKA_ALGORITHM_STATUS {
        AKA_ALGORITHM_SUCCESS(0),
        AKA_ALGORITHM_SYNC_FAILURE(1),
        AKA_ALGORITHM_FAILURE(2);
        
        final int native_int;

        AKA_ALGORITHM_STATUS(int value) {
            this.native_int = value;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum KSNAF_STATE {
        KSNAF_VALID(0),
        KSNAF_INVALID_AND_NEED_DERIVATION(1),
        KSNAF_INVALID_AND_NEED_BOOTSTRAP(2),
        KSNAF_INVALID_AND_IS_COMPUTING(3);
        
        final int native_int;

        KSNAF_STATE(int value) {
            this.native_int = value;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class AkaResult {
        DataValue mAkaData;
        AKA_ALGORITHM_STATUS mStatus;

        AkaResult() {
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class GbaResult {
        String btid;
        byte[] ksnaf;
        int status;

        GbaResult() {
        }
    }

    public GbaAuth(ImsRIL cm, HwImsConfigImpl imsConfigImpl, int subId) {
        this.mCm = null;
        this.mGbaAuthUtil = null;
        this.mSubId = -1;
        this.mKsnafEncodedByBase64 = false;
        this.mCm = cm;
        this.mGbaAuthUtil = new GbaAuthUtil(this);
        this.mSubId = subId;
        if (imsConfigImpl != null) {
            this.mKsnafEncodedByBase64 = imsConfigImpl.isUtKsnafEncodedByBase64();
        }
    }

    public synchronized GbaAuthUtil getGbaAuthUtil() {
        return this.mGbaAuthUtil;
    }

    public synchronized byte[] stringUtf8ToBytes(String str) {
        byte[] ret = null;
        if (str == null) {
            return null;
        }
        try {
            ret = str.getBytes("UTF-8");
        } catch (Exception e) {
            loge("stringUtf8ToBytes Exception e=" + e);
        }
        return ret;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        AuthResp resp;
        logd("handleMessage what=" + msg.what);
        switch (msg.what) {
            case 1:
                AsyncResult ar = (AsyncResult) msg.obj;
                if (ar.exception == null && ar.result != null) {
                    resp = (AuthResp) ar.result;
                } else {
                    logd("EVENT_REQUEST_UICC_AUTH_DONE err");
                    resp = new AuthResp();
                    resp.mStatus = 1;
                }
                handleUiccAuthDone(resp);
                return;
            case 2:
                handleUiccAuthDone((AuthResp) msg.obj);
                return;
            case 3:
            case 4:
            case 5:
                return;
            case 6:
                notifyUiccAuth((AkaResult) msg.obj);
                return;
            case 7:
                notifyBpUpdate((BtidElem) msg.obj);
                return;
            case 8:
                notifyKsNaf((KsNafElem) msg.obj);
                return;
            default:
                super.handleMessage(msg);
                return;
        }
    }

    public synchronized int triggerGBABootstrap(int gbaType, byte[] rand, byte[] auth, Object asyncSign) {
        logd("enter triggerGBABootstrap gbaType=" + gbaType + ", asyncSign=" + asyncSign + ", rand=" + hiddenPrivacyByteInfo(rand) + ", auth=" + hiddenPrivacyByteInfo(auth));
        this.mGbaStatus = GbaStatus.GBA_BOOTSTRAP;
        this.mAsyncSign = asyncSign;
        this.mCurrBTid = new BtidElem();
        this.mCurrBTid.mType = gbaType;
        this.mCurrBTid.mbUsed = false;
        if (gbaType == 0) {
            this.mCm.requestUiccAuth(rand, auth, obtainMessage(1, asyncSign));
        } else {
            this.mCm.requestUiccGbaBootstrap(rand, auth, obtainMessage(2, asyncSign));
        }
        logd("leave triggerGBABootstrap");
        return 0;
    }

    public synchronized int triggerGBABpUpdate(int gbaType, byte[] rand, byte[] btid, String lifetime, Object asyncSign) {
        logd("enter triggerGBABpUpdate, gbaType=" + gbaType + ", lifetime=" + lifetime + ", asyncSign=" + asyncSign + ", rand=" + hiddenPrivacyByteInfo(rand) + ", btid=" + hiddenPrivacyByteInfo(btid));
        this.mGbaStatus = GbaStatus.GBA_BP_UPDATE;
        this.mAsyncSign = asyncSign;
        this.mCurrBTid.mType = gbaType;
        this.mCurrBTid.mBTid = btid;
        this.mCurrBTid.mRand = rand;
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            df.setTimeZone(TimeZone.getTimeZone("UTC"));
            this.mCurrBTid.mLifeTime = df.parse(lifetime);
            Date expectLifeTime = df.parse(lifetime);
            expectLifeTime.setMinutes(expectLifeTime.getMinutes() - 5);
            if (!isTimeout(expectLifeTime)) {
                this.mCurrBTid.mLifeTime.setMinutes(this.mCurrBTid.mLifeTime.getMinutes() - 5);
            } else {
                logd("enter triggerGBABpUpdate, expect lifeTime is timeout, use the lifetime from nework");
            }
        } catch (Exception e) {
            loge("[error] " + e);
        }
        if (this.mCurrBTid.mLifeTime == null) {
            Date currDate = new Date();
            currDate.setMinutes(currDate.getMinutes() + 30);
            this.mCurrBTid.mLifeTime = currDate;
            logd("can not parse the lifetime. set lifetime = " + this.mCurrBTid.mLifeTime);
        }
        if (gbaType == 0) {
            restoreBtid(HexDump.toHexString(btid), this.mCurrBTid);
            Message msg = obtainMessage(7, this.mCurrBTid);
            sendMessage(msg);
            logd("leave triggerGBABpUpdate");
            return 0;
        }
        logd("leave triggerGBABpUpdate");
        return 1;
    }

    public synchronized int triggerGBAKsNAF(int gbaType, byte[] nafId, byte[] impi, Object asyncSign) {
        logd("enter triggerGBAKsNAF, gbaType=" + gbaType + ", asyncSign=" + asyncSign + ", nafId=" + hiddenPrivacyByteInfo(nafId) + ", impi=" + hiddenPrivacyByteInfo(impi));
        String nafIdHexString = transByteArrayToHexString(nafId);
        if (isBootstrapExpire(nafIdHexString)) {
            handleBootstrapExpire(nafIdHexString);
            return 1;
        }
        addBootstrapTimes(nafIdHexString);
        String naf = HexDump.toHexString(nafId);
        this.mGbaStatus = GbaStatus.GBA_DERIVATION;
        this.mAsyncSign = asyncSign;
        if (gbaType == 0) {
            KsNafElem ksNaf = this.mKsNafTable.get(naf);
            if (ksNaf == null) {
                ksNaf = new KsNafElem();
                ksNaf.mType = gbaType;
                ksNaf.mNafId = nafId;
                ksNaf.mBTid = this.mCurrBTid.mBTid;
            }
            this.mGbaStatus = GbaStatus.GBA_DONE;
            BtidElem btid = this.mBtidTable.get(HexDump.toHexString(this.mCurrBTid.mBTid));
            if (btid == null) {
                loge("leave triggerGBAKsNAF, btid get btid null");
                return 1;
            }
            byte[] ksnaf = hmacSha256(btid.mKs, generateS(btid.mRand, impi, ksNaf.mNafId));
            if (ksnaf == null) {
                loge("ksnaf is null, AKA is failed");
                return 1;
            }
            if (this.mKsnafEncodedByBase64) {
                ksNaf.mKsNaf = Base64.encode(ksnaf, 2);
            } else {
                ksNaf.mKsNaf = ksnaf;
            }
            logd("Ksnaf, base64=" + this.mKsnafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(ksNaf.mKsNaf));
            this.mKsNafTable.put(naf, ksNaf);
            Message msg = obtainMessage(8, ksNaf);
            sendMessage(msg);
            logd("leave triggerGBAKsNAF");
            return 0;
        }
        this.mGbaStatus = GbaStatus.GBA_DERIVATION;
        return 1;
    }

    public synchronized GbaResult getGBAKsnaf(int gbaType, byte[] nafId) {
        logd("enter getGBAKsnaf, gbaType=" + gbaType + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        KsNafElem ksNaf = null;
        GbaResult gabRet = new GbaResult();
        handleTimeout();
        if (isBusy()) {
            gabRet.status = KSNAF_STATE.KSNAF_INVALID_AND_IS_COMPUTING.getValue();
            return gabRet;
        }
        if (nafId != null) {
            ksNaf = this.mKsNafTable.get(HexDump.toHexString(nafId));
        }
        if (ksNaf == null) {
            gabRet.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
            return gabRet;
        }
        BtidElem btid = this.mBtidTable.get(HexDump.toHexString(ksNaf.mBTid));
        if (ksNaf.mKsNaf != null) {
            if (ksNaf.mType != gbaType) {
                loge("gba type is not equal in ksnaf, ingored");
            }
            String nafIdHexString = transByteArrayToHexString(nafId);
            if (isAuthExpire(nafIdHexString)) {
                handleAuthExpire(nafIdHexString);
                gabRet.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
                return gabRet;
            }
            this.mNafIdHexString = nafIdHexString;
            addAuthTimes(nafIdHexString);
            gabRet.status = KSNAF_STATE.KSNAF_VALID.getValue();
            gabRet.ksnaf = ksNaf.mKsNaf;
            if (btid != null) {
                btid.mbUsed = true;
            }
            String sbtid = HwImsConfigImpl.NULL_STRING_VALUE;
            try {
                sbtid = new String(ksNaf.mBTid, "UTF-8");
            } catch (Exception e) {
                loge("CString to UTF-8 fail, e=" + e);
            }
            gabRet.btid = sbtid;
            logd("ksnaf=" + hiddenPrivacyByteInfo(ksNaf.mKsNaf) + ", btid=" + hiddenPrivacyByteInfo(ksNaf.mBTid) + ", nafid=" + hiddenPrivacyByteInfo(ksNaf.mNafId));
            return gabRet;
        } else if (btid != null && btid.mKs != null) {
            if (btid.mType != gbaType) {
                loge("gba type is not equal in btid, ingored");
            }
            gabRet.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_DERIVATION.getValue();
            String sbtid2 = HwImsConfigImpl.NULL_STRING_VALUE;
            try {
                sbtid2 = new String(btid.mBTid, "UTF-8");
            } catch (Exception e2) {
                loge("CString to UTF-8 fail, e=" + e2);
            }
            gabRet.btid = sbtid2;
            return gabRet;
        } else {
            gabRet.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
            return gabRet;
        }
    }

    public synchronized void reset() {
        logd("reset GBA to null, previous GBA status is " + this.mGbaStatus);
        this.mGbaStatus = GbaStatus.GBA_NULL;
    }

    public synchronized void clear() {
        logd("enter clear");
        reset();
        this.mBtidTable.clear();
        this.mKsNafTable.clear();
        this.mAuthCountsTable.clear();
        this.mBootstrapCountsTable.clear();
    }

    private static byte[] shortToBytes(short n) {
        byte[] b = {(byte) ((n >> 8) & 255), (byte) (n & 255)};
        return b;
    }

    private byte[] generateKs(byte[] ck, byte[] ik) {
        logd("enter generateKs ck=" + hiddenPrivacyByteInfo(ck) + ", ik=" + hiddenPrivacyByteInfo(ik));
        byte[] ks = new byte[ck.length + ik.length];
        System.arraycopy(ck, 0, ks, 0, ck.length);
        System.arraycopy(ik, 0, ks, ck.length, ik.length);
        logd("leave generateKs, ks=" + hiddenPrivacyByteInfo(ks));
        return ks;
    }

    private byte[] generateS(byte[] rand, byte[] impi, byte[] nafId) {
        logd("enter generateS rand=" + hiddenPrivacyByteInfo(rand) + ", impi=" + hiddenPrivacyByteInfo(impi) + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        byte[] FC = {1};
        byte[] P0 = {103, 98, 97, 45, 109, 101};
        byte[] L0 = {0, 6};
        byte[] L1 = shortToBytes((short) rand.length);
        byte[] L2 = shortToBytes((short) impi.length);
        byte[] L3 = shortToBytes((short) nafId.length);
        byte[] S = new byte[FC.length + P0.length + L0.length + rand.length + L1.length + impi.length + L2.length + nafId.length + L3.length];
        System.arraycopy(FC, 0, S, 0, FC.length);
        int len = FC.length;
        System.arraycopy(P0, 0, S, len, P0.length);
        int len2 = len + P0.length;
        System.arraycopy(L0, 0, S, len2, L0.length);
        int len3 = len2 + L0.length;
        System.arraycopy(rand, 0, S, len3, rand.length);
        int len4 = len3 + rand.length;
        System.arraycopy(L1, 0, S, len4, L1.length);
        int len5 = len4 + L1.length;
        System.arraycopy(impi, 0, S, len5, impi.length);
        int len6 = len5 + impi.length;
        System.arraycopy(L2, 0, S, len6, L2.length);
        int len7 = len6 + L2.length;
        System.arraycopy(nafId, 0, S, len7, nafId.length);
        System.arraycopy(L3, 0, S, len7 + nafId.length, L3.length);
        logd("leave generateS, len=" + S.length + ", s=" + hiddenPrivacyByteInfo(S));
        return S;
    }

    private void restoreBtid(String key, BtidElem btid) {
        this.mBtidTable.remove(key);
        this.mBtidTable.put(key, btid);
    }

    private byte[] hmacSha256(byte[] key, byte[] data) {
        byte[] hmacsha256 = null;
        try {
            logd("enter hmacSha256 key=" + hiddenPrivacyByteInfo(key) + ", data=" + hiddenPrivacyByteInfo(data));
            Mac mac = Mac.getInstance("HMAC-SHA256");
            SecretKey sKey = new SecretKeySpec(key, "HMAC-SHA256");
            mac.init(sKey);
            hmacsha256 = mac.doFinal(data);
            logd("leave hmacSha256, ret=" + hiddenPrivacyByteInfo(hmacsha256));
            return hmacsha256;
        } catch (Exception e) {
            loge("hmacSha256 Exception e=" + e);
            return hmacsha256;
        }
    }

    private synchronized void handleUiccAuthDone(AuthResp resp) {
        AkaResult aka = new AkaResult();
        logd("handleUiccAuthDone mStatus=" + resp.mStatus);
        int i = resp.mStatus;
        if (i == 0) {
            AuthRespChallenge ch = (AuthRespChallenge) resp.mResp;
            this.mCurrBTid.mKs = generateKs(ch.mCk.mValue, ch.mIk.mValue);
            logi("ks=" + hiddenPrivacyByteInfo(this.mCurrBTid.mKs) + ", res=" + hiddenPrivacyByteInfo(ch.mRes.mValue));
            aka.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_SUCCESS;
            aka.mAkaData = ch.mRes;
        } else if (i == 2) {
            AuthSyncfail as = (AuthSyncfail) resp.mResp;
            logi("AUTH_RESP_SYNC_FAIL auts=" + hiddenPrivacyByteInfo(as.mAuts.mValue));
            aka.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_SYNC_FAILURE;
            aka.mAkaData = as.mAuts;
            if (this.mKsnafEncodedByBase64) {
                aka.mAkaData.mValue = Base64.encode(as.mAuts.mValue, 2);
            }
            logd("auts, base64=" + this.mKsnafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(aka.mAkaData.mValue));
        } else {
            aka.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_FAILURE;
            this.mGbaStatus = GbaStatus.GBA_NULL;
        }
        Message msg = obtainMessage(6, aka);
        sendMessage(msg);
    }

    private void notifyUiccAuth(AkaResult aka) {
        if (GbaStatus.GBA_NULL == this.mGbaStatus) {
            logd("Gba status is null, notifyUiccAuth stop");
        } else {
            this.mGbaAuthUtil.callBack(aka, this.mAsyncSign);
        }
    }

    private synchronized void notifyBpUpdate(BtidElem btid) {
        if (GbaStatus.GBA_NULL == this.mGbaStatus) {
            logd("Gba status is null, notifyBpUpdate stop");
        } else {
            this.mGbaAuthUtil.callBack(btid, this.mAsyncSign);
        }
    }

    private void notifyKsNaf(KsNafElem ksNaf) {
        if (GbaStatus.GBA_NULL == this.mGbaStatus) {
            logd("Gba status is null, notifyKsNaf stop");
        } else {
            this.mGbaAuthUtil.callBack(ksNaf, this.mAsyncSign);
        }
    }

    private boolean isAuthExpire(String nafId) {
        if (nafId == null) {
            loge("nafId is null.");
            return false;
        }
        Integer authCounts = this.mAuthCountsTable.get(nafId);
        logd("isAuthExpire, authCounts=" + authCounts);
        if (authCounts == null || MAX_AUTH_COUNTS > authCounts.intValue()) {
            return false;
        }
        loge("Auth Expire!");
        return true;
    }

    private void handleAuthExpire(String nafId) {
        logd("enter handleAuthExpire");
        this.mBtidTable.clear();
        removeKsNaf(nafId);
        this.mAuthCountsTable.remove(nafId);
        this.mNafIdHexString = null;
    }

    private void addAuthTimes(String nafId) {
        Integer authCounts = this.mAuthCountsTable.get(nafId);
        logd("before addAuthTimes, auth Counts=" + authCounts);
        if (authCounts == null) {
            this.mAuthCountsTable.put(nafId, 1);
            logd("after addAuthTimes, authCounts=1");
            return;
        }
        Integer authCounts2 = Integer.valueOf(authCounts.intValue() + 1);
        this.mAuthCountsTable.put(nafId, authCounts2);
        logd("after addAuthTimes, authCounts=" + authCounts2);
    }

    private boolean isBootstrapExpire(String nafId) {
        if (nafId == null) {
            loge("nafId is null.");
            return false;
        }
        Integer bootstrapCounts = this.mBootstrapCountsTable.get(nafId);
        logd("isBootstrapExpire, bootstrapCounts=" + bootstrapCounts);
        if (bootstrapCounts == null || MAX_BOOTSTRAP_COUNTS > bootstrapCounts.intValue()) {
            return false;
        }
        loge("Bootstrap Expire!");
        return true;
    }

    private void handleBootstrapExpire(String nafId) {
        logd("enter handleBootstrapExpire");
        removeBtid(nafId);
        this.mBootstrapCountsTable.remove(nafId);
    }

    private void addBootstrapTimes(String nafId) {
        Integer bootstrapCounts = this.mBootstrapCountsTable.get(nafId);
        logd("before addBootstrapTimes, bootstrapCounts=" + bootstrapCounts);
        if (bootstrapCounts == null) {
            this.mBootstrapCountsTable.put(nafId, 1);
            logd("after addBootstrapTimes, bootstrapCounts=1");
            return;
        }
        Integer bootstrapCounts2 = Integer.valueOf(bootstrapCounts.intValue() + 1);
        this.mBootstrapCountsTable.put(nafId, bootstrapCounts2);
        logd("after setBootstrapCounts, bootstrapCounts=" + bootstrapCounts2);
    }

    private void resetAuthCounts(String nafId) {
        logd("enter resetAuthCounts");
        if (nafId == null) {
            return;
        }
        this.mAuthCountsTable.remove(nafId);
    }

    public void clearAuthCounts() {
        resetAuthCounts(this.mNafIdHexString);
    }

    private void resetBootstrapCounts(String nafId) {
        logd("enter resetBootstrapCounts");
        if (nafId == null) {
            return;
        }
        this.mBootstrapCountsTable.remove(nafId);
    }

    private String getNafIdViaBtid(byte[] btid) {
        byte[] nafId;
        for (Map.Entry<String, KsNafElem> entry : this.mKsNafTable.entrySet()) {
            KsNafElem value = entry.getValue();
            if (isEqual(value.mBTid, btid) && (nafId = value.mNafId) != null) {
                return HexDump.toHexString(nafId);
            }
        }
        return null;
    }

    private String transByteArrayToHexString(byte[] array) {
        if (array == null) {
            return null;
        }
        return HexDump.toHexString(array);
    }

    private boolean isBusy() {
        return GbaStatus.GBA_BOOTSTRAP == this.mGbaStatus || GbaStatus.GBA_BP_UPDATE == this.mGbaStatus || GbaStatus.GBA_DERIVATION == this.mGbaStatus;
    }

    private boolean isTimeout(Date lifeTime) {
        Date currDate = new Date();
        if (currDate.compareTo(lifeTime) >= 0) {
            logd("isTimeout, currDate=" + currDate + ", lifeTime=" + lifeTime);
            return true;
        }
        return false;
    }

    private void handleTimeout() {
        Iterator it = this.mBtidTable.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, BtidElem> entry = it.next();
            String key = entry.getKey();
            BtidElem value = entry.getValue();
            String nafId = getNafIdViaBtid(value.mBTid);
            if (value.mKs == null) {
                logd("ks is null, AKA is fail");
            } else {
                logd("enter handleTimeout, value=" + value + ", lifetime=" + value.mLifeTime + ", key=" + HiddenPrivacyInfo.putMosaic(key, 4) + ", mBTid=" + hiddenPrivacyByteInfo(value.mBTid) + ", mKs=" + hiddenPrivacyByteInfo(value.mKs));
            }
            if (value.mLifeTime != null) {
                if (value.mbUsed && isTimeout(value.mLifeTime)) {
                    logd("time is up, remove it");
                    resetAuthCounts(nafId);
                    it.remove();
                    removeKsNaf(value.mBTid);
                } else {
                    resetBootstrapCounts(nafId);
                }
            }
        }
    }

    private void removeBtid(String key) {
        this.mBtidTable.remove(key);
    }

    private void removeKsNaf(String key) {
        this.mKsNafTable.remove(key);
    }

    private void removeKsNaf(byte[] btid) {
        String nafId = getNafIdViaBtid(btid);
        removeKsNaf(nafId);
    }

    private boolean isEqual(byte[] a, byte[] b) {
        return Arrays.equals(a, b);
    }

    private String hiddenPrivacyByteInfo(byte[] array) {
        return HiddenPrivacyInfo.putMosaic(array, 4);
    }

    private void logi(String s) {
        Rlog.i("GbaAuth[" + this.mSubId + "]", s);
    }

    private void logd(String s) {
        Rlog.d("GbaAuth[" + this.mSubId + "]", s);
    }

    private void loge(String s) {
        Rlog.e("GbaAuth[" + this.mSubId + "]", "[error] " + s);
    }

    public synchronized int deleteGBAKsnaf(int gbaType, byte[] nafId) {
        logd("enter deleteGBAKsnaf, gbaType=" + gbaType + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        String nafIdHexString = transByteArrayToHexString(nafId);
        if (nafIdHexString == null) {
            logd("nafId is null, deleteGBAKsnaf fail");
            return 1;
        }
        KsNafElem ksNaf = this.mKsNafTable.get(HexDump.toHexString(nafId));
        if (ksNaf == null) {
            logd("nafId is not in mKsNafTable, deleteGBAKsnaf fail");
            return 1;
        } else if (ksNaf.mKsNaf == null) {
            return 1;
        } else {
            if (ksNaf.mType != gbaType) {
                loge("gba type is not equal in ksnaf, ingored");
            }
            resetAuthCounts(nafIdHexString);
            removeKsNaf(nafIdHexString);
            removeBtid(nafIdHexString);
            resetBootstrapCounts(nafIdHexString);
            reset();
            return 0;
        }
    }
}
