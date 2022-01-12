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

import android.os.SystemProperties
//import android.telephony.Rlog
import android.text.TextUtils
import android.util.Log

object HwModemCapability {

    const val MODEM_CAP_BIP_SUPPORT = 1
    const val MODEM_CAP_CDMA_USE_VIA_HISI = 14
    const val MODEM_CAP_DSDA_SPEECH_CODEC_ADJUST = 11
    const val MODEM_CAP_DSDS_MANUAL_PS_ATTACH = 10
    const val MODEM_CAP_DUAL_PS_ATTACHED = 0
    const val MODEM_CAP_FULL_PREFMODE = 3
    const val MODEM_CAP_GET_ICCID_AT = 19
    const val MODEM_CAP_GET_IMSI_GSM = 18
    const val MODEM_CAP_GET_MODEM_CAPABILITY = 9
    const val MODEM_CAP_LONG_SMS_DELAY_RELEASE = 17
    const val MODEM_CAP_MANUAL_SEL_NETWORK_AUTO = 4
    const val MODEM_CAP_MAX = 360
    const val MODEM_CAP_NOUPDATE_LAC_AND_CID = 12
    const val MODEM_CAP_NV_FUCTION_RPC = 13
    const val MODEM_CAP_ONS_MATCH_PNN = 5
    const val MODEM_CAP_PLUS_TRANSFER_SUPPORT = 2
    const val MODEM_CAP_RETTACH_API_SUPPORT = 7
    const val MODEM_CAP_RIL_RECOVERY_ENDCALL = 8
    const val MODEM_CAP_RPT_DEREGISTER_STATE_DELAYED = 6
    const val MODEM_CAP_SUPPORT_DIFF_ID = 15
    const val MODEM_CAP_SUPPORT_DUAL_VOLTE = 21
    const val MODEM_CAP_SUPPORT_IMEI_BIND_SLOT = 26
    const val MODEM_CAP_SUPPORT_SWITCH_SOCKET = 16

    private const val tag = "HwModemCapability"
    private var MODEM_CAP = SystemProperties.get("persist.radio.modem.cap", "")

    fun isCapabilitySupport(capability: Int): Boolean {
        var z = true
        val bcdIndex = capability / 4
        val bcdOffset = capability % 4

        Log.d(HwModemCapability.tag, "HwImsService isCapabilitySupport capability: " + capability)
        if (capability < 0 || capability >= 360) {
            return false
        }
        if (TextUtils.isEmpty(MODEM_CAP)) {
            MODEM_CAP = SystemProperties.get("persist.radio.modem.cap", "")
        }
        try {
            if (bcdIndex>=MODEM_CAP.length) {
                Log.i(HwModemCapability.tag, "Index is superior of MODEM_CAP length. Modem cap value : " + MODEM_CAP)
                return false
            }
            val bcdValue = convertChar2Int(MODEM_CAP[bcdIndex])
            if (bcdValue != -1) {
                if (1 shl 3 - bcdOffset and bcdValue <= 0) {
                    z = false
                }
                return z
            }
        } catch (ex: IndexOutOfBoundsException) {
            Log.w(tag, "exception", ex)
        }

        return false
    }

    private fun convertChar2Int(origChar: Char): Int {
        if (origChar in '0'..'9') {
            return origChar.toInt() - 48
        }
        if (origChar in 'a'..'f') {
            return origChar.toInt() - 97 + 10
        }
        return if (origChar < 'A' || origChar > 'F') {
            -1
        } else origChar.toInt() - 65 + 10
    }
}
