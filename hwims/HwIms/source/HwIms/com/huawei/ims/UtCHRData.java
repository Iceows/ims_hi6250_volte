package com.huawei.ims;

/* loaded from: UtCHRData.class */
public class UtCHRData {
    public static final byte CHR_DEFAULT_VALUE = -1;
    public static final int CHR_EVENT_FAIL_CAUSE_UT = 1;
    public static final int CHR_FAIL_REASON_ADD_ROUTE_FAILED = 1004;
    public static final int CHR_FAIL_REASON_CONNECTION_TIMEOUT = 1002;
    public static final int CHR_FAIL_REASON_QUERY_DNS_FAILED = 1003;
    public static final int CHR_FAIL_REASON_SDK_RETURN_TIMEOUT = 1001;
    public static final byte CHR_IS_NOT_VOWIFI_UT = 0;
    public static final byte CHR_IS_VOWIFI_UT = 1;
    byte mAddressType;
    String mCmdDcState;
    byte mCurrentSubId;
    byte mDataApntype;
    int mFailReason;
    byte mIsMobileDateConnected;
    byte mIsSupportWifi;
    byte mIsVowifiEnable;
    byte mIsWifiConnected;
    byte mOperationType;
    byte mSubId;
    byte mVowifiDomain;

    public UtCHRData(byte b, byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, int i, String str) {
        this.mOperationType = b;
        this.mDataApntype = b2;
        this.mIsSupportWifi = b3;
        this.mIsMobileDateConnected = b4;
        this.mIsWifiConnected = b5;
        this.mIsVowifiEnable = b6;
        this.mAddressType = b7;
        this.mSubId = b8;
        this.mCurrentSubId = b9;
        this.mVowifiDomain = b10;
        this.mFailReason = i;
        this.mCmdDcState = str;
    }

    public String toString() {
        return "mOperationType=" + ((int) this.mOperationType) + ", mDataApntype=" + ((int) this.mDataApntype) + ", mIsSupportWifi=" + ((int) this.mIsSupportWifi) + ", mIsMobileDateConnected=" + ((int) this.mIsMobileDateConnected) + ", mIsWifiConnected=" + ((int) this.mIsWifiConnected) + ", mIsVowifiEnable=" + ((int) this.mIsVowifiEnable) + ", mAddressType=" + ((int) this.mAddressType) + ", mSubId=" + ((int) this.mSubId) + ", mCurrentSubId=" + ((int) this.mCurrentSubId) + ", mVowifiDomain=" + ((int) this.mVowifiDomain) + ", mFailReason=" + this.mFailReason + ", mCmdDcState=" + this.mCmdDcState;
    }
}
