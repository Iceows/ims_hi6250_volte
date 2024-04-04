package com.huawei.ims;

import android.hardware.radio.V1_0.CallForwardInfo;
import android.hardware.radio.V1_0.OperatorInfo;
import android.os.AsyncResult;
import android.os.Message;
import android.telephony.Rlog;
import android.util.Pair;
import com.android.internal.telephony.LastCallFailCause;
import com.android.internal.util.HexDump;
import com.huawei.ims.GbaAuth;
import java.util.ArrayList;
import java.util.Collections;
import vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCauseInfo;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCall;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallEx;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallV1_2;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHAUTSTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHCKTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHIKTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHRESPCHALLENGETYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHRESPONSE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHRESTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo;
import vendor.huawei.hardware.radio.ims.V1_0.RilConstS32;
import vendor.huawei.hardware.radio.ims.V1_0.RspMsgPayload;

/* loaded from: ImsRadioResponse.class */
public class ImsRadioResponse extends IRadioImsResponse.Stub {
    static final String LOG_TAG = "ImsRadioResponse";
    ImsRIL mRil;

    public ImsRadioResponse(ImsRIL imsRIL) {
        this.mRil = imsRIL;
    }

    private void responseCurrentImsCalls(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCall> arrayList) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            ArrayList arrayList2 = null;
            if (radioResponseInfo.error == 0) {
                int size = arrayList.size();
                arrayList2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    DriverImsCall driverImsCall = new DriverImsCall(arrayList.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        driverImsCall.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    arrayList2.add(driverImsCall);
                    if (driverImsCall.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(arrayList2);
                sendMessageResponse(processResponse.mResult, arrayList2);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, arrayList2);
        }
    }

    private void responseCurrentImsCallsV1_2(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallV1_2> arrayList) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            ArrayList arrayList2 = null;
            if (radioResponseInfo.error == 0) {
                int size = arrayList.size();
                arrayList2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    DriverImsCall driverImsCall = new DriverImsCall(arrayList.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        driverImsCall.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    arrayList2.add(driverImsCall);
                    if (driverImsCall.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(arrayList2);
                sendMessageResponse(processResponse.mResult, arrayList2);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, arrayList2);
        }
    }

    private void responseCurrentImsCallsWithImsDomain(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallEx> arrayList) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            ArrayList arrayList2 = null;
            if (radioResponseInfo.error == 0) {
                int size = arrayList.size();
                arrayList2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    DriverImsCall driverImsCall = new DriverImsCall(arrayList.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        driverImsCall.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    arrayList2.add(driverImsCall);
                    if (driverImsCall.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(arrayList2);
                sendMessageResponse(processResponse.mResult, arrayList2);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, arrayList2);
        }
    }

