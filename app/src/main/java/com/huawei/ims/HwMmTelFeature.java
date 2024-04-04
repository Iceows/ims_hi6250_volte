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

package com.huawei.ims;

import android.os.RemoteException;
import android.annotation.NonNull;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import android.util.Log;
import android.util.SparseArray;

import com.android.ims.ImsException;

// This file has to remain Java because changeEnabledCapabilities is abstract in MmTelFeature and
// it exposes a protected subclass of MmTelFeature which Kotlin blocks from compilation.
// TODO find a way to refactor to Kt

public class HwMmTelFeature extends MmTelFeature {

    private static final HwMmTelFeature[] instances = {null, null, null};
    private final String LOG_TAG = "HwImsMmTelFeatureImpl";
    // Enabled Capabilities - not status
    private final SparseArray<MmTelCapabilities> mEnabledCapabilities = new SparseArray<>();
    private final int mSlotId;
    private boolean mbImsRegister;
    public TelephonyManager telephonyManager;

    private HwMmTelFeature(int slotId) { // Use getInstance(slotId)

        Log.d(LOG_TAG, "HwMmTelFeature::constructor");
        mSlotId = slotId;
        mbImsRegister = false;
        mEnabledCapabilities.append(ImsRegistrationImplBase.REGISTRATION_TECH_LTE,
                new MmTelCapabilities(MmTelCapabilities.CAPABILITY_TYPE_VOICE));
        // TODO: check if Mapcon is installed.
        // TODO : test VoWIFI
        mEnabledCapabilities.append(ImsRegistrationImplBase.REGISTRATION_TECH_IWLAN,
                new MmTelCapabilities(MmTelCapabilities.CAPABILITY_TYPE_VOICE));

        setFeatureState(STATE_READY);
    }

    public static HwMmTelFeature getInstance(int slotId) {
        if (instances[slotId] == null) {
            instances[slotId] = new HwMmTelFeature(slotId);
        }
        return instances[slotId];
    }


    @Override
    public boolean queryCapabilityConfiguration(int capability, int radioTech) {
        return mEnabledCapabilities.get(radioTech).isCapable(capability);
    }

    @Override
    public void changeEnabledCapabilities(CapabilityChangeRequest request,
                                          CapabilityCallbackProxy c) {
        for (CapabilityChangeRequest.CapabilityPair pair : request.getCapabilitiesToEnable()) {
            mEnabledCapabilities.get(pair.getRadioTech()).addCapabilities(pair.getCapability());
            if (pair.getRadioTech() == ImsRegistrationImplBase.REGISTRATION_TECH_IWLAN && pair.getCapability() == MmTelCapabilities.CAPABILITY_TYPE_VOICE)
                MapconController.Companion.getInstance().turnVowifiOn(mSlotId);
        }
        for (CapabilityChangeRequest.CapabilityPair pair : request.getCapabilitiesToDisable()) {
            mEnabledCapabilities.get(pair.getRadioTech()).removeCapabilities(pair.getCapability());
            if (pair.getRadioTech() == ImsRegistrationImplBase.REGISTRATION_TECH_IWLAN && pair.getCapability() == MmTelCapabilities.CAPABILITY_TYPE_VOICE)
                MapconController.Companion.getInstance().turnVowifiOff(mSlotId);
        }
    }

    int getImsSwitch() {
        int serial = RilHolder.INSTANCE.prepareBlock(mSlotId);
        try {
            RilHolder.INSTANCE.getRadio(mSlotId).getImsSmsConfig(serial);
            RilHolder.INSTANCE.blockUntilComplete(serial);
        } catch (RemoteException e) {
            Rlog.e(LOG_TAG, "Failed to getImsSwitch!", e);
        }
        return 1;
    }

    private void registerImsInner() {
        Log.d(LOG_TAG, "registerImsInner");
    }

    public void registerIms() {
        Log.d(LOG_TAG, "registerIms");


    }

    public void unregisterIms() {
        Log.d(LOG_TAG, "unregisterIms");

    }

    @Override
    public ImsCallProfile createCallProfile(int callSessionType, int callType) {
        if (callSessionType == ImsCallProfile.SERVICE_TYPE_EMERGENCY) {
            return null;
        }
        /**
         * It is for a special case. It helps that the application can make a call
         * without IMS connection (not registered).
         * In the moment of the call initiation, the device try to connect to the IMS network
         * and initiates the call.
         */
        if (callSessionType == ImsCallProfile.SERVICE_TYPE_NONE) {
            // Check status of IMS
            Log.d(LOG_TAG,"createCallProfile for service type none");
            // Register IMS
            registerIms();
        }
        if (callSessionType == ImsCallProfile.SERVICE_TYPE_NORMAL) {
            Log.d(LOG_TAG,"createCallProfile for service type normal");
        }

        return new ImsCallProfile(callSessionType, callType);
        // Is this right?

    }

    @Override
    public synchronized ImsCallSessionImplBase createCallSession(@NonNull ImsCallProfile profile) {
        return new HwImsCallSession(mSlotId, profile);
    }

    @Override
    public void onFeatureRemoved() {
        super.onFeatureRemoved();
    }

    @Override
    public void onFeatureReady() {
        super.onFeatureReady();
        getImsSwitch();
    }

}
