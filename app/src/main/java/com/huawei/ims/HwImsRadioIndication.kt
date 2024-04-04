/*
 * This file is part of HwIms
 * Copyright (C) 2019,2022 Penn Mackintosh and Raphael Mounier
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package com.huawei.ims

import android.hardware.radio.V1_0.*
import android.os.RemoteException
import android.telephony.Rlog
import android.util.Log
import vendor.huawei.hardware.radio.ims.V1_0.*
import vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
import android.os.AsyncResult




class HwImsRadioIndication internal constructor(private val mSlotId: Int) : IRadioImsIndication.Stub() {

    private val LOG_TAG = "HwImsRadioIndication"


    val RIL_UNSOL_HW_IMSA_VOWIFI_MSG = 1109
    val RIL_UNSOL_HW_IMS_CALL_RING = 1080
    val RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY = 1106
    val RIL_UNSOL_HW_IMS_DATA_CONNECT_IND = 1110
    val RIL_UNSOL_HW_IMS_DATA_DISCONNECT_IND = 1111
    val RIL_UNSOL_HW_IMS_DMCN = 1120
    val RIL_UNSOL_HW_IMS_ECONF_STATE_CHANGED = 1101
    val RIL_UNSOL_HW_IMS_HOLD_TONE_IND = 1122
    val RIL_UNSOL_HW_IMS_MT_STATUS_REPORT = 1104
    val RIL_UNSOL_HW_IMS_ON_SS = 1085
    val RIL_UNSOL_HW_IMS_ON_USSD = 1084
    val RIL_UNSOL_HW_IMS_REG_FAILED_INFO = 1121
    val RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED = 1079
    val RIL_UNSOL_HW_IMS_RESPONSE_HANDOVER = 1082
    val RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE = 1098
    val RIL_UNSOL_HW_IMS_RESPONSE_MODIFY_IND = 1097
    val RIL_UNSOL_HW_IMS_RINGBACK_TONE = 1081
    val RIL_UNSOL_HW_IMS_SRV_STATUS_UPDATE = 1083
    val RIL_UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION = 1086
    val RIL_UNSOL_HW_IMS_VOICE_BAND_INFO = 1087

    override fun UnsolMsg(indicationType: Int, msgId: Int, rilUnsolMsgPayload: RILUnsolMsgPayload) {
        Log.d(LOG_TAG, "indicationType = $indicationType, msgId = $msgId, msgPayload = $rilUnsolMsgPayload")

        // Huawei RilConstS32.java on package vendor.huawei.hardware.radio.V1_1;
        when (msgId) {
            RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED -> imsCallStateChanged(indicationType)
            RIL_UNSOL_HW_IMS_CALL_RING -> imsCallRing(indicationType)
            RIL_UNSOL_HW_IMS_RINGBACK_TONE -> imsRingBackTone(indicationType)
            RIL_UNSOL_HW_IMS_VOICE_BAND_INFO -> imsVoiceBandInfo(indicationType)
            RIL_UNSOL_HW_IMS_HOLD_TONE_IND -> imsCallHeldChange(indicationType)
            RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY -> imsCSRedialNotify(indicationType)

/*
            Rlog.d("ImsRadioIndication", "UnsolMsg:indicationType =" + var1 + ",msgId = " + var2)
                switch(var2) {
                    case 1079:
                    this.imsCallStateChanged(var1);
                    break;
                    case 1081:
                    this.imsCallRingBackTone(var1, var3.nDatas);
                    break;
                    case 1087:
                    this.imsVoiceBandInfo(var1, var3.nDatas);
                    break;
                    case 1106:
                    this.imsCsRedialNotify(var1);
                    break;
                    case 1113:
                    this.imsLtePdcpInfo(var1, var3.nDatas);
                    break;
                    case 1114:
                    this.imsLteRrcInfo(var1, var3.nDatas);
                    break;
                    case 1120:
                    this.imsDMCNNotify(var1);
                    break;
                    case 1122:
                    this.imsHoldToneInd(var1, var3.nDatas);
                }*/


            else -> Log.w(LOG_TAG, "Unknown msg type :$msgId")
        }
    }

    private fun imsCSRedialNotify(indicationType: Int) {
        Rlog.d(LOG_TAG, "imsCSRedialNotify, indication type : " + indicationType)
    }

    private fun imsRingBackTone(indicationType: Int) {
        Rlog.d(LOG_TAG, "imsRingBackTone, indication type : " + indicationType)
    }

    private fun imsVoiceBandInfo(indicationType: Int) {
        Rlog.d(LOG_TAG, "imsVoiceBandInfo, indication type : " + indicationType)

        /*
        Rlog.d("ImsRadioIndication", "imsVoiceBandInfo =" + var1.toString() + ",bandInfo = " + var2)
        this.mRil.processIndication(var1)
        val var3: ImsRIL = this.mRil
        val var4: IntArray = ImsRIL.arrayListToPrimitiveArray(var2)
        this.mRil.unsljLog(3019)
        if (this.mRil.mSpeechInfoRegistrants != null && var4 != null) {
            this.mRil.mSpeechInfoRegistrants.notifyRegistrants(
                AsyncResult(
                    null as Any?,
                    var4,
                    null as Throwable?
                )
            )
        }
        */

    }

    private fun imsCallRing(indicationType: Int) {
        Rlog.d(LOG_TAG, "imsCallRing indication type : " + indicationType)
    }


    private fun imsCallStateChanged(indicationType: Int) {
        Rlog.d(LOG_TAG, "imsCallStateChanged")
        if (indicationType > 1) { // 1 is the normal one, 0 happens sometimes, 0 seems to mean "call terminated"
            // Weird...
            Rlog.w(LOG_TAG, "unknown indicationType $indicationType")
        }
        try {
            RilHolder.getRadio(mSlotId)!!.getCurrentImsCalls(RilHolder.getNextSerial())
        } catch (e: RemoteException) {
            Rlog.e(LOG_TAG, "Error getting current calls", e)
        }

    }

    private fun imsCallHeldChange(indicationType: Int) {
        imsCallStateChanged(indicationType)
        // We can probably optimise this somehow but I don't know how. CallSession checks the status
        // If its held, it will send the correct notifications.
    }


    override fun imsCallModifyEndCauseInd(type: Int, cause: RILImsModifyEndCause) {
        // Huawei
        Rlog.d(LOG_TAG, "imsCallModifyEndCauseInd" + type)
    }

    override fun imsCallModifyInd(type: Int, modify: RILImsCallModify) {
        try {
            RilHolder.getRadio(mSlotId)!!.getCurrentImsCalls(RilHolder.getNextSerial())
        } catch (e: RemoteException) {
            Rlog.e(LOG_TAG, "Error getting current calls for handover", e)
        }
        // Huawei
    }

    override fun imsCallMtStatusInd(type: Int, imsCallMtStatus: RILImsMtStatusReport) {
        // TODO: MT status indications - Missed incoming call notifications
        Rlog.d(LOG_TAG, "Received MT status indication: $type/$imsCallMtStatus")
        // Huawei
    }

    override fun imsHandoverInd(indicationType: Int, imsHandover: RILImsHandover) {
        // Huawei
    }

    override fun imsSrvStatusInd(type: Int, imsSrvStatus: RILImsSrvstatusList) {
        // Huawei
    }

    override fun imsSuppSrvInd(type: Int, idsSuppSacNotification: RILImsSuppSvcNotification) {
        // Huawei
    }


    override fun vtFlowInfoReport(indicationType: Int, rilVtFlowInfoReport: RILVtFlowInfoReport) {
        // Huawei not needed
    }


    // END OF HUAWEI METHODS



    override fun imsNetworkStateChanged(i: Int) {
        // AOSP IMS
    }

    override fun imsRegErrRptInd(p0: Int, p1: RILImsRegErrReport?) {
        TODO("Not yet implemented")
    }


}
