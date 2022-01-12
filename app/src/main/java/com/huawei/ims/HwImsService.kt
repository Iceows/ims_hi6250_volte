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

import android.content.*
import android.telephony.SubscriptionManager
import android.telephony.TelephonyManager
import android.telephony.ims.ImsService
import android.telephony.ims.feature.ImsFeature
import android.telephony.ims.stub.ImsConfigImplBase
import android.telephony.ims.stub.ImsFeatureConfiguration
import android.util.Log
//import android.telephony.Rlog

import android.os.SystemProperties



class HwImsService : ImsService() {
    private val mmTelFeatures = arrayOfNulls<HwMmTelFeature>(3)
    private val registrations = arrayOfNulls<HwImsRegistration>(3)
    private val configs = arrayOfNulls<HwImsConfig>(3)
    private var prefs: SharedPreferences? = null

    private var isVolteEnable = 0

    private val APP_NAME_IMS = "com.huawei.ims"
    internal lateinit var subscriptionManager: SubscriptionManager
    internal lateinit var telephonyManager: TelephonyManager

    override fun onCreate() {
        val storageContext: Context

        Log.i(LOG_TAG, "HwImsService (Iceows) version " + BuildConfig.GIT_HASH + " created!")
        subscriptionManager = getSystemService(SubscriptionManager::class.java)
        telephonyManager = getSystemService(TelephonyManager::class.java)

        // To disable/enable volte
        isVolteEnable=SystemProperties.getInt("ro.hw.volte.enable", 0)


        // support direct boot mode (Build.VERSION.SDK_INT> N)
        // All N devices have split storage areas, but we may need to
        // move the existing preferences to the new device protected
        // storage area, which is where the data lives from now on.
        val directBootContext: Context = this.createDeviceProtectedStorageContext()
        if (!directBootContext.moveSharedPreferencesFrom(this, APP_NAME_IMS)) {
            Log.w(LOG_TAG, "Failed to migrate shared preferences.")
        }
        storageContext = directBootContext;
        prefs = storageContext.getSharedPreferences(APP_NAME_IMS, Context.MODE_PRIVATE)

        MapconController.getInstance().init(this)
    }

    override fun onDestroy() {
        Log.i(LOG_TAG, "Shutting down HwImsService...")
        instance = null
    }


    override fun enableIms(slotId: Int) {
        (createMmTelFeature(slotId) as HwMmTelFeature).registerIms()
    }

    override fun disableIms(slotId: Int) {
        (createMmTelFeature(slotId) as HwMmTelFeature).unregisterIms()
    }

    override fun readyForFeatureCreation() {
        if (instance != null && instance !== this) {
            throw RuntimeException()
        }
        instance = this
    }

    override fun querySupportedImsFeatures(): ImsFeatureConfiguration {
        val builder = ImsFeatureConfiguration.Builder()
        Log.i(LOG_TAG, "querySupportedImsFeatures...")

        if (isVolteEnable==1) {
            if (prefs!!.getBoolean("ims0", true)) {
                Log.i(LOG_TAG, "querySupportedImsFeatures...add FEATURE_MMTEL on ims0")
                builder.addFeature(0, ImsFeature.FEATURE_MMTEL)
            }
            if (supportsDualIms(this) && prefs!!.getBoolean("ims1", false)) {
                Log.i(LOG_TAG, "querySupportedImsFeatures...add FEATURE_MMTEL on ims1")
                builder.addFeature(1, ImsFeature.FEATURE_MMTEL)
            }
        }
        else
        {
            Log.i(LOG_TAG, "Volte is disable. To enable set ro.hw.volte.enable to 1")
        }

        return builder.build()
    }

    override fun createMmTelFeature(slotId: Int): HwMmTelFeature? {
        if (slotId > 0 && !supportsDualIms(this)) {
            return null
        }
        if (mmTelFeatures[slotId] == null) {
            mmTelFeatures[slotId] = HwMmTelFeature.getInstance(slotId)
        }
        return mmTelFeatures[slotId]
    }

    override fun getConfig(slotId: Int): ImsConfigImplBase? {
        if (slotId > 0 && !supportsDualIms(this)) {
            return null
        }
        if (configs[slotId] == null) {
            configs[slotId] = HwImsConfig()
        }
        return configs[slotId]
    }

    override fun getRegistration(slotId: Int): HwImsRegistration? {
        if (slotId > 0 && !supportsDualIms(this)) {
            return null
        }
        if (this.registrations[slotId] == null) {
            registrations[slotId] = HwImsRegistration(slotId)
        }
        return this.registrations[slotId]
    }

    companion object {
        private const val LOG_TAG = "HwImsService"
        var instance: HwImsService? = null

        fun supportsDualIms(context: Context): Boolean {
            //MODEM_CAP_SUPPORT_DUAL_VOLTE = 21
            return HwModemCapability.isCapabilitySupport(21) && context.getSystemService(TelephonyManager::class.java).phoneCount > 1
        }
    }

}
