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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
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
    public static final int CHR_UT_ERROR_TYPE_BAICR = 19;
    public static final int CHR_UT_ERROR_TYPE_BAOC = 16;
    public static final int CHR_UT_ERROR_TYPE_BAOIC = 17;
    public static final int CHR_UT_ERROR_TYPE_BAOICXH = 18;
    public static final int CHR_UT_ERROR_TYPE_CB_ALL = 21;
    public static final int CHR_UT_ERROR_TYPE_CDIV = 5;
    public static final int CHR_UT_ERROR_TYPE_CDIV_ALL = 22;
    public static final int CHR_UT_ERROR_TYPE_CDIV_ALL_COND = 23;
    public static final int CHR_UT_ERROR_TYPE_CFB = 9;
    public static final int CHR_UT_ERROR_TYPE_CFNL = 8;
    public static final int CHR_UT_ERROR_TYPE_CFNR = 10;
    public static final int CHR_UT_ERROR_TYPE_CFNRC = 11;
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
    private static final int MEDIA_TYPE_AUDIO = 1;
    private static final int MEDIA_TYPE_NONE = 0;
    private static final int MEDIA_TYPE_VIDEO = 2;
    private static ChrUtCallBack chrUtCallBack;
    private static boolean isInitSystem = false;
    private static boolean isInitLibPath = false;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class CallBarringCondition {
        public static final int SSCONF_CB_CONDITION_ACR = 6;
        public static final int SSCONF_CB_CONDITION_BAIC = 0;
        public static final int SSCONF_CB_CONDITION_BAICR = 4;
        public static final int SSCONF_CB_CONDITION_BAOC = 1;
        public static final int SSCONF_CB_CONDITION_BAOCR = 5;
        public static final int SSCONF_CB_CONDITION_BAOIC = 2;
        public static final int SSCONF_CB_CONDITION_BAOICXH = 3;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class CallDiversionActionType {
        public static final int CF_ACTION_TYPE_ACTIVE = 1;
        public static final int CF_ACTION_TYPE_DEACTIVE = 0;
        public static final int CF_ACTION_TYPE_ERASURE = 4;
        public static final int CF_ACTION_TYPE_REGISTRATION = 3;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class CallForwardReason {
        public static final int SSCONF_CDIV_REASON_ALL = 6;
        public static final int SSCONF_CDIV_REASON_ALL_CONDITIONAL = 7;
        public static final int SSCONF_CDIV_REASON_CFB = 2;
        public static final int SSCONF_CDIV_REASON_CFNL = 1;
        public static final int SSCONF_CDIV_REASON_CFNR = 3;
        public static final int SSCONF_CDIV_REASON_CFNRC = 4;
        public static final int SSCONF_CDIV_REASON_CFT = 5;
        public static final int SSCONF_CDIV_REASON_CFU = 0;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface ChrUtCallBack {
        void chrUtCbGetErrReport(int[] iArr, String[] strArr);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class GbaType {
        public static final int SSCONF_GBA_NOT_SUPPORT = 2;
        public static final int SSCONF_GBA_SUPPORT_ME = 0;
        public static final int SSCONF_GBA_SUPPORT_ME_AND_U = 3;
        public static final int SSCONF_GBA_SUPPORT_U = 1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class OIRDefaultBehaviorType {
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT = 0;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED = 1;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED = 3;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED = 2;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class ParamCfgType {
        public static final int SSCONF_PARAM_CFG_BSF_ACCEPT_ENCODING_XML = 2;
        public static final int SSCONF_PARAM_CFG_DELETE_NAF_ACCEPT_ENCODING = 3;
        public static final int SSCONF_PARAM_CFG_HIDE_MEDIA_TAG = 0;
        public static final int SSCONF_PARAM_CFG_SUPT_TCP_FIN = 4;
        public static final int SSCONF_PARAM_CFG_USER_AGENT_WITH_3GPP_GBA = 1;
    }

    public static synchronized int init(Context context, boolean isWriteLog) {
        synchronized (SciSSConfHs.class) {
            if (!isInitSystem) {
                SciLogCfg logCfg = new SciLogCfg();
                logCfg.fileCount = 20L;
                logCfg.fileSize = 512000L;
                logCfg.fileName = "";
                logCfg.filePath = "";
                logCfg.closeCache = true;
                Log.i("SciSSConfHs", "Start init ut service.");
                Log.i("SciSSConfHs", "isWriteLog " + isWriteLog);
                if (isWriteLog) {
                    Log.i("SciSSConfHs", "init: Write log.");
                }
                if (!Build.CPU_ABI.contains("arm64-v8a") && !isInitLibPath) {
                    setLibPath("/system/app/HwIms/lib/arm");
                }
                Log.i("SciSSConfHs", "Start init sdk.");
                SciSys.init(context, "1.0", logCfg, -13721L);
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
        Log.i("SciSSConfHs", "setChrUtCallBack in func");
        chrUtCallBack = callBack;
    }

    public static void startChrUtErrReport(int conditionId) {
        Log.i("SciSSConfHs", "startChrUtErrReport in func");
        int serviceType = SciSSConf.getChrUtServiceType();
        int sendMessageType = SciSSConf.getChrUtSendMessageType();
        int failPhaseReport = SciSSConf.getChrUtFailPhaseReport();
        int defeatReason = SciSSConf.getChrUtDefeatReason();
        Log.i("SciSSConfHs", "startChrUtErrReport conditionId : " + conditionId + ", serviceType : " + serviceType + ", sendMessageType : " + sendMessageType + ", failPhaseReport : " + failPhaseReport + ", defeatReason : " + defeatReason);
        int[] intData = {0, 0, 0, 0, 0};
        intData[0] = conditionId;
        intData[1] = serviceType;
        intData[2] = sendMessageType;
        intData[3] = failPhaseReport;
        intData[4] = defeatReason;
        if (chrUtCallBack != null) {
            Log.i("SciSSConfHs", "startChrUtErrReport run call back func");
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

    public static int setNafAddr(String srvAddr, int port, boolean isUseHttps) {
        if (strIsNull(srvAddr) || port <= 0) {
            return 1;
        }
        return SciSSConf.setNafAddr(srvAddr, port, isUseHttps);
    }

    public static int setBsfAddr(String srvAddr, int port, boolean isUseHttps) {
        if (strIsNull(srvAddr) || port <= 0) {
            return 1;
        }
        return SciSSConf.setBsfAddr(srvAddr, port, isUseHttps);
    }

    public static int setHostIp(String[] hostIp, int hostType) {
        if (hostType < SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_NAF.toNumber() || hostType > SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_BUTT.toNumber()) {
            return 1;
        }
        for (String str : hostIp) {
            if (str == null) {
                return 1;
            }
        }
        int i = SciSSConf.setHostIp(hostIp, hostType);
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

    public static int setExtensionalParam(int num, boolean isCfg, String value) {
        if ((strIsNull(value) && isCfg) || num < 0) {
            return 1;
        }
        return SciSSConf.setExtensionalParam(num, isCfg, value);
    }

    public static int queryAll() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ALL.toNumber());
    }

    public static int queryCallDiversion() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV.toNumber());
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
        if (getSsTypeResult == -1) {
            return null;
        }
        String targetNumber = SciSSConf.getSSConfParam(getSsTypeResult, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.toNumber());
        if (targetNumber != null) {
            Pattern pattern = Pattern.compile("(?i)(sip|tel):(\\+?[0123456789abc*#]+)");
            Matcher match = pattern.matcher(targetNumber);
            if (match.find()) {
                return match.group(2);
            }
            return targetNumber;
        }
        return targetNumber;
    }

    private static int getSsTypeFromCallForwardReason(int callForwardReason) {
        switch (callForwardReason) {
            case 0:
            case 5:
                int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.toNumber();
                return ssType;
            case 1:
                int ssType2 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.toNumber();
                return ssType2;
            case 2:
                int ssType3 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.toNumber();
                return ssType3;
            case 3:
                int ssType4 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.toNumber();
                return ssType4;
            case 4:
                int ssType5 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRC.toNumber();
                return ssType5;
            case 6:
                int ssType6 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.toNumber();
                return ssType6;
            case 7:
                int ssType7 = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.toNumber();
                return ssType7;
            default:
                return -1;
        }
    }

    public static Date[] getCallForwardTime() {
        Date[] dateArray = null;
        String timeQuantum = SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.toNumber());
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

    private static int setCallDiversionConfPara(String callForwardTargetNumber, Date startTime, Date endTime, int noReplyTimer, int ssType, String cdivMediaType) {
        if (callForwardTargetNumber != null && callForwardTargetNumber.length() > 0) {
            Pattern pattern = Pattern.compile("(?i)\\+?[0123456789abc*#]+");
            Matcher match = pattern.matcher(callForwardTargetNumber);
            if (!match.matches() || SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.toNumber(), callForwardTargetNumber) != 0) {
                return 1;
            }
        }
        if (ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.toNumber()) {
            String timeQuantum = null;
            if (startTime != null && endTime != null) {
                SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                timeQuantum = sdf.format(startTime) + HwImsConfigImpl.SEPARATOR_TAG + sdf.format(endTime);
            }
            if (SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.toNumber(), timeQuantum) != 0) {
                return 1;
            }
        }
        if (SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.toNumber(), cdivMediaType) != 0) {
            return 1;
        }
        if (noReplyTimer != -1) {
            if ((ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.toNumber() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.toNumber() || ssType == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.toNumber()) && SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.toNumber(), String.valueOf(noReplyTimer)) != 0) {
                return 1;
            }
            return 0;
        }
        return 0;
    }

    public static int setCallDiversion(int callForwardReason, int cfActionType, String callForwardTargetNumber, Date startTime, Date endTime, int mediaType, int noReplyTimer) {
        String cfActionTypeString;
        String getMediaTypeResult;
        int getSsTypeResult = getSsTypeFromCallForwardReason(callForwardReason);
        if (getSsTypeResult == -1 || (cfActionTypeString = getCFActionTypeString(cfActionType)) == null || (getMediaTypeResult = getMediaTypeString(mediaType)) == null || SciSSConf.setSSConfParam(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), cfActionTypeString) != 0 || setCallDiversionConfPara(callForwardTargetNumber, startTime, endTime, noReplyTimer, getSsTypeResult, getMediaTypeResult) != 0) {
            return 1;
        }
        return SciSSConf.startConf(getSsTypeResult, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber());
    }

    public static String getCallDiversionNoReplyTimer() {
        return SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.toNumber());
    }

    public static int setCallDiversionNoReplyTimer(int noReplyTimer) {
        if (SciSSConf.setSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.toNumber(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.toNumber(), String.valueOf(noReplyTimer)) == 0) {
            return SciSSConf.startConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.toNumber(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber());
        }
        return 1;
    }

    public static int queryOriginatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.toNumber());
    }

    public static Boolean getOriginatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.toNumber());
    }

    public static int setOriginatingIdentityPresentation(boolean isEnable) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.toNumber(), isEnable);
    }

    public static int queryTerminatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.toNumber());
    }

    public static Boolean getTerminatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.toNumber());
    }

    public static int setTerminatingIdentityPresentation(boolean isEnable) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.toNumber(), isEnable);
    }

    public static int queryOriginatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.toNumber());
    }

    public static Boolean getOriginatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.toNumber());
    }

    public static int getOIRDefaultBehavior() {
        int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.toNumber();
        String oirEnable = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber());
        String defaultBehaviorValue = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.toNumber());
        if (oirEnable == null) {
            return 3;
        }
        if (Boolean.parseBoolean(oirEnable)) {
            if (SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED.equals(defaultBehaviorValue)) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    private static String getOIRDefaulBehaviorType(int defaultBehaviorType) {
        if (defaultBehaviorType == 1) {
            return SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
        }
        if (defaultBehaviorType == 2) {
            return SciSSConf.OIR_DEFAULT_BEHAVIOR_RESTRICTED;
        }
        return SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
    }

    public static int setOriginatingIdentityRestriction(boolean isEnable) {
        int defaultBehaviorType = 2;
        if (!isEnable) {
            defaultBehaviorType = 1;
        }
        return setOriginatingIdentityRestriction(isEnable, defaultBehaviorType);
    }

    public static int setOriginatingIdentityRestriction(boolean isEnable, int defaultBehaviorType) {
        String activeValue = HwImsConfigImpl.TRUE_VALUE;
        int ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.toNumber();
        int opType = SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber();
        if (!isEnable) {
            activeValue = "false";
        }
        String defaultBehaviorValue = getOIRDefaulBehaviorType(defaultBehaviorType);
        if (SciSSConf.setSSConfParam(ssType, opType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), activeValue) != 0) {
            return 1;
        }
        if (defaultBehaviorValue.length() > 0 && SciSSConf.setSSConfParam(ssType, opType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.toNumber(), defaultBehaviorValue) != 0) {
            Log.e("SciSSConfHs", "setOriginatingIdentityRestriction OIR_DEFALT_BEHAVIOR fail.");
            return 1;
        }
        return SciSSConf.startConf(ssType, opType);
    }

    public static int queryTerminatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.toNumber());
    }

    public static Boolean getTerminatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.toNumber());
    }

    public static int setTerminatingIdentityRestriction(boolean isEnable) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.toNumber(), isEnable);
    }

    public static int queryIncomingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ICB.toNumber());
    }

    public static int queryOutgoingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OCB.toNumber());
    }

    public static Boolean getCallBarringEnable(int callBarringCondition) {
        int ssType;
        switch (callBarringCondition) {
            case 0:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.toNumber();
                break;
            case 1:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.toNumber();
                break;
            case 2:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.toNumber();
                break;
            case 3:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICXH.toNumber();
                break;
            case 4:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICR.toNumber();
                break;
            case 5:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCR.toNumber();
                break;
            case 6:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ACR.toNumber();
                break;
            default:
                return false;
        }
        return SciSSConf.getSSConfEnabled(ssType);
    }

    public static int setCallBarring(int callBarringCondition, boolean isEnable) {
        return setCallBarring(callBarringCondition, isEnable, 1);
    }

    public static int setCallBarring(int callBarringCondition, boolean isEnable, int mediaType) {
        int ssType;
        String activeValue = HwImsConfigImpl.TRUE_VALUE;
        switch (callBarringCondition) {
            case 0:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.toNumber();
                break;
            case 1:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.toNumber();
                break;
            case 2:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.toNumber();
                break;
            case 3:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICXH.toNumber();
                break;
            case 4:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICR.toNumber();
                break;
            case 5:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCR.toNumber();
                break;
            case 6:
                ssType = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ACR.toNumber();
                break;
            default:
                return 1;
        }
        String getMediaTypeResult = getMediaTypeString(mediaType);
        if (getMediaTypeResult == null) {
            return 1;
        }
        if (!isEnable) {
            activeValue = "false";
        }
        if (SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.toNumber(), activeValue) != 0 || SciSSConf.setSSConfParam(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.toNumber(), getMediaTypeResult) != 0) {
            return 1;
        }
        return SciSSConf.startConf(ssType, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.toNumber());
    }

    private static String getCFActionTypeString(int cfActionType) {
        if (cfActionType == 0) {
            return SciSSConf.CF_ACTION_DEACTIVE;
        }
        if (cfActionType == 1) {
            return SciSSConf.CF_ACTION_ACTIVE;
        }
        if (cfActionType == 3) {
            return SciSSConf.CF_ACTION_REGISTRATION;
        }
        if (cfActionType == 4) {
            return SciSSConf.CF_ACTION_ERASURE;
        }
        return null;
    }

    private static String getMediaTypeString(int mediaType) {
        if (mediaType == 1) {
            return SciSSConf.MEDIA_AUDIO;
        }
        if (mediaType == 2) {
            return SciSSConf.MEDIA_VIDEO;
        }
        return null;
    }

    public static int queryCallWaiting() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.toNumber());
    }

    public static Boolean getCallWaitingEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.toNumber());
    }

    public static int setCallWaiting(boolean isEnable) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.toNumber(), isEnable);
    }

    public static int setContentType(int type) {
        return SciSSConf.setContentType(type == 1);
    }

    public static int getMediaType(int ssType) {
        String mediaType;
        if ((ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRC.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFT.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICXH.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICR.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCR.toNumber() && ssType != SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ACR.toNumber()) || (mediaType = SciSSConf.getSSConfParam(ssType, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.toNumber())) == null) {
            return 0;
        }
        if (SciSSConf.MEDIA_AUDIO.equals(mediaType)) {
            return 1;
        }
        if (SciSSConf.MEDIA_VIDEO.equals(mediaType)) {
            return 2;
        }
        Log.i("MEDIA_TYPE is ", mediaType);
        return 0;
    }

    private static boolean strIsNull(String str) {
        return str == null || str.length() < 1;
    }

    public static void reset() {
        reset(SciSSConf.SSCONFResetLevel.CAAS_SSCONF_RESET_LEVEL_BASE.toNumber());
    }

    public static int reset(int level) {
        SciSSConf.reset(level);
        if (SciSSConf.SSCONFResetLevel.CAAS_SSCONF_RESET_LEVEL_ALL.toNumber() == level) {
            setTrustCaPath("/system/etc/security/cacerts");
            return 0;
        }
        return 0;
    }
}
