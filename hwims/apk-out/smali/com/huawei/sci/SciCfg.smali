.class public Lcom/huawei/sci/SciCfg;
.super Ljava/lang/Object;
.source "SciCfg.java"


# static fields
.field public static final EN_SCI_MAIN_VERSION:I = 0x0

.field public static final EN_SCI_ORANGE_VERSION:I = 0x2

.field public static final EN_SCI_TLF_VERSION:I = 0x1

.field public static final EN_SCI_VDF_VERSION:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native QSipSetBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native acceptTermsOfService()I
.end method

.method public static native adjustNumberToUri(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native adjustNumberToUriX(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native clearCfgFilesForUser()I
.end method

.method public static native compareUri(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native configsFileDelete()I
.end method

.method public static native getConfirmRequestInfo([I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native getConfirmResponseAckInfo([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native getCurUserInfo()Lcom/huawei/sci/SciLoginUserInfo;
.end method

.method public static native getCustomPara(J)Ljava/lang/String;
.end method

.method public static native getDisNetworkCfg()Z
.end method

.method public static native getDmLargeParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDmParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getIsDbShare()Z
.end method

.method public static native getIsRCSEA()Z
.end method

.method public static native getMaxUriLenForCmp()I
.end method

.method public static native getNetworkCfg()Lcom/huawei/sci/SciCfgNetwork;
.end method

.method public static native getNotifyInfo([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native getPasswordByImsi(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native getSciLoginCfg()Lcom/huawei/sci/SciCfgLogin;
.end method

.method public static native getSdkVersion()I
.end method

.method public static native getSysRequestInfo([Ljava/lang/String;)I
.end method

.method public static native getUriUserPart(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native inviteFriend()Ljava/lang/String;
.end method

.method public static native sendComfirmResponse(ILjava/lang/String;)I
.end method

.method public static native setAccessToken(Ljava/lang/String;)I
.end method

.method public static native setAppKey(Ljava/lang/String;)I
.end method

.method public static native setAppName(Ljava/lang/String;)I
.end method

.method public static native setCertContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setClientVendor(Ljava/lang/String;)I
.end method

.method public static native setClientVersion(Ljava/lang/String;)I
.end method

.method public static native setCustomPara(JLjava/lang/String;)I
.end method

.method public static native setDevType(Ljava/lang/String;)I
.end method

.method public static native setDmCurVersion(Ljava/lang/String;)I
.end method

.method public static native setDmLanguage(Ljava/lang/String;)I
.end method

.method public static native setDmParam(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setDnsQryOnceTimeLen(J)I
.end method

.method public static native setDnsTotalQryTimeLen(J)I
.end method

.method public static native setImei(Ljava/lang/String;)I
.end method

.method public static native setImsi(Ljava/lang/String;)I
.end method

.method public static native setLang(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setLocalUri(Ljava/lang/String;)I
.end method

.method public static native setLogDispTimeInMs(I)I
.end method

.method public static native setLogEncrypt(I)I
.end method

.method public static native setLogLevel(I)I
.end method

.method public static native setMCC(Ljava/lang/String;)I
.end method

.method public static native setMNC(Ljava/lang/String;)I
.end method

.method public static native setMaxUriLenForCmp(I)I
.end method

.method public static native setMsisdn(Ljava/lang/String;)I
.end method

.method public static native setNetworkCfg(Lcom/huawei/sci/SciCfgNetwork;)V
.end method

.method public static native setSciLoginCfg(Lcom/huawei/sci/SciCfgLogin;)V
.end method

.method public static native setSmsPort(Ljava/lang/String;)I
.end method

.method public static native setTerminalModel(Ljava/lang/String;)I
.end method

.method public static native setTerminalSWVer(Ljava/lang/String;)I
.end method

.method public static native setTerminalVendor(Ljava/lang/String;)I
.end method

.method public static native setTrustCaFilePath(Ljava/lang/String;)I
.end method

.method public static native setUiParseSMS(Ljava/lang/String;)I
.end method

.method public static native setUid(Ljava/lang/String;)I
.end method

.method public static native setUserAgent(Ljava/lang/String;)I
.end method

.method public static native setUserType(I)I
.end method

.method public static native setVers(II)I
.end method

.method public static native startHttpsWithMsisdn(Ljava/lang/String;)I
.end method

.method public static native startHttpsWithOTP(Ljava/lang/String;Ljava/lang/String;)I
.end method
