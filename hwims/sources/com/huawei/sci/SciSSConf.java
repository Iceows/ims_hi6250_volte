package com.huawei.sci;

import android.os.Build;
import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciSSConf {
    public static final String CF_ACTION_ACTIVE = "active";
    public static final String CF_ACTION_DEACTIVE = "deactive";
    public static final String CF_ACTION_ERASURE = "erasure";
    public static final String CF_ACTION_REGISTRATION = "registration";
    public static final int INVALID_NO_REPLY_TIMER = -1;
    public static final String MEDIA_AUDIO = "audio";
    public static final String MEDIA_VIDEO = "video";
    public static final String OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED = "presentation-not-restricted";
    public static final String OIR_DEFAULT_BEHAVIOR_RESTRICTED = "presentation-restricted";

    public static native int continueConfWithAuth(int i, byte[] bArr, byte[] bArr2);

    public static native int continueSSConfService(int i, String str, byte[] bArr);

    public static native int destroy();

    public static native int getChrUtDefeatReason();

    public static native int getChrUtFailPhaseReport();

    public static native int getChrUtInnerErrID();

    public static native int getChrUtSendMessageType();

    public static native int getChrUtServiceType();

    public static native int getSSConfParam(int i, int i2, int i3, String[] strArr);

    public static native int getSSConflictPhrase(String[] strArr);

    public static native int init();

    public static native void reset(int i);

    public static native int setAuthUserName(String str);

    public static native int setBsfAddr(String str, int i, boolean z);

    public static native int setContentType(boolean z);

    public static native int setExtensionalParam(int i, boolean z, String str);

    public static native int setHomeDomainName(String str);

    public static native int setHostIp(String[] strArr, int i);

    public static native int setHostName(String str);

    public static native int setLocalUserName(String str);

    public static native int setNafAddr(String str, int i, boolean z);

    public static native int setParamsCfg(int i, String str);

    public static native int setSSConfParam(int i, int i2, int i3, String str);

    public static native int setSupportGBAType(int i);

    public static native int setSupportNodeSelector(boolean z);

    public static native int setSupportTmpi(boolean z);

    public static native int setSupportXcapNamespace(boolean z);

    public static native int setTmpi(String str);

    public static native int setTrustCaPath(String str);

    public static native int setX3gppIntendId(String str);

    public static native int setXcapRootUri(String str);

    public static native int startBsfAuthRequest();

    public static native int startConf(int i, int i2);

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum SSConfSSType {
        SSCONF_SS_TYPE_ALL(0),
        SSCONF_SS_TYPE_OIP(1),
        SSCONF_SS_TYPE_TIP(2),
        SSCONF_SS_TYPE_OIR(3),
        SSCONF_SS_TYPE_TIR(4),
        SSCONF_SS_TYPE_CDIV(5),
        SSCONF_SS_TYPE_NRT(6),
        SSCONF_SS_TYPE_CFU(7),
        SSCONF_SS_TYPE_CFNL(8),
        SSCONF_SS_TYPE_CFB(9),
        SSCONF_SS_TYPE_CFNR(10),
        SSCONF_SS_TYPE_CFNRC(11),
        SSCONF_SS_TYPE_CFT(12),
        SSCONF_SS_TYPE_ICB(13),
        SSCONF_SS_TYPE_OCB(14),
        SSCONF_SS_TYPE_BAIC(15),
        SSCONF_SS_TYPE_BAOC(16),
        SSCONF_SS_TYPE_BAOIC(17),
        SSCONF_SS_TYPE_BAOICXH(18),
        SSCONF_SS_TYPE_BAICR(19),
        SSCONF_SS_TYPE_CW(20),
        SSCONF_SS_TYPE_CB_ALL(21),
        SSCONF_SS_TYPE_CDIV_ALL(22),
        SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL(23),
        SSCONF_SS_TYPE_BAOCR(24),
        SSCONF_SS_TYPE_ACR(25),
        SSCONF_SS_TYPE_BUTT(26);

        private final int number;

        SSConfSSType(int value) {
            this.number = value;
        }

        public int toNumber() {
            return this.number;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum SSConfOpType {
        SSCONF_OP_TYPE_GET(0),
        SSCONF_OP_TYPE_PUT(1);

        private final int number;

        SSConfOpType(int value) {
            this.number = value;
        }

        public int toNumber() {
            return this.number;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum SSCONFParamType {
        SSCONF_PARAM_TYPE_ATTR_ACTIVE(0),
        SSCONF_PARAM_TYPE_FORWARD_TO_TARGET(1),
        SSCONF_PARAM_TYPE_AUTH_AUTN(2),
        SSCONF_PARAM_TYPE_AUTH_RAND(3),
        SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER(4),
        SSCONF_PARAM_TYPE_CDIV_TIME(5),
        SSCONF_PARAM_TYPE_MEDIATYPE(6),
        SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR(7);

        private final int number;

        SSCONFParamType(int value) {
            this.number = value;
        }

        public int toNumber() {
            return this.number;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum SSConfIpAddrHostType {
        IP_ADDR_HOST_TYPE_NAF(0),
        IP_ADDR_HOST_TYPE_BSF(1),
        IP_ADDR_HOST_TYPE_LOCAL(2),
        IP_ADDR_HOST_TYPE_BUTT(3);

        private final int number;

        SSConfIpAddrHostType(int value) {
            this.number = value;
        }

        public int toNumber() {
            return this.number;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum SSCONFResetLevel {
        CAAS_SSCONF_RESET_LEVEL_BASE(0),
        CAAS_SSCONF_RESET_LEVEL_ALL(1),
        CAAS_SSCONF_RESET_LEVEL_INVALID(2);

        private final int number;

        SSCONFResetLevel(int value) {
            this.number = value;
        }

        public int toNumber() {
            return this.number;
        }
    }

    static {
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary("ut");
            System.loadLibrary("sci_ssconf");
            return;
        }
        String str = SciSys.getLibPath();
        if (str == null || str.length() == 0) {
            SciSys.loadLib("ut");
            SciSys.loadLib("sci_ssconf");
            return;
        }
        String str1 = str + "/libut.so";
        String str2 = str + "/libsci_ssconf.so";
        Log.e("SciSSConf", "str1=" + str1);
        Log.e("SciSSConf", "str2=" + str2);
        System.load(str1);
        System.load(str2);
    }

    public static int querySSConf(int ssType) {
        if (setSSConfParam(ssType, SSConfOpType.SSCONF_OP_TYPE_GET.toNumber(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), "") == 0) {
            return startConf(ssType, SSConfOpType.SSCONF_OP_TYPE_GET.toNumber());
        }
        return 1;
    }

    public static int enabledSSConf(int ssType, boolean isEnable) {
        String activeValue = HwImsConfigImpl.TRUE_VALUE;
        if (!isEnable) {
            activeValue = "false";
        }
        if (setSSConfParam(ssType, SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), activeValue) == 0) {
            return startConf(ssType, SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber());
        }
        return 1;
    }

    public static Boolean getSSConfEnabled(int ssType) {
        String[] strArray = new String[1];
        getSSConfParam(ssType, SSConfOpType.SSCONF_OP_TYPE_GET.toNumber(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), strArray);
        if (strArray[0] == null) {
            return false;
        }
        Boolean isEnabled = Boolean.valueOf(Boolean.parseBoolean(strArray[0]));
        return isEnabled;
    }

    public static String getSSConfParam(int ssType, int paramType) {
        String[] strArray = new String[1];
        if (getSSConfParam(ssType, SSConfOpType.SSCONF_OP_TYPE_GET.ordinal(), paramType, strArray) != 0 || strArray[0] == null) {
            return null;
        }
        String paramValue = strArray[0];
        return paramValue;
    }

    public static String getSSConflictPhraseText() {
        String[] strArray = new String[1];
        getSSConflictPhrase(strArray);
        if (strArray[0] == null) {
            return null;
        }
        String paramValue = strArray[0];
        return paramValue;
    }
}
