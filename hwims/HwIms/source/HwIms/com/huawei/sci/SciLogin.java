package com.huawei.sci;

/* loaded from: SciLogin.class */
public class SciLogin {
    public static final int EN_CRS_CFG_MAJOR_ACCESS_TYPE = 31;
    public static final int EN_CRS_CFG_MAJOR_BASE_ALL_FAIL_RELOGIN_TIMER_LEN = 79;
    public static final int EN_CRS_CFG_MAJOR_BASE_NOT_ALL_FAIL_RELOGIN_TIMER_LEN = 80;
    public static final int EN_CRS_CFG_MAJOR_CELL_ID = 32;
    public static final int EN_CRS_CFG_MAJOR_DM_BACK_UP_PARAM = 81;
    public static final int EN_CRS_CFG_MAJOR_DM_HTTPS_PORT = 19;
    public static final int EN_CRS_CFG_MAJOR_DM_HTTP_PORT = 18;
    public static final int EN_CRS_CFG_MAJOR_DM_IP = 1;
    public static final int EN_CRS_CFG_MAJOR_DM_MODE = 0;
    public static final int EN_CRS_CFG_MAJOR_DM_PORT = 2;
    public static final int EN_CRS_CFG_MAJOR_DM_SDK_VERSION = 20;
    public static final int EN_CRS_CFG_MAJOR_GSMA_CHECK = 73;
    public static final int EN_CRS_CFG_MAJOR_IMEI = 33;
    public static final int EN_CRS_CFG_MAJOR_IMPI_FORMAT = 83;
    public static final int EN_CRS_CFG_MAJOR_IMS_DOMAIN = 5;
    public static final int EN_CRS_CFG_MAJOR_IMS_IP = 3;
    public static final int EN_CRS_CFG_MAJOR_IMS_PORT = 4;
    public static final int EN_CRS_CFG_MAJOR_IMS_REG_EXPIRES = 6;
    public static final int EN_CRS_CFG_MAJOR_MAC_ADDR = 59;
    public static final int EN_CRS_CFG_MAJOR_MAX_RELOGIN_TIMER_LEN = 78;
    public static final int EN_CRS_CFG_MAJOR_MSISDN_FOR_AUTO_RELOGIN = 89;
    public static final int EN_CRS_CFG_MAJOR_MULTI_DEV = 72;
    public static final int EN_CRS_CFG_MAJOR_NAT_KEEP_ALIVE = 75;
    public static final int EN_CRS_CFG_MAJOR_NICK_NAME = 14;
    public static final int EN_CRS_CFG_MAJOR_RCS_FRAME_WORK_TYPE = 23;
    public static final int EN_CRS_CFG_MAJOR_RCS_MODULE = 24;
    public static final int EN_CRS_CFG_MAJOR_REG_MSISDN = 74;
    public static final int EN_CRS_CFG_MAJOR_RPG_IP = 7;
    public static final int EN_CRS_CFG_MAJOR_RPG_PORT = 8;
    public static final int EN_CRS_CFG_MAJOR_SIP_REGISTER_WITH_AUTH = 84;
    public static final int EN_CRS_CFG_MAJOR_SIP_SIGNAL_WITH_AUTH = 82;
    public static final int EN_CRS_CFG_MAJOR_SIP_TPT_RETRY_MAX_TIMES = 77;
    public static final int EN_CRS_CFG_MAJOR_SUPPORT_BARCYCLE = 85;
    public static final int EN_CRS_CFG_MAJOR_SVN_COUNT = 11;
    public static final int EN_CRS_CFG_MAJOR_SVN_IP = 12;
    public static final int EN_CRS_CFG_MAJOR_SVN_PASSWORD = 10;
    public static final int EN_CRS_CFG_MAJOR_SVN_PORT = 13;
    public static final int EN_CRS_CFG_MAJOR_SVN_USER_NAME = 9;
    public static final int EN_CRS_CFG_MAJOR_TEL_NUMBER_WITH_COUNTRY_CODE = 90;
    public static final int EN_CRS_CFG_MAJOR_TPT_TYPE = 17;
    public static final int EN_CRS_CFG_MAJOR_UPLOG_AUTH_TYPE = 87;
    public static final int EN_CRS_CFG_MAJOR_USER_AGENT = 16;
    public static final int EN_CRS_CFG_MINOR_BUTT = Integer.MAX_VALUE;
    public static final String EN_CRS_CFG_RCS_FRAME_WORK_VALUE_NOT_RCS = "255";
    public static final String EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCS = "0";
    public static final String EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCSE = "1";
    public static final String EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCS_RCSE = "2";
    public static final String EN_CRS_CFG_RCS_FRAME_WORK_VALUE_VOBB = "3";

    public static native int cleanUserPassword(String str);

    public static native int delUser(String str);

    public static native String[] getAllUser();

    public static native String getAssoUri(long j);

    public static native long getAssoUriSize();

    public static native String getCfgValue(int i, int i2);

    public static native SciLoginUserInfo getLastUserInfo();

    public static native SciCfgLogin getLastUserLoginCfg();

    public static native int getMwiFaxMessageCount(int[] iArr);

    public static native String getMwiMessageAccount();

    public static native boolean getMwiMessageWait();

    public static native int getMwiVideoMessageCount(int[] iArr);

    public static native int getMwiVoiceMessageCount(int[] iArr);

    public static native SciLoginUserInfo getUserInfo(String str);

    public static native SciCfgLogin getUserLoginCfg(String str);

    public static native int initLastUserInfo();

    public static int login(SciLoginUserInfo sciLoginUserInfo) {
        if (sciLoginUserInfo == null) {
            return 0;
        }
        return login(sciLoginUserInfo, null);
    }

    public static native int login(SciLoginUserInfo sciLoginUserInfo, SciCfgLogin sciCfgLogin);

    public static native int logout();

    public static native int pushRefreshRegister();

    public static native int setAllUserSize(long j);

    public static native int setAuthExt(String str);

    public static native int setCfgValue(int i, int i2, String str);
}