    private void responseIntArrayList(RadioResponseInfo radioResponseInfo, ArrayList<Integer> arrayList) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            int[] iArr = null;
            if (radioResponseInfo.error == 0) {
                int size = arrayList.size();
                iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    iArr[i] = arrayList.get(i).intValue();
                }
                sendMessageResponse(processResponse.mResult, iArr);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, iArr);
        }
    }

    private void responseInts(RadioResponseInfo radioResponseInfo, int... iArr) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        responseIntArrayList(radioResponseInfo, arrayList);
    }

    private void responseLastCallFailCauseInfo(RadioResponseInfo radioResponseInfo, LastCallFailCauseInfo lastCallFailCauseInfo) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            int[] iArr = new int[1];
            if (radioResponseInfo.error == 0) {
                LastCallFailCause lastCallFailCause = new LastCallFailCause();
                lastCallFailCause.causeCode = lastCallFailCauseInfo.causeCode;
                iArr[0] = lastCallFailCause.causeCode;
                sendMessageResponse(processResponse.mResult, iArr);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, iArr);
        }
    }

    private void responseSetImsConfig(RadioResponseInfo radioResponseInfo, RspMsgPayload rspMsgPayload) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            if (radioResponseInfo.error == 0) {
                sendMessageResponse(processResponse.mResult, null);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, null);
        }
    }

    private void responseString(RadioResponseInfo radioResponseInfo, String str) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            String str2 = null;
            if (radioResponseInfo.error == 0) {
                sendMessageResponse(processResponse.mResult, str);
                str2 = str;
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, str2);
        }
    }

    private void responseUiccAuth(RadioResponseInfo radioResponseInfo, RILUICCAUTHRESPONSE riluiccauthresponse) {
        Rlog.d(LOG_TAG, "responseUiccAuth, info=" + radioResponseInfo + "uiccAuthRst=" + riluiccauthresponse);
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            GbaAuth.AuthResp authResp = null;
            if (radioResponseInfo.error == 0) {
                Rlog.d(LOG_TAG, "NO ERROR,start to process GbaAuth");
                authResp = new GbaAuth.AuthResp();
                authResp.mStatus = riluiccauthresponse.authStatus;
                Rlog.d(LOG_TAG, "responseUiccAuth, mStatus=" + authResp.mStatus);
                int i = authResp.mStatus;
                if (i == 0) {
                    GbaAuth.AuthRespChallenge authRespChallenge = new GbaAuth.AuthRespChallenge();
                    authRespChallenge.mRes = new GbaAuth.DataValue();
                    RILUICCAUTHRESPCHALLENGETYPE riluiccauthrespchallengetype = riluiccauthresponse.authChallenge;
                    RILUICCAUTHRESTYPE riluiccauthrestype = riluiccauthrespchallengetype.resData;
                    authRespChallenge.mRes.mPresent = riluiccauthrestype.resPresent;
                    Rlog.d(LOG_TAG, "mRes.mPresent=" + authRespChallenge.mRes.mPresent);
                    authRespChallenge.mRes.mValue = HexDump.hexStringToByteArray(riluiccauthrestype.res);
                    Rlog.d(LOG_TAG, "res=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(authRespChallenge.mRes.mValue), 4));
                    authRespChallenge.mIk = new GbaAuth.DataValue();
                    RILUICCAUTHIKTYPE riluiccauthiktype = riluiccauthrespchallengetype.ikData;
                    authRespChallenge.mIk.mPresent = riluiccauthiktype.ikPresent;
                    Rlog.d(LOG_TAG, "mIk.mPresent=" + authRespChallenge.mIk.mPresent);
                    authRespChallenge.mIk.mValue = HexDump.hexStringToByteArray(riluiccauthiktype.ik);
                    Rlog.d(LOG_TAG, "ik=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(authRespChallenge.mIk.mValue), 4));
                    authRespChallenge.mCk = new GbaAuth.DataValue();
                    RILUICCAUTHCKTYPE riluiccauthcktype = riluiccauthrespchallengetype.ckData;
                    authRespChallenge.mCk.mPresent = riluiccauthcktype.ckPresent;
                    Rlog.d(LOG_TAG, "mCk.mPresent=" + authRespChallenge.mCk.mPresent);
                    authRespChallenge.mCk.mValue = HexDump.hexStringToByteArray(riluiccauthcktype.ck);
                    Rlog.d(LOG_TAG, "ck=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(authRespChallenge.mCk.mValue), 4));
                    authResp.mResp = authRespChallenge;
                } else if (i == 2) {
                    GbaAuth.AuthSyncfail authSyncfail = new GbaAuth.AuthSyncfail();
                    authSyncfail.mAuts = new GbaAuth.DataValue();
                    RILUICCAUTHAUTSTYPE riluiccauthautstype = riluiccauthresponse.authSyncfail.autsData;
                    authSyncfail.mAuts.mPresent = riluiccauthautstype.autsPresent;
                    Rlog.d(LOG_TAG, "mAuts.mPresent=" + authSyncfail.mAuts.mPresent);
                    authSyncfail.mAuts.mValue = HexDump.hexStringToByteArray(riluiccauthautstype.auts);
                    Rlog.d(LOG_TAG, "mAuts=" + HexDump.toHexString(authSyncfail.mAuts.mValue));
                    authResp.mResp = authSyncfail;
                }
                sendMessageResponse(processResponse.mResult, authResp);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, authResp);
        }
    }

    private void responseVoid(RadioResponseInfo radioResponseInfo) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            if (radioResponseInfo.error == 0) {
                sendMessageResponse(processResponse.mResult, null);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, null);
        }
    }

    private void sendMessageResponse(Message message, Object obj) {
        if (message != null) {
            AsyncResult.forMessage(message, obj, (Throwable) null);
            message.sendToTarget();
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void RspMsg(RadioResponseInfo radioResponseInfo, int i, RspMsgPayload rspMsgPayload) {
        Rlog.d(LOG_TAG, "RspMsg:responseInfo =" + radioResponseInfo + ",msgId = " + i);
        switch (i) {
            case RilConstS32.RIL_REQUEST_HW_IMS_SEND_USSD /* 588 */:
            case RilConstS32.RIL_REQUEST_HW_IMS_CANCEL_USSD /* 589 */:
                return;
            case RilConstS32.RIL_REQUEST_HW_IMS_ANSWER /* 590 */:
                acceptImsCallResponse(radioResponseInfo);
                return;
            default:
                switch (i) {
                    case RilConstS32.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE /* 633 */:
                        modifyImsCallInitiateResponse(radioResponseInfo);
                        return;
                    case RilConstS32.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM /* 634 */:
                        modifyImsCallConfirmResponse(radioResponseInfo);
                        return;
                    default:
                        switch (i) {
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_PCSCF /* 674 */:
                                setDMPCSCFResponse(radioResponseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_DYN /* 675 */:
                                setDMDYNResponse(radioResponseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_TIMER /* 676 */:
                                setDMTIMERResponse(radioResponseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_SMS /* 677 */:
                                setDMSMSReponse(radioResponseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_PCSCF /* 678 */:
                                getDMPCSCFResponse(radioResponseInfo, rspMsgPayload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_TIMER /* 679 */:
                                getDMTIMERResponse(radioResponseInfo, rspMsgPayload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_DYN /* 680 */:
                                getDMDYNResponse(radioResponseInfo, rspMsgPayload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_SMS /* 681 */:
                                getDMSMSResponse(radioResponseInfo, rspMsgPayload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_USER /* 682 */:
                                getDMUSERResponse(radioResponseInfo, rspMsgPayload.strData);
                                return;
                            default:
                                switch (i) {
                                    case RilConstS32.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE /* 693 */:
                                        responseHwImsLastCallFailCauseInfo(radioResponseInfo, rspMsgPayload.nData, rspMsgPayload.strData);
                                        return;
                                    case RilConstS32.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY /* 694 */:
                                        setImsVtCapabilityResponse(radioResponseInfo);
                                        return;
                                    case RilConstS32.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID /* 695 */:
                                        Rlog.d(LOG_TAG, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID");
                                        return;
                                    default:
                                        switch (i) {
                                            case RilConstS32.RIL_REQUEST_HW_VOLTE_IMPI /* 708 */:
                                                responseString(radioResponseInfo, rspMsgPayload.strData);
                                                return;
                                            case RilConstS32.RIL_REQUEST_HW_VOLTE_DOMAIN /* 709 */:
                                                responseString(radioResponseInfo, rspMsgPayload.strData);
                                                return;
                                            case RilConstS32.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL /* 710 */:
                                                modifyImsCallInitiateResponse(radioResponseInfo);
                                                return;
                                            default:
                                                switch (i) {
                                                    case RilConstS32.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG /* 713 */:
                                                        Rlog.d(LOG_TAG, "RESPONSE SET_IMS_SMS_CONFIG");
                                                        responseSetImsConfig(radioResponseInfo, rspMsgPayload);
                                                        return;
                                                    case RilConstS32.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG /* 714 */:
                                                        Rlog.d(LOG_TAG, "RESPONSE GET_IMS_SMS_CONFIG");
                                                        responseGetImsSmsStatus(radioResponseInfo, rspMsgPayload);
                                                        return;
                                                    default:
                                                        switch (i) {
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_DIAL /* 579 */:
                                                                imsDialResponse(radioResponseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_UDUB /* 586 */:
                                                            default:
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_IMPU /* 605 */:
                                                                getImsImpuResponse(radioResponseInfo, rspMsgPayload.strData);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_CALL_WAITING /* 615 */:
                                                                setImsCallWaitingResponse(radioResponseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG /* 668 */:
                                                                getLteInfoRsp(radioResponseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_REJ_CALL /* 670 */:
                                                                responseVoid(radioResponseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_BATTERY_STATUS /* 685 */:
                                                                sendBatteryStatusResponse(radioResponseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE_WITH_TYPE /* 700 */:
                                                                switchWaitingOrHoldingAndActiveForImsResponse(radioResponseInfo);
                                                                return;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public void acceptCallResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void acceptImsCallResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void acknowledgeLastIncomingGsmSmsResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void acknowledgeRequest(int i) {
        this.mRil.processRequestAck(i);
    }

    public void addImsConfMemberResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void conferenceResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "conferenceResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void deactivateDataCallResponse(RadioResponseInfo radioResponseInfo) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void explicitCallTransferResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "explicitCallTransferResponse");
        responseVoid(radioResponseInfo);
    }

    public void explicitImsCallTransferResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void getAvailableNetworksResponse(RadioResponseInfo radioResponseInfo, ArrayList<OperatorInfo> arrayList) {
    }

    public void getBasebandVersionResponse(RadioResponseInfo radioResponseInfo, String str) {
    }

    public void getCallForwardStatusResponse(RadioResponseInfo radioResponseInfo, ArrayList<CallForwardInfo> arrayList) {
    }

    public void getCallWaitingResponse(RadioResponseInfo radioResponseInfo, boolean z, int i) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsResponse(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCall> arrayList) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsResponse:responseInfo =" + radioResponseInfo);
        responseCurrentImsCalls(radioResponseInfo, arrayList);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsResponseV1_2(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallV1_2> arrayList) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsResponseV1_2:responseInfo =" + radioResponseInfo);
        responseCurrentImsCallsV1_2(radioResponseInfo, arrayList);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsWithImsDomainResponse(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallEx> arrayList) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsWithImsDomainResponse:responseInfo =" + radioResponseInfo);
        responseCurrentImsCallsWithImsDomain(radioResponseInfo, arrayList);
    }

    public void getDMDYNResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getDMPCSCFResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getDMSMSResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getDMTIMERResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getDMUSERResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getFacilityLockForAppResponse(RadioResponseInfo radioResponseInfo, int i) {
    }

    public void getImsImpuResponse(RadioResponseInfo radioResponseInfo, String str) {
        responseString(radioResponseInfo, str);
    }

    public void getImsRegisterStateResponse(RadioResponseInfo radioResponseInfo, int i) {
        responseInts(radioResponseInfo, i);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getImsRegistrationStateResponse(RadioResponseInfo radioResponseInfo, boolean z, int i) {
        responseInts(radioResponseInfo, z ? 1 : 0, i);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getLastCallFailCauseResponse(RadioResponseInfo radioResponseInfo, LastCallFailCauseInfo lastCallFailCauseInfo) {
        Rlog.d(LOG_TAG, "getLastCallFailCauseResponse:responseInfo =" + radioResponseInfo + "var2 = " + lastCallFailCauseInfo);
        responseLastCallFailCauseInfo(radioResponseInfo, lastCallFailCauseInfo);
    }

    public void getLastImsCallFailCauseResponse(RadioResponseInfo radioResponseInfo, int i) {
        responseInts(radioResponseInfo, i);
    }

    public void getLteInfoRsp(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void getNetworkSelectionModeResponse(RadioResponseInfo radioResponseInfo, boolean z) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupConnectionResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "hangupConnectionResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupForegroundResumeBackgroundResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "hangupForegroundResumeBackgroundResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupWaitingOrBackgroundResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "hangupWaitingOrBackgroundResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void imsConferenceResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void imsDialResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "imsDialResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void modifyImsCallConfirmResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void modifyImsCallInitiateResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void modifyImsCallUpgradeCancelResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void rejectCallResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void reportStkServiceIsRunningResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void responseGetImsSmsStatus(RadioResponseInfo radioResponseInfo, RspMsgPayload rspMsgPayload) {
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse == null || rspMsgPayload == null) {
            return;
        }
        Integer num = null;
        int[] iArr = new int[rspMsgPayload.nDatas.size()];
        if (radioResponseInfo.error == 0) {
            if (rspMsgPayload.nDatas.size() >= 1) {
                iArr[0] = rspMsgPayload.nDatas.get(0).intValue();
            }
            num = Integer.valueOf(iArr[0]);
            sendMessageResponse(processResponse.mResult, num);
        }
        this.mRil.processResponseDone(processResponse, radioResponseInfo, num);
    }

    public void responseHwImsLastCallFailCauseInfo(RadioResponseInfo radioResponseInfo, int i, String str) {
        Rlog.d(LOG_TAG, "responseHwImsLastCallFailCauseInfo:responseInfo =" + radioResponseInfo + "failCause = " + i + "failString = " + str);
        ImsRILRequest processResponse = this.mRil.processResponse(radioResponseInfo);
        if (processResponse != null) {
            Pair pair = null;
            if (radioResponseInfo.error == 0) {
                pair = new Pair(Integer.valueOf(i), str);
                sendMessageResponse(processResponse.mResult, pair);
            }
            this.mRil.processResponseDone(processResponse, radioResponseInfo, pair);
        }
    }

    public void restartRILDResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void sendBatteryStatusResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void sendDtmfResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "sendDtmfResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void separateConnectionResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void setBarringPasswordResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void setCallForwardResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void setCallWaitingResponse(RadioResponseInfo radioResponseInfo) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setClirResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "setClirResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void setDMDYNResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setDMPCSCFResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setDMSMSReponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setDMTIMERResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setFacilityLockForAppResponse(RadioResponseInfo radioResponseInfo, int i) {
    }

    public void setImsCallWaitingResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "setImsCallWaitingResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void setImsClirResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setImsMuteResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setImsRegErrReportResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    public void setImsVtCapabilityResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setMuteResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "setMuteResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void setNetworkSelectionModeAutomaticResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void setNetworkSelectionModeManualResponse(RadioResponseInfo radioResponseInfo) {
    }

    public void setSimCardPowerResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void startDtmfResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "startDtmfResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void stopDtmfResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "stopDtmfResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    public void switchWaitingOrHoldingAndActiveForImsResponse(RadioResponseInfo radioResponseInfo) {
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo radioResponseInfo) {
        Rlog.d(LOG_TAG, "switchWaitingOrHoldingAndActiveResponse:responseInfo =" + radioResponseInfo);
        responseVoid(radioResponseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void uiccAuthResponse(RadioResponseInfo radioResponseInfo, RILUICCAUTHRESPONSE riluiccauthresponse) {
        responseUiccAuth(radioResponseInfo, riluiccauthresponse);
    }
}
