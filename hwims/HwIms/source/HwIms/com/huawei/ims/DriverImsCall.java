package com.huawei.ims;

import android.telephony.PhoneNumberUtils;
import android.telephony.ims.ImsReasonInfo;
import com.android.internal.telephony.ATParseEx;
import com.android.internal.telephony.DriverCall;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCall;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallEx;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallV1_2;

/* loaded from: DriverImsCall.class */
public class DriverImsCall extends DriverCall {
    static final String LOG_TAG = "DRIVERCALL-IMS";
    public ImsReasonInfo callFailCause;
    public ImsCallProfiles imsCallProfile;
    public int peerVideoSupport;
    public int radioTechFromRilImsCall;
    public String redirectNumber;
    public int redirectNumberPresentation;
    public int redirectNumberToa;
    public State state;

    /* loaded from: DriverImsCall$State.class */
    public enum State {
        ACTIVE,
        HOLDING,
        DIALING,
        ALERTING,
        INCOMING,
        WAITING,
        END
    }

    public DriverImsCall() {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        this.imsCallProfile = new ImsCallProfiles();
    }

    public DriverImsCall(DriverImsCall driverImsCall) {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        this.imsCallProfile = new ImsCallProfiles(driverImsCall.imsCallProfile);
        this.callFailCause = new ImsReasonInfo();
        this.state = driverImsCall.state;
        this.index = driverImsCall.index;
        this.number = driverImsCall.number;
        this.isMT = driverImsCall.isMT;
        this.TOA = driverImsCall.TOA;
        this.isMpty = driverImsCall.isMpty;
        this.als = driverImsCall.als;
        this.isVoice = driverImsCall.isVoice;
        this.isVoicePrivacy = driverImsCall.isVoicePrivacy;
        this.numberPresentation = driverImsCall.numberPresentation;
        this.name = driverImsCall.name;
        this.namePresentation = driverImsCall.namePresentation;
        this.peerVideoSupport = driverImsCall.peerVideoSupport;
        this.radioTechFromRilImsCall = driverImsCall.radioTechFromRilImsCall;
        this.redirectNumberToa = driverImsCall.redirectNumberToa;
        this.redirectNumber = driverImsCall.redirectNumber;
        this.redirectNumberPresentation = driverImsCall.redirectNumberPresentation;
    }

    public DriverImsCall(RILImsCall rILImsCall) {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        if (rILImsCall != null) {
            this.imsCallProfile = new ImsCallProfiles(rILImsCall.callDetails);
            this.callFailCause = new ImsReasonInfo();
            this.state = stateFromCall(rILImsCall.state);
            this.index = rILImsCall.index;
            this.TOA = rILImsCall.toa;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(rILImsCall.number, rILImsCall.toa);
            this.isMT = rILImsCall.isMT != 0;
            this.isMpty = rILImsCall.isMpty != 0;
            this.als = rILImsCall.als;
            this.isVoice = rILImsCall.isVoice != 0;
            this.isVoicePrivacy = rILImsCall.isVoicePrivacy != 0;
            this.numberPresentation = presentationFromCLIP(rILImsCall.numberPresentation);
            this.name = rILImsCall.name;
            this.namePresentation = presentationFromCLIP(rILImsCall.namePresentation);
            this.peerVideoSupport = rILImsCall.peerVideoSupport;
        }
    }

    public DriverImsCall(RILImsCallEx rILImsCallEx) {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        if (rILImsCallEx != null) {
            this.imsCallProfile = new ImsCallProfiles(rILImsCallEx.callDetails);
            this.callFailCause = new ImsReasonInfo();
            this.state = stateFromCall(rILImsCallEx.state);
            this.index = rILImsCallEx.index;
            this.TOA = rILImsCallEx.toa;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(rILImsCallEx.number, rILImsCallEx.toa);
            this.isMT = rILImsCallEx.isMT != 0;
            this.isMpty = rILImsCallEx.isMpty != 0;
            this.als = rILImsCallEx.als;
            this.isVoice = rILImsCallEx.isVoice != 0;
            this.isVoicePrivacy = rILImsCallEx.isVoicePrivacy != 0;
            this.numberPresentation = presentationFromCLIP(rILImsCallEx.numberPresentation);
            this.name = rILImsCallEx.name;
            this.namePresentation = presentationFromCLIP(rILImsCallEx.namePresentation);
            this.peerVideoSupport = rILImsCallEx.peerVideoSupport;
            this.radioTechFromRilImsCall = rILImsCallEx.imsDomain;
        }
    }

