package com.huawei.ims;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    public UtCHRData(byte operationType, byte apnType, byte supportWifi, byte mobileDataConnected, byte wifiConnected, byte vowifiEnable, byte addrType, byte subId, byte currentSubId, byte vowifiDomain, int failReason, String cmdDcState) {
        this.mOperationType = operationType;
        this.mDataApntype = apnType;
        this.mIsSupportWifi = supportWifi;
        this.mIsMobileDateConnected = mobileDataConnected;
        this.mIsWifiConnected = wifiConnected;
        this.mIsVowifiEnable = vowifiEnable;
        this.mAddressType = addrType;
        this.mSubId = subId;
        this.mCurrentSubId = currentSubId;
        this.mVowifiDomain = vowifiDomain;
        this.mFailReason = failReason;
        this.mCmdDcState = cmdDcState;
    }

    public String toString() {
        return "mOperationType=" + ((int) this.mOperationType) + ", mDataApntype=" + ((int) this.mDataApntype) + ", mIsSupportWifi=" + ((int) this.mIsSupportWifi) + ", mIsMobileDateConnected=" + ((int) this.mIsMobileDateConnected) + ", mIsWifiConnected=" + ((int) this.mIsWifiConnected) + ", mIsVowifiEnable=" + ((int) this.mIsVowifiEnable) + ", mAddressType=" + ((int) this.mAddressType) + ", mSubId=" + ((int) this.mSubId) + ", mCurrentSubId=" + ((int) this.mCurrentSubId) + ", mVowifiDomain=" + ((int) this.mVowifiDomain) + ", mFailReason=" + this.mFailReason + ", mCmdDcState=" + this.mCmdDcState;
    }
}
