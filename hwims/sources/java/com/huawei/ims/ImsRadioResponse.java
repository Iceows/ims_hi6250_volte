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
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHRESPSYNCFAILTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RILUICCAUTHRESTYPE;
import vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo;
import vendor.huawei.hardware.radio.ims.V1_0.RilConstS32;
import vendor.huawei.hardware.radio.ims.V1_0.RspMsgPayload;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ImsRadioResponse extends IRadioImsResponse.Stub {
    static final String LOG_TAG = "ImsRadioResponse";
    ImsRIL mRil;

    public ImsRadioResponse(ImsRIL ril) {
        this.mRil = ril;
    }

    private void sendMessageResponse(Message msg, Object ret) {
        if (msg != null) {
            AsyncResult.forMessage(msg, ret, (Throwable) null);
            msg.sendToTarget();
        }
    }

    public void acknowledgeRequest(int serial) {
        this.mRil.processRequestAck(serial);
    }

    public void imsDialResponse(RadioResponseInfo info) {
        Rlog.d(LOG_TAG, "imsDialResponse:responseInfo =" + info);
        responseVoid(info);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupConnectionResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "hangupConnectionResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupWaitingOrBackgroundResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "hangupWaitingOrBackgroundResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void hangupForegroundResumeBackgroundResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "hangupForegroundResumeBackgroundResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "switchWaitingOrHoldingAndActiveResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void conferenceResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "conferenceResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void rejectCallResponse(RadioResponseInfo responseInfo) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getLastCallFailCauseResponse(RadioResponseInfo responseInfo, LastCallFailCauseInfo var2) {
        Rlog.d(LOG_TAG, "getLastCallFailCauseResponse:responseInfo =" + responseInfo + "var2 = " + var2);
        responseLastCallFailCauseInfo(responseInfo, var2);
    }

    private void responseLastCallFailCauseInfo(RadioResponseInfo responseInfo, LastCallFailCauseInfo var2) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            int[] response = new int[1];
            if (responseInfo.error == 0) {
                LastCallFailCause ret = new LastCallFailCause();
                ret.causeCode = var2.causeCode;
                response[0] = ret.causeCode;
                sendMessageResponse(rr.mResult, response);
            }
            this.mRil.processResponseDone(rr, responseInfo, response);
        }
    }

    public void responseHwImsLastCallFailCauseInfo(RadioResponseInfo responseInfo, int failCause, String failString) {
        Rlog.d(LOG_TAG, "responseHwImsLastCallFailCauseInfo:responseInfo =" + responseInfo + "failCause = " + failCause + "failString = " + failString);
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                Object failInfo = new Pair(Integer.valueOf(failCause), failString);
                ret = failInfo;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void sendDtmfResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "sendDtmfResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setClirResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "setClirResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    public void getCallForwardStatusResponse(RadioResponseInfo responseInfo, ArrayList<CallForwardInfo> var2) {
    }

    public void setCallForwardResponse(RadioResponseInfo responseInfo) {
    }

    public void getCallWaitingResponse(RadioResponseInfo responseInfo, boolean var2, int var3) {
    }

    public void setCallWaitingResponse(RadioResponseInfo responseInfo) {
    }

    public void acknowledgeLastIncomingGsmSmsResponse(RadioResponseInfo responseInfo) {
    }

    public void acceptCallResponse(RadioResponseInfo responseInfo) {
    }

    public void deactivateDataCallResponse(RadioResponseInfo responseInfo) {
    }

    public void getFacilityLockForAppResponse(RadioResponseInfo responseInfo, int var2) {
    }

    public void setFacilityLockForAppResponse(RadioResponseInfo responseInfo, int var2) {
    }

    public void setBarringPasswordResponse(RadioResponseInfo responseInfo) {
    }

    public void getNetworkSelectionModeResponse(RadioResponseInfo responseInfo, boolean var2) {
    }

    public void setNetworkSelectionModeAutomaticResponse(RadioResponseInfo responseInfo) {
    }

    public void setNetworkSelectionModeManualResponse(RadioResponseInfo responseInfo) {
    }

    public void getAvailableNetworksResponse(RadioResponseInfo responseInfo, ArrayList<OperatorInfo> var2) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void startDtmfResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "startDtmfResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void stopDtmfResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "stopDtmfResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    public void getBasebandVersionResponse(RadioResponseInfo responseInfo, String var2) {
    }

    public void separateConnectionResponse(RadioResponseInfo responseInfo) {
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setMuteResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "setMuteResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void explicitCallTransferResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "explicitCallTransferResponse");
        responseVoid(responseInfo);
    }

    private void responseVoid(RadioResponseInfo responseInfo) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            if (responseInfo.error == 0) {
                sendMessageResponse(rr.mResult, null);
            }
            this.mRil.processResponseDone(rr, responseInfo, null);
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsResponse(RadioResponseInfo responseInfo, ArrayList<RILImsCall> calls) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsResponse:responseInfo =" + responseInfo);
        responseCurrentImsCalls(responseInfo, calls);
    }

    private void responseCurrentImsCalls(RadioResponseInfo responseInfo, ArrayList<RILImsCall> calls) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                int num = calls.size();
                ArrayList<DriverImsCall> dcCalls = new ArrayList<>(num);
                for (int i = 0; i < num; i++) {
                    DriverImsCall dc = new DriverImsCall(calls.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        dc.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    dcCalls.add(dc);
                    if (dc.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(dcCalls);
                ret = dcCalls;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsResponseV1_2(RadioResponseInfo responseInfo, ArrayList<RILImsCallV1_2> calls) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsResponseV1_2:responseInfo =" + responseInfo);
        responseCurrentImsCallsV1_2(responseInfo, calls);
    }

    private void responseCurrentImsCallsV1_2(RadioResponseInfo responseInfo, ArrayList<RILImsCallV1_2> calls) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                int num = calls.size();
                ArrayList<DriverImsCall> dcCalls = new ArrayList<>(num);
                for (int i = 0; i < num; i++) {
                    DriverImsCall dc = new DriverImsCall(calls.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        dc.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    dcCalls.add(dc);
                    if (dc.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(dcCalls);
                ret = dcCalls;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getCurrentImsCallsWithImsDomainResponse(RadioResponseInfo responseInfo, ArrayList<RILImsCallEx> calls) {
        Rlog.d(LOG_TAG, "getCurrentImsCallsWithImsDomainResponse:responseInfo =" + responseInfo);
        responseCurrentImsCallsWithImsDomain(responseInfo, calls);
    }

    private void responseCurrentImsCallsWithImsDomain(RadioResponseInfo responseInfo, ArrayList<RILImsCallEx> calls) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                int num = calls.size();
                ArrayList<DriverImsCall> dcCalls = new ArrayList<>(num);
                for (int i = 0; i < num; i++) {
                    DriverImsCall dc = new DriverImsCall(calls.get(i));
                    if (!this.mRil.isSupportCnap()) {
                        dc.namePresentation = 2;
                        this.mRil.logd("isSupportCnap : false");
                    }
                    dcCalls.add(dc);
                    if (dc.isVoicePrivacy) {
                        this.mRil.mVoicePrivacyOnRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is enabled");
                    } else {
                        this.mRil.mVoicePrivacyOffRegistrants.notifyRegistrants();
                        this.mRil.logd("InCall VoicePrivacy is disabled");
                    }
                }
                Collections.sort(dcCalls);
                ret = dcCalls;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    public void getImsRegisterStateResponse(RadioResponseInfo info, int regState) {
        responseInts(info, regState);
    }

    public void imsConferenceResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void getLastImsCallFailCauseResponse(RadioResponseInfo responseInfo, int ret) {
        responseInts(responseInfo, ret);
    }

    public void acceptImsCallResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setImsMuteResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void getImsImpuResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void addImsConfMemberResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setImsClirResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setImsCallWaitingResponse(RadioResponseInfo responseInfo) {
        Rlog.d(LOG_TAG, "setImsCallWaitingResponse:responseInfo =" + responseInfo);
        responseVoid(responseInfo);
    }

    public void modifyImsCallInitiateResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void modifyImsCallUpgradeCancelResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void modifyImsCallConfirmResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setImsVtCapabilityResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void responseGetImsSmsStatus(RadioResponseInfo responseInfo, RspMsgPayload payload) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null && payload != null) {
            Object ret = null;
            int[] response = new int[payload.nDatas.size()];
            if (responseInfo.error == 0) {
                if (payload.nDatas.size() >= 1) {
                    response[0] = payload.nDatas.get(0).intValue();
                }
                ret = Integer.valueOf(response[0]);
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    private void responseSetImsConfig(RadioResponseInfo responseInfo, RspMsgPayload payload) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            if (responseInfo.error == 0) {
                sendMessageResponse(rr.mResult, null);
            }
            this.mRil.processResponseDone(rr, responseInfo, null);
        }
    }

    public void switchWaitingOrHoldingAndActiveForImsResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void explicitImsCallTransferResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void getLteInfoRsp(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setDMPCSCFResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setDMDYNResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setDMTIMERResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void setDMSMSReponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void getDMPCSCFResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void getDMTIMERResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void getDMDYNResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void getDMSMSResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void getDMUSERResponse(RadioResponseInfo responseInfo, String response) {
        responseString(responseInfo, response);
    }

    public void sendBatteryStatusResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void setImsRegErrReportResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void RspMsg(RadioResponseInfo responseInfo, int msgId, RspMsgPayload payload) {
        Rlog.d(LOG_TAG, "RspMsg:responseInfo =" + responseInfo + ",msgId = " + msgId);
        switch (msgId) {
            case RilConstS32.RIL_REQUEST_HW_IMS_SEND_USSD /* 588 */:
            case RilConstS32.RIL_REQUEST_HW_IMS_CANCEL_USSD /* 589 */:
                return;
            case RilConstS32.RIL_REQUEST_HW_IMS_ANSWER /* 590 */:
                acceptImsCallResponse(responseInfo);
                return;
            default:
                switch (msgId) {
                    case RilConstS32.RIL_REQUEST_HW_IMS_MODIFY_CALL_INITIATE /* 633 */:
                        modifyImsCallInitiateResponse(responseInfo);
                        return;
                    case RilConstS32.RIL_REQUEST_HW_IMS_MODIFY_CALL_CONFIRM /* 634 */:
                        modifyImsCallConfirmResponse(responseInfo);
                        return;
                    default:
                        switch (msgId) {
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_PCSCF /* 674 */:
                                setDMPCSCFResponse(responseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_DYN /* 675 */:
                                setDMDYNResponse(responseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_TIMER /* 676 */:
                                setDMTIMERResponse(responseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_DM_SMS /* 677 */:
                                setDMSMSReponse(responseInfo);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_PCSCF /* 678 */:
                                getDMPCSCFResponse(responseInfo, payload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_TIMER /* 679 */:
                                getDMTIMERResponse(responseInfo, payload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_DYN /* 680 */:
                                getDMDYNResponse(responseInfo, payload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_SMS /* 681 */:
                                getDMSMSResponse(responseInfo, payload.strData);
                                return;
                            case RilConstS32.RIL_REQUEST_HW_IMS_GET_DM_USER /* 682 */:
                                getDMUSERResponse(responseInfo, payload.strData);
                                return;
                            default:
                                switch (msgId) {
                                    case RilConstS32.RIL_REQUEST_HW_IMS_LAST_CALL_CAUSE /* 693 */:
                                        responseHwImsLastCallFailCauseInfo(responseInfo, payload.nData, payload.strData);
                                        return;
                                    case RilConstS32.RIL_REQUEST_HW_SET_IMSVT_CAPABILITY /* 694 */:
                                        setImsVtCapabilityResponse(responseInfo);
                                        return;
                                    case RilConstS32.RIL_REQUEST_HW_SET_WIFI_EMERGENCY_AID /* 695 */:
                                        Rlog.d(LOG_TAG, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID");
                                        return;
                                    default:
                                        switch (msgId) {
                                            case RilConstS32.RIL_REQUEST_HW_VOLTE_IMPI /* 708 */:
                                                responseString(responseInfo, payload.strData);
                                                return;
                                            case RilConstS32.RIL_REQUEST_HW_VOLTE_DOMAIN /* 709 */:
                                                responseString(responseInfo, payload.strData);
                                                return;
                                            case RilConstS32.RIL_REQUEST_CANCEL_IMS_VIDEO_CALL /* 710 */:
                                                modifyImsCallInitiateResponse(responseInfo);
                                                return;
                                            default:
                                                switch (msgId) {
                                                    case RilConstS32.RIL_REQUEST_HW_SET_IMS_SMS_CONFIG /* 713 */:
                                                        Rlog.d(LOG_TAG, "RESPONSE SET_IMS_SMS_CONFIG");
                                                        responseSetImsConfig(responseInfo, payload);
                                                        return;
                                                    case RilConstS32.RIL_REQUEST_HW_GET_IMS_SMS_CONFIG /* 714 */:
                                                        Rlog.d(LOG_TAG, "RESPONSE GET_IMS_SMS_CONFIG");
                                                        responseGetImsSmsStatus(responseInfo, payload);
                                                        return;
                                                    default:
                                                        switch (msgId) {
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_DIAL /* 579 */:
                                                                imsDialResponse(responseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_UDUB /* 586 */:
                                                            default:
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_IMPU /* 605 */:
                                                                getImsImpuResponse(responseInfo, payload.strData);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_SET_CALL_WAITING /* 615 */:
                                                                setImsCallWaitingResponse(responseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG /* 668 */:
                                                                getLteInfoRsp(responseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_REJ_CALL /* 670 */:
                                                                responseVoid(responseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_BATTERY_STATUS /* 685 */:
                                                                sendBatteryStatusResponse(responseInfo);
                                                                return;
                                                            case RilConstS32.RIL_REQUEST_HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE_WITH_TYPE /* 700 */:
                                                                switchWaitingOrHoldingAndActiveForImsResponse(responseInfo);
                                                                return;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public void setSimCardPowerResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    public void reportStkServiceIsRunningResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void getImsRegistrationStateResponse(RadioResponseInfo responseInfo, boolean isRegistered, int ratFamily) {
        responseInts(responseInfo, isRegistered ? 1 : 0, ratFamily);
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
    public void uiccAuthResponse(RadioResponseInfo info, RILUICCAUTHRESPONSE uiccAuthRst) {
        responseUiccAuth(info, uiccAuthRst);
    }

    private void responseUiccAuth(RadioResponseInfo info, RILUICCAUTHRESPONSE uiccAuthRst) {
        Rlog.d(LOG_TAG, "responseUiccAuth, info=" + info + "uiccAuthRst=" + uiccAuthRst);
        ImsRILRequest rr = this.mRil.processResponse(info);
        if (rr != null) {
            Object ret = null;
            if (info.error == 0) {
                Rlog.d(LOG_TAG, "NO ERROR,start to process GbaAuth");
                GbaAuth.AuthResp auth = new GbaAuth.AuthResp();
                auth.mStatus = uiccAuthRst.authStatus;
                Rlog.d(LOG_TAG, "responseUiccAuth, mStatus=" + auth.mStatus);
                int i = auth.mStatus;
                if (i == 0) {
                    GbaAuth.AuthRespChallenge ac = new GbaAuth.AuthRespChallenge();
                    ac.mRes = new GbaAuth.DataValue();
                    RILUICCAUTHRESPCHALLENGETYPE authChang = uiccAuthRst.authChallenge;
                    RILUICCAUTHRESTYPE resDatas = authChang.resData;
                    ac.mRes.mPresent = resDatas.resPresent;
                    Rlog.d(LOG_TAG, "mRes.mPresent=" + ac.mRes.mPresent);
                    ac.mRes.mValue = HexDump.hexStringToByteArray(resDatas.res);
                    Rlog.d(LOG_TAG, "res=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(ac.mRes.mValue), 4));
                    ac.mIk = new GbaAuth.DataValue();
                    RILUICCAUTHIKTYPE ikType = authChang.ikData;
                    ac.mIk.mPresent = ikType.ikPresent;
                    Rlog.d(LOG_TAG, "mIk.mPresent=" + ac.mIk.mPresent);
                    ac.mIk.mValue = HexDump.hexStringToByteArray(ikType.ik);
                    Rlog.d(LOG_TAG, "ik=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(ac.mIk.mValue), 4));
                    ac.mCk = new GbaAuth.DataValue();
                    RILUICCAUTHCKTYPE ckDatas = authChang.ckData;
                    ac.mCk.mPresent = ckDatas.ckPresent;
                    Rlog.d(LOG_TAG, "mCk.mPresent=" + ac.mCk.mPresent);
                    ac.mCk.mValue = HexDump.hexStringToByteArray(ckDatas.ck);
                    Rlog.d(LOG_TAG, "ck=" + HiddenPrivacyInfo.putMosaic(HexDump.toHexString(ac.mCk.mValue), 4));
                    auth.mResp = ac;
                } else if (i == 2) {
                    GbaAuth.AuthSyncfail as = new GbaAuth.AuthSyncfail();
                    as.mAuts = new GbaAuth.DataValue();
                    RILUICCAUTHRESPSYNCFAILTYPE failType = uiccAuthRst.authSyncfail;
                    RILUICCAUTHAUTSTYPE autsDatas = failType.autsData;
                    as.mAuts.mPresent = autsDatas.autsPresent;
                    Rlog.d(LOG_TAG, "mAuts.mPresent=" + as.mAuts.mPresent);
                    as.mAuts.mValue = HexDump.hexStringToByteArray(autsDatas.auts);
                    Rlog.d(LOG_TAG, "mAuts=" + HexDump.toHexString(as.mAuts.mValue));
                    auth.mResp = as;
                }
                ret = auth;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, info, ret);
        }
    }

    public void restartRILDResponse(RadioResponseInfo responseInfo) {
        responseVoid(responseInfo);
    }

    private void responseInts(RadioResponseInfo responseInfo, int... var) {
        ArrayList<Integer> ints = new ArrayList<>();
        for (int i : var) {
            ints.add(Integer.valueOf(i));
        }
        responseIntArrayList(responseInfo, ints);
    }

    private void responseIntArrayList(RadioResponseInfo responseInfo, ArrayList<Integer> var) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                int list_size = var.size();
                int[] response = new int[list_size];
                for (int i = 0; i < list_size; i++) {
                    response[i] = var.get(i).intValue();
                }
                ret = response;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }

    private void responseString(RadioResponseInfo responseInfo, String s) {
        ImsRILRequest rr = this.mRil.processResponse(responseInfo);
        if (rr != null) {
            Object ret = null;
            if (responseInfo.error == 0) {
                ret = s;
                sendMessageResponse(rr.mResult, ret);
            }
            this.mRil.processResponseDone(rr, responseInfo, ret);
        }
    }
}
