package com.huawei.ims;

import com.huawei.ims.ImsServiceState;
import java.util.Arrays;
import java.util.Map;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsCallDetails;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsCallProfiles {
    public static final int CALL_DOMAIN_AUTOMATIC = 3;
    public static final int CALL_DOMAIN_CS = 1;
    public static final int CALL_DOMAIN_NOT_SET = 4;
    public static final int CALL_DOMAIN_PS = 2;
    public static final int CALL_DOMAIN_UNKNOWN = 11;
    public static final int CALL_RESTRICT_CAUSE_DISABLED = 2;
    public static final int CALL_RESTRICT_CAUSE_NONE = 0;
    public static final int CALL_RESTRICT_CAUSE_RAT = 1;
    public static final int CALL_TYPE_SMS = 5;
    public static final int CALL_TYPE_UNKNOWN = 10;
    public static final int CALL_TYPE_VOICE = 0;
    public static final int CALL_TYPE_VT = 3;
    public static final int CALL_TYPE_VT_NODIR = 4;
    public static final int CALL_TYPE_VT_PAUSE = 6;
    public static final int CALL_TYPE_VT_RESUME = 7;
    public static final int CALL_TYPE_VT_RX = 2;
    public static final int CALL_TYPE_VT_TX = 1;
    public static final int CALL_TYPE_VT_UPGRADE_CANCEL = 8;
    public static final String EXTRAS_CODEC = "Codec";
    public static final String EXTRAS_HANDOVER_INFORMATION = "handoverInfo";
    public static final String EXTRAS_IS_CONFERENCE_URI = "isConferenceUri";
    public static final String EXTRAS_PARENT_CALL_ID = "parentCallId";
    private static final String EXTRA_KEY_BACKUP_NUMBER = "nexti_backup_number";
    private static final String EXTRA_KEY_SEARCH_NUMBER = "nexti_search_number";
    public static final int EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL = 1;
    private static final int KEY_LENGTH = 2;
    public static final int MEDIA_ID_UNKNOWN = -1;
    private static final String NUMBERMARKINFO_NUMBER = "numbermarkinfo_number";
    private static final String SPIT_FLAG = "=";
    public static final int VIDEO_PAUSE_STATE_PAUSED = 1;
    public static final int VIDEO_PAUSE_STATE_RESUMED = 2;
    public int callMediaId;
    public int callsubstate;
    public String[] extras;
    public int isEncrypt;
    public ImsServiceState[] localAbility;
    private int mCallDomain;
    private int mCallType;
    private int mVideoPauseState;
    public ImsServiceState[] peerAbility;

    public ImsCallProfiles() {
        this(10, 4, null);
    }

    public ImsCallProfiles(int callType, int callDomain, String[] extraparams) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        this.mCallType = callType;
        this.mCallDomain = callDomain;
        this.extras = extraparams;
    }

    public ImsCallProfiles(ImsCallProfiles srcCall) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        if (srcCall != null) {
            this.mCallType = srcCall.mCallType;
            this.mCallDomain = srcCall.mCallDomain;
            this.isEncrypt = srcCall.isEncrypt;
            this.callsubstate = srcCall.callsubstate;
            this.callMediaId = srcCall.callMediaId;
            this.extras = srcCall.extras;
            this.localAbility = srcCall.localAbility;
            this.peerAbility = srcCall.peerAbility;
        }
    }

    public ImsCallProfiles(RILImsCallDetails imsCallDetails) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        if (imsCallDetails != null) {
            this.mCallType = imsCallDetails.callType;
            this.mCallDomain = imsCallDetails.callDomain;
        }
    }

    public boolean update(ImsCallProfiles update) {
        boolean hasChanged = false;
        if (update == null) {
            return false;
        }
        if (this.mCallType != update.getCallType()) {
            setCallType(update.getCallType());
            hasChanged = true;
        }
        if (this.mCallDomain != update.getCallDomain()) {
            this.mCallDomain = update.getCallDomain();
            hasChanged = true;
        }
        int i = this.callsubstate;
        int i2 = update.callsubstate;
        if (i != i2) {
            this.callsubstate = i2;
            hasChanged = true;
        }
        this.localAbility = update.localAbility;
        this.peerAbility = update.peerAbility;
        int i3 = 0;
        while (true) {
            String[] strArr = update.extras;
            if (strArr == null || i3 >= strArr.length) {
                break;
            }
            String[] currKeyValuePair = strArr[i3].split(SPIT_FLAG);
            if (currKeyValuePair.length == 2) {
                String oldVal = getValueForKeyFromExtras(this.extras, currKeyValuePair[0]);
                if (oldVal != null) {
                    if (!oldVal.equals(currKeyValuePair[1])) {
                        this.extras = setValueForKeyInExtras(this.extras, currKeyValuePair[0], currKeyValuePair[1]);
                        hasChanged = true;
                    }
                } else {
                    hasChanged = true;
                    addExtra(update.extras[i3]);
                }
            }
            i3++;
        }
        setVideoPauseState(update.getVideoPauseState());
        return hasChanged;
    }

    public void setExtras(String[] extraparams) {
        this.extras = extraparams;
    }

    private void addExtra(String extra) {
        String[] strArr = this.extras;
        if (strArr != null) {
            this.extras = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
            String[] strArr2 = this.extras;
            strArr2[strArr2.length - 1] = extra;
            return;
        }
        this.extras = new String[]{extra};
    }

    public static String[] getExtrasFromMap(Map<String, String> newExtras) {
        if (newExtras == null) {
            return null;
        }
        String[] extras = new String[newExtras.size()];
        int index = 0;
        for (Map.Entry<String, String> entry : newExtras.entrySet()) {
            extras[index] = "" + entry.getKey() + SPIT_FLAG + entry.getValue();
            index++;
        }
        return extras;
    }

    public void setExtrasFromMap(Map<String, String> newExtras) {
        this.extras = getExtrasFromMap(newExtras);
    }

    public void setVideoPauseState(int videoPauseState) {
        if (videoPauseState == 1 || videoPauseState == 2) {
            this.mVideoPauseState = videoPauseState;
        }
    }

    public int getVideoPauseState() {
        return this.mVideoPauseState;
    }

    public String getValueForKeyFromExtras(String[] extras, String key) {
        for (int i = 0; extras != null && i < extras.length; i++) {
            if (extras[i] != null) {
                String[] currKey = extras[i].split(SPIT_FLAG);
                if (currKey.length == 2 && currKey[0].equals(key)) {
                    return currKey[1];
                }
            }
        }
        return null;
    }

    public String[] setValueForKeyInExtras(String[] extras, String key, String value) {
        if (extras != null) {
            for (int i = 0; i < extras.length; i++) {
                if (extras[i] != null) {
                    String[] currKey = extras[i].split(SPIT_FLAG);
                    if (currKey.length == 2 && currKey[0].equals(key)) {
                        currKey[1] = value;
                    }
                }
            }
        }
        return extras;
    }

    public boolean hasMediaIdValid() {
        int i = this.callMediaId;
        return i != -1 && i >= 0;
    }

    public String toString() {
        String extrasResult = getStringOfExtrasResult();
        String localSrvAbility = getStringOfLocalSrvAbility();
        String peerSrvAbility = getStringOfPeerSrvAbility();
        return " mCallType " + this.mCallType + " mCallDomain " + this.mCallDomain + " isEncrypt " + this.isEncrypt + " extrasResult " + extrasResult + " callSubState " + this.callsubstate + " videoPauseState " + this.mVideoPauseState + " mediaId " + this.callMediaId + " Local Ability " + localSrvAbility + " Peer Ability " + peerSrvAbility;
    }

    private String getStringOfExtrasResult() {
        if (this.extras == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : this.extras) {
            if (str != null) {
                String string = str;
                if (string.contains(NUMBERMARKINFO_NUMBER) || string.contains(EXTRA_KEY_BACKUP_NUMBER) || string.contains(EXTRA_KEY_SEARCH_NUMBER)) {
                    String before = string.substring(0, string.indexOf(SPIT_FLAG) + 1);
                    String after = string.substring(string.indexOf(SPIT_FLAG) + 1, string.length());
                    string = before + HiddenPrivacyInfo.putMosaic(after, 0);
                }
                stringBuffer.append(string);
            }
        }
        String extrasResult = stringBuffer.toString();
        return extrasResult;
    }

    private String getStringOfLocalSrvAbility() {
        if (this.localAbility == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer("");
        for (ImsServiceState srv : this.localAbility) {
            if (srv != null) {
                buf.append("isValid = ");
                buf.append(srv.isValid);
                buf.append(" type = ");
                buf.append(srv.type);
                buf.append(" state = ");
                buf.append(srv.state);
                if (srv.accessTechStatus != null) {
                    for (ImsServiceState.StatusForAccessTech at : srv.accessTechStatus) {
                        buf.append(" accTechStatus ");
                        buf.append(at);
                    }
                }
            }
        }
        String localSrvAbility = buf.toString();
        return localSrvAbility;
    }

    private String getStringOfPeerSrvAbility() {
        if (this.peerAbility == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer("");
        for (ImsServiceState srv : this.peerAbility) {
            if (srv != null) {
                buf.append("isValid = ");
                buf.append(srv.isValid);
                buf.append(" type = ");
                buf.append(srv.type);
                buf.append(" state = ");
                buf.append(srv.state);
                if (srv.accessTechStatus != null) {
                    for (ImsServiceState.StatusForAccessTech at : srv.accessTechStatus) {
                        buf.append(" accTechStatus ");
                        buf.append(at);
                    }
                }
            }
        }
        String peerSrvAbility = buf.toString();
        return peerSrvAbility;
    }

    public void setCallType(int callType) {
        this.mCallType = callType;
    }

    public int getCallType() {
        return this.mCallType;
    }

    public void setCallDomain(int callDomain) {
        this.mCallDomain = callDomain;
    }

    public int getCallDomain() {
        return this.mCallDomain;
    }
}
