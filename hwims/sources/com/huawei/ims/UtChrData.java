package com.huawei.ims;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class UtChrData {
    public static final byte CHR_DEFAULT_VALUE = -1;
    public static final int CHR_EVENT_FAIL_CAUSE_UT = 1;
    public static final int CHR_FAIL_REASON_ADD_ROUTE_FAILED = 1004;
    public static final int CHR_FAIL_REASON_CONNECTION_TIMEOUT = 1002;
    public static final int CHR_FAIL_REASON_QUERY_DNS_FAILED = 1003;
    public static final int CHR_FAIL_REASON_SDK_RETURN_TIMEOUT = 1001;
    public static final byte CHR_IS_NOT_VOWIFI_UT = 0;
    public static final byte CHR_IS_VOWIFI_UT = 1;
    private byte mAddressType;
    private String mCmdDcState;
    private byte mCurrentSubId;
    private byte mDataApnType;
    private int mFailReason;
    private byte mIsMobileDataConnected;
    private byte mIsSupportWifi;
    private byte mIsVowifiEnable;
    private byte mIsWifiConnected;
    private byte mOperationType;
    private byte mSubId;
    private byte mVowifiDomain;

    public byte getOperationType() {
        return this.mOperationType;
    }

    public void setOperationType(byte operationType) {
        this.mOperationType = operationType;
    }

    public byte getDataApnType() {
        return this.mDataApnType;
    }

    public void setDataApnType(byte dataApnType) {
        this.mDataApnType = dataApnType;
    }

    public byte getIsSupportWifi() {
        return this.mIsSupportWifi;
    }

    public void setIsSupportWifi(byte supportWifi) {
        this.mIsSupportWifi = supportWifi;
    }

    public byte getIsMobileDataConnected() {
        return this.mIsMobileDataConnected;
    }

    public void setIsMobileDataConnected(byte mobileDataConnected) {
        this.mIsMobileDataConnected = mobileDataConnected;
    }

    public byte getIsWifiConnected() {
        return this.mIsWifiConnected;
    }

    public void setIsWifiConnected(byte wifiConnected) {
        this.mIsWifiConnected = wifiConnected;
    }

    public byte getIsVowifiEnable() {
        return this.mIsVowifiEnable;
    }

    public void setIsVowifiEnable(byte vowifiEnable) {
        this.mIsVowifiEnable = vowifiEnable;
    }

    public byte getAddressType() {
        return this.mAddressType;
    }

    public void setAddressType(byte addrType) {
        this.mAddressType = addrType;
    }

    public byte getSubId() {
        return this.mSubId;
    }

    public void setSubId(byte subId) {
        this.mSubId = subId;
    }

    public byte getCurrentSubId() {
        return this.mCurrentSubId;
    }

    public void setCurrentSubId(byte currentSubId) {
        this.mCurrentSubId = currentSubId;
    }

    public byte getVowifiDomain() {
        return this.mVowifiDomain;
    }

    public void setVowifiDomain(byte vowifiDomain) {
        this.mVowifiDomain = vowifiDomain;
    }

    public int getFailReason() {
        return this.mFailReason;
    }

    public void setFailReason(int failReason) {
        this.mFailReason = failReason;
    }

    public String getCmdDcState() {
        return this.mCmdDcState;
    }

    public void setCmdDcState(String cmdDcState) {
        this.mCmdDcState = cmdDcState;
    }

    public String toString() {
        return "mOperationType=" + ((int) this.mOperationType) + ", mDataApnType=" + ((int) this.mDataApnType) + ", mIsSupportWifi=" + ((int) this.mIsSupportWifi) + ", mIsMobileDataConnected=" + ((int) this.mIsMobileDataConnected) + ", mIsWifiConnected=" + ((int) this.mIsWifiConnected) + ", mIsVowifiEnable=" + ((int) this.mIsVowifiEnable) + ", mAddressType=" + ((int) this.mAddressType) + ", mSubId=" + ((int) this.mSubId) + ", mCurrentSubId=" + ((int) this.mCurrentSubId) + ", mVowifiDomain=" + ((int) this.mVowifiDomain) + ", mFailReason=" + this.mFailReason + ", mCmdDcState=" + this.mCmdDcState;
    }
}
