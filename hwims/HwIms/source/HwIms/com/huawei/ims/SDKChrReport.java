package com.huawei.ims;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: SDKChrReport.class */
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
        public void chrHmeCbGetErrReport(int[] iArr) {
            if (iArr != null && iArr.length > 0) {
                iArr[0] = 2;
            }
            SDKChrReport.this.reportSDKCHRParas(iArr, null);
        }
    };
    private ImsCameraClient.ChrVtCallBack mCameraClientChrCB = new ImsCameraClient.ChrVtCallBack() { // from class: com.huawei.ims.SDKChrReport.2
        @Override // com.huawei.vtproxy.ImsCameraClient.ChrVtCallBack
        public void chrVtCbGetErrReport(int[] iArr, String[] strArr) {
            SDKChrReport.this.reportSDKCHRParas(iArr, strArr);
        }
    };

    public SDKChrReport(Context context) {
        this.mContext = context;
        ImsCameraClient.setChrVtCallBack(this.mCameraClientChrCB);
        ImsThinClient.setChrHmeCallBack(this.mHmeChrCB);
    }

    private boolean isUTEvent(int i) {
        return i == 10;
    }

    private boolean isVTEvent(int i) {
        return i == 1 || i == 2;
    }

    private void logCHRPara(int[] iArr, String[] strArr) {
        if (iArr == null || iArr.length == 0) {
            Log.e(LOG_TAG, "logCHRPara: iCHRPara is null");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("CHRParas of ");
        sb.append(iArr[0]);
        sb.append(" is: ");
        for (int i = 1; i < iArr.length; i++) {
            sb.append(iArr[i]);
            sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        if (strArr == null) {
            Log.d(LOG_TAG, "strCHRPara is null, " + ((Object) sb));
            return;
        }
        for (String str : strArr) {
            sb.append(str);
            sb.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        Log.d(LOG_TAG, " " + ((Object) sb));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportSDKCHRParas(int[] iArr, String[] strArr) {
        if (iArr == null || iArr.length == 0) {
            Log.e(LOG_TAG, "iCHRPara is null");
            return;
        }
        Log.d(LOG_TAG, "reportSDKCHRParas iCHRPara[0] = " + iArr[0]);
        logCHRPara(iArr, strArr);
        if (!isVTEvent(iArr[0])) {
            if (isUTEvent(iArr[0])) {
                Log.d(LOG_TAG, "report UT CHR");
                return;
            } else {
                Log.e(LOG_TAG, "unknown CHR EVENT");
                return;
            }
        }
        Log.d(LOG_TAG, "report VTLTE CHR");
        Bundle bundle = new Bundle();
        bundle.putIntArray(SDK_INTINFO, iArr);
        bundle.putStringArray(SDK_STRINFO, strArr);
        sendVolteChrBroadcast(bundle, FAULT_IMS_VT_FAIL_EVENT);
    }

    private void sendVolteChrBroadcast(Bundle bundle, int i) {
        Log.d(LOG_TAG, "sendVolteChrBroadcast faultID=" + i);
        Intent intent = new Intent("com.huawei.android.chr.action.ACTION_REPORT_CHR");
        intent.putExtra("module_id", VOLTE_MODULE_ID);
        intent.putExtra("fault_id", i);
        intent.putExtra("chr_data", bundle);
        this.mContext.sendBroadcast(intent, "com.huawei.android.permission.GET_CHR_DATA");
    }

    public void getCameraOpenFailedReason() {
        ImsCameraClient.startChrVtErrReport(1);
    }
}
