/*
 * This file is part of HwIms
 * Copyright (C) 2019 Penn Mackintosh
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

import android.app.Activity
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import android.util.Log
import android.view.View
import android.widget.CheckBox

class MainActivity : Activity() {
    private var prefs: SharedPreferences? = null
    private var ims0state: Boolean = false
    private var ims1state: Boolean = false
    private val LOG_TAG = "MainActivity"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Log.i(LOG_TAG, "onCreate")

        // ApplicationID : "com.huawei.ims"
        prefs = getSharedPreferences("com.huawei.ims", MODE_PRIVATE)

        ims0state = prefs!!.getBoolean("ims0", true)
        ims1state = prefs!!.getBoolean("ims1", false)

        Log.i("MainActivity", "ims0 read pref is : " + ims0state)
        Log.i("MainActivity", "ims1 read pref is : " + ims1state)

        findViewById<CheckBox>(R.id.chkBoxIMS0).isChecked = ims0state
        findViewById<CheckBox>(R.id.chkBoxIMS1).isChecked = ims1state

        if (!HwImsService.supportsDualIms(this))
            findViewById<View>(R.id.chkBoxIMS1).isEnabled = false
        else
            findViewById<View>(R.id.chkBoxIMS1).isEnabled = true

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
            enforceReadPhoneState();
    }


    // Check READ_PHONE_STATE permission
    private fun enforceReadPhoneState() {

        var permissions=arrayOf(android.Manifest.permission.READ_PHONE_STATE)
        //var permission_array=arrayOf(android.Manifest.permission.READ_PHONE_STATE, android.Manifest.permission.READ_PRIVILEGED_PHONE_STATE)
        //if (this.mContext.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
        //    this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", fn);
        //}


        if((ContextCompat.checkSelfPermission(this,permissions[0]))== PackageManager.PERMISSION_DENIED){
            ActivityCompat.requestPermissions(this,permissions,0)
        }
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        if(requestCode==0 && grantResults[0]== PackageManager.PERMISSION_GRANTED){
            // Do Your Operations Here
            Log.i(LOG_TAG, "permission READ_PHONE_STATE ok !!")

        }
    }

    fun enableIMS0(view: View) {
        Log.i("MainActivity", "enableIMS0 ")
        var newstate = (view as CheckBox).isChecked
        if (view.isEnabled && newstate != ims0state) {
            if (ims0state) {
                // Uncheck
                HwImsService.instance?.disableIms(0)
            } else {
                // Check
                HwImsService.instance?.enableIms(0)
            }
            ims0state = newstate
            Log.d("MainActivity", "enableIMS0 new state is : " + ims0state)
            prefs!!.edit().putBoolean("ims0", ims0state).commit()
        }
    }

    fun enableIMS1(view: View) {
        Log.i("MainActivity", "enableIMS1 ")
        var newstate = (view as CheckBox).isChecked
        if (view.isEnabled && newstate != ims1state) {
            if (ims1state) {
                // Uncheck
                HwImsService.instance?.disableIms(1)
            } else {
                // Check
                HwImsService.instance?.enableIms(1)
            }
            ims1state = newstate
            prefs!!.edit().putBoolean("ims1", ims1state).commit()
        }
    }

    fun restartRILD0(view: View) {
        try {
            RilHolder.getRadio(0)!!.restartRILD(RilHolder.getNextSerial())
        } catch (ignored: NullPointerException) {
        }

    }

    fun restartRILD1(view: View) {
        try {
            RilHolder.getRadio(1)!!.restartRILD(RilHolder.getNextSerial())
        } catch (ignored: NullPointerException) {
        }
    }

}
