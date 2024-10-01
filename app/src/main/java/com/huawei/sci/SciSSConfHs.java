package com.huawei.sci;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.sci.SciSSConf;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciSSConfHs {
    public static final int CHR_UT_ERROR_MOUDLE_NULL = 0;
    public static final int CHR_UT_ERROR_MOUDLE_UT = 1;
    public static final int CHR_UT_ERROR_OP_TYPE_GET = 0;
    public static final int CHR_UT_ERROR_OP_TYPE_PUT = 1;
    public static final int CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_200 = 6;
    public static final int CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_401 = 4;
    public static final int CHR_UT_ERROR_PHASE_RECV_NAF_401_BEFORE_GBA = 2;
    public static final int CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_200_AFTER_GBA = 10;
    public static final int CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_401_AFTER_GBA = 8;
    public static final int CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITHOUT_AUTH = 3;
    public static final int CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITH_AUTH = 5;
    public static final int CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_AFTER_GBA = 7;
    public static final int CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_BEFORE_GBA = 1;
    public static final int CHR_UT_ERROR_PHASE_SEND_NAF_WITH_AUTH_AFTER_GBA = 9;
    public static final int CHR_UT_ERROR_PHASE_UNKNOWN = 0;
    public static final int CHR_UT_ERROR_REASON_304_NOT_MDFY = 25;
    public static final int CHR_UT_ERROR_REASON_400_BAD_REQ = 21;
    public static final int CHR_UT_ERROR_REASON_403_FORBIDDEN = 22;
    public static final int CHR_UT_ERROR_REASON_404_NOT_FOUND = 26;
    public static final int CHR_UT_ERROR_REASON_409_CONFLICT = 27;
    public static final int CHR_UT_ERROR_REASON_412_PRECOND_FAIL = 23;
    public static final int CHR_UT_ERROR_REASON_503_SRV_UNAVAIL = 24;
    public static final int CHR_UT_ERROR_REASON_6XX_SERV_ERR = 28;
    public static final int CHR_UT_ERROR_REASON_ADD_CHILD_SERVICE_NODE = 30;
    public static final int CHR_UT_ERROR_REASON_AUTH_FAILED = 15;
    public static final int CHR_UT_ERROR_REASON_AUTH_TRY_TIMES_OVER = 32;
    public static final int CHR_UT_ERROR_REASON_BSF_AUTH_RESULT_SYN_SQN = 16;
    public static final int CHR_UT_ERROR_REASON_BSF_DNS_REQUEST = 5;
    public static final int CHR_UT_ERROR_REASON_BSF_DNS_RESPONSE = 6;
    public static final int CHR_UT_ERROR_REASON_BSF_HTTP_OPEN_FAIL = 29;
    public static final int CHR_UT_ERROR_REASON_BSF_TCP_LINK_CONN = 8;
    public static final int CHR_UT_ERROR_REASON_BSF_TCP_LINK_OPEN = 7;
    public static final int CHR_UT_ERROR_REASON_CONN_TIMEOUT = 10;
    public static final int CHR_UT_ERROR_REASON_HEADER_ANALYSIS_FAIL = 20;
    public static final int CHR_UT_ERROR_REASON_IN_REQING = 14;
    public static final int CHR_UT_ERROR_REASON_MAKE_XML_BODY_FAIL = 31;
    public static final int CHR_UT_ERROR_REASON_NAF_DNS_REQUEST = 2;
    public static final int CHR_UT_ERROR_REASON_NAF_DNS_RESPONSE = 3;
    public static final int CHR_UT_ERROR_REASON_NAF_TCP_LINK_BUILD = 4;
    public static final int CHR_UT_ERROR_REASON_NORMAL = 0;
    public static final int CHR_UT_ERROR_REASON_OTHER_ERROR_CODE = 9;
    public static final int CHR_UT_ERROR_REASON_SEND_FAIL = 12;
    public static final int CHR_UT_ERROR_REASON_SERV_DISCED = 11;
    public static final int CHR_UT_ERROR_REASON_SOCKET_ERR = 1;
    public static final int CHR_UT_ERROR_REASON_UNAUTHOR_GBA = 17;
    public static final int CHR_UT_ERROR_REASON_UNAUTHOR_GBA_UICC = 18;
    public static final int CHR_UT_ERROR_REASON_WAIT_RSP_TIMEOUT = 13;
    public static final int CHR_UT_ERROR_REASON_XML_ANALYSIS_FAIL = 19;
    public static final int CHR_UT_ERROR_TYPE_ALL = 0;
    public static final int CHR_UT_ERROR_TYPE_BAIC = 15;
    public static final int CHR_UT_ERROR_TYPE_BAICr = 19;
    public static final int CHR_UT_ERROR_TYPE_BAOC = 16;
    public static final int CHR_UT_ERROR_TYPE_BAOIC = 17;
    public static final int CHR_UT_ERROR_TYPE_BAOICxH = 18;
    public static final int CHR_UT_ERROR_TYPE_CB_ALL = 21;
    public static final int CHR_UT_ERROR_TYPE_CDIV = 5;
    public static final int CHR_UT_ERROR_TYPE_CDIV_ALL = 22;
    public static final int CHR_UT_ERROR_TYPE_CDIV_ALL_COND = 23;
    public static final int CHR_UT_ERROR_TYPE_CFB = 9;
    public static final int CHR_UT_ERROR_TYPE_CFNL = 8;
    public static final int CHR_UT_ERROR_TYPE_CFNR = 10;
    public static final int CHR_UT_ERROR_TYPE_CFNRc = 11;
    public static final int CHR_UT_ERROR_TYPE_CFT = 12;
    public static final int CHR_UT_ERROR_TYPE_CFU = 7;
    public static final int CHR_UT_ERROR_TYPE_CW = 20;
    public static final int CHR_UT_ERROR_TYPE_ICB = 13;
    public static final int CHR_UT_ERROR_TYPE_NRT = 6;
    public static final int CHR_UT_ERROR_TYPE_OCB = 14;
    public static final int CHR_UT_ERROR_TYPE_OIP = 1;
    public static final int CHR_UT_ERROR_TYPE_OIR = 3;
    public static final int CHR_UT_ERROR_TYPE_TIP = 2;
    public static final int CHR_UT_ERROR_TYPE_TIR = 4;
    private static final int GET_SSTYPE_FAILED = -1;
    private static final int MAX_TIME_NUMBER = 2;
    private static final int RET_MEDIA_AUDIO = 1;
    private static final int RET_MEDIA_NONE = 0;
    private static final int RET_MEDIA_VIDEO = 2;
    private static ChrUtCallBack chrUtCallBack;
    private static boolean isInitSystem = false;
    private static boolean isInitLibPath = false;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class CallBarringCondition {
        public static final int SSCONF_CB_CONDITION_BAIC = 0;
        public static final int SSCONF_CB_CONDITION_BAICr = 4;
        public static final int SSCONF_CB_CONDITION_BAOC = 1;
        public static final int SSCONF_CB_CONDITION_BAOCr = 5;
        public static final int SSCONF_CB_CONDITION_BAOIC = 2;
        public static final int SSCONF_CB_CONDITION_BAOICxH = 3;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class CallDiversionActionType {
        public static final int CF_ACTION_TYPE_ACTIVE = 1;
        public static final int CF_ACTION_TYPE_DEACTIVE = 0;
        public static final int CF_ACTION_TYPE_ERASURE = 4;
        public static final int CF_ACTION_TYPE_REGISTRATION = 3;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class CallForwardReason {
        public static final int SSCONF_CDIV_REASON_ALL = 6;
        public static final int SSCONF_CDIV_REASON_ALL_CONDITIONAL = 7;
        public static final int SSCONF_CDIV_REASON_CFB = 2;
        public static final int SSCONF_CDIV_REASON_CFNL = 1;
        public static final int SSCONF_CDIV_REASON_CFNR = 3;
        public static final int SSCONF_CDIV_REASON_CFNRc = 4;
        public static final int SSCONF_CDIV_REASON_CFT = 5;
        public static final int SSCONF_CDIV_REASON_CFU = 0;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface ChrUtCallBack {
        void chrUtCbGetErrReport(int[] iArr, String[] strArr);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class GbaType {
        public static final int SSCONF_GBA_NOT_SUPPORT = 2;
        public static final int SSCONF_GBA_SUPPORT_ME = 0;
        public static final int SSCONF_GBA_SUPPORT_ME_AND_U = 3;
        public static final int SSCONF_GBA_SUPPORT_U = 1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class OIRDefaultBehaviorType {
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT = 0;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED = 1;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED = 3;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED = 2;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class ParamCfgType {
        public static final int SSCONF_PARAM_CFG_BSF_ACCEPT_ENCODING_XML = 2;
        public static final int SSCONF_PARAM_CFG_DELETE_NAF_ACCEPT_ENCODING = 3;
        public static final int SSCONF_PARAM_CFG_HIDE_MEDIA_TAG = 0;
        public static final int SSCONF_PARAM_CFG_SUPT_TCP_FIN = 4;
        public static final int SSCONF_PARAM_CFG_USER_AGENT_WITH_3GPP_GBA = 1;
    }

    public static synchronized int init(Context ctx, boolean isWriteLog) {
        synchronized (SciSSConfHs.class) {
            if (!isInitSystem) {
                SciLogCfg logCfg = new SciLogCfg();
                logCfg.fileCount = 20L;
                logCfg.fileSize = 512000L;
                logCfg.fileName = HwImsConfigImpl.NULL_STRING_VALUE;
                logCfg.filePath = HwImsConfigImpl.NULL_STRING_VALUE;
                logCfg.closeCache = true;
                Log.i("SciSSConfHs", "Start init ut service.");
                Log.d("SciSSConfHs", "isWriteLog " + isWriteLog);
                if (isWriteLog) {
                    Log.i("SciSSConfHs", "init: Write log.");
                }
                if (!Build.CPU_ABI.contains("arm64-v8a") && !isInitLibPath) {
                    setLibPath("/system/app/HwIms/lib/arm");
                }
                Log.i("SciSSConfHs", "Start init sdk.");
                SciSys.init(ctx, "1.0", logCfg, -13721L);
                SciDefaultTls.load();
                if (SciSSConf.init() != 0) {
                    Log.e("SciSSConfHs", "Init ut failed.");
                    return 1;
                }
                setTrustCaPath("/system/etc/security/cacerts");
                isInitSystem = true;
            }
            return 0;
        }
    }

    public static synchronized void destroy() {
        synchronized (SciSSConfHs.class) {
            Log.i("SciSSConfHs", "Start to stop service.");
            SciSSConf.destroy();
            SciSys.destory();
            isInitLibPath = false;
            isInitSystem = false;
        }
    }

    public static void setChrUtCallBack(ChrUtCallBack callBack) {
        Log.d("SciSSConfHs", "setChrUtCallBack in func");
        chrUtCallBack = callBack;
    }

    public static void startChrUtErrReport(int ConditionId) {
        Log.d("SciSSConfHs", "startChrUtErrReport in func");
        int[] intData = {0, 0, 0, 0, 0};
        int ServiceType = SciSSConf.getChrUtServiceType();
        int SendMessageType = SciSSConf.getChrUtSendMessageType();
        int FailPhaseReport = SciSSConf.getChrUtFailPhaseReport();
        int DefeatReason = SciSSConf.getChrUtDefeatReason();
        Log.d("SciSSConfHs", "startChrUtErrReport ConditionId : " + ConditionId + ", ServiceType : " + ServiceType + ", SendMessageType : " + SendMessageType + ", FailPhaseReport : " + FailPhaseReport + ", DefeatReason : " + DefeatReason);
        intData[0] = ConditionId;
        intData[1] = ServiceType;
        intData[2] = SendMessageType;
        intData[3] = FailPhaseReport;
        intData[4] = DefeatReason;
        if (chrUtCallBack != null) {
            Log.d("SciSSConfHs", "startChrUtErrReport run call back func");
            chrUtCallBack.chrUtCbGetErrReport(intData, null);
        }
    }

    public static int setTrustCaPath(String path) {
        if (!strIsNull(path)) {
            return SciSSConf.setTrustCaPath(path);
        }
        return 1;
    }

    public static synchronized int setLibPath(String path) {
        synchronized (SciSSConfHs.class) {
            if (strIsNull(path)) {
                return 1;
            }
            isInitLibPath = true;
            Log.i("SciSSConfHs", "setLibPath: " + path);
            SciSys.setLibPath(path);
            return 0;
        }
    }

    public static int setParamsCfg(int cfgParam, String value) {
        if (strIsNull(value)) {
            Log.e("SciSSConfHs", "setParamsCfg : invalid value");
            return 1;
        }
        return SciSSConf.setParamsCfg(cfgParam, value);
    }

    public static int isSupportNodeSelector(boolean isSupport) {
        return SciSSConf.setSupportNodeSelector(isSupport);
    }

    public static int setSupportXcapNamespace(boolean isSupport) {
        return SciSSConf.setSupportXcapNamespace(isSupport);
    }

    public static int setSupportTmpi(boolean isSupport) {
        return SciSSConf.setSupportTmpi(isSupport);
    }

    public static int setTmpi(String tmpi) {
        if (strIsNull(tmpi)) {
            return 1;
        }
        return SciSSConf.setTmpi(tmpi);
    }

    public static int setSupportGBAType(int gbaType) {
        return SciSSConf.setSupportGBAType(gbaType);
    }

    public static int setNafAddr(String srvAddr, int port, boolean useHttps) {
        if (strIsNull(srvAddr) || port <= 0) {
            return 1;
        }
        return SciSSConf.setNafAddr(srvAddr, port, useHttps);
    }

    public static int setBsfAddr(String srvAddr, int port, boolean useHttps) {
        if (strIsNull(srvAddr) || port <= 0) {
            return 1;
        }
        return SciSSConf.setBsfAddr(srvAddr, port, useHttps);
    }

    public static int setHostIp(String[] strHostIp, int iHostType) {
        if (iHostType < SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_NAF.ordinal() || iHostType > SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_BUTT.ordinal()) {
            return 1;
        }
        for (String str : strHostIp) {
            if (str == null) {
                return 1;
            }
        }
        int i = SciSSConf.setHostIp(strHostIp, iHostType);
        return i;
    }

    public static int setLocalUserName(String localUserName) {
        if (strIsNull(localUserName)) {
            return 1;
        }
        return SciSSConf.setLocalUserName(localUserName);
    }

    public static int setHomeDomainName(String homeDomainName) {
        if (strIsNull(homeDomainName)) {
            return 1;
        }
        return SciSSConf.setHomeDomainName(homeDomainName);
    }

    public static int setXcapRootUri(String xcapRootUri) {
        if (strIsNull(xcapRootUri)) {
            return 1;
        }
        return SciSSConf.setXcapRootUri(xcapRootUri);
    }

    public static int setAuthUserName(String authUserName) {
        if (strIsNull(authUserName)) {
            return 1;
        }
        SciSSConfAuthInfo.getInstance().setImpi(authUserName);
        return SciSSConf.setAuthUserName(authUserName);
    }

    public static int setX3gppIntendId(String intendIdStr) {
        if (strIsNull(intendIdStr)) {
            return 1;
        }
        return SciSSConf.setX3gppIntendId(intendIdStr);
    }

    public static int setExtensionalParam(int num, boolean bIsCfg, String value) {
        if ((strIsNull(value) && bIsCfg) || num < 0) {
            return 1;
        }
        return SciSSConf.setExtensionalParam(num, bIsCfg, value);
    }

    public static int queryAll() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ALL.ordinal());
    }

    public static int queryCallDiversion() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV.ordinal());
    }

    public static Boolean getCallDiversionEnable(int callForwardReason) {
        int getSsTypeResult = getSsTypeFromCallForwardReason(callForwardReason);
        if (getSsTypeResult == -1) {
            return false;
        }
        return SciSSConf.getSSConfEnabled(getSsTypeResult);
    }

    public static String getCallForwardTargetNumber(int callForwardReason) {
        int getSsTypeResult = getSsTypeFromCallForwardReason(callForwardReason);
        if (getSsTypeResult != -1) {
            String targetNumber = SciSSConf.getSSConfParam(getSsTypeResult, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.ordinal());
            if (targetNumber != null) {
                Pattern p = Pattern.compile("(?i)(sip|tel):(\\+?[0123456789abc*#]+)");
                Matcher m = p.matcher(targetNumber);
                if (m.find()) {
                    return m.group(2);
                }
                return targetNumber;
            }
            return targetNumber;
        }
        return null;
    }

    private static int getSsTypeFromCallForwardReason(int callForwardReason) {
        switch (callForwardReason) {
            case 0:
                int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal();
                return ssType;
            case 1:
                int ssType2 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.ordinal();
                return ssType2;
            case 2:
                int ssType3 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.ordinal();
                return ssType3;
            case 3:
                int ssType4 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal();
                return ssType4;
            case 4:
                int ssType5 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRc.ordinal();
                return ssType5;
            case 5:
                int ssType6 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal();
                return ssType6;
            case 6:
                int ssType7 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal();
                return ssType7;
            case 7:
                int ssType8 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal();
                return ssType8;
            default:
                return -1;
        }
    }

    public static Date[] getCallForwardTime() {
        Date[] dateArray = null;
        String timeQuantum = SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.ordinal());
        if (!strIsNull(timeQuantum)) {
            String[] strArray = timeQuantum.split(HwImsConfigImpl.SEPARATOR_TAG);
            if (strArray.length != 2) {
                Log.e("SciSSConfHs", "The time quantum is error: " + timeQuantum);
                return null;
            }
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            dateArray = new Date[2];
            for (int i = 0; i < strArray.length; i++) {
                try {
                    Date date = sdf.parse(strArray[i].trim());
                    dateArray[i] = date;
                } catch (ParseException e) {
                    Log.e("SciSSConfHs", "Parse time failed: " + timeQuantum);
                    return null;
                }
            }
        }
        return dateArray;
    }

    public static int setCallDiversion(int callForwardReason, boolean enabled, String callForwardTargetNumber, int mediaType) {
        return setCallDiversion(callForwardReason, enabled, callForwardTargetNumber, null, null, mediaType);
    }

    public static int setCallDiversion(int callForwardReason, boolean enabled, String callForwardTargetNumber, Date startTime, Date endTime, int mediaType) {
        return setCallDiversion(callForwardReason, enabled, callForwardTargetNumber, startTime, endTime, mediaType, -1);
    }

    public static int setCallDiversion(int callForwardReason, boolean enabled, String callForwardTargetNumber, Date startTime, Date endTime, int mediaType, int noReplyTimer) {
        int iCFActionType = 0;
        if (enabled) {
            iCFActionType = 1;
        }
        return setCallDiversionNew(callForwardReason, iCFActionType, callForwardTargetNumber, startTime, endTime, mediaType, noReplyTimer);
    }

    public static int setCallDiversionNew(int callForwardReason, int iCFActionType, String callForwardTargetNumber, int mediaType, int noReplyTimer) {
        return setCallDiversionNew(callForwardReason, iCFActionType, callForwardTargetNumber, null, null, mediaType, noReplyTimer);
    }

    public static int setCallDiversionNew(int callForwardReason, int iCFActionType, String callForwardTargetNumber, Date startTime, Date endTime, int mediaType, int noReplyTimer) {
        String strCFActionTypeString;
        String getMediaTypeResult;
        int getSsTypeResult = getSsTypeFromCallForwardReason(callForwardReason);
        if (getSsTypeResult != -1 && (strCFActionTypeString = getCFActionTypeString(iCFActionType)) != null && (getMediaTypeResult = getMediaTypeString(mediaType)) != null && SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), strCFActionTypeString) == 0) {
            if (callForwardTargetNumber != null && callForwardTargetNumber.length() > 0) {
                Pattern p = Pattern.compile("(?i)\\+?[0123456789abc*#]+");
                Matcher m = p.matcher(callForwardTargetNumber);
                if (!m.matches() || SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.ordinal(), callForwardTargetNumber) != 0) {
                    return 1;
                }
            }
            if (getSsTypeResult == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal()) {
                String timeQuantum = null;
                if (startTime != null && endTime != null) {
                    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                    timeQuantum = sdf.format(startTime) + HwImsConfigImpl.SEPARATOR_TAG + sdf.format(endTime);
                }
                if (SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.ordinal(), timeQuantum) != 0) {
                    return 1;
                }
            }
            if (SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal(), getMediaTypeResult) != 0) {
                return 1;
            }
            if (-1 == noReplyTimer || (!(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal() == getSsTypeResult || SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal() == getSsTypeResult || SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal() == getSsTypeResult) || SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal(), String.valueOf(noReplyTimer)) == 0)) {
                return SciSSConf.startConf(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
            }
            return 1;
        }
        return 1;
    }

    public static String getCallDiversionNoReplyTimer() {
        return SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal());
    }

    public static int setCallDiversionNoReplyTimer(int noReplyTimer) {
        if (SciSSConf.setSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal(), String.valueOf(noReplyTimer)) == 0) {
            return SciSSConf.startConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
        }
        return 1;
    }

    public static int queryOriginatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal());
    }

    public static Boolean getOriginatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal());
    }

    public static int setOriginatingIdentityPresentation(boolean enabled) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal(), enabled);
    }

    public static int queryTerminatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal());
    }

    public static Boolean getTerminatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal());
    }

    public static int setTerminatingIdentityPresentation(boolean enabled) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal(), enabled);
    }

    public static int queryOriginatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal());
    }

    public static Boolean getOriginatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal());
    }

    public static int getOIRDefaultBehavior() {
        int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal();
        String OIREnable = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal());
        String defaultBehaviorValue = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.ordinal());
        if (OIREnable == null) {
            return 3;
        }
        if (Boolean.parseBoolean(OIREnable)) {
            if (SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED.equals(defaultBehaviorValue)) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    private static String getOIRDefaulBehaviorType(int defaultBehaviorType) {
        switch (defaultBehaviorType) {
            case 1:
                return SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
            case 2:
                return SciSSConf.OIR_DEFAULT_BEHAVIOR_RESTRICTED;
            default:
                return SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
        }
    }

    public static int setOriginatingIdentityRestriction(boolean enabled) {
        int defaultBehaviorType = 2;
        if (!enabled) {
            defaultBehaviorType = 1;
        }
        return setOriginatingIdentityRestriction(enabled, defaultBehaviorType);
    }

    public static int setOriginatingIdentityRestriction(boolean enabled, int defaultBehaviorType) {
        String activeValue = HwImsConfigImpl.TRUE_VALUE;
        int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal();
        int opType = SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal();
        if (!enabled) {
            activeValue = "false";
        }
        String defaultBehaviorValue = getOIRDefaulBehaviorType(defaultBehaviorType);
        if (SciSSConf.setSSConfParam(ssType, opType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), activeValue) == 0) {
            if (defaultBehaviorValue.length() > 0 && SciSSConf.setSSConfParam(ssType, opType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.ordinal(), defaultBehaviorValue) != 0) {
                Log.e("SciSSConfHs", "setOriginatingIdentityRestriction OIR_DEFALT_BEHAVIOR fail.");
                return 1;
            }
            return SciSSConf.startConf(ssType, opType);
        }
        return 1;
    }

    public static int queryTerminatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal());
    }

    public static Boolean getTerminatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal());
    }

    public static int setTerminatingIdentityRestriction(boolean enabled) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal(), enabled);
    }

    public static int queryIncomingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ICB.ordinal());
    }

    public static int queryOutgoingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OCB.ordinal());
    }

    public static Boolean getCallBarringEnable(int callBarringCondition) {
        int ssType;
        switch (callBarringCondition) {
            case 0:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal();
                break;
            case 1:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal();
                break;
            case 2:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal();
                break;
            case 3:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal();
                break;
            case 4:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal();
                break;
            case 5:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal();
                break;
            default:
                return false;
        }
        return SciSSConf.getSSConfEnabled(ssType);
    }

    public static int setCallBarring(int callBarringCondition, boolean enabled) {
        return setCallBarring(callBarringCondition, enabled, 1);
    }

    public static int setCallBarring(int callBarringCondition, boolean enabled, int mediaType) {
        int ssType;
        String activeValue = HwImsConfigImpl.TRUE_VALUE;
        switch (callBarringCondition) {
            case 0:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal();
                break;
            case 1:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal();
                break;
            case 2:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal();
                break;
            case 3:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal();
                break;
            case 4:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal();
                break;
            case 5:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal();
                break;
            default:
                return 1;
        }
        String getMediaTypeResult = getMediaTypeString(mediaType);
        if (getMediaTypeResult == null) {
            return 1;
        }
        if (!enabled) {
            activeValue = "false";
        }
        if (SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), activeValue) != 0 || SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal(), getMediaTypeResult) != 0) {
            return 1;
        }
        return SciSSConf.startConf(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
    }

    private static String getCFActionTypeString(int iCFActionType) {
        switch (iCFActionType) {
            case 0:
                return SciSSConf.CF_ACTION_DEACTIVE;
            case 1:
                return SciSSConf.CF_ACTION_ACTIVE;
            case 2:
            default:
                return null;
            case 3:
                return SciSSConf.CF_ACTION_REGISTRATION;
            case 4:
                return SciSSConf.CF_ACTION_ERASURE;
        }
    }

    private static String getMediaTypeString(int mediaType) {
        switch (mediaType) {
            case 1:
                return SciSSConf.MEDIA_AUDIO;
            case 2:
                return SciSSConf.MEDIA_VIDEO;
            default:
                return null;
        }
    }

    public static int queryCallWaiting() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal());
    }

    public static Boolean getCallWaitingEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal());
    }

    public static int setCallWaiting(boolean enabled) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal(), enabled);
    }

    public static int setContentType(int type) {
        return SciSSConf.setContentType(type == 1);
    }

    public static int getMediaType(int ssType) {
        String mediaType;
        if ((ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRc.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFT.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal()) && (mediaType = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal())) != null) {
            if (SciSSConf.MEDIA_AUDIO.equals(mediaType)) {
                return 1;
            }
            if (SciSSConf.MEDIA_VIDEO.equals(mediaType)) {
                return 2;
            }
            Log.i("MEDIA_TYPE is ", mediaType);
            return 0;
        }
        return 0;
    }

    private static boolean strIsNull(String str) {
        return str == null || str.length() < 1;
    }

    public static void reset() {
        reset(SciSSConf.SSCONFResetLevel.EN_CAAS_SSCONF_RESET_LEVEL_BASE.ordinal());
    }

    public static int reset(int iLevel) {
        SciSSConf.reset(iLevel);
        if (SciSSConf.SSCONFResetLevel.EN_CAAS_SSCONF_RESET_LEVEL_ALL.ordinal() == iLevel) {
            setTrustCaPath("/system/etc/security/cacerts");
            return 0;
        }
        return 0;
    }
}
