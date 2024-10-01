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

/* loaded from: SciSSConfHs.class */
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

    /* loaded from: SciSSConfHs$CallBarringCondition.class */
    public static final class CallBarringCondition {
        public static final int SSCONF_CB_CONDITION_BAIC = 0;
        public static final int SSCONF_CB_CONDITION_BAICr = 4;
        public static final int SSCONF_CB_CONDITION_BAOC = 1;
        public static final int SSCONF_CB_CONDITION_BAOCr = 5;
        public static final int SSCONF_CB_CONDITION_BAOIC = 2;
        public static final int SSCONF_CB_CONDITION_BAOICxH = 3;
    }

    /* loaded from: SciSSConfHs$CallDiversionActionType.class */
    public static final class CallDiversionActionType {
        public static final int CF_ACTION_TYPE_ACTIVE = 1;
        public static final int CF_ACTION_TYPE_DEACTIVE = 0;
        public static final int CF_ACTION_TYPE_ERASURE = 4;
        public static final int CF_ACTION_TYPE_REGISTRATION = 3;
    }

    /* loaded from: SciSSConfHs$CallForwardReason.class */
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

    /* loaded from: SciSSConfHs$ChrUtCallBack.class */
    public interface ChrUtCallBack {
        void chrUtCbGetErrReport(int[] iArr, String[] strArr);
    }

    /* loaded from: SciSSConfHs$GbaType.class */
    public static final class GbaType {
        public static final int SSCONF_GBA_NOT_SUPPORT = 2;
        public static final int SSCONF_GBA_SUPPORT_ME = 0;
        public static final int SSCONF_GBA_SUPPORT_ME_AND_U = 3;
        public static final int SSCONF_GBA_SUPPORT_U = 1;
    }

    /* loaded from: SciSSConfHs$OIRDefaultBehaviorType.class */
    public static final class OIRDefaultBehaviorType {
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT = 0;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED = 1;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED = 3;
        private static final int OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED = 2;
    }

    /* loaded from: SciSSConfHs$ParamCfgType.class */
    public static final class ParamCfgType {
        public static final int SSCONF_PARAM_CFG_BSF_ACCEPT_ENCODING_XML = 2;
        public static final int SSCONF_PARAM_CFG_DELETE_NAF_ACCEPT_ENCODING = 3;
        public static final int SSCONF_PARAM_CFG_HIDE_MEDIA_TAG = 0;
        public static final int SSCONF_PARAM_CFG_SUPT_TCP_FIN = 4;
        public static final int SSCONF_PARAM_CFG_USER_AGENT_WITH_3GPP_GBA = 1;
    }

    public static void destroy() {
        synchronized (SciSSConfHs.class) {
            try {
                Log.i("SciSSConfHs", "Start to stop service.");
                SciSSConf.destroy();
                SciSys.destory();
                isInitLibPath = false;
                isInitSystem = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String getCFActionTypeString(int i) {
        String str;
        switch (i) {
            case 0:
                str = SciSSConf.CF_ACTION_DEACTIVE;
                break;
            case 1:
                str = SciSSConf.CF_ACTION_ACTIVE;
                break;
            case 2:
            default:
                return null;
            case 3:
                str = SciSSConf.CF_ACTION_REGISTRATION;
                break;
            case 4:
                str = SciSSConf.CF_ACTION_ERASURE;
                break;
        }
        return str;
    }

    public static Boolean getCallBarringEnable(int i) {
        int ordinal;
        switch (i) {
            case 0:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal();
                break;
            case 1:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal();
                break;
            case 2:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal();
                break;
            case 3:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal();
                break;
            case 4:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal();
                break;
            case 5:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal();
                break;
            default:
                return false;
        }
        return SciSSConf.getSSConfEnabled(ordinal);
    }

    public static Boolean getCallDiversionEnable(int i) {
        int ssTypeFromCallForwardReason = getSsTypeFromCallForwardReason(i);
        if (ssTypeFromCallForwardReason != -1) {
            return SciSSConf.getSSConfEnabled(ssTypeFromCallForwardReason);
        }
        return false;
    }

    public static String getCallDiversionNoReplyTimer() {
        return SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal());
    }

    public static String getCallForwardTargetNumber(int i) {
        int ssTypeFromCallForwardReason = getSsTypeFromCallForwardReason(i);
        if (ssTypeFromCallForwardReason != -1) {
            String sSConfParam = SciSSConf.getSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.ordinal());
            String str = sSConfParam;
            if (sSConfParam != null) {
                Matcher matcher = Pattern.compile("(?i)(sip|tel):(\\+?[0123456789abc*#]+)").matcher(sSConfParam);
                str = sSConfParam;
                if (matcher.find()) {
                    str = matcher.group(2);
                }
            }
            return str;
        }
        return null;
    }

    public static Date[] getCallForwardTime() {
        Date[] dateArr = null;
        String sSConfParam = SciSSConf.getSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.ordinal());
        if (!strIsNull(sSConfParam)) {
            String[] split = sSConfParam.split(HwImsConfigImpl.SEPARATOR_TAG);
            if (split.length == 2) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
                Date[] dateArr2 = new Date[2];
                int i = 0;
                while (true) {
                    dateArr = dateArr2;
                    if (i >= split.length) {
                        break;
                    }
                    try {
                        dateArr2[i] = simpleDateFormat.parse(split[i].trim());
                        i++;
                    } catch (ParseException e) {
                        Log.e("SciSSConfHs", "Parse time failed: " + sSConfParam);
                        return null;
                    }
                }
            } else {
                Log.e("SciSSConfHs", "The time quantum is error: " + sSConfParam);
                return null;
            }
        }
        return dateArr;
    }

    public static Boolean getCallWaitingEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal());
    }

    public static int getMediaType(int i) {
        String sSConfParam;
        if ((i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRc.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFT.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal() || i == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal()) && (sSConfParam = SciSSConf.getSSConfParam(i, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal())) != null) {
            if (SciSSConf.MEDIA_AUDIO.equals(sSConfParam)) {
                return 1;
            }
            if (SciSSConf.MEDIA_VIDEO.equals(sSConfParam)) {
                return 2;
            }
            Log.i("MEDIA_TYPE is ", sSConfParam);
            return 0;
        }
        return 0;
    }

    private static String getMediaTypeString(int i) {
        String str;
        switch (i) {
            case 1:
                str = SciSSConf.MEDIA_AUDIO;
                break;
            case 2:
                str = SciSSConf.MEDIA_VIDEO;
                break;
            default:
                return null;
        }
        return str;
    }

    private static String getOIRDefaulBehaviorType(int i) {
        String str;
        switch (i) {
            case 1:
                str = SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
                break;
            case 2:
                str = SciSSConf.OIR_DEFAULT_BEHAVIOR_RESTRICTED;
                break;
            default:
                str = SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED;
                break;
        }
        return str;
    }

    public static int getOIRDefaultBehavior() {
        int ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal();
        String sSConfParam = SciSSConf.getSSConfParam(ordinal, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal());
        String sSConfParam2 = SciSSConf.getSSConfParam(ordinal, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.ordinal());
        if (sSConfParam == null) {
            return 3;
        }
        if (Boolean.parseBoolean(sSConfParam)) {
            return SciSSConf.OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED.equals(sSConfParam2) ? 1 : 2;
        }
        return 0;
    }

    public static Boolean getOriginatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal());
    }

    public static Boolean getOriginatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal());
    }

    private static int getSsTypeFromCallForwardReason(int i) {
        int ordinal;
        switch (i) {
            case 0:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal();
                break;
            case 1:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNL.ordinal();
                break;
            case 2:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFB.ordinal();
                break;
            case 3:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal();
                break;
            case 4:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNRc.ordinal();
                break;
            case 5:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal();
                break;
            case 6:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal();
                break;
            case 7:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal();
                break;
            default:
                return -1;
        }
        return ordinal;
    }

    public static Boolean getTerminatingIdentityPresentationEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal());
    }

    public static Boolean getTerminatingIdentityRestrictionEnabled() {
        return SciSSConf.getSSConfEnabled(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal());
    }

    public static int init(Context context, boolean z) {
        synchronized (SciSSConfHs.class) {
            try {
                if (!isInitSystem) {
                    SciLogCfg sciLogCfg = new SciLogCfg();
                    sciLogCfg.fileCount = 20L;
                    sciLogCfg.fileSize = 512000L;
                    sciLogCfg.fileName = HwImsConfigImpl.NULL_STRING_VALUE;
                    sciLogCfg.filePath = HwImsConfigImpl.NULL_STRING_VALUE;
                    sciLogCfg.closeCache = true;
                    Log.i("SciSSConfHs", "Start init ut service.");
                    Log.d("SciSSConfHs", "isWriteLog " + z);
                    if (z) {
                        Log.i("SciSSConfHs", "init: Write log.");
                    }
                    if (!Build.CPU_ABI.contains("arm64-v8a") && !isInitLibPath) {
                        setLibPath("/system/app/HwIms/lib/arm");
                    }
                    Log.i("SciSSConfHs", "Start init sdk.");
                    SciSys.init(context, "1.0", sciLogCfg, -13721L);
                    SciDefaultTls.load();
                    if (SciSSConf.init() != 0) {
                        Log.e("SciSSConfHs", "Init ut failed.");
                        return 1;
                    }
                    setTrustCaPath("/system/etc/security/cacerts");
                    isInitSystem = true;
                }
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int isSupportNodeSelector(boolean z) {
        return SciSSConf.setSupportNodeSelector(z);
    }

    public static int queryAll() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ALL.ordinal());
    }

    public static int queryCallDiversion() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV.ordinal());
    }

    public static int queryCallWaiting() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal());
    }

    public static int queryIncomingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_ICB.ordinal());
    }

    public static int queryOriginatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal());
    }

    public static int queryOriginatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal());
    }

    public static int queryOutgoingCallBarring() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OCB.ordinal());
    }

    public static int queryTerminatingIdentityPresentation() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal());
    }

    public static int queryTerminatingIdentityRestriction() {
        return SciSSConf.querySSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal());
    }

    public static int reset(int i) {
        SciSSConf.reset(i);
        if (SciSSConf.SSCONFResetLevel.EN_CAAS_SSCONF_RESET_LEVEL_ALL.ordinal() == i) {
            setTrustCaPath("/system/etc/security/cacerts");
            return 0;
        }
        return 0;
    }

    public static void reset() {
        reset(SciSSConf.SSCONFResetLevel.EN_CAAS_SSCONF_RESET_LEVEL_BASE.ordinal());
    }

    public static int setAuthUserName(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        SciSSConfAuthInfo.getInstance().setImpi(str);
        return SciSSConf.setAuthUserName(str);
    }

    public static int setBsfAddr(String str, int i, boolean z) {
        if (strIsNull(str) || i <= 0) {
            return 1;
        }
        return SciSSConf.setBsfAddr(str, i, z);
    }

    public static int setCallBarring(int i, boolean z) {
        return setCallBarring(i, z, 1);
    }

    public static int setCallBarring(int i, boolean z, int i2) {
        int ordinal;
        String str = HwImsConfigImpl.TRUE_VALUE;
        switch (i) {
            case 0:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAIC.ordinal();
                break;
            case 1:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOC.ordinal();
                break;
            case 2:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOIC.ordinal();
                break;
            case 3:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOICxH.ordinal();
                break;
            case 4:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAICr.ordinal();
                break;
            case 5:
                ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_BAOCr.ordinal();
                break;
            default:
                return 1;
        }
        String mediaTypeString = getMediaTypeString(i2);
        if (mediaTypeString != null) {
            if (!z) {
                str = "false";
            }
            if (SciSSConf.setSSConfParam(ordinal, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), str) == 0 && SciSSConf.setSSConfParam(ordinal, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal(), mediaTypeString) == 0) {
                return SciSSConf.startConf(ordinal, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
            }
            return 1;
        }
        return 1;
    }

    public static int setCallDiversion(int i, boolean z, String str, int i2) {
        return setCallDiversion(i, z, str, null, null, i2);
    }

    public static int setCallDiversion(int i, boolean z, String str, Date date, Date date2, int i2) {
        return setCallDiversion(i, z, str, date, date2, i2, -1);
    }

    public static int setCallDiversion(int i, boolean z, String str, Date date, Date date2, int i2, int i3) {
        int i4 = 0;
        if (z) {
            i4 = 1;
        }
        return setCallDiversionNew(i, i4, str, date, date2, i2, i3);
    }

    public static int setCallDiversionNew(int i, int i2, String str, int i3, int i4) {
        return setCallDiversionNew(i, i2, str, null, null, i3, i4);
    }

    public static int setCallDiversionNew(int i, int i2, String str, Date date, Date date2, int i3, int i4) {
        String cFActionTypeString;
        String mediaTypeString;
        int ssTypeFromCallForwardReason = getSsTypeFromCallForwardReason(i);
        if (ssTypeFromCallForwardReason == -1 || (cFActionTypeString = getCFActionTypeString(i2)) == null || (mediaTypeString = getMediaTypeString(i3)) == null || SciSSConf.setSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), cFActionTypeString) != 0) {
            return 1;
        }
        if (str == null || str.length() <= 0 || (Pattern.compile("(?i)\\+?[0123456789abc*#]+").matcher(str).matches() && SciSSConf.setSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_FORWARD_TO_TARGET.ordinal(), str) == 0)) {
            if (ssTypeFromCallForwardReason == SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFU.ordinal()) {
                String str2 = null;
                if (date != null) {
                    str2 = null;
                    if (date2 != null) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
                        str2 = simpleDateFormat.format(date) + HwImsConfigImpl.SEPARATOR_TAG + simpleDateFormat.format(date2);
                    }
                }
                if (SciSSConf.setSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_TIME.ordinal(), str2) != 0) {
                    return 1;
                }
            }
            if (SciSSConf.setSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_MEDIATYPE.ordinal(), mediaTypeString) != 0) {
                return 1;
            }
            if (-1 == i4 || (!(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CFNR.ordinal() == ssTypeFromCallForwardReason || SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL.ordinal() == ssTypeFromCallForwardReason || SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL.ordinal() == ssTypeFromCallForwardReason) || SciSSConf.setSSConfParam(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal(), String.valueOf(i4)) == 0)) {
                return SciSSConf.startConf(ssTypeFromCallForwardReason, SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
            }
            return 1;
        }
        return 1;
    }

    public static int setCallDiversionNoReplyTimer(int i) {
        if (SciSSConf.setSSConfParam(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal(), SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER.ordinal(), String.valueOf(i)) == 0) {
            return SciSSConf.startConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_NRT.ordinal(), SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal());
        }
        return 1;
    }

    public static int setCallWaiting(boolean z) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_CW.ordinal(), z);
    }

    public static void setChrUtCallBack(ChrUtCallBack chrUtCallBack2) {
        Log.d("SciSSConfHs", "setChrUtCallBack in func");
        chrUtCallBack = chrUtCallBack2;
    }

    public static int setContentType(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return SciSSConf.setContentType(z);
    }

    public static int setExtensionalParam(int i, boolean z, String str) {
        if (!(strIsNull(str) && z) && i >= 0) {
            return SciSSConf.setExtensionalParam(i, z, str);
        }
        return 1;
    }

    public static int setHomeDomainName(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setHomeDomainName(str);
    }

    public static int setHostIp(String[] strArr, int i) {
        if (i < SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_NAF.ordinal() || i > SciSSConf.SSConfIpAddrHostType.IP_ADDR_HOST_TYPE_BUTT.ordinal()) {
            return 1;
        }
        for (String str : strArr) {
            if (str == null) {
                return 1;
            }
        }
        return SciSSConf.setHostIp(strArr, i);
    }

    public static int setLibPath(String str) {
        synchronized (SciSSConfHs.class) {
            try {
                if (strIsNull(str)) {
                    return 1;
                }
                isInitLibPath = true;
                Log.i("SciSSConfHs", "setLibPath: " + str);
                SciSys.setLibPath(str);
                return 0;
            } finally {
            }
        }
    }

    public static int setLocalUserName(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setLocalUserName(str);
    }

    public static int setNafAddr(String str, int i, boolean z) {
        if (strIsNull(str) || i <= 0) {
            return 1;
        }
        return SciSSConf.setNafAddr(str, i, z);
    }

    public static int setOriginatingIdentityPresentation(boolean z) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIP.ordinal(), z);
    }

    public static int setOriginatingIdentityRestriction(boolean z) {
        int i = 2;
        if (!z) {
            i = 1;
        }
        return setOriginatingIdentityRestriction(z, i);
    }

    public static int setOriginatingIdentityRestriction(boolean z, int i) {
        String str = HwImsConfigImpl.TRUE_VALUE;
        int ordinal = SciSSConf.SSConfSSType.SSCONF_SS_TYPE_OIR.ordinal();
        int ordinal2 = SciSSConf.SSConfOpType.SSCONF_OP_TYPE_PUT.ordinal();
        if (!z) {
            str = "false";
        }
        String oIRDefaulBehaviorType = getOIRDefaulBehaviorType(i);
        if (SciSSConf.setSSConfParam(ordinal, ordinal2, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_ATTR_ACTIVE.ordinal(), str) == 0) {
            if (oIRDefaulBehaviorType.length() <= 0 || SciSSConf.setSSConfParam(ordinal, ordinal2, SciSSConf.SSCONFParamType.SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR.ordinal(), oIRDefaulBehaviorType) == 0) {
                return SciSSConf.startConf(ordinal, ordinal2);
            }
            Log.e("SciSSConfHs", "setOriginatingIdentityRestriction OIR_DEFALT_BEHAVIOR fail.");
            return 1;
        }
        return 1;
    }

    public static int setParamsCfg(int i, String str) {
        if (strIsNull(str)) {
            Log.e("SciSSConfHs", "setParamsCfg : invalid value");
            return 1;
        }
        return SciSSConf.setParamsCfg(i, str);
    }

    public static int setSupportGBAType(int i) {
        return SciSSConf.setSupportGBAType(i);
    }

    public static int setSupportTmpi(boolean z) {
        return SciSSConf.setSupportTmpi(z);
    }

    public static int setSupportXcapNamespace(boolean z) {
        return SciSSConf.setSupportXcapNamespace(z);
    }

    public static int setTerminatingIdentityPresentation(boolean z) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIP.ordinal(), z);
    }

    public static int setTerminatingIdentityRestriction(boolean z) {
        return SciSSConf.enabledSSConf(SciSSConf.SSConfSSType.SSCONF_SS_TYPE_TIR.ordinal(), z);
    }

    public static int setTmpi(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setTmpi(str);
    }

    public static int setTrustCaPath(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setTrustCaPath(str);
    }

    public static int setX3gppIntendId(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setX3gppIntendId(str);
    }

    public static int setXcapRootUri(String str) {
        if (strIsNull(str)) {
            return 1;
        }
        return SciSSConf.setXcapRootUri(str);
    }

    public static void startChrUtErrReport(int i) {
        Log.d("SciSSConfHs", "startChrUtErrReport in func");
        int[] iArr = {0, 0, 0, 0, 0};
        int chrUtServiceType = SciSSConf.getChrUtServiceType();
        int chrUtSendMessageType = SciSSConf.getChrUtSendMessageType();
        int chrUtFailPhaseReport = SciSSConf.getChrUtFailPhaseReport();
        int chrUtDefeatReason = SciSSConf.getChrUtDefeatReason();
        Log.d("SciSSConfHs", "startChrUtErrReport ConditionId : " + i + ", ServiceType : " + chrUtServiceType + ", SendMessageType : " + chrUtSendMessageType + ", FailPhaseReport : " + chrUtFailPhaseReport + ", DefeatReason : " + chrUtDefeatReason);
        iArr[0] = i;
        iArr[1] = chrUtServiceType;
        iArr[2] = chrUtSendMessageType;
        iArr[3] = chrUtFailPhaseReport;
        iArr[4] = chrUtDefeatReason;
        if (chrUtCallBack != null) {
            Log.d("SciSSConfHs", "startChrUtErrReport run call back func");
            chrUtCallBack.chrUtCbGetErrReport(iArr, null);
        }
    }

    private static boolean strIsNull(String str) {
        boolean z = true;
        if (str != null) {
            z = str.length() < 1;
        }
        return z;
    }
}
