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

import android.app.Activity
import android.content.SharedPreferences
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.CheckBox

class MainActivity : Activity() {
    private var prefs: SharedPreferences? = null
    private var ims0state: Boolean = false
    private var ims1state: Boolean = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Log.i("MainActivity", "onCreate")

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
