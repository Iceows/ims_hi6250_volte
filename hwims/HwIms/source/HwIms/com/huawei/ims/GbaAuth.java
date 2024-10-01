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
import javax.crypto.spec.SecretKeySpec;

/* loaded from: GbaAuth.class */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$AKA_ALGORITHM_STATUS.class */
    public enum AKA_ALGORITHM_STATUS {
        AKA_ALGORITHM_SUCCESS(0),
        AKA_ALGORITHM_SYNC_FAILURE(1),
        AKA_ALGORITHM_FAILURE(2);
        
        final int native_int;

        AKA_ALGORITHM_STATUS(int i) {
            this.native_int = i;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$AkaResult.class */
    public static class AkaResult {
        DataValue mAkaData;
        AKA_ALGORITHM_STATUS mStatus;

        AkaResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$AuthResp.class */
    public static class AuthResp {
        Object mResp;
        int mStatus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$AuthRespChallenge.class */
    public static class AuthRespChallenge {
        DataValue mCk;
        DataValue mIk;
        DataValue mRes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$AuthSyncfail.class */
    public static class AuthSyncfail {
        DataValue mAuts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$BtidElem.class */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$DataValue.class */
    public static class DataValue {
        int mPresent;
        byte[] mValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$GbaResult.class */
    public static class GbaResult {
        String btid;
        byte[] ksnaf;
        int status;

        GbaResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: GbaAuth$GbaStatus.class */
    public enum GbaStatus {
        GBA_NULL,
        GBA_BOOTSTRAP,
        GBA_BP_UPDATE,
        GBA_DERIVATION,
        GBA_DONE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$KSNAF_STATE.class */
    public enum KSNAF_STATE {
        KSNAF_VALID(0),
        KSNAF_INVALID_AND_NEED_DERIVATION(1),
        KSNAF_INVALID_AND_NEED_BOOTSTRAP(2),
        KSNAF_INVALID_AND_IS_COMPUTING(3);
        
        final int native_int;

        KSNAF_STATE(int i) {
            this.native_int = i;
        }

        public int getValue() {
            return this.native_int;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: GbaAuth$KsNafElem.class */
    public static class KsNafElem {
        byte[] mBTid;
        byte[] mKsNaf;
        byte[] mNafId;
        int mType;

        KsNafElem() {
        }
    }

    /* loaded from: GbaAuth$UiccGbaType.class */
    enum UiccGbaType {
        USIM_GBA,
        ISIM_GBA
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GbaAuth(ImsRIL imsRIL, HwImsConfigImpl hwImsConfigImpl, int i) {
        this.mCm = null;
        this.mGbaAuthUtil = null;
        this.mSubId = -1;
        this.mKsnafEncodedByBase64 = false;
        this.mCm = imsRIL;
        this.mGbaAuthUtil = new GbaAuthUtil(this);
        this.mSubId = i;
        if (hwImsConfigImpl != null) {
            this.mKsnafEncodedByBase64 = hwImsConfigImpl.isUtKsnafEncodedByBase64();
        }
    }

    private void addAuthTimes(String str) {
        Integer num = this.mAuthCountsTable.get(str);
        logd("before addAuthTimes, auth Counts=" + num);
        if (num == null) {
            this.mAuthCountsTable.put(str, 1);
            logd("after addAuthTimes, authCounts=1");
            return;
        }
        Integer valueOf = Integer.valueOf(num.intValue() + 1);
        this.mAuthCountsTable.put(str, valueOf);
        logd("after addAuthTimes, authCounts=" + valueOf);
    }

    private void addBootstrapTimes(String str) {
        Integer num = this.mBootstrapCountsTable.get(str);
        logd("before addBootstrapTimes, bootstrapCounts=" + num);
        if (num == null) {
            this.mBootstrapCountsTable.put(str, 1);
            logd("after addBootstrapTimes, bootstrapCounts=1");
            return;
        }
        Integer valueOf = Integer.valueOf(num.intValue() + 1);
        this.mBootstrapCountsTable.put(str, valueOf);
        logd("after setBootstrapCounts, bootstrapCounts=" + valueOf);
    }

    private byte[] generateKs(byte[] bArr, byte[] bArr2) {
        logd("enter generateKs ck=" + hiddenPrivacyByteInfo(bArr) + ", ik=" + hiddenPrivacyByteInfo(bArr2));
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        logd("leave generateKs, ks=" + hiddenPrivacyByteInfo(bArr3));
        return bArr3;
    }

    private byte[] generateS(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        logd("enter generateS rand=" + hiddenPrivacyByteInfo(bArr) + ", impi=" + hiddenPrivacyByteInfo(bArr2) + ", nafId=" + hiddenPrivacyByteInfo(bArr3));
        byte[] bArr4 = {(byte) 1};
        byte[] bArr5 = {103, 98, 97, 45, 109, 101};
        byte[] bArr6 = {0, 6};
        byte[] shortToBytes = shortToBytes((short) bArr.length);
        byte[] shortToBytes2 = shortToBytes((short) bArr2.length);
        byte[] shortToBytes3 = shortToBytes((short) bArr3.length);
        byte[] bArr7 = new byte[bArr4.length + bArr5.length + bArr6.length + bArr.length + shortToBytes.length + bArr2.length + shortToBytes2.length + bArr3.length + shortToBytes3.length];
        System.arraycopy(bArr4, 0, bArr7, 0, bArr4.length);
        int length = bArr4.length;
        System.arraycopy(bArr5, 0, bArr7, length, bArr5.length);
        int length2 = length + bArr5.length;
        System.arraycopy(bArr6, 0, bArr7, length2, bArr6.length);
        int length3 = length2 + bArr6.length;
        System.arraycopy(bArr, 0, bArr7, length3, bArr.length);
        int length4 = length3 + bArr.length;
        System.arraycopy(shortToBytes, 0, bArr7, length4, shortToBytes.length);
        int length5 = length4 + shortToBytes.length;
        System.arraycopy(bArr2, 0, bArr7, length5, bArr2.length);
        int length6 = length5 + bArr2.length;
        System.arraycopy(shortToBytes2, 0, bArr7, length6, shortToBytes2.length);
        int length7 = length6 + shortToBytes2.length;
        System.arraycopy(bArr3, 0, bArr7, length7, bArr3.length);
        System.arraycopy(shortToBytes3, 0, bArr7, length7 + bArr3.length, shortToBytes3.length);
        logd("leave generateS, len=" + bArr7.length + ", s=" + hiddenPrivacyByteInfo(bArr7));
        return bArr7;
    }

    private String getNafIdViaBtid(byte[] bArr) {
        byte[] bArr2;
        for (Map.Entry<String, KsNafElem> entry : this.mKsNafTable.entrySet()) {
            KsNafElem value = entry.getValue();
            if (isEqual(value.mBTid, bArr) && (bArr2 = value.mNafId) != null) {
                return HexDump.toHexString(bArr2);
            }
        }
        return null;
    }

    private void handleAuthExpire(String str) {
        logd("enter handleAuthExpire");
        this.mBtidTable.clear();
        removeKsNaf(str);
        this.mAuthCountsTable.remove(str);
        this.mNafIdHexString = null;
    }

    private void handleBootstrapExpire(String str) {
        logd("enter handleBootstrapExpire");
        removeBtid(str);
        this.mBootstrapCountsTable.remove(str);
    }

    private void handleTimeout() {
        Iterator<Map.Entry<String, BtidElem>> it = this.mBtidTable.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, BtidElem> next = it.next();
            String key = next.getKey();
            BtidElem value = next.getValue();
            String nafIdViaBtid = getNafIdViaBtid(value.mBTid);
            if (value.mKs == null) {
                logd("ks is null, AKA is fail");
            } else {
                logd("enter handleTimeout, value=" + value + ", lifetime=" + value.mLifeTime + ", key=" + HiddenPrivacyInfo.putMosaic(key, 4) + ", mBTid=" + hiddenPrivacyByteInfo(value.mBTid) + ", mKs=" + hiddenPrivacyByteInfo(value.mKs));
            }
            if (value.mLifeTime != null) {
                if (value.mbUsed && isTimeout(value.mLifeTime)) {
                    logd("time is up, remove it");
                    resetAuthCounts(nafIdViaBtid);
                    it.remove();
                    removeKsNaf(value.mBTid);
                } else {
                    resetBootstrapCounts(nafIdViaBtid);
                }
            }
        }
    }

    private void handleUiccAuthDone(AuthResp authResp) {
        synchronized (this) {
            AkaResult akaResult = new AkaResult();
            logd("handleUiccAuthDone mStatus=" + authResp.mStatus);
            int i = authResp.mStatus;
            if (i == 0) {
                AuthRespChallenge authRespChallenge = (AuthRespChallenge) authResp.mResp;
                this.mCurrBTid.mKs = generateKs(authRespChallenge.mCk.mValue, authRespChallenge.mIk.mValue);
                logi("ks=" + hiddenPrivacyByteInfo(this.mCurrBTid.mKs) + ", res=" + hiddenPrivacyByteInfo(authRespChallenge.mRes.mValue));
                akaResult.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_SUCCESS;
                akaResult.mAkaData = authRespChallenge.mRes;
            } else if (i != 2) {
                akaResult.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_FAILURE;
                this.mGbaStatus = GbaStatus.GBA_NULL;
            } else {
                AuthSyncfail authSyncfail = (AuthSyncfail) authResp.mResp;
                logi("AUTH_RESP_SYNC_FAIL auts=" + hiddenPrivacyByteInfo(authSyncfail.mAuts.mValue));
                akaResult.mStatus = AKA_ALGORITHM_STATUS.AKA_ALGORITHM_SYNC_FAILURE;
                akaResult.mAkaData = authSyncfail.mAuts;
                if (this.mKsnafEncodedByBase64) {
                    akaResult.mAkaData.mValue = Base64.encode(authSyncfail.mAuts.mValue, 2);
                }
                logd("auts, base64=" + this.mKsnafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(akaResult.mAkaData.mValue));
            }
            sendMessage(obtainMessage(6, akaResult));
        }
    }

    private String hiddenPrivacyByteInfo(byte[] bArr) {
        return HiddenPrivacyInfo.putMosaic(bArr, 4);
    }

    private byte[] hmacSha256(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        byte[] bArr4 = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter hmacSha256 key=");
            sb.append(hiddenPrivacyByteInfo(bArr));
            sb.append(", data=");
            sb.append(hiddenPrivacyByteInfo(bArr2));
            logd(sb.toString());
            Mac mac = Mac.getInstance("HMAC-SHA256");
            mac.init(new SecretKeySpec(bArr, "HMAC-SHA256"));
            bArr3 = mac.doFinal(bArr2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("leave hmacSha256, ret=");
            sb2.append(hiddenPrivacyByteInfo(bArr3));
            bArr4 = bArr3;
            logd(sb2.toString());
        } catch (Exception e) {
            loge("hmacSha256 Exception e=" + e);
            bArr3 = bArr4;
        }
        return bArr3;
    }

    private boolean isAuthExpire(String str) {
        if (str == null) {
            loge("nafId is null.");
            return false;
        }
        Integer num = this.mAuthCountsTable.get(str);
        logd("isAuthExpire, authCounts=" + num);
        if (num != null && MAX_AUTH_COUNTS <= num.intValue()) {
            loge("Auth Expire!");
            return true;
        }
        return false;
    }

    private boolean isBootstrapExpire(String str) {
        if (str == null) {
            loge("nafId is null.");
            return false;
        }
        Integer num = this.mBootstrapCountsTable.get(str);
        logd("isBootstrapExpire, bootstrapCounts=" + num);
        if (num != null && MAX_BOOTSTRAP_COUNTS <= num.intValue()) {
            loge("Bootstrap Expire!");
            return true;
        }
        return false;
    }

    private boolean isBusy() {
        return GbaStatus.GBA_BOOTSTRAP == this.mGbaStatus || GbaStatus.GBA_BP_UPDATE == this.mGbaStatus || GbaStatus.GBA_DERIVATION == this.mGbaStatus;
    }

    private boolean isEqual(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    private boolean isTimeout(Date date) {
        Date date2 = new Date();
        if (date2.compareTo(date) >= 0) {
            logd("isTimeout, currDate=" + date2 + ", lifeTime=" + date);
            return true;
        }
        return false;
    }

    private void logd(String str) {
        Rlog.d("GbaAuth[" + this.mSubId + "]", str);
    }

    private void loge(String str) {
        Rlog.e("GbaAuth[" + this.mSubId + "]", "[error] " + str);
    }

    private void logi(String str) {
        Rlog.i("GbaAuth[" + this.mSubId + "]", str);
    }

    private void notifyBpUpdate(BtidElem btidElem) {
        synchronized (this) {
            if (GbaStatus.GBA_NULL == this.mGbaStatus) {
                logd("Gba status is null, notifyBpUpdate stop");
            } else {
                this.mGbaAuthUtil.callBack(btidElem, this.mAsyncSign);
            }
        }
    }

    private void notifyKsNaf(KsNafElem ksNafElem) {
        if (GbaStatus.GBA_NULL == this.mGbaStatus) {
            logd("Gba status is null, notifyKsNaf stop");
        } else {
            this.mGbaAuthUtil.callBack(ksNafElem, this.mAsyncSign);
        }
    }

    private void notifyUiccAuth(AkaResult akaResult) {
        if (GbaStatus.GBA_NULL == this.mGbaStatus) {
            logd("Gba status is null, notifyUiccAuth stop");
        } else {
            this.mGbaAuthUtil.callBack(akaResult, this.mAsyncSign);
        }
    }

    private void removeBtid(String str) {
        this.mBtidTable.remove(str);
    }

    private void removeKsNaf(String str) {
        this.mKsNafTable.remove(str);
    }

    private void removeKsNaf(byte[] bArr) {
        removeKsNaf(getNafIdViaBtid(bArr));
    }

    private void resetAuthCounts(String str) {
        logd("enter resetAuthCounts");
        if (str == null) {
            return;
        }
        this.mAuthCountsTable.remove(str);
    }

    private void resetBootstrapCounts(String str) {
        logd("enter resetBootstrapCounts");
        if (str == null) {
            return;
        }
        this.mBootstrapCountsTable.remove(str);
    }

    private void restoreBtid(String str, BtidElem btidElem) {
        this.mBtidTable.remove(str);
        this.mBtidTable.put(str, btidElem);
    }

    private static byte[] shortToBytes(short s) {
        return new byte[]{(byte) ((s >> 8) & 255), (byte) (s & 255)};
    }

    private String transByteArrayToHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return HexDump.toHexString(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        synchronized (this) {
            logd("enter clear");
            reset();
            this.mBtidTable.clear();
            this.mKsNafTable.clear();
            this.mAuthCountsTable.clear();
            this.mBootstrapCountsTable.clear();
        }
    }

    public void clearAuthCounts() {
        resetAuthCounts(this.mNafIdHexString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int deleteGBAKsnaf(int i, byte[] bArr) {
        synchronized (this) {
            logd("enter deleteGBAKsnaf, gbaType=" + i + ", nafId=" + hiddenPrivacyByteInfo(bArr));
            String transByteArrayToHexString = transByteArrayToHexString(bArr);
            if (transByteArrayToHexString == null) {
                logd("nafId is null, deleteGBAKsnaf fail");
                return 1;
            }
            KsNafElem ksNafElem = this.mKsNafTable.get(HexDump.toHexString(bArr));
            if (ksNafElem == null) {
                logd("nafId is not in mKsNafTable, deleteGBAKsnaf fail");
                return 1;
            } else if (ksNafElem.mKsNaf != null) {
                if (ksNafElem.mType != i) {
                    loge("gba type is not equal in ksnaf, ingored");
                }
                resetAuthCounts(transByteArrayToHexString);
                removeKsNaf(transByteArrayToHexString);
                removeBtid(transByteArrayToHexString);
                resetBootstrapCounts(transByteArrayToHexString);
                reset();
                return 0;
            } else {
                return 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GbaResult getGBAKsnaf(int i, byte[] bArr) {
        synchronized (this) {
            logd("enter getGBAKsnaf, gbaType=" + i + ", nafId=" + hiddenPrivacyByteInfo(bArr));
            KsNafElem ksNafElem = null;
            GbaResult gbaResult = new GbaResult();
            handleTimeout();
            if (isBusy()) {
                gbaResult.status = KSNAF_STATE.KSNAF_INVALID_AND_IS_COMPUTING.getValue();
                return gbaResult;
            }
            if (bArr != null) {
                ksNafElem = this.mKsNafTable.get(HexDump.toHexString(bArr));
            }
            if (ksNafElem == null) {
                gbaResult.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
                return gbaResult;
            }
            BtidElem btidElem = this.mBtidTable.get(HexDump.toHexString(ksNafElem.mBTid));
            if (ksNafElem.mKsNaf == null) {
                if (btidElem == null || btidElem.mKs == null) {
                    gbaResult.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
                    return gbaResult;
                }
                if (btidElem.mType != i) {
                    loge("gba type is not equal in btid, ingored");
                }
                gbaResult.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_DERIVATION.getValue();
                String str = HwImsConfigImpl.NULL_STRING_VALUE;
                try {
                    str = new String(btidElem.mBTid, "UTF-8");
                } catch (Exception e) {
                    loge("CString to UTF-8 fail, e=" + e);
                }
                gbaResult.btid = str;
                return gbaResult;
            }
            if (ksNafElem.mType != i) {
                loge("gba type is not equal in ksnaf, ingored");
            }
            String transByteArrayToHexString = transByteArrayToHexString(bArr);
            if (isAuthExpire(transByteArrayToHexString)) {
                handleAuthExpire(transByteArrayToHexString);
                gbaResult.status = KSNAF_STATE.KSNAF_INVALID_AND_NEED_BOOTSTRAP.getValue();
                return gbaResult;
            }
            this.mNafIdHexString = transByteArrayToHexString;
            addAuthTimes(transByteArrayToHexString);
            gbaResult.status = KSNAF_STATE.KSNAF_VALID.getValue();
            gbaResult.ksnaf = ksNafElem.mKsNaf;
            if (btidElem != null) {
                btidElem.mbUsed = true;
            }
            String str2 = HwImsConfigImpl.NULL_STRING_VALUE;
            try {
                str2 = new String(ksNafElem.mBTid, "UTF-8");
            } catch (Exception e2) {
                loge("CString to UTF-8 fail, e=" + e2);
            }
            gbaResult.btid = str2;
            logd("ksnaf=" + hiddenPrivacyByteInfo(ksNafElem.mKsNaf) + ", btid=" + hiddenPrivacyByteInfo(ksNafElem.mBTid) + ", nafid=" + hiddenPrivacyByteInfo(ksNafElem.mNafId));
            return gbaResult;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GbaAuthUtil getGbaAuthUtil() {
        GbaAuthUtil gbaAuthUtil;
        synchronized (this) {
            gbaAuthUtil = this.mGbaAuthUtil;
        }
        return gbaAuthUtil;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        AuthResp authResp;
        logd("handleMessage what=" + message.what);
        switch (message.what) {
            case 1:
                AsyncResult asyncResult = (AsyncResult) message.obj;
                if (asyncResult.exception != null || asyncResult.result == null) {
                    logd("EVENT_REQUEST_UICC_AUTH_DONE err");
                    authResp = new AuthResp();
                    authResp.mStatus = 1;
                } else {
                    authResp = (AuthResp) asyncResult.result;
                }
                handleUiccAuthDone(authResp);
                return;
            case 2:
                handleUiccAuthDone((AuthResp) message.obj);
                return;
            case 3:
            case 4:
            case 5:
                return;
            case 6:
                notifyUiccAuth((AkaResult) message.obj);
                return;
            case 7:
                notifyBpUpdate((BtidElem) message.obj);
                return;
            case 8:
                notifyKsNaf((KsNafElem) message.obj);
                return;
            default:
                super.handleMessage(message);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        synchronized (this) {
            logd("reset GBA to null, previous GBA status is " + this.mGbaStatus);
            this.mGbaStatus = GbaStatus.GBA_NULL;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] stringUtf8ToBytes(String str) {
        byte[] bArr;
        synchronized (this) {
            if (str == null) {
                return null;
            }
            try {
                bArr = str.getBytes("UTF-8");
            } catch (Exception e) {
                loge("stringUtf8ToBytes Exception e=" + e);
                bArr = null;
            }
            return bArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int triggerGBABootstrap(int i, byte[] bArr, byte[] bArr2, Object obj) {
        synchronized (this) {
            logd("enter triggerGBABootstrap gbaType=" + i + ", asyncSign=" + obj + ", rand=" + hiddenPrivacyByteInfo(bArr) + ", auth=" + hiddenPrivacyByteInfo(bArr2));
            this.mGbaStatus = GbaStatus.GBA_BOOTSTRAP;
            this.mAsyncSign = obj;
            this.mCurrBTid = new BtidElem();
            this.mCurrBTid.mType = i;
            this.mCurrBTid.mbUsed = false;
            if (i == 0) {
                this.mCm.requestUiccAuth(bArr, bArr2, obtainMessage(1, obj));
            } else {
                this.mCm.requestUiccGbaBootstrap(bArr, bArr2, obtainMessage(2, obj));
            }
            logd("leave triggerGBABootstrap");
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int triggerGBABpUpdate(int i, byte[] bArr, byte[] bArr2, String str, Object obj) {
        synchronized (this) {
            logd("enter triggerGBABpUpdate, gbaType=" + i + ", lifetime=" + str + ", asyncSign=" + obj + ", rand=" + hiddenPrivacyByteInfo(bArr) + ", btid=" + hiddenPrivacyByteInfo(bArr2));
            this.mGbaStatus = GbaStatus.GBA_BP_UPDATE;
            this.mAsyncSign = obj;
            this.mCurrBTid.mType = i;
            this.mCurrBTid.mBTid = bArr2;
            this.mCurrBTid.mRand = bArr;
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                this.mCurrBTid.mLifeTime = simpleDateFormat.parse(str);
                Date parse = simpleDateFormat.parse(str);
                parse.setMinutes(parse.getMinutes() - 5);
                if (isTimeout(parse)) {
                    logd("enter triggerGBABpUpdate, expect lifeTime is timeout, use the lifetime from nework");
                } else {
                    this.mCurrBTid.mLifeTime.setMinutes(this.mCurrBTid.mLifeTime.getMinutes() - 5);
                }
            } catch (Exception e) {
                loge("[error] " + e);
            }
            if (this.mCurrBTid.mLifeTime == null) {
                Date date = new Date();
                date.setMinutes(date.getMinutes() + 30);
                this.mCurrBTid.mLifeTime = date;
                logd("can not parse the lifetime. set lifetime = " + this.mCurrBTid.mLifeTime);
            }
            if (i != 0) {
                logd("leave triggerGBABpUpdate");
                return 1;
            }
            restoreBtid(HexDump.toHexString(bArr2), this.mCurrBTid);
            sendMessage(obtainMessage(7, this.mCurrBTid));
            logd("leave triggerGBABpUpdate");
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int triggerGBAKsNAF(int i, byte[] bArr, byte[] bArr2, Object obj) {
        synchronized (this) {
            logd("enter triggerGBAKsNAF, gbaType=" + i + ", asyncSign=" + obj + ", nafId=" + hiddenPrivacyByteInfo(bArr) + ", impi=" + hiddenPrivacyByteInfo(bArr2));
            String transByteArrayToHexString = transByteArrayToHexString(bArr);
            if (isBootstrapExpire(transByteArrayToHexString)) {
                handleBootstrapExpire(transByteArrayToHexString);
                return 1;
            }
            addBootstrapTimes(transByteArrayToHexString);
            String hexString = HexDump.toHexString(bArr);
            this.mGbaStatus = GbaStatus.GBA_DERIVATION;
            this.mAsyncSign = obj;
            if (i != 0) {
                this.mGbaStatus = GbaStatus.GBA_DERIVATION;
                return 1;
            }
            KsNafElem ksNafElem = this.mKsNafTable.get(hexString);
            KsNafElem ksNafElem2 = ksNafElem;
            if (ksNafElem == null) {
                ksNafElem2 = new KsNafElem();
                ksNafElem2.mType = i;
                ksNafElem2.mNafId = bArr;
                ksNafElem2.mBTid = this.mCurrBTid.mBTid;
            }
            this.mGbaStatus = GbaStatus.GBA_DONE;
            BtidElem btidElem = this.mBtidTable.get(HexDump.toHexString(this.mCurrBTid.mBTid));
            if (btidElem == null) {
                loge("leave triggerGBAKsNAF, btid get btid null");
                return 1;
            }
            byte[] hmacSha256 = hmacSha256(btidElem.mKs, generateS(btidElem.mRand, bArr2, ksNafElem2.mNafId));
            if (hmacSha256 == null) {
                loge("ksnaf is null, AKA is failed");
                return 1;
            }
            if (this.mKsnafEncodedByBase64) {
                ksNafElem2.mKsNaf = Base64.encode(hmacSha256, 2);
            } else {
                ksNafElem2.mKsNaf = hmacSha256;
            }
            logd("Ksnaf, base64=" + this.mKsnafEncodedByBase64 + ", " + hiddenPrivacyByteInfo(ksNafElem2.mKsNaf));
            this.mKsNafTable.put(hexString, ksNafElem2);
            sendMessage(obtainMessage(8, ksNafElem2));
            logd("leave triggerGBAKsNAF");
            return 0;
        }
    }
}
