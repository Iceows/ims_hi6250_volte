package com.huawei.ims;

import android.os.AsyncResult;
import android.telephony.Rlog;
import com.huawei.ims.vt.VTUtils;
import com.huawei.internal.telephony.HwCustRILConstants;
import java.util.ArrayList;
import vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsCallModify;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsHandover;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsModifyEndCause;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsMtStatusReport;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsRegErrReport;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsServiceStatus;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsSrvstatusList;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsStatusForAccTech;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsSuppSvcNotification;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsUserData;
import vendor.huawei.hardware.radio.ims.V1_0.RILUnsolMsgPayload;
import vendor.huawei.hardware.radio.ims.V1_0.RILVtFlowInfoReport;


public class ImsRadioIndication extends IRadioImsIndication.Stub {
    static final String LOG_TAG = "ImsRadioIndication";
    private static final int SRVSTATUS_LEN = 4;
    private int START_LOCAL_HOLD_TONE = 1;
    ImsRIL mRil;

    public ImsRadioIndication(ImsRIL ril) {
        this.mRil = ril;
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void vtFlowInfoReport(int indicationType, RILVtFlowInfoReport rilVtFlowInfoReport) {
        if (!VTUtils.isVtFlowInfo()) {
            Rlog.d(LOG_TAG, "ro.config.vt_flow_info=false");
            return;
        }
        this.mRil.processIndication(indicationType);
        Rlog.d(LOG_TAG, "currVtTime=" + rilVtFlowInfoReport.currVtTime + "currTxFlow=" + rilVtFlowInfoReport.currTxFlow + "currRxFlow=" + rilVtFlowInfoReport.currRxFlow);
        long currCallDataUsage = 0L;
        try {
            currCallDataUsage = Long.parseLong(rilVtFlowInfoReport.currRxFlow, 16) + Long.parseLong(rilVtFlowInfoReport.currTxFlow, 16);
        } catch (NumberFormatException e) {
            Rlog.e(LOG_TAG, "vtFlowInfoReport : NumberFormatException ");
        }
        long tempCallDataUsage = currCallDataUsage - VTUtils.getPreCallDataUsage();
        Rlog.d(LOG_TAG, "currCallDataUsage=" + currCallDataUsage + ";tempCallDataUsage=" + tempCallDataUsage);
        if (tempCallDataUsage > 0) {
            this.mRil.mVtFlowInfoReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, Long.valueOf(tempCallDataUsage), (Throwable) null));
        } else if (tempCallDataUsage < 0) {
            this.mRil.mVtFlowInfoReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, Long.valueOf(currCallDataUsage), (Throwable) null));
        } else {
            Rlog.d(LOG_TAG, "video call dataUsage is not change");
        }
        VTUtils.setPreCallDataUsage(currCallDataUsage);
    }

    public void imsCallStateChanged(int indicationType) {
        Rlog.d(LOG_TAG, "imsCallStateChanged:indicationType = " + indicationType);
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED);
        if (this.mRil.mCallStateRegistrants != null) {
            this.mRil.mCallStateRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    public void imsCallRing(int indicationType) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_CALL_RING);
        if (this.mRil.mRingRegistrant != null) {
            this.mRil.mRingRegistrant.notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    public void imsCallRingBackTone(int indicationType, ArrayList<Integer> ret) {
        Rlog.d(LOG_TAG, "imsCallRingBackTone, indicationType =" + indicationType + ",ret = " + ret);
        this.mRil.processIndication(indicationType);
        ImsRIL imsRIL = this.mRil;
        int[] tones = ImsRIL.arrayListToPrimitiveArray(ret);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RINGBACK_TONE);
        if (this.mRil.mRingbackToneRegistrants != null) {
            boolean playtone = tones[0] == 1;
            this.mRil.mRingbackToneRegistrants.notifyRegistrants(new AsyncResult((Object) null, Boolean.valueOf(playtone), (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsHandoverInd(int indicationType, RILImsHandover imsHandover) {
        this.mRil.processIndication(indicationType);
        ImsServiceCallTracker.HandoverInfo handover = new ImsServiceCallTracker.HandoverInfo(imsHandover);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_HANDOVER);
        if (this.mRil.mHandoverStatusRegistrants != null) {
            this.mRil.mHandoverStatusRegistrants.notifyRegistrants(new AsyncResult((Object) null, handover, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsSrvStatusInd(int type, RILImsSrvstatusList imsSrvStatus) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_SRV_STATUS_UPDATE);
        ArrayList<ImsServiceState> srvStatus = new ArrayList<>(4);
        for (int i = 0; i < 4; i++) {
            ImsServiceState srv = new ImsServiceState();
            srv.isValid = imsSrvStatus.srvstatusinfo[i].isValid != 0;
            srv.type = imsSrvStatus.srvstatusinfo[i].callType;
            srv.state = imsSrvStatus.srvstatusinfo[i].srvStatus;
            RILImsUserData rILImsUserData = imsSrvStatus.srvstatusinfo[i].userData;
            srv.userdata = rILImsUserData.data.getBytes();
            srv.accessTechStatus = new ImsServiceState.StatusForAccessTech[1];
            RILImsServiceStatus rILImsServiceStatus = imsSrvStatus.srvstatusinfo[i];
            for (int j = 0; j < 1; j++) {
                RILImsStatusForAccTech rILImsStatusForAccTech = rILImsServiceStatus.acctechstatus[j];
                ImsServiceState.StatusForAccessTech accessTechStatus = new ImsServiceState.StatusForAccessTech();
                accessTechStatus.restrictCause = rILImsStatusForAccTech.restrictCause;
                accessTechStatus.networkMode = rILImsStatusForAccTech.nwMode;
                accessTechStatus.state = rILImsStatusForAccTech.srvStatus;
                accessTechStatus.registered = rILImsStatusForAccTech.regStatus;
                srv.accessTechStatus[j] = accessTechStatus;
            }
            srvStatus.add(srv);
        }
        if (this.mRil.mSrvStatusRegistrations != null) {
            this.mRil.mSrvStatusRegistrations.notifyRegistrants(new AsyncResult((Object) null, srvStatus, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsSuppSrvInd(int type, RILImsSuppSvcNotification imsSuppSvcNofitication) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION);
        HwImsSuppServiceNotification notification = new HwImsSuppServiceNotification(imsSuppSvcNofitication);
        if (this.mRil.mSsnRegistrant != null) {
            this.mRil.mSsnRegistrant.notifyRegistrant(new AsyncResult((Object) null, notification, (Throwable) null));
        }
    }

    public void imsVoiceBandInfo(int type, ArrayList<Integer> bandInfo) {
        Rlog.d(LOG_TAG, "imsVoiceBandInfo, type = " + type + ",bandInfo = " + bandInfo);
        this.mRil.processIndication(type);
        ImsRIL imsRIL = this.mRil;
        int[] bands = ImsRIL.arrayListToPrimitiveArray(bandInfo);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_VOICE_BAND_INFO);
        if (this.mRil.mSpeechInfoRegistrants != null && bands != null) {
            this.mRil.mSpeechInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, bands, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallModifyInd(int type, RILImsCallModify imsCallModify) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_IND);
        ImsCallProfiles currImsCallProfile = new ImsCallProfiles(imsCallModify.currCallDetails.callType, imsCallModify.currCallDetails.callDomain, null);
        ImsCallProfiles destImsCallProfile = new ImsCallProfiles(imsCallModify.destCallDetails.callType, imsCallModify.destCallDetails.callDomain, null);
        ImsCallAdapter.CallModify callModify = new ImsCallAdapter.CallModify(currImsCallProfile, destImsCallProfile, imsCallModify.callIndex, 0, imsCallModify.modifyReason);
        if (this.mRil.mModifyCallRegistrants != null) {
            this.mRil.mModifyCallRegistrants.notifyRegistrants(new AsyncResult((Object) null, callModify, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallModifyEndCauseInd(int type, RILImsModifyEndCause imsModifyEndCause) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE);
        int[] response = ImsRIL.convertHalImsEndCause(imsModifyEndCause, this.mRil);
        if (this.mRil.mModifyCallResultRegistrants != null) {
            this.mRil.mModifyCallResultRegistrants.notifyRegistrants(new AsyncResult((Object) null, response, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallMtStatusInd(int type, RILImsMtStatusReport imsCallMtStatus) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_MT_STATUS_REPORT);
        MtStatusReport mtStatusReport = new MtStatusReport(imsCallMtStatus);
        if (this.mRil.mMtStatusReportRegistrants != null) {
            this.mRil.mMtStatusReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, mtStatusReport, (Throwable) null));
        }
    }

    public void imsCsRedialNotify(int type) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY);
        if (this.mRil.mImsCSRedialRegistrations != null) {
            this.mRil.mImsCSRedialRegistrations.notifyRegistrants(new AsyncResult((Object) null, Integer.valueOf(type), (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsNetworkStateChanged(int indicationType) {
        this.mRil.processIndication(indicationType);
        this.mRil.unsljLog(1037);
        this.mRil.mImsNetworkStateChangedRegistrants.notifyRegistrants();
    }

    public void imsLtePdcpInfo(int type, ArrayList<Integer> ret) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_LTE_PDCP_INFO);
        ImsRIL imsRIL = this.mRil;
        int[] info = ImsRIL.arrayListToPrimitiveArray(ret);
        if (this.mRil.mLtePDCPInfoRegistrants != null) {
            this.mRil.mLtePDCPInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, info, (Throwable) null));
        }
    }

    public void imsLteRrcInfo(int type, ArrayList<Integer> ret) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_LTE_RRC_INFO);
        ImsRIL imsRIL = this.mRil;
        int[] info = ImsRIL.arrayListToPrimitiveArray(ret);
        if (this.mRil.mLteRRCInfoRegistrants != null) {
            this.mRil.mLteRRCInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, info, (Throwable) null));
        }
    }

    public void imsHoldToneInd(int type, ArrayList<Integer> ret) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_HOLD_TONE_IND);
        ImsRIL imsRIL = this.mRil;
        int[] info = ImsRIL.arrayListToPrimitiveArray(ret);
        if (this.mRil.mHoldingToneRegistrants != null && info != null && info.length > 0) {
            boolean playtone = info[0] == this.START_LOCAL_HOLD_TONE;
            Rlog.d(LOG_TAG, "imsHoldToneInd playtone =" + playtone);
            this.mRil.mHoldingToneRegistrants.notifyRegistrants(new AsyncResult((Object) null, Boolean.valueOf(playtone), (Throwable) null));
        }
    }

    public void imsDMCNNotify(int type) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_DMCN);
        if (this.mRil.mImsDMCNRegistrants != null) {
            this.mRil.mImsDMCNRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    public void imsRegisterModeNotify(int type, ArrayList<Integer> ret) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_REG_TYPE_IND);
        ImsRIL imsRIL = this.mRil;
        int[] info = ImsRIL.arrayListToPrimitiveArray(ret);
        if (this.mRil.mImsRegModeRegistrants != null) {
            this.mRil.mImsRegModeRegistrants.notifyRegistrants(new AsyncResult((Object) null, info, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsRegErrRptInd(int type, RILImsRegErrReport imsRegErrRpt) {
        this.mRil.processIndication(type);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT);
        VoWiFiRegErrReport mVoWiFiRegErrRpt = new VoWiFiRegErrReport(imsRegErrRpt);
        Rlog.d(LOG_TAG, "VoWiFiRegErrReport =" + mVoWiFiRegErrRpt.toString());
        if (this.mRil.mVoWiFiRegErrReportRegistrations != null) {
            this.mRil.mVoWiFiRegErrReportRegistrations.notifyRegistrants(new AsyncResult((Object) null, mVoWiFiRegErrRpt, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void UnsolMsg(int indicationType, int msgId, RILUnsolMsgPayload payload) {
        Rlog.d(LOG_TAG, "UnsolMsg:indicationType =" + indicationType + ",msgId = " + msgId);
        if (msgId == 2031) {
            imsCallStateChanged(indicationType);
        } else if (msgId == 2033) {
            imsCallRingBackTone(indicationType, payload.nDatas);
        } else if (msgId == 2039) {
            imsVoiceBandInfo(indicationType, payload.nDatas);
        } else if (msgId == 2058) {
            imsCsRedialNotify(indicationType);
        } else if (msgId == 2072) {
            imsDMCNNotify(indicationType);
        } else if (msgId == 2074) {
            imsHoldToneInd(indicationType, payload.nDatas);
        } else if (msgId != 2083) {
            switch (msgId) {
                case 2065:
                    imsLtePdcpInfo(indicationType, payload.nDatas);
                    return;
                case 2066:
                    imsLteRrcInfo(indicationType, payload.nDatas);
                    return;
                default:
                    return;
            }
        } else {
            imsRegisterModeNotify(indicationType, payload.nDatas);
        }
    }
}
