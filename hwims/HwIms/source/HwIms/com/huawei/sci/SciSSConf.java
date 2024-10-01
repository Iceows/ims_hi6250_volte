package com.huawei.sci;

import android.os.Build;
import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;

/* loaded from: SciSSConf.class */
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

    /* loaded from: SciSSConf$SSCONFParamType.class */
    public enum SSCONFParamType {
        SSCONF_PARAM_TYPE_ATTR_ACTIVE,
        SSCONF_PARAM_TYPE_FORWARD_TO_TARGET,
        SSCONF_PARAM_TYPE_AUTH_AUTN,
        SSCONF_PARAM_TYPE_AUTH_RAND,
        SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER,
        SSCONF_PARAM_TYPE_CDIV_TIME,
        SSCONF_PARAM_TYPE_MEDIATYPE,
        SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR
    }

    /* loaded from: SciSSConf$SSCONFResetLevel.class */
    public enum SSCONFResetLevel {
        EN_CAAS_SSCONF_RESET_LEVEL_BASE,
        EN_CAAS_SSCONF_RESET_LEVEL_ALL,
        EN_CAAS_SSCONF_RESET_LEVEL_INVALID
    }

    /* loaded from: SciSSConf$SSConfIpAddrHostType.class */
    public enum SSConfIpAddrHostType {
        IP_ADDR_HOST_TYPE_NAF,
        IP_ADDR_HOST_TYPE_BSF,
        IP_ADDR_HOST_TYPE_LOCAL,
        IP_ADDR_HOST_TYPE_BUTT
    }

    /* loaded from: SciSSConf$SSConfOpType.class */
    public enum SSConfOpType {
        SSCONF_OP_TYPE_GET,
        SSCONF_OP_TYPE_PUT
    }

    /* loaded from: SciSSConf$SSConfSSType.class */
    public enum SSConfSSType {
        SSCONF_SS_TYPE_ALL,
        SSCONF_SS_TYPE_OIP,
        SSCONF_SS_TYPE_TIP,
        SSCONF_SS_TYPE_OIR,
        SSCONF_SS_TYPE_TIR,
        SSCONF_SS_TYPE_CDIV,
        SSCONF_SS_TYPE_NRT,
        SSCONF_SS_TYPE_CFU,
        SSCONF_SS_TYPE_CFNL,
        SSCONF_SS_TYPE_CFB,
        SSCONF_SS_TYPE_CFNR,
        SSCONF_SS_TYPE_CFNRc,
        SSCONF_SS_TYPE_CFT,
        SSCONF_SS_TYPE_ICB,
        SSCONF_SS_TYPE_OCB,
        SSCONF_SS_TYPE_BAIC,
        SSCONF_SS_TYPE_BAOC,
        SSCONF_SS_TYPE_BAOIC,
        SSCONF_SS_TYPE_BAOICxH,
        SSCONF_SS_TYPE_BAICr,
        SSCONF_SS_TYPE_CW,
        SSCONF_SS_TYPE_CB_ALL,
        SSCONF_SS_TYPE_CDIV_ALL,
        SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL,
        SSCONF_SS_TYPE_BAOCr,
        SSCONF_SS_TYPE_BUTT
    }

    static {
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary("ut");
            System.loadLibrary("sci_ssconf");
            return;
        }
        String libPath = SciSys.getLibPath();
        if (libPath == null || libPath.length() == 0) {
            SciSys.loadLib("ut");
            SciSys.loadLib("sci_ssconf");
            return;
        }
        String str = libPath + "/libut.so";
        String str2 = libPath + "/libsci_ssconf.so";
        Log.e("SciSSConf", "str1=" + str);
        Log.e("SciSSConf", "str2=" + str2);
        System.load(str);
        System.load(str2);
    }

    public static native int continueConfWithAuth(int i, int i2, int i3, byte[] bArr, byte[] bArr2);

    public static native int continueSSConfService(int i, int i2, int i3, String str, byte[] bArr);

    public static native int destroy();

    public static int enabledSSConf(int i, boolean z) {
        String str = HwImsConfigImpl.TRUE_VALUE;
        if (!z) {
            str = "false";
        }
        if (setSSConfParam(i, SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), str) == 0) {
            return startConf(i, SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
        }
        return 1;
    }

    public static native int getChrUtDefeatReason();

    public static native int getChrUtFailPhaseReport();

    public static native int getChrUtInnerErrID();

    public static native int getChrUtSendMessageType();

    public static native int getChrUtServiceType();

    public static Boolean getSSConfEnabled(int i) {
        Boolean bool = false;
        String[] strArr = new String[1];
        getSSConfParam(i, SSConfOpType.SSCONF_OP_TYPE_GET.ordinal(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), strArr);
        if (strArr[0] != null) {
            bool = Boolean.valueOf(Boolean.parseBoolean(strArr[0]));
        }
        return bool;
    }

    public static native int getSSConfParam(int i, int i2, int i3, String[] strArr);

    public static String getSSConfParam(int i, int i2) {
        String[] strArr = new String[1];
        String str = null;
        if (getSSConfParam(i, SSConfOpType.SSCONF_OP_TYPE_GET.ordinal(), i2, strArr) == 0) {
            str = null;
            if (strArr[0] != null) {
                str = strArr[0];
            }
        }
        return str;
    }

    public static native int getSSConflictPhrase(String[] strArr);

    public static String getSSConflictPhraseText() {
        String str = null;
        String[] strArr = new String[1];
        getSSConflictPhrase(strArr);
        if (strArr[0] != null) {
            str = strArr[0];
        }
        return str;
    }

    public static native int init();

    public static int querySSConf(int i) {
        if (setSSConfParam(i, SSConfOpType.SSCONF_OP_TYPE_GET.ordinal(), SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), HwImsConfigImpl.NULL_STRING_VALUE) == 0) {
            return startConf(i, SSConfOpType.SSCONF_OP_TYPE_GET.ordinal());
        }
        return 1;
    }

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
}
