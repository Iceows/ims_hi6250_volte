package com.huawei.ims;

import android.telephony.PhoneNumberUtils;
import android.telephony.ims.ImsReasonInfo;
import com.android.internal.telephony.ATParseEx;
import com.android.internal.telephony.DriverCall;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsCall;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class DriverImsCall extends DriverCall {
    private static final int ACTIVE_STATE = 0;
    private static final int ALERTING_STATE = 3;
    private static final int DIALING_STATE = 2;
    private static final int END_STATE = 6;
    private static final int HOLDING_STATE = 1;
    private static final int INCOMING_STATE = 4;
    private static final int UNINIT_VALUE = -1;
    private static final int WAITING_STATE = 5;
    public ImsReasonInfo callFailCause;
    public ImsCallProfiles imsCallProfile;
    public int peerVideoSupport;
    public int radioTechFromRilImsCall;
    public String redirectNumber;
    public int redirectNumberPresentation;
    public int redirectNumberToa;
    public State state;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum State {
        ACTIVE,
        HOLDING,
        DIALING,
        ALERTING,
        INCOMING,
        WAITING,
        END
    }

    public DriverImsCall(RILImsCall driverImsCall) {
        boolean z;
        boolean z2;
        boolean z3;
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        if (driverImsCall != null) {
            this.imsCallProfile = new ImsCallProfiles(driverImsCall.callDetails);
            this.callFailCause = new ImsReasonInfo();
            this.state = stateFromCall(driverImsCall.state);
            this.index = driverImsCall.index;
            this.TOA = driverImsCall.toa;
            this.number = PhoneNumberUtils.stringFromStringAndTOA(driverImsCall.number, driverImsCall.toa);
            if (driverImsCall.isMT == 0) {
                z = false;
            } else {
                z = true;
            }
            this.isMT = z;
            if (driverImsCall.isMpty == 0) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.isMpty = z2;
            this.als = driverImsCall.als;
            if (driverImsCall.isVoice == 0) {
                z3 = false;
            } else {
                z3 = true;
            }
            this.isVoice = z3;
            this.isVoicePrivacy = driverImsCall.isVoicePrivacy != 0;
            this.numberPresentation = presentationFromCLIP(driverImsCall.numberPresentation);
            this.name = driverImsCall.name;
            this.namePresentation = presentationFromCLIP(driverImsCall.namePresentation);
            this.peerVideoSupport = driverImsCall.peerVideoSupport;
            this.radioTechFromRilImsCall = driverImsCall.imsDomain;
            this.redirectNumberToa = driverImsCall.redirectNumberToa;
            this.redirectNumber = PhoneNumberUtils.stringFromStringAndTOA(driverImsCall.redirectNumber, driverImsCall.redirectNumberToa);
            this.redirectNumberPresentation = presentationFromCLIP(driverImsCall.redirectNumberPresentation);
            this.imsCallProfile.isEncrypt = driverImsCall.encryptState;
        }
    }

    public DriverImsCall(DriverImsCall dc) {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        if (dc != null) {
            this.imsCallProfile = new ImsCallProfiles(dc.imsCallProfile);
            this.callFailCause = new ImsReasonInfo();
            this.state = dc.state;
            this.index = dc.index;
            this.number = dc.number;
            this.isMT = dc.isMT;
            this.TOA = dc.TOA;
            this.isMpty = dc.isMpty;
            this.als = dc.als;
            this.isVoice = dc.isVoice;
            this.isVoicePrivacy = dc.isVoicePrivacy;
            this.numberPresentation = dc.numberPresentation;
            this.name = dc.name;
            this.namePresentation = dc.namePresentation;
            this.peerVideoSupport = dc.peerVideoSupport;
            this.radioTechFromRilImsCall = dc.radioTechFromRilImsCall;
            this.redirectNumberToa = dc.redirectNumberToa;
            this.redirectNumber = dc.redirectNumber;
            this.redirectNumberPresentation = dc.redirectNumberPresentation;
        }
    }

    public DriverImsCall() {
        this.radioTechFromRilImsCall = -1;
        this.redirectNumber = null;
        this.redirectNumberToa = 0;
        this.redirectNumberPresentation = 1;
        this.imsCallProfile = new ImsCallProfiles();
    }

    public static State stateFromCall(int state) throws ATParseEx {
        switch (state) {
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
                throw new ATParseEx("illegal call state " + state);
        }
    }

    public boolean update(DriverImsCall update) {
        if (update == null) {
            return false;
        }
        boolean hasChanged = isChanged(update);
        ImsReasonInfo imsReasonInfo = update.callFailCause;
        if (imsReasonInfo != null) {
            ImsReasonInfo imsReasonInfo2 = this.callFailCause;
            if (imsReasonInfo2 == null) {
                this.callFailCause = new ImsReasonInfo(imsReasonInfo.mCode, update.callFailCause.mExtraCode, update.callFailCause.mExtraMessage);
            } else {
                if (imsReasonInfo2.mCode != update.callFailCause.mCode) {
                    this.callFailCause.mCode = update.callFailCause.mCode;
                }
                if (this.callFailCause.mExtraCode != update.callFailCause.mExtraCode) {
                    this.callFailCause.mExtraCode = update.callFailCause.mExtraCode;
                }
                this.callFailCause.mExtraMessage = update.callFailCause.mExtraMessage;
            }
        }
        if (this.imsCallProfile.update(update.imsCallProfile) && !hasChanged) {
            return true;
        }
        return hasChanged;
    }

    private boolean isChanged(DriverImsCall update) {
        boolean hasChanged = false;
        State state = this.state;
        State state2 = update.state;
        if (state != state2) {
            this.state = state2;
            hasChanged = true;
        }
        if (this.index != update.index) {
            this.index = update.index;
            hasChanged = true;
        }
        if ((this.number == null && update.number != null) || (this.number != null && !this.number.equals(update.number))) {
            this.number = update.number;
            hasChanged = true;
        }
        if (this.isMT != update.isMT) {
            this.isMT = update.isMT;
            hasChanged = true;
        }
        if (this.isMpty != update.isMpty) {
            this.isMpty = update.isMpty;
            hasChanged = true;
        }
        int i = this.radioTechFromRilImsCall;
        int i2 = update.radioTechFromRilImsCall;
        if (i != i2) {
            this.radioTechFromRilImsCall = i2;
            return true;
        }
        return hasChanged;
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
}