    public DriverImsCall(RILImsCallV1_2 rILImsCallV1_2) {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        if (rILImsCallV1_2 != null) {
            this.imsCallProfile = new ImsCallProfiles(rILImsCallV1_2.callDetails);
            this.callFailCause = new ImsReasonInfo();
            this.state = stateFromCall(rILImsCallV1_2.state);
            this.index = rILImsCallV1_2.index;
            this.TOA = rILImsCallV1_2.toa;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(rILImsCallV1_2.number, rILImsCallV1_2.toa);
            this.isMT = rILImsCallV1_2.isMT != 0;
            this.isMpty = rILImsCallV1_2.isMpty != 0;
            this.als = rILImsCallV1_2.als;
            this.isVoice = rILImsCallV1_2.isVoice != 0;
            this.isVoicePrivacy = rILImsCallV1_2.isVoicePrivacy != 0;
            this.numberPresentation = presentationFromCLIP(rILImsCallV1_2.numberPresentation);
            this.name = rILImsCallV1_2.name;
            this.namePresentation = presentationFromCLIP(rILImsCallV1_2.namePresentation);
            this.peerVideoSupport = rILImsCallV1_2.peerVideoSupport;
            this.radioTechFromRilImsCall = rILImsCallV1_2.imsDomain;
            this.redirectNumberToa = rILImsCallV1_2.redirectNumberToa;
            this.redirectNumber = PhoneNumberUtils.stringFromStringAndTOA(rILImsCallV1_2.redirectNumber, rILImsCallV1_2.redirectNumberToa);
            this.redirectNumberPresentation = presentationFromCLIP(rILImsCallV1_2.redirectNumberPresentation);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        if (r3.number.equals(r4.number) == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean isChanged(com.huawei.ims.DriverImsCall r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            com.huawei.ims.DriverImsCall$State r0 = r0.state
            r1 = r4
            com.huawei.ims.DriverImsCall$State r1 = r1.state
            if (r0 == r1) goto L17
            r0 = r3
            r1 = r4
            com.huawei.ims.DriverImsCall$State r1 = r1.state
            r0.state = r1
            r0 = 1
            r5 = r0
        L17:
            r0 = r3
            int r0 = r0.index
            r1 = r4
            int r1 = r1.index
            if (r0 == r1) goto L2c
            r0 = r3
            r1 = r4
            int r1 = r1.index
            r0.index = r1
            r0 = 1
            r5 = r0
        L2c:
            r0 = r3
            java.lang.String r0 = r0.number
            if (r0 != 0) goto L3a
            r0 = r4
            java.lang.String r0 = r0.number
            if (r0 != 0) goto L53
        L3a:
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.number
            if (r0 == 0) goto L5d
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.number
            r1 = r4
            java.lang.String r1 = r1.number
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5d
        L53:
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.number
            r0.number = r1
            r0 = 1
            r6 = r0
        L5d:
            r0 = r3
            boolean r0 = r0.isMT
            r1 = r4
            boolean r1 = r1.isMT
            if (r0 == r1) goto L72
            r0 = r3
            r1 = r4
            boolean r1 = r1.isMT
            r0.isMT = r1
            r0 = 1
            r6 = r0
        L72:
            r0 = r3
            boolean r0 = r0.isMpty
            r1 = r4
            boolean r1 = r1.isMpty
            if (r0 == r1) goto L87
            r0 = r3
            r1 = r4
            boolean r1 = r1.isMpty
            r0.isMpty = r1
            r0 = 1
            r6 = r0
        L87:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.DriverImsCall.isChanged(com.huawei.ims.DriverImsCall):boolean");
    }

    public static State stateFromCall(int i) throws ATParseEx {
        switch (i) {
            case 0:
                return State.ACTIVE;
            case 1:
                return State.HOLDING;
            case 2:
                return State.DIALING;
            case 3:
                return State.ALERTING;
            case 4:
                return State.INCOMING;
            case 5:
                return State.WAITING;
            case 6:
                return State.END;
            default:
                throw new ATParseEx("illegal call state " + i);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(this.index);
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.state);
        sb.append(",toa=");
        sb.append(this.TOA);
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.isMpty ? "conf" : "norm");
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.isMT ? "mt" : "mo");
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.als);
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.isVoice ? "voc" : "nonvoc");
        sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        sb.append(this.isVoicePrivacy ? "evp" : "noevp");
        sb.append(",peerVideoSupport=");
        sb.append(this.peerVideoSupport);
        sb.append(",radioTechFromRilImsCall=");
        sb.append(this.radioTechFromRilImsCall);
        sb.append(",,cli=");
        sb.append(this.numberPresentation);
        sb.append(",,");
        sb.append(this.namePresentation);
        sb.append("Ims Call Profile =");
        sb.append(this.imsCallProfile);
        sb.append(",redirectNumber = ");
        sb.append(HiddenPrivacyInfo.putMosaic(this.redirectNumber, 0));
        sb.append(",redirectNumberToa = ");
        sb.append(this.redirectNumberToa);
        sb.append(",redirectNumberPresentation");
        sb.append(this.redirectNumberPresentation);
        return sb.toString();
    }

    public boolean update(DriverImsCall driverImsCall) {
        if (driverImsCall == null) {
            return false;
        }
        boolean isChanged = isChanged(driverImsCall);
        if (driverImsCall.callFailCause != null) {
            if (this.callFailCause == null) {
                this.callFailCause = new ImsReasonInfo(driverImsCall.callFailCause.mCode, driverImsCall.callFailCause.mExtraCode, driverImsCall.callFailCause.mExtraMessage);
            } else {
                if (this.callFailCause.mCode != driverImsCall.callFailCause.mCode) {
                    this.callFailCause.mCode = driverImsCall.callFailCause.mCode;
                }
                if (this.callFailCause.mExtraCode != driverImsCall.callFailCause.mExtraCode) {
                    this.callFailCause.mExtraCode = driverImsCall.callFailCause.mExtraCode;
                }
                this.callFailCause.mExtraMessage = driverImsCall.callFailCause.mExtraMessage;
            }
        }
        boolean z = isChanged;
        if (this.imsCallProfile.update(driverImsCall.imsCallProfile)) {
            z = isChanged;
            if (!isChanged) {
                z = true;
            }
        }
        return z;
    }
}
