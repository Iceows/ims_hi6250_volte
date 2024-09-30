package com.huawei.ims;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SDKChrReport {
    private static final int CAMERA_OPEN_FAIL_SUB_EVENT = 1;
    private static final int FAULT_IMS_SS_PERFORMANCE_EVENT = 4004;
    private static final int FAULT_IMS_VT_FAIL_EVENT = 4003;
    private static final String LOG_TAG = "SDKChrReport";
    private static final String SDK_INTINFO = "sdk_intinfo";
    private static final String SDK_STRINFO = "sdk_strinfo";
    private static final int UT_FAIL_SUB_EVENT = 10;
    private static final int VIDEO_PERFOMANCE_SUB_EVENT = 2;
    private static final int VOLTE_MODULE_ID = 4000;
    private Context mContext;
    private ImsThinClient.ChrHmeCallBack mHmeChrCB = new ImsThinClient.ChrHmeCallBack() { // from class: com.huawei.ims.SDKChrReport.1
        @Override // com.huawei.vtproxy.ImsThinClient.ChrHmeCallBack
        public void chrHmeCbGetErrReport(int[] iCHRPara) {
            if (iCHRPara != null && iCHRPara.length > 0) {
                iCHRPara[0] = 2;
            }
            SDKChrReport.this.reportSDKCHRParas(iCHRPara, null);
        }
    };
    private ImsCameraClient.ChrVtCallBack mCameraClientChrCB = new ImsCameraClient.ChrVtCallBack() { // from class: com.huawei.ims.SDKChrReport.2
        @Override // com.huawei.vtproxy.ImsCameraClient.ChrVtCallBack
        public void chrVtCbGetErrReport(int[] iCHRPara, String[] strCHRPara) {
            SDKChrReport.this.reportSDKCHRParas(iCHRPara, strCHRPara);
        }
    };

    public SDKChrReport(Context context) {
        this.mContext = context;
        ImsCameraClient.setChrVtCallBack(this.mCameraClientChrCB);
        ImsThinClient.setChrHmeCallBack(this.mHmeChrCB);
    }

    public void getCameraOpenFailedReason() {
        ImsCameraClient.startChrVtErrReport(1);
    }

    private boolean isVTEvent(int eventID) {
        if (eventID == 1 || eventID == 2) {
            return true;
        }
        return false;
    }

    private boolean isUTEvent(int eventID) {
        if (eventID == 10) {
            return true;
        }
        return false;
    }

    private void logCHRPara(int[] iCHRPara, String[] strCHRPara) {
        if (iCHRPara == null || iCHRPara.length == 0) {
            Log.e(LOG_TAG, "logCHRPara: iCHRPara is null");
            return;
        }
        StringBuilder outStr = new StringBuilder();
        outStr.append("CHRParas of ");
        outStr.append(iCHRPara[0]);
        outStr.append(" is: ");
        for (int i = 1; i < iCHRPara.length; i++) {
            outStr.append(iCHRPara[i]);
            outStr.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        if (strCHRPara == null) {
            Log.d(LOG_TAG, "strCHRPara is null, " + ((Object) outStr));
            return;
        }
        for (String str : strCHRPara) {
            outStr.append(str);
            outStr.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        Log.d(LOG_TAG, " " + ((Object) outStr));
    }

    private void sendVolteChrBroadcast(Bundle data, int faultID) {
        Log.d(LOG_TAG, "sendVolteChrBroadcast faultID=" + faultID);
        Intent mI = new Intent("com.huawei.android.chr.action.ACTION_REPORT_CHR");
        mI.putExtra("module_id", VOLTE_MODULE_ID);
        mI.putExtra("fault_id", faultID);
        mI.putExtra("chr_data", data);
        this.mContext.sendBroadcast(mI, "com.huawei.android.permission.GET_CHR_DATA");
    }

    public void reportSDKCHRParas(int[] iCHRPara, String[] strCHRPara) {
        if (iCHRPara == null || iCHRPara.length == 0) {
            Log.e(LOG_TAG, "iCHRPara is null");
            return;
        }
        Log.d(LOG_TAG, "reportSDKCHRParas iCHRPara[0] = " + iCHRPara[0]);
        logCHRPara(iCHRPara, strCHRPara);
        if (!isVTEvent(iCHRPara[0])) {
            if (isUTEvent(iCHRPara[0])) {
                Log.d(LOG_TAG, "report UT CHR");
                return;
            } else {
                Log.e(LOG_TAG, "unknown CHR EVENT");
                return;
            }
        }
        Log.d(LOG_TAG, "report VTLTE CHR");
        Bundle bundle = new Bundle();
        bundle.putIntArray(SDK_INTINFO, iCHRPara);
        bundle.putStringArray(SDK_STRINFO, strCHRPara);
        sendVolteChrBroadcast(bundle, FAULT_IMS_VT_FAIL_EVENT);
    }
}
