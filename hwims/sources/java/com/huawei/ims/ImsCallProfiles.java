package com.huawei.ims;

import com.huawei.ims.ImsServiceState;
import java.util.Arrays;
import java.util.Map;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallDetails;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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
    public static final int MEDIA_ID_UNKNOWN = -1;
    private static final String NUMBERMARKINFO_NUMBER = "numbermarkinfo_number";
    public static final int VIDEO_PAUSE_STATE_PAUSED = 1;
    public static final int VIDEO_PAUSE_STATE_RESUMED = 2;
    public int callMediaId;
    public int call_domain;
    public int call_type;
    public int callsubstate;
    public String[] extras;
    public ImsServiceState[] localAbility;
    private int mVideoPauseState;
    public ImsServiceState[] peerAbility;

    public ImsCallProfiles() {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        this.call_type = 10;
        this.call_domain = 4;
        this.extras = null;
    }

    public ImsCallProfiles(int callType, int callDomain, String[] extraparams) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        this.call_type = callType;
        this.call_domain = callDomain;
        this.extras = extraparams;
    }

    public ImsCallProfiles(ImsCallProfiles srcCall) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        if (srcCall != null) {
            this.call_type = srcCall.call_type;
            this.call_domain = srcCall.call_domain;
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
            this.call_type = imsCallDetails.callType;
            this.call_domain = imsCallDetails.callDomain;
        }
    }

    public boolean update(ImsCallProfiles update) {
        boolean hasChanged = false;
        if (update == null) {
            return false;
        }
        if (this.call_type != update.call_type) {
            this.call_type = update.call_type;
            hasChanged = true;
        }
        if (this.call_domain != update.call_domain) {
            this.call_domain = update.call_domain;
            hasChanged = true;
        }
        if (this.callsubstate != update.callsubstate) {
            this.callsubstate = update.callsubstate;
            hasChanged = true;
        }
        this.localAbility = update.localAbility;
        this.peerAbility = update.peerAbility;
        boolean hasChanged2 = hasChanged;
        for (int i = 0; update.extras != null && i < update.extras.length; i++) {
            String[] currKeyValuePair = update.extras[i].split("=");
            if (currKeyValuePair.length == 2) {
                String oldVal = getValueForKeyFromExtras(this.extras, currKeyValuePair[0]);
                if (oldVal != null) {
                    if (!oldVal.equals(currKeyValuePair[1])) {
                        this.extras = setValueForKeyInExtras(this.extras, currKeyValuePair[0], currKeyValuePair[1]);
                        hasChanged2 = true;
                    }
                } else {
                    hasChanged2 = true;
                    addExtra(update.extras[i]);
                }
            }
        }
        int i2 = update.getVideoPauseState();
        setVideoPauseState(i2);
        return hasChanged2;
    }

    public void setExtras(String[] extraparams) {
        this.extras = extraparams;
    }

    private void addExtra(String extra) {
        if (this.extras != null) {
            this.extras = (String[]) Arrays.copyOf(this.extras, this.extras.length + 1);
            this.extras[this.extras.length - 1] = extra;
        }
    }

    public static String[] getExtrasFromMap(Map<String, String> newExtras) {
        if (newExtras == null) {
            return null;
        }
        String[] extras = new String[newExtras.size()];
        for (Map.Entry<String, String> entry : newExtras.entrySet()) {
            extras[0] = HwImsConfigImpl.NULL_STRING_VALUE + entry.getKey() + "=" + entry.getValue();
        }
        return extras;
    }

    public void setExtrasFromMap(Map<String, String> newExtras) {
        this.extras = getExtrasFromMap(newExtras);
    }

    public void setVideoPauseState(int videoPauseState) {
        switch (videoPauseState) {
            case 1:
            case 2:
                this.mVideoPauseState = videoPauseState;
                return;
            default:
                return;
        }
    }

    public int getVideoPauseState() {
        return this.mVideoPauseState;
    }

    public String getValueForKeyFromExtras(String[] extras, String key) {
        for (int i = 0; extras != null && i < extras.length; i++) {
            if (extras[i] != null) {
                String[] currKey = extras[i].split("=");
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
                    String[] currKey = extras[i].split("=");
                    if (currKey.length == 2 && currKey[0].equals(key)) {
                        currKey[1] = value;
                    }
                }
            }
        }
        return extras;
    }

    public boolean hasMediaIdValid() {
        return this.callMediaId != -1 && this.callMediaId >= 0;
    }

    public String toString() {
        String extrasResult = HwImsConfigImpl.NULL_STRING_VALUE;
        String localSrvAbility = HwImsConfigImpl.NULL_STRING_VALUE;
        String peerSrvAbility = HwImsConfigImpl.NULL_STRING_VALUE;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.extras != null) {
            for (String s : this.extras) {
                if (s != null) {
                    if (s.contains(NUMBERMARKINFO_NUMBER) || s.contains(EXTRA_KEY_BACKUP_NUMBER) || s.contains(EXTRA_KEY_SEARCH_NUMBER)) {
                        String before = s.substring(0, s.indexOf("=") + 1);
                        String after = s.substring(s.indexOf("=") + 1, s.length());
                        s = before + HiddenPrivacyInfo.putMosaic(after, 0);
                    }
                    stringBuffer.append(s);
                }
            }
            extrasResult = stringBuffer.toString();
        }
        if (this.localAbility != null) {
            StringBuffer buf = new StringBuffer(HwImsConfigImpl.NULL_STRING_VALUE);
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
            localSrvAbility = buf.toString();
        }
        if (this.peerAbility != null) {
            StringBuffer buf2 = new StringBuffer(HwImsConfigImpl.NULL_STRING_VALUE);
            for (ImsServiceState srv2 : this.peerAbility) {
                if (srv2 != null) {
                    buf2.append("isValid = ");
                    buf2.append(srv2.isValid);
                    buf2.append(" type = ");
                    buf2.append(srv2.type);
                    buf2.append(" state = ");
                    buf2.append(srv2.state);
                    if (srv2.accessTechStatus != null) {
                        for (ImsServiceState.StatusForAccessTech at2 : srv2.accessTechStatus) {
                            buf2.append(" accTechStatus ");
                            buf2.append(at2);
                        }
                    }
                }
            }
            peerSrvAbility = buf2.toString();
        }
        return " " + this.call_type + " " + this.call_domain + " " + extrasResult + " callSubState " + this.callsubstate + " videoPauseState" + this.mVideoPauseState + " mediaId" + this.callMediaId + " Local Ability " + localSrvAbility + " Peer Ability " + peerSrvAbility;
    }
}
