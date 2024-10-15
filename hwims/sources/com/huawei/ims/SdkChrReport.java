package com.huawei.ims;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.Rlog;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SdkChrReport {
    private static final int CAMERA_OPEN_FAIL_SUB_EVENT = 1;
    private static final int FAULT_IMS_SS_PERFORMANCE_EVENT = 4004;
    private static final int FAULT_IMS_VT_FAIL_EVENT = 4003;
    private static final String LOG_TAG = "SdkChrReport";
    private static final String SDK_INTINFO = "sdk_intinfo";
    private static final String SDK_STRINFO = "sdk_strinfo";
    private static final int UT_FAIL_SUB_EVENT = 10;
    private static final int VIDEO_PERFOMANCE_SUB_EVENT = 2;
    private static final int VOLTE_MODULE_ID = 4000;
    private Context mContext;
    private ImsThinClient.ChrHmeCallBack mHmeChrCb = new ImsThinClient.ChrHmeCallBack() { // from class: com.huawei.ims.SdkChrReport.1
        @Override // com.huawei.vtproxy.ImsThinClient.ChrHmeCallBack
        public void chrHmeCbGetErrReport(int[] chrPara) {
            if (chrPara != null && chrPara.length > 0) {
                chrPara[0] = 2;
            }
            SdkChrReport.this.reportSdkChrParas(chrPara, null);
        }
    };
    private ImsCameraClient.ChrVtCallBack mCameraClientChrCb = new ImsCameraClient.ChrVtCallBack() { // from class: com.huawei.ims.SdkChrReport.2
        @Override // com.huawei.vtproxy.ImsCameraClient.ChrVtCallBack
        public void chrVtCbGetErrReport(int[] chrPara, String[] strChrPara) {
            SdkChrReport.this.reportSdkChrParas(chrPara, strChrPara);
        }
    };

    public SdkChrReport(Context context) {
        this.mContext = context;
        ImsCameraClient.setChrVtCallBack(this.mCameraClientChrCb);
        ImsThinClient.setChrHmeCallBack(this.mHmeChrCb);
    }

    public void getCameraOpenFailedReason() {
        ImsCameraClient.startChrVtErrReport(1);
    }

    private boolean isVtEvent(int eventId) {
        if (eventId == 1 || eventId == 2) {
            return true;
        }
        return false;
    }

    private boolean isUtEvent(int eventId) {
        if (eventId == 10) {
            return true;
        }
        return false;
    }

    private void logChrPara(int[] chrPara, String[] strChrPara) {
        if (chrPara == null || chrPara.length == 0) {
            Rlog.e(LOG_TAG, "logChrPara: chrPara is null");
            return;
        }
        StringBuilder outStr = new StringBuilder();
        outStr.append("CHRParas of ");
        outStr.append(chrPara[0]);
        outStr.append(" is: ");
        for (int i = 1; i < chrPara.length; i++) {
            outStr.append(chrPara[i]);
            outStr.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        if (strChrPara == null) {
            Rlog.i(LOG_TAG, "strChrPara is null, " + ((Object) outStr));
            return;
        }
        for (String str : strChrPara) {
            outStr.append(str);
            outStr.append(HwImsConfigImpl.SEPARATOR_TAG);
        }
        Rlog.i(LOG_TAG, " " + ((Object) outStr));
    }

    private void sendVolteChrBroadcast(Bundle data, int eventId) {
        Rlog.i(LOG_TAG, "sendVolteChrBroadcast faultId=" + eventId);
        Intent intent = new Intent("com.huawei.android.chr.action.ACTION_REPORT_CHR");
        intent.putExtra("module_id", VOLTE_MODULE_ID);
        intent.putExtra("fault_id", eventId);
        intent.putExtra("chr_data", data);
        this.mContext.sendBroadcast(intent, "com.huawei.android.permission.GET_CHR_DATA");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportSdkChrParas(int[] chrPara, String[] strChrPara) {
        if (chrPara == null || chrPara.length == 0) {
            Rlog.e(LOG_TAG, "chrPara is null");
            return;
        }
        Rlog.i(LOG_TAG, "reportSdkChrParas chrPara[0] = " + chrPara[0]);
        logChrPara(chrPara, strChrPara);
        if (!isVtEvent(chrPara[0])) {
            if (isUtEvent(chrPara[0])) {
                Rlog.i(LOG_TAG, "report UT CHR");
                return;
            } else {
                Rlog.e(LOG_TAG, "unknown CHR EVENT");
                return;
            }
        }
        Rlog.i(LOG_TAG, "report VTLTE CHR");
        Bundle bundle = new Bundle();
        bundle.putIntArray(SDK_INTINFO, chrPara);
        bundle.putStringArray(SDK_STRINFO, strChrPara);
        sendVolteChrBroadcast(bundle, FAULT_IMS_VT_FAIL_EVENT);
    }
}
