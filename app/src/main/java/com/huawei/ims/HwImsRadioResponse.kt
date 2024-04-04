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
import android.hardware.radio.V1_0.RadioResponseInfo
import android.os.Bundle
import android.telephony.Rlog
import android.telephony.ims.ImsCallProfile
import android.util.Log
import com.android.ims.ImsManager
import vendor.huawei.hardware.radio.ims.V1_0.*
import vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCauseInfo
import java.util.*

class HwImsRadioResponse internal constructor(private val mSlotId: Int) : IRadioImsResponse.Stub() {
    private val LOG_TAG = "HwImsRadioResponse"

    override fun RspMsg(
        radioResponseInfo: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        msgType: Int,
        rspMsgPayload: RspMsgPayload?
    ) {
        Log.i(LOG_TAG, "rspmsg radioresponseinfo = $radioResponseInfo,msgtype=$msgType")
        Log.i(LOG_TAG, "serial " + radioResponseInfo)
        Log.i(LOG_TAG, "type=" + RespCode.getName(msgType))
        Log.i(LOG_TAG, "slotID=" + mSlotId)

        /*switch (msgType) {
            case PASS_1:
            case PASS_2:
            case PASS_3:
                return;
            case IMS_DIAL_RESPONSE:
                imsDialResponse(radioResponseInfo);
                break;
            case SET_IMS_CALL_WAITING_RESPONSE:
                setImsCallWaitingResponse(radioResponseInfo);
                break;
            case GET_LTE_INFO_RESPONSE:
                getLteInfoResponse(radioResponseInfo);
                break;
            case ACCEPT_IMS_CALL_RESPONSE:
                acceptImsCallResponse(radioResponseInfo);

        }*/
        // Huawei
        //radioResponseInfo?.let { RilHolder.triggerCB(it.serial, radioResponseInfo, rspMsgPayload) }

    }

    override fun conferenceResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun explicitCallTransferResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun getCurrentImsCallsResponse(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: ArrayList<RILImsCall>?
    ) {
        TODO("Not yet implemented")
    }

    override fun getCurrentImsCallsResponseV1_2(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: ArrayList<RILImsCallV1_2>?
    ) {
        TODO("Not yet implemented")
    }

    override fun getCurrentImsCallsWithImsDomainResponse(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: ArrayList<RILImsCallEx>?
    ) {
        TODO("Not yet implemented")
    }

    override fun getImsRegistrationStateResponse(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: Boolean,
        p2: Int
    ) {
        TODO("Not yet implemented")
    }

    override fun getLastCallFailCauseResponse(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: LastCallFailCauseInfo?
    ) {
        TODO("Not yet implemented")
    }

    override fun hangupConnectionResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun hangupForegroundResumeBackgroundResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun hangupWaitingOrBackgroundResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun rejectCallResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun sendDtmfResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun setClirResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun setImsRegErrReportResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun setMuteResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun startDtmfResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun stopDtmfResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun switchWaitingOrHoldingAndActiveResponse(p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?) {
        TODO("Not yet implemented")
    }

    override fun uiccAuthResponse(
        p0: vendor.huawei.hardware.radio.ims.V1_0.RadioResponseInfo?,
        p1: RILUICCAUTHRESPONSE?
    ) {
        TODO("Not yet implemented")
    }
    /*
    public static final int IMS_DIAL_RESPONSE = 0XDC;
    public static final int SET_IMS_CALL_WAITING_RESPONSE = 0X100;
    public static final int GET_LTE_INFO_RESPONSE = 0X136;
    public static final int ACCEPT_IMS_CALL_RESPONSE = 0XE7;
    public static final int SET_DMPCSCF_RESPONSE = 0X13C;
    public static final int SET_DMDYN_RESPONSE = 0X13D;
    public static final int SET_DMTIMER_RESPONSE = 0X13E;
    public static final int SET_DMSMS_RESPONSE = 0X13F;
    public static final int GET_DMPCSCF_RESPONSE = 0X140;
    public static final int GET_DMTIMER_RESPONSE = 0X141;
    public static final int GET_DMDYN_RESPONSE = 0X142;
    public static final int GET_DMSMS_RESPONSE = 0X143;
    public static final int GET_DMUSER_RESPONSE = 0X144;
    public static final int WIFI_EMERGENCY_AID = 0X151;
    public static final int SEND_BATTERY_STATUS_RESPONSE = 0X147;
    public static final int MODIFY_IMS_CALL_INITIATE_RESPONSE = 0X113;
    public static final int MODIFY_IMS_CALL_CONFIRM_RESPONSE = 0X114;
    public static final int GET_IMS_IMPU_RESPONSE = 0XF6;
    public static final int SET_IMS_VT_CAPABILITY_RESPONSE = 0X150;
    public static final int IMS_LAST_CALL_FAIL_REASON_INFO_RESPONSE = 0X14F;
    public static final int SWITCH_WAITING_OR_HOLDING_AND_ACTIVE_FOR_IMS_RESPONSE = 0X156;
    public static final int PASS_1 = 0XE3;
    public static final int PASS_2 = 0X35;
    public static final int PASS_3 = 0X36;*/
    /*
    public static final int IMS_DEF1 = 0x124;
	type=292 = 0x124
    type=293 = 0x125
	type=328 = 0x148
    */



    enum class RespCode(var value: Int) {
        IMS_DIAL_RESPONSE(0xdc), SET_IMS_CALL_WAITING_RESPONSE(0x100),
        GET_LTE_INFO_RESPONSE(0x136), ACCEPT_IMS_CALL_RESPONSE(0xe7),
        SET_DMPCSCF_RESPONSE(0x13c), SET_DMDYN_RESPONSE(0x13d),
        SET_DMTIMER_RESPONSE(0x13e), SET_DMSMS_RESPONSE(0x13f),
        GET_DMPCSCF_RESPONSE(0x140), GET_DMTIMER_RESPONSE(0x141),
        GET_DMDYN_RESPONSE(0x142), GET_DMSMS_RESPONSE(0x143),
        GET_DMUSER_RESPONSE(0x144), WIFI_EMERGENCY_AID(0x151),
        SEND_BATTERY_STATUS_RESPONSE(0x147), MODIFY_IMS_CALL_INITIATE_RESPONSE(0x133),
        MODIFY_IMS_CALL_CONFIRM_RESPONSE(0x114), GET_IMS_IMPU_RESPONSE(0xf6),
        SET_IMS_VT_CAPABILITY_RESPONSE(0x150), IMS_LAST_CALL_FAIL_REASON_INFO_RESPONSE(0x14f),
        SWITCH_WAITING_OR_HOLDING_AND_ACTIVE_FOR_IMS_RESPONSE(0x156),
        PASS1(0xe3), PASS2(0x35), PASS3(0x36);

        companion object {

            fun getName(code: Int): String {
                val x = Arrays.stream(RespCode.values()).filter { resp_code -> resp_code.value == code }.findAny()
                return if (x.isPresent) {
                    x.get().name
                } else {
                    Integer.toString(code)
                }
            }
        }

    }

}
