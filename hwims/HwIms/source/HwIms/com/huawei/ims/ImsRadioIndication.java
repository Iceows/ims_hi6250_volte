package com.huawei.ims;

import android.os.AsyncResult;
import android.telephony.Rlog;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.ImsServiceCallTracker;
import com.huawei.ims.ImsServiceState;
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
import vendor.huawei.hardware.radio.ims.V1_0.RILUnsolMsgPayload;
import vendor.huawei.hardware.radio.ims.V1_0.RILVtFlowInfoReport;

/* loaded from: ImsRadioIndication.class */
public class ImsRadioIndication extends IRadioImsIndication.Stub {
    static final String LOG_TAG = "ImsRadioIndication";
    private static final int SRVSTATUS_LEN = 4;
    private int START_LOCAL_HOLD_TONE = 1;
    ImsRIL mRil;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImsRadioIndication(ImsRIL imsRIL) {
        this.mRil = imsRIL;
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void UnsolMsg(int i, int i2, RILUnsolMsgPayload rILUnsolMsgPayload) {
        Rlog.d(LOG_TAG, "UnsolMsg:indicationType =" + i + ",msgId = " + i2);
        if (i2 == 2031) {
            imsCallStateChanged(i);
        } else if (i2 == 2033) {
            imsCallRingBackTone(i, rILUnsolMsgPayload.nDatas);
        } else if (i2 == 2039) {
            imsVoiceBandInfo(i, rILUnsolMsgPayload.nDatas);
        } else if (i2 == 2058) {
            imsCsRedialNotify(i);
        } else if (i2 == 2072) {
            imsDMCNNotify(i);
        } else if (i2 == 2074) {
            imsHoldToneInd(i, rILUnsolMsgPayload.nDatas);
        } else if (i2 == 2083) {
            imsRegisterModeNotify(i, rILUnsolMsgPayload.nDatas);
        } else {
            switch (i2) {
                case 2065:
                    imsLtePdcpInfo(i, rILUnsolMsgPayload.nDatas);
                    return;
                case 2066:
                    imsLteRrcInfo(i, rILUnsolMsgPayload.nDatas);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallModifyEndCauseInd(int i, RILImsModifyEndCause rILImsModifyEndCause) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE);
        int[] convertHalImsEndCause = ImsRIL.convertHalImsEndCause(rILImsModifyEndCause, this.mRil);
        if (this.mRil.mModifyCallResultRegistrants != null) {
            this.mRil.mModifyCallResultRegistrants.notifyRegistrants(new AsyncResult((Object) null, convertHalImsEndCause, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallModifyInd(int i, RILImsCallModify rILImsCallModify) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_IND);
        ImsCallAdapter.CallModify callModify = new ImsCallAdapter.CallModify(new ImsCallProfiles(rILImsCallModify.currCallDetails.callType, rILImsCallModify.currCallDetails.callDomain, null), new ImsCallProfiles(rILImsCallModify.destCallDetails.callType, rILImsCallModify.destCallDetails.callDomain, null), rILImsCallModify.callIndex, 0, rILImsCallModify.modifyReason);
        if (this.mRil.mModifyCallRegistrants != null) {
            this.mRil.mModifyCallRegistrants.notifyRegistrants(new AsyncResult((Object) null, callModify, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsCallMtStatusInd(int i, RILImsMtStatusReport rILImsMtStatusReport) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_MT_STATUS_REPORT);
        MtStatusReport mtStatusReport = new MtStatusReport(rILImsMtStatusReport);
        if (this.mRil.mMtStatusReportRegistrants != null) {
            this.mRil.mMtStatusReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, mtStatusReport, (Throwable) null));
        }
    }

    public void imsCallRing(int i) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_CALL_RING);
        if (this.mRil.mRingRegistrant != null) {
            this.mRil.mRingRegistrant.notifyRegistrant(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    public void imsCallRingBackTone(int i, ArrayList<Integer> arrayList) {
        Rlog.d(LOG_TAG, "imsCallRingBackTone, indicationType =" + i + ",ret = " + arrayList);
        this.mRil.processIndication(i);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RINGBACK_TONE);
        if (this.mRil.mRingbackToneRegistrants != null) {
            boolean z = false;
            if (arrayListToPrimitiveArray[0] == 1) {
                z = true;
            }
            this.mRil.mRingbackToneRegistrants.notifyRegistrants(new AsyncResult((Object) null, Boolean.valueOf(z), (Throwable) null));
        }
    }

    public void imsCallStateChanged(int i) {
        Rlog.d(LOG_TAG, "imsCallStateChanged:indicationType = " + i);
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED);
        if (this.mRil.mCallStateRegistrants != null) {
            this.mRil.mCallStateRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    public void imsCsRedialNotify(int i) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY);
        if (this.mRil.mImsCSRedialRegistrations != null) {
            this.mRil.mImsCSRedialRegistrations.notifyRegistrants(new AsyncResult((Object) null, Integer.valueOf(i), (Throwable) null));
        }
    }

    public void imsDMCNNotify(int i) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_DMCN);
        if (this.mRil.mImsDMCNRegistrants != null) {
            this.mRil.mImsDMCNRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsHandoverInd(int i, RILImsHandover rILImsHandover) {
        this.mRil.processIndication(i);
        ImsServiceCallTracker.HandoverInfo handoverInfo = new ImsServiceCallTracker.HandoverInfo(rILImsHandover);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_RESPONSE_HANDOVER);
        if (this.mRil.mHandoverStatusRegistrants != null) {
            this.mRil.mHandoverStatusRegistrants.notifyRegistrants(new AsyncResult((Object) null, handoverInfo, (Throwable) null));
        }
    }

    public void imsHoldToneInd(int i, ArrayList<Integer> arrayList) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_HOLD_TONE_IND);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        if (this.mRil.mHoldingToneRegistrants == null || arrayListToPrimitiveArray == null || arrayListToPrimitiveArray.length <= 0) {
            return;
        }
        boolean z = false;
        if (arrayListToPrimitiveArray[0] == this.START_LOCAL_HOLD_TONE) {
            z = true;
        }
        Rlog.d(LOG_TAG, "imsHoldToneInd playtone =" + z);
        this.mRil.mHoldingToneRegistrants.notifyRegistrants(new AsyncResult((Object) null, Boolean.valueOf(z), (Throwable) null));
    }

