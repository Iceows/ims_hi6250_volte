package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import android.util.Base64;
import com.android.internal.util.HexDump;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class GbaAuth extends Handler {
    public static final int AUTH_RESP_FAIL = 1;
    public static final int AUTH_RESP_SUCCESS = 0;
    public static final int AUTH_RESP_SYNC_FAIL = 2;
    public static final int AUTH_RESP_UNSUPPORTED = 3;
    private static final int DEFAULT_INT = 6;
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
    private static final String HMAC_SHA256 = "HMAC-SHA256";
    private static final int INVALIED_SUB_ID = -1;
    private static final String LOG_TAG = "GbaAuth";
    private static final int MAX_AUTH_COUNTS = 4;
    private static final int MAX_BOOTSTRAP_COUNTS = 4;
    private static final int MAX_INT = 255;
    private static final int SHORT_TO_BYTE_ARRAY_SIZE = 2;
    private static final int SHORT_TO_BYTE_MOVE_LENGTH = 8;
    public static final int SUCCESS = 0;
    private static final String UTF_8 = "UTF-8";
    private ImsRIL mCm;
    private GbaAuthUtil mGbaAuthUtil;
    private boolean mIsKsNafEncodedByBase64;
    private int mSubId;
    private HashMap<String, BtidElem> mBtidTable = new HashMap<>();
    private HashMap<String, KsNafElem> mKsNafTable = new HashMap<>();
    private HashMap<String, Integer> mAuthCountsTable = new HashMap<>();
    private HashMap<String, Integer> mBootstrapCountsTable = new HashMap<>();
    private BtidElem mCurrBtid = null;
    private Object mAsyncSign = null;
    private GbaStatus mGbaStatus = GbaStatus.GBA_NULL;
    private String mNafIdHexString = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AuthResp {
        Object mResp;
        int mStatus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AuthRespChallenge {
        DataValue mCk;
        DataValue mIk;
        DataValue mRes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AuthSyncfail {
        DataValue mAuts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class DataValue {
        int mPresent;
        byte[] mValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum GbaStatus {
        GBA_NULL,
        GBA_BOOTSTRAP,
        GBA_BP_UPDATE,
        GBA_DERIVATION,
        GBA_DONE
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    enum UiccGbaType {
        USIM_GBA,
        ISIM_GBA
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum AkaAlgorithmStatus {
        AKA_ALGORITHM_SUCCESS(0),
        AKA_ALGORITHM_SYNC_FAILURE(1),
        AKA_ALGORITHM_FAILURE(2);

        final int mStatus;

        AkaAlgorithmStatus(int value) {
            this.mStatus = value;
        }

        public int getValue() {
            return this.mStatus;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum KsNafState {
        KSNAF_VALID(0),
        KSNAF_INVALID_AND_NEED_DERIVATION(1),
        KSNAF_INVALID_AND_NEED_BOOTSTRAP(2),
        KSNAF_INVALID_AND_IS_COMPUTING(3);

        final int mState;

        KsNafState(int value) {
            this.mState = value;
        }

        public int getValue() {
            return this.mState;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class BtidElem {
        byte[] mBtid;
        boolean mIsUsed;
        byte[] mKs;
        Date mLifeTime;
        byte[] mRand;
        int mType;

        BtidElem() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class KsNafElem {
        byte[] mBtid;
        byte[] mKsNaf;
        byte[] mNafId;
        int mType;

        KsNafElem() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class AkaResult {
        DataValue mAkaData;
        AkaAlgorithmStatus mStatus;

        AkaResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class GbaResult {
        String mBtid;
        byte[] mKsnaf;
        int mStatus;

        GbaResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GbaAuth(ImsRIL cm, HwImsConfigImpl imsConfigImpl, int subId) {
        this.mCm = null;
        this.mGbaAuthUtil = null;
        this.mSubId = -1;
        this.mIsKsNafEncodedByBase64 = false;
        this.mCm = cm;
        this.mGbaAuthUtil = new GbaAuthUtil(this);
        this.mSubId = subId;
        if (imsConfigImpl != null) {
            this.mIsKsNafEncodedByBase64 = imsConfigImpl.isUtKsNafEncodedByBase64();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized GbaAuthUtil getGbaAuthUtil() {
        return this.mGbaAuthUtil;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized byte[] stringUtf8ToBytes(String str) {
        if (str == null) {
            return null;
        }
        byte[] ret = null;
        try {
            ret = str.getBytes(UTF_8);
        } catch (UnsupportedEncodingException e) {
            loge("stringUtf8ToBytes Exception e=" + e);
        }
        return ret;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        AuthResp resp;
        logi("handleMessage what=" + msg.what);
        switch (msg.what) {
            case 1:
                AsyncResult ar = (AsyncResult) msg.obj;
                if (ar.exception == null && ar.result != null) {
                    resp = (AuthResp) ar.result;
                } else {
                    logi("EVENT_REQUEST_UICC_AUTH_DONE err");
                    resp = new AuthResp();
                    resp.mStatus = 1;
                }
                handleUiccAuthDone(resp);
                return;
            case 2:
                if (msg.obj instanceof AuthResp) {
                    handleUiccAuthDone((AuthResp) msg.obj);
                    return;
                }
                return;
            case 3:
            case 4:
            case 5:
                return;
            case 6:
                if (msg.obj instanceof AkaResult) {
                    notifyUiccAuth((AkaResult) msg.obj);
                    return;
                }
                return;
            case 7:
                if (msg.obj instanceof BtidElem) {
                    notifyBpUpdate((BtidElem) msg.obj);
                    return;
                }
                return;
            case 8:
                if (msg.obj instanceof KsNafElem) {
                    notifyKsNaf((KsNafElem) msg.obj);
                    return;
                }
                return;
            default:
                super.handleMessage(msg);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int triggerGbaBootstrap(int gbaType, byte[] rand, byte[] auth, Object asyncSign) {
        logi("enter triggerGbaBootstrap gbaType=" + gbaType + ", asyncSign=" + asyncSign + ", rand=" + hiddenPrivacyByteInfo(rand) + ", auth=" + hiddenPrivacyByteInfo(auth));
        this.mGbaStatus = GbaStatus.GBA_BOOTSTRAP;
        this.mAsyncSign = asyncSign;
        this.mCurrBtid = new BtidElem();
        this.mCurrBtid.mType = gbaType;
        this.mCurrBtid.mIsUsed = false;
        if (gbaType == 0) {
            this.mCm.requestUiccAuth(rand, auth, obtainMessage(1, asyncSign));
        } else {
            this.mCm.requestUiccGbaBootStrap(rand, auth, obtainMessage(2, asyncSign));
        }
        logi("leave triggerGbaBootstrap");
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int triggerGbaBpUpdate(int gbaType, byte[] rand, byte[] btid, String lifeTime, Object asyncSign) {
        logi("enter triggerGbaBpUpdate, gbaType=" + gbaType + ", lifeTime=" + lifeTime + ", asyncSign=" + asyncSign + ", rand=" + hiddenPrivacyByteInfo(rand) + ", btid=" + hiddenPrivacyByteInfo(btid));
        this.mGbaStatus = GbaStatus.GBA_BP_UPDATE;
        this.mAsyncSign = asyncSign;
        this.mCurrBtid.mType = gbaType;
        this.mCurrBtid.mBtid = btid;
        this.mCurrBtid.mRand = rand;
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            df.setTimeZone(TimeZone.getTimeZone("UTC"));
            this.mCurrBtid.mLifeTime = df.parse(lifeTime);
            Date expectLifeTime = df.parse(lifeTime);
            expectLifeTime.setMinutes(expectLifeTime.getMinutes() - 5);
            if (!isTimeout(expectLifeTime)) {
                this.mCurrBtid.mLifeTime.setMinutes(this.mCurrBtid.mLifeTime.getMinutes() - 5);
            } else {
                logi("enter triggerGbaBpUpdate, expect lifeTime is timeout, use the lifeTime from nework");
            }
        } catch (ParseException e) {
            loge("triggerGbaBpUpdate occur exception");
        }
        if (this.mCurrBtid.mLifeTime == null) {
            Date currDate = new Date();
            currDate.setMinutes(currDate.getMinutes() + 30);
            this.mCurrBtid.mLifeTime = currDate;
            logi("can not parse the lifeTime. set lifeTime = " + this.mCurrBtid.mLifeTime);
        }
        if (gbaType == 0) {
            restoreBtid(HexDump.toHexString(btid), this.mCurrBtid);
            Message msg = obtainMessage(7, this.mCurrBtid);
            sendMessage(msg);
            logi("leave triggerGBABpUpdate");
            return 0;
        }
        logi("leave triggerGBABpUpdate");
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int triggerGbaKsNaf(int gbaType, byte[] nafId, byte[] impi, Object asyncSign) {
        logi("enter triggerGbaKsNaf, gbaType=" + gbaType + ", asyncSign=" + asyncSign + ", nafId=" + hiddenPrivacyByteInfo(nafId) + ", impi=" + hiddenPrivacyByteInfo(impi));
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
                ksNaf.mBtid = this.mCurrBtid.mBtid;
            }
            this.mGbaStatus = GbaStatus.GBA_DONE;
            BtidElem btid = this.mBtidTable.get(HexDump.toHexString(this.mCurrBtid.mBtid));
            if (btid == null) {
                loge("leave triggerGBAKsNAF, btid get btid null");
                return 1;
            }
            byte[] tempKsNaf = hmacSha256(btid.mKs, generateData(btid.mRand, impi, ksNaf.mNafId));
            if (tempKsNaf == null) {
                loge("leave triggerGbaKsNaf tempksNaf = " + tempKsNaf);
                return 1;
            }
            if (this.mIsKsNafEncodedByBase64) {
                ksNaf.mKsNaf = Base64.encode(tempKsNaf, 2);
            } else {
                ksNaf.mKsNaf = tempKsNaf;
            }
            logi("Ksnaf, base64=" + this.mIsKsNafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(ksNaf.mKsNaf));
            this.mKsNafTable.put(naf, ksNaf);
            Message msg = obtainMessage(8, ksNaf);
            sendMessage(msg);
            logi("leave triggerGbaKsNaf");
            return 0;
        }
        this.mGbaStatus = GbaStatus.GBA_DERIVATION;
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized GbaResult getGbaKsNaf(int gbaType, byte[] nafId) {
        logi("enter getGbaKsNaf, gbaType=" + gbaType + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        KsNafElem ksNaf = null;
        GbaResult gbaRet = new GbaResult();
        handleTimeout();
        if (isBusy()) {
            gbaRet.mStatus = KsNafState.KSNAF_INVALID_AND_IS_COMPUTING.getValue();
            return gbaRet;
        }
        if (nafId != null) {
            ksNaf = this.mKsNafTable.get(HexDump.toHexString(nafId));
        }
        if (ksNaf == null) {
            gbaRet.mStatus = KsNafState.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
            return gbaRet;
        }
        BtidElem btid = this.mBtidTable.get(HexDump.toHexString(ksNaf.mBtid));
        if (ksNaf.mKsNaf != null) {
            if (btid != null) {
                btid.mIsUsed = true;
            }
            return processGbaWhenKsNafValid(ksNaf, gbaRet, gbaType, nafId);
        }
        if (btid != null && btid.mKs != null) {
            if (btid.mType != gbaType) {
                loge("gba type is not equal in btid, ingored");
            }
            gbaRet.mStatus = KsNafState.KSNAF_INVALID_AND_NEED_DERIVATION.getValue();
            String tempBtid = "";
            try {
                tempBtid = new String(btid.mBtid, UTF_8);
            } catch (UnsupportedEncodingException e) {
                loge("CString to UTF-8 fail");
            }
            gbaRet.mBtid = tempBtid;
            return gbaRet;
        }
        gbaRet.mStatus = KsNafState.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
        return gbaRet;
    }

    private GbaResult processGbaWhenKsNafValid(KsNafElem ksNaf, GbaResult gbaRet, int gbaType, byte[] nafId) {
        if (ksNaf.mType != gbaType) {
            loge("gba type is not equal in ksnaf, ingored");
        }
        String nafIdHexString = transByteArrayToHexString(nafId);
        if (isAuthExpire(nafIdHexString)) {
            handleAuthExpire(nafIdHexString);
            gbaRet.mStatus = KsNafState.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
            return gbaRet;
        }
        this.mNafIdHexString = nafIdHexString;
        addAuthTimes(nafIdHexString);
        gbaRet.mStatus = KsNafState.KSNAF_VALID.getValue();
        gbaRet.mKsnaf = ksNaf.mKsNaf;
        String sbtid = "";
        try {
            sbtid = new String(ksNaf.mBtid, UTF_8);
        } catch (UnsupportedEncodingException e) {
            loge("CString to UTF-8 fail");
        }
        gbaRet.mBtid = sbtid;
        logi("ksnaf=" + hiddenPrivacyByteInfo(ksNaf.mKsNaf) + ", btid=" + hiddenPrivacyByteInfo(ksNaf.mBtid) + ", nafid=" + hiddenPrivacyByteInfo(ksNaf.mNafId));
        return gbaRet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void reset() {
        logi("reset GBA to null, previous GBA status is " + this.mGbaStatus);
        this.mGbaStatus = GbaStatus.GBA_NULL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void clear() {
        logi("enter clear");
        reset();
        this.mBtidTable.clear();
        this.mKsNafTable.clear();
        this.mAuthCountsTable.clear();
        this.mBootstrapCountsTable.clear();
    }

    private static byte[] shortToBytes(short key) {
        byte[] bytes = {(byte) ((key >> 8) & 255), (byte) (key & 255)};
        return bytes;
    }

    private byte[] generateKs(byte[] ck, byte[] ik) {
        logi("enter generateKs ck=" + hiddenPrivacyByteInfo(ck) + ", ik=" + hiddenPrivacyByteInfo(ik));
        byte[] ks = new byte[ck.length + ik.length];
        System.arraycopy(ck, 0, ks, 0, ck.length);
        System.arraycopy(ik, 0, ks, ck.length, ik.length);
        logi("leave generateKs, ks=" + hiddenPrivacyByteInfo(ks));
        return ks;
    }

    private byte[] generateData(byte[] rand, byte[] impi, byte[] nafId) {
        logi("enter generateData rand=" + hiddenPrivacyByteInfo(rand) + ", impi=" + hiddenPrivacyByteInfo(impi) + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        byte[] fc = {1};
        byte[] p0 = {103, 98, 97, 45, 109, 101};
        byte[] l0 = {0, 6};
        byte[] l1 = shortToBytes((short) rand.length);
        byte[] l2 = shortToBytes((short) impi.length);
        byte[] l3 = shortToBytes((short) nafId.length);
        byte[] ss = new byte[fc.length + p0.length + l0.length + rand.length + l1.length + impi.length + l2.length + nafId.length + l3.length];
        System.arraycopy(fc, 0, ss, 0, fc.length);
        int len = fc.length;
        System.arraycopy(p0, 0, ss, len, p0.length);
        int len2 = len + p0.length;
        System.arraycopy(l0, 0, ss, len2, l0.length);
        int len3 = len2 + l0.length;
        System.arraycopy(rand, 0, ss, len3, rand.length);
        int len4 = len3 + rand.length;
        System.arraycopy(l1, 0, ss, len4, l1.length);
        int len5 = len4 + l1.length;
        System.arraycopy(impi, 0, ss, len5, impi.length);
        int len6 = len5 + impi.length;
        System.arraycopy(l2, 0, ss, len6, l2.length);
        int len7 = len6 + l2.length;
        System.arraycopy(nafId, 0, ss, len7, nafId.length);
        System.arraycopy(l3, 0, ss, len7 + nafId.length, l3.length);
        logi("leave generateData, len=" + ss.length + ", ss=" + hiddenPrivacyByteInfo(ss));
        return ss;
    }

    private void restoreBtid(String key, BtidElem btid) {
        this.mBtidTable.remove(key);
        this.mBtidTable.put(key, btid);
    }

    private byte[] hmacSha256(byte[] key, byte[] data) {
        byte[] hmacSha256 = null;
        try {
            logi("enter hmacSha256 key=" + hiddenPrivacyByteInfo(key) + ", data=" + hiddenPrivacyByteInfo(data));
            Mac mac = Mac.getInstance(HMAC_SHA256);
            SecretKey securetKey = new SecretKeySpec(key, HMAC_SHA256);
            mac.init(securetKey);
            hmacSha256 = mac.doFinal(data);
            logi("leave hmacSha256, ret=" + hiddenPrivacyByteInfo(hmacSha256));
            return hmacSha256;
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            loge("hmacSha256 occur exception");
            return hmacSha256;
        }
    }

    private synchronized void handleUiccAuthDone(AuthResp resp) {
        AkaResult aka = new AkaResult();
        logi("handleUiccAuthDone mStatus=" + resp.mStatus);
        int i = resp.mStatus;
        if (i != 0) {
            if (i == 2) {
                if (resp.mResp instanceof AuthSyncfail) {
                    AuthSyncfail as = (AuthSyncfail) resp.mResp;
                    logi("AUTH_RESP_SYNC_FAIL auts=" + hiddenPrivacyByteInfo(as.mAuts.mValue));
                    aka.mStatus = AkaAlgorithmStatus.AKA_ALGORITHM_SYNC_FAILURE;
                    aka.mAkaData = as.mAuts;
                    if (this.mIsKsNafEncodedByBase64) {
                        aka.mAkaData.mValue = Base64.encode(as.mAuts.mValue, 2);
                    }
                    logi("auts, base64=" + this.mIsKsNafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(aka.mAkaData.mValue));
                } else {
                    loge("Don't get the reason of fail");
                }
            } else {
                aka.mStatus = AkaAlgorithmStatus.AKA_ALGORITHM_FAILURE;
                this.mGbaStatus = GbaStatus.GBA_NULL;
            }
        } else if (resp.mResp instanceof AuthRespChallenge) {
            AuthRespChallenge authResp = (AuthRespChallenge) resp.mResp;
            this.mCurrBtid.mKs = generateKs(authResp.mCk.mValue, authResp.mIk.mValue);
            logi("ks=" + hiddenPrivacyByteInfo(this.mCurrBtid.mKs) + ", res=" + hiddenPrivacyByteInfo(authResp.mRes.mValue));
            aka.mStatus = AkaAlgorithmStatus.AKA_ALGORITHM_SUCCESS;
            aka.mAkaData = authResp.mRes;
        } else {
            loge("response transfers fail");
        }
        Message msg = obtainMessage(6, aka);
        sendMessage(msg);
    }

    private void notifyUiccAuth(AkaResult aka) {
        if (this.mGbaStatus == GbaStatus.GBA_NULL) {
            loge("Gba status is null, notifyUiccAuth stop");
        } else {
            this.mGbaAuthUtil.callBack(aka, this.mAsyncSign);
        }
    }

    private synchronized void notifyBpUpdate(BtidElem btid) {
        if (this.mGbaStatus == GbaStatus.GBA_NULL) {
            loge("Gba status is null, notifyBpUpdate stop");
        } else {
            this.mGbaAuthUtil.callBack(btid, this.mAsyncSign);
        }
    }

    private void notifyKsNaf(KsNafElem ksNaf) {
        if (this.mGbaStatus == GbaStatus.GBA_NULL) {
            loge("Gba status is null, notifyKsNaf stop");
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
        logi("isAuthExpire, authCounts=" + authCounts);
        if (authCounts == null || authCounts.intValue() < 4) {
            return false;
        }
        loge("Auth Expire!");
        return true;
    }

    private void handleAuthExpire(String nafId) {
        logi("enter handleAuthExpire");
        this.mBtidTable.clear();
        removeKsNaf(nafId);
        this.mAuthCountsTable.remove(nafId);
        this.mNafIdHexString = null;
    }

    private void addAuthTimes(String nafId) {
        Integer authCounts = this.mAuthCountsTable.get(nafId);
        logi("before addAuthTimes, auth Counts=" + authCounts);
        if (authCounts == null) {
            this.mAuthCountsTable.put(nafId, 1);
            logi("after addAuthTimes, authCounts=1");
            return;
        }
        Integer authCounts2 = Integer.valueOf(authCounts.intValue() + 1);
        this.mAuthCountsTable.put(nafId, authCounts2);
        logi("after addAuthTimes, authCounts=" + authCounts2);
    }

    private boolean isBootstrapExpire(String nafId) {
        if (nafId == null) {
            loge("nafId is null.");
            return false;
        }
        Integer bootstrapCounts = this.mBootstrapCountsTable.get(nafId);
        logi("isBootstrapExpire, bootstrapCounts=" + bootstrapCounts);
        if (bootstrapCounts == null || bootstrapCounts.intValue() < 4) {
            return false;
        }
        loge("Bootstrap Expire!");
        return true;
    }

    private void handleBootstrapExpire(String nafId) {
        logi("enter handleBootstrapExpire");
        removeBtid(nafId);
        this.mBootstrapCountsTable.remove(nafId);
    }

    private void addBootstrapTimes(String nafId) {
        Integer bootstrapCounts = this.mBootstrapCountsTable.get(nafId);
        logi("before addBootstrapTimes, bootstrapCounts=" + bootstrapCounts);
        if (bootstrapCounts == null) {
            this.mBootstrapCountsTable.put(nafId, 1);
            logi("after addBootstrapTimes, bootstrapCounts=1");
            return;
        }
        Integer bootstrapCounts2 = Integer.valueOf(bootstrapCounts.intValue() + 1);
        this.mBootstrapCountsTable.put(nafId, bootstrapCounts2);
        logi("after setBootstrapCounts, bootstrapCounts=" + bootstrapCounts2);
    }

    private void resetAuthCounts(String nafId) {
        logi("enter resetAuthCounts");
        if (nafId == null) {
            return;
        }
        this.mAuthCountsTable.remove(nafId);
    }

    public void clearAuthCounts() {
        resetAuthCounts(this.mNafIdHexString);
    }

    private void resetBootstrapCounts(String nafId) {
        logi("enter resetBootstrapCounts");
        if (nafId == null) {
            return;
        }
        this.mBootstrapCountsTable.remove(nafId);
    }

    private String getNafIdViaBtid(byte[] btid) {
        byte[] nafIds;
        for (Map.Entry<String, KsNafElem> entry : this.mKsNafTable.entrySet()) {
            KsNafElem value = entry.getValue();
            if (isEqual(value.mBtid, btid) && (nafIds = value.mNafId) != null) {
                return HexDump.toHexString(nafIds);
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
        return this.mGbaStatus == GbaStatus.GBA_BOOTSTRAP || this.mGbaStatus == GbaStatus.GBA_BP_UPDATE || this.mGbaStatus == GbaStatus.GBA_DERIVATION;
    }

    private boolean isTimeout(Date lifeTime) {
        Date currDate = new Date();
        if (currDate.compareTo(lifeTime) >= 0) {
            logi("isTimeout, currDate=" + currDate + ", lifeTime=" + lifeTime);
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
            String nafId = getNafIdViaBtid(value.mBtid);
            if (value.mKs == null) {
                logi("ks is null, AKA is fail");
            } else {
                logi("enter handleTimeout, value=" + value + ", lifetime=" + value.mLifeTime + ", key=" + HiddenPrivacyInfo.putMosaic(key, 4) + ", mBtid=" + hiddenPrivacyByteInfo(value.mBtid) + ", mKs=" + hiddenPrivacyByteInfo(value.mKs));
            }
            if (value.mLifeTime != null) {
                if (value.mIsUsed && isTimeout(value.mLifeTime)) {
                    logi("time is up, remove it");
                    resetAuthCounts(nafId);
                    it.remove();
                    removeKsNaf(value.mBtid);
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

    private boolean isEqual(byte[] key1, byte[] key2) {
        return Arrays.equals(key1, key2);
    }

    private String hiddenPrivacyByteInfo(byte[] array) {
        return HiddenPrivacyInfo.putMosaic(array, 4);
    }

    private void logi(String str) {
        Rlog.i("GbaAuth[" + this.mSubId + "]", str);
    }

    private void logd(String str) {
        Rlog.d("GbaAuth[" + this.mSubId + "]", str);
    }

    private void loge(String str) {
        Rlog.e("GbaAuth[" + this.mSubId + "]", "[error] " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int deleteGbaKsnaf(int gbaType, byte[] nafId) {
        logi("enter deleteGbaKsnaf, gbaType=" + gbaType + ", nafId=" + hiddenPrivacyByteInfo(nafId));
        String nafIdHexString = transByteArrayToHexString(nafId);
        if (nafIdHexString == null) {
            logi("nafId is null, deleteGbaKsnaf fail");
            return 1;
        }
        KsNafElem ksNaf = this.mKsNafTable.get(HexDump.toHexString(nafId));
        if (ksNaf == null) {
            loge("nafId is not in mKsNafTable, deleteGbaKsnaf fail");
            return 1;
        }
        if (ksNaf.mKsNaf == null) {
            return 1;
        }
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
