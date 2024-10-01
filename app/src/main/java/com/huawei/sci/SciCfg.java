package com.huawei.sci;


public class SciCfg {
    public static final int EN_SCI_MAIN_VERSION = 0;
    public static final int EN_SCI_ORANGE_VERSION = 2;
    public static final int EN_SCI_TLF_VERSION = 1;
    public static final int EN_SCI_VDF_VERSION = 3;

    public static native int QSipSetBaseInfo(String str, String str2, String str3, int i, String str4, int i2, String str5, String str6);

    public static native int acceptTermsOfService();

    public static native String adjustNumberToUri(String str);

    public static native String adjustNumberToUriX(String str);

    public static native int clearCfgFilesForUser();

    public static native boolean compareUri(String str, String str2);

    public static native int configsFileDelete();

    public static native int getConfirmRequestInfo(int[] iArr, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5);

    public static native int getConfirmResponseAckInfo(String[] strArr, String[] strArr2, String[] strArr3);

    public static native SciLoginUserInfo getCurUserInfo();

    public static native String getCustomPara(long j);

    public static native boolean getDisNetworkCfg();

    public static native String getDmLargeParam(String str);

    public static native String getDmParam(String str);

    public static native boolean getIsDbShare();

    public static native boolean getIsRCSEA();

    public static native int getMaxUriLenForCmp();

    public static native SciCfgNetwork getNetworkCfg();

    public static native int getNotifyInfo(String[] strArr, String[] strArr2, String[] strArr3);

    public static native int getPasswordByImsi(String str, String[] strArr);

    public static native SciCfgLogin getSciLoginCfg();

    public static native int getSdkVersion();

    public static native int getSysRequestInfo(String[] strArr);

    public static native String getUriUserPart(String str);

    public static native String inviteFriend();

    public static native int sendComfirmResponse(int i, String str);

    public static native int setAccessToken(String str);

    public static native int setAppKey(String str);

    public static native int setAppName(String str);

    public static native int setCertContent(String str, String str2, String str3, String str4);

    public static native int setClientVendor(String str);

    public static native int setClientVersion(String str);

    public static native int setCustomPara(long j, String str);

    public static native int setDevType(String str);

    public static native int setDmCurVersion(String str);

    public static native int setDmLanguage(String str);

    public static native int setDmParam(String str, String str2);

    public static native int setDnsQryOnceTimeLen(long j);

    public static native int setDnsTotalQryTimeLen(long j);

    public static native int setImei(String str);

    public static native int setImsi(String str);

    public static native int setLang(String str, String str2);

    public static native int setLocalUri(String str);

    public static native int setLogDispTimeInMs(int i);

    public static native int setLogEncrypt(int i);

    public static native int setLogLevel(int i);

    public static native int setMCC(String str);

    public static native int setMNC(String str);

    public static native int setMaxUriLenForCmp(int i);

    public static native int setMsisdn(String str);

    public static native void setNetworkCfg(SciCfgNetwork sciCfgNetwork);

    public static native void setSciLoginCfg(SciCfgLogin sciCfgLogin);

    public static native int setSmsPort(String str);

    public static native int setTerminalModel(String str);

    public static native int setTerminalSWVer(String str);

    public static native int setTerminalVendor(String str);

    public static native int setTrustCaFilePath(String str);

    public static native int setUiParseSMS(String str);

    public static native int setUid(String str);

    public static native int setUserAgent(String str);

    public static native int setUserType(int i);

    public static native int setVers(int i, int i2);

    public static native int startHttpsWithMsisdn(String str);

    public static native int startHttpsWithOTP(String str, String str2);
}