    public void imsLtePdcpInfo(int i, ArrayList<Integer> arrayList) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_LTE_PDCP_INFO);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        if (this.mRil.mLtePDCPInfoRegistrants != null) {
            this.mRil.mLtePDCPInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, arrayListToPrimitiveArray, (Throwable) null));
        }
    }

    public void imsLteRrcInfo(int i, ArrayList<Integer> arrayList) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_LTE_RRC_INFO);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        if (this.mRil.mLteRRCInfoRegistrants != null) {
            this.mRil.mLteRRCInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, arrayListToPrimitiveArray, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsNetworkStateChanged(int i) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(1037);
        this.mRil.mImsNetworkStateChangedRegistrants.notifyRegistrants();
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsRegErrRptInd(int i, RILImsRegErrReport rILImsRegErrReport) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT);
        VoWiFiRegErrReport voWiFiRegErrReport = new VoWiFiRegErrReport(rILImsRegErrReport);
        Rlog.d(LOG_TAG, "VoWiFiRegErrReport =" + voWiFiRegErrReport.toString());
        if (this.mRil.mVoWiFiRegErrReportRegistrations != null) {
            this.mRil.mVoWiFiRegErrReportRegistrations.notifyRegistrants(new AsyncResult((Object) null, voWiFiRegErrReport, (Throwable) null));
        }
    }

    public void imsRegisterModeNotify(int i, ArrayList<Integer> arrayList) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_REG_TYPE_IND);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        if (this.mRil.mImsRegModeRegistrants != null) {
            this.mRil.mImsRegModeRegistrants.notifyRegistrants(new AsyncResult((Object) null, arrayListToPrimitiveArray, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsSrvStatusInd(int i, RILImsSrvstatusList rILImsSrvstatusList) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_SRV_STATUS_UPDATE);
        ArrayList arrayList = new ArrayList(4);
        for (int i2 = 0; i2 < 4; i2++) {
            ImsServiceState imsServiceState = new ImsServiceState();
            imsServiceState.isValid = rILImsSrvstatusList.srvstatusinfo[i2].isValid != 0;
            imsServiceState.type = rILImsSrvstatusList.srvstatusinfo[i2].callType;
            imsServiceState.state = rILImsSrvstatusList.srvstatusinfo[i2].srvStatus;
            imsServiceState.userdata = rILImsSrvstatusList.srvstatusinfo[i2].userData.data.getBytes();
            imsServiceState.accessTechStatus = new ImsServiceState.StatusForAccessTech[1];
            RILImsServiceStatus rILImsServiceStatus = rILImsSrvstatusList.srvstatusinfo[i2];
            for (int i3 = 0; i3 < 1; i3++) {
                RILImsStatusForAccTech rILImsStatusForAccTech = rILImsServiceStatus.acctechstatus[i3];
                ImsServiceState.StatusForAccessTech statusForAccessTech = new ImsServiceState.StatusForAccessTech();
                statusForAccessTech.restrictCause = rILImsStatusForAccTech.restrictCause;
                statusForAccessTech.networkMode = rILImsStatusForAccTech.nwMode;
                statusForAccessTech.state = rILImsStatusForAccTech.srvStatus;
                statusForAccessTech.registered = rILImsStatusForAccTech.regStatus;
                imsServiceState.accessTechStatus[i3] = statusForAccessTech;
            }
            arrayList.add(imsServiceState);
        }
        if (this.mRil.mSrvStatusRegistrations != null) {
            this.mRil.mSrvStatusRegistrations.notifyRegistrants(new AsyncResult((Object) null, arrayList, (Throwable) null));
        }
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void imsSuppSrvInd(int i, RILImsSuppSvcNotification rILImsSuppSvcNotification) {
        this.mRil.processIndication(i);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION);
        HwImsSuppServiceNotification hwImsSuppServiceNotification = new HwImsSuppServiceNotification(rILImsSuppSvcNotification);
        if (this.mRil.mSsnRegistrant != null) {
            this.mRil.mSsnRegistrant.notifyRegistrant(new AsyncResult((Object) null, hwImsSuppServiceNotification, (Throwable) null));
        }
    }

    public void imsVoiceBandInfo(int i, ArrayList<Integer> arrayList) {
        Rlog.d(LOG_TAG, "imsVoiceBandInfo, type = " + i + ",bandInfo = " + arrayList);
        this.mRil.processIndication(i);
        ImsRIL imsRIL = this.mRil;
        int[] arrayListToPrimitiveArray = ImsRIL.arrayListToPrimitiveArray(arrayList);
        this.mRil.unsljLog(HwCustRILConstants.RIL_UNSOL_HW_IMS_VOICE_BAND_INFO);
        if (this.mRil.mSpeechInfoRegistrants == null || arrayListToPrimitiveArray == null) {
            return;
        }
        this.mRil.mSpeechInfoRegistrants.notifyRegistrants(new AsyncResult((Object) null, arrayListToPrimitiveArray, (Throwable) null));
    }

    @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
    public void vtFlowInfoReport(int i, RILVtFlowInfoReport rILVtFlowInfoReport) {
        if (!VTUtils.isVtFlowInfo()) {
            Rlog.d(LOG_TAG, "ro.config.vt_flow_info=false");
            return;
        }
        this.mRil.processIndication(i);
        Rlog.d(LOG_TAG, "currVtTime=" + rILVtFlowInfoReport.currVtTime + "currTxFlow=" + rILVtFlowInfoReport.currTxFlow + "currRxFlow=" + rILVtFlowInfoReport.currRxFlow);
        long j = 0L;
        try {
            j = Long.parseLong(rILVtFlowInfoReport.currRxFlow, 16) + Long.parseLong(rILVtFlowInfoReport.currTxFlow, 16);
        } catch (NumberFormatException e) {
            Rlog.e(LOG_TAG, "vtFlowInfoReport : NumberFormatException ");
        }
        long preCallDataUsage = j - VTUtils.getPreCallDataUsage();
        Rlog.d(LOG_TAG, "currCallDataUsage=" + j + ";tempCallDataUsage=" + preCallDataUsage);
        if (preCallDataUsage > 0) {
            this.mRil.mVtFlowInfoReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, Long.valueOf(preCallDataUsage), (Throwable) null));
        } else if (preCallDataUsage < 0) {
            this.mRil.mVtFlowInfoReportRegistrants.notifyRegistrants(new AsyncResult((Object) null, Long.valueOf(j), (Throwable) null));
        } else {
            Rlog.d(LOG_TAG, "video call dataUsage is not change");
        }
        VTUtils.setPreCallDataUsage(j);
    }
}
