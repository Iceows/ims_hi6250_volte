package com.huawei.ims;

import java.util.Arrays;
import java.util.Map;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallDetails;

/* loaded from: ImsCallProfiles.class */
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

    public ImsCallProfiles(int i, int i2, String[] strArr) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        this.call_type = i;
        this.call_domain = i2;
        this.extras = strArr;
    }

    public ImsCallProfiles(ImsCallProfiles imsCallProfiles) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        if (imsCallProfiles != null) {
            this.call_type = imsCallProfiles.call_type;
            this.call_domain = imsCallProfiles.call_domain;
            this.callsubstate = imsCallProfiles.callsubstate;
            this.callMediaId = imsCallProfiles.callMediaId;
            this.extras = imsCallProfiles.extras;
            this.localAbility = imsCallProfiles.localAbility;
            this.peerAbility = imsCallProfiles.peerAbility;
        }
    }

    public ImsCallProfiles(RILImsCallDetails rILImsCallDetails) {
        this.callsubstate = 0;
        this.callMediaId = -1;
        this.mVideoPauseState = 2;
        if (rILImsCallDetails != null) {
            this.call_type = rILImsCallDetails.callType;
            this.call_domain = rILImsCallDetails.callDomain;
        }
    }

    private void addExtra(String str) {
        if (this.extras != null) {
            this.extras = (String[]) Arrays.copyOf(this.extras, this.extras.length + 1);
            this.extras[this.extras.length - 1] = str;
        }
    }

    public static String[] getExtrasFromMap(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String[] strArr = new String[map.size()];
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[0] = HwImsConfigImpl.NULL_STRING_VALUE + entry.getKey() + "=" + entry.getValue();
        }
        return strArr;
    }

    public String getValueForKeyFromExtras(String[] strArr, String str) {
        for (int i = 0; strArr != null && i < strArr.length; i++) {
            if (strArr[i] != null) {
                String[] split = strArr[i].split("=");
                if (split.length == 2 && split[0].equals(str)) {
                    return split[1];
                }
            }
        }
        return null;
    }

    public int getVideoPauseState() {
        return this.mVideoPauseState;
    }

    public boolean hasMediaIdValid() {
        return this.callMediaId != -1 && this.callMediaId >= 0;
    }

    public void setExtras(String[] strArr) {
        this.extras = strArr;
    }

    public void setExtrasFromMap(Map<String, String> map) {
        this.extras = getExtrasFromMap(map);
    }

    public String[] setValueForKeyInExtras(String[] strArr, String str, String str2) {
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i] != null) {
                    String[] split = strArr[i].split("=");
                    if (split.length == 2 && split[0].equals(str)) {
                        split[1] = str2;
                    }
                }
            }
        }
        return strArr;
    }

    public void setVideoPauseState(int i) {
        switch (i) {
            case 1:
            case 2:
                this.mVideoPauseState = i;
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (r0.contains(com.huawei.ims.ImsCallProfiles.EXTRA_KEY_SEARCH_NUMBER) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 681
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.ImsCallProfiles.toString():java.lang.String");
    }

    public boolean update(ImsCallProfiles imsCallProfiles) {
        boolean z;
        boolean z2 = false;
        if (imsCallProfiles == null) {
            return false;
        }
        if (this.call_type != imsCallProfiles.call_type) {
            this.call_type = imsCallProfiles.call_type;
            z2 = true;
        }
        if (this.call_domain != imsCallProfiles.call_domain) {
            this.call_domain = imsCallProfiles.call_domain;
            z2 = true;
        }
        if (this.callsubstate != imsCallProfiles.callsubstate) {
            this.callsubstate = imsCallProfiles.callsubstate;
            z2 = true;
        }
        this.localAbility = imsCallProfiles.localAbility;
        this.peerAbility = imsCallProfiles.peerAbility;
        int i = 0;
        while (true) {
            z = z2;
            if (imsCallProfiles.extras == null || i >= imsCallProfiles.extras.length) {
                break;
            }
            String[] split = imsCallProfiles.extras[i].split("=");
            z2 = z;
            if (split.length == 2) {
                String valueForKeyFromExtras = getValueForKeyFromExtras(this.extras, split[0]);
                if (valueForKeyFromExtras != null) {
                    z2 = z;
                    if (!valueForKeyFromExtras.equals(split[1])) {
                        this.extras = setValueForKeyInExtras(this.extras, split[0], split[1]);
                        z2 = true;
                    }
                } else {
                    z2 = true;
                    addExtra(imsCallProfiles.extras[i]);
                }
            }
            i++;
        }
        setVideoPauseState(imsCallProfiles.getVideoPauseState());
        return z;
    }
}
