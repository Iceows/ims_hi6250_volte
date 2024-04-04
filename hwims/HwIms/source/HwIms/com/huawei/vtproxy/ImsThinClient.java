package com.huawei.vtproxy;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceView;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.sci.SciSys;
import java.io.File;

/* loaded from: ImsThinClient.class */
public class ImsThinClient {
    public static final String CAAS_EVENT_PARAM_READY = "com.huawei.caas.vtproxy.thinclient.PARAM_READY";
    public static final String CAAS_EVENT_PEER_RESOLUTION_CHANGE = "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE";
    public static final String CAAS_EVENT_PLAYER_START = "com.huawei.caas.vtproxy.thinclient.PLAYER_START";
    public static final String CAAS_EVENT_PLAYER_STOP = "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP";
    public static final String CAAS_EVENT_START_READY = "com.huawei.caas.vtproxy.thinclient.START_READY";
    public static final String CAAS_EVENT_VIDEO_QUALITY = "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY";
    private static final String DEFAULT_LOCAL_IPV4 = "127.0.0.1";
    private static final int EN_VSC_EVENT_PARAM_READY = 1;
    private static final int EN_VSC_EVENT_PEER_RESOLUTION_CHANGE = 5;
    private static final int EN_VSC_EVENT_PLAYER_START = 3;
    private static final int EN_VSC_EVENT_PLAYER_STOP = 4;
    private static final int EN_VSC_EVENT_START_READY = 2;
    private static final int EN_VSC_EVENT_VIDEO_QUALITY = 6;
    public static final String PARAM_QOS_LEVEL = "qos_level";
    public static final int VT_FAILED = -1;
    public static final int VT_OK = 0;
    private static ChrHmeCallBack chrHmeCallBack;
    private static GetResCallBack itfGetResCallBack;
    private static Runnable mZpandTimerActive;
    private static Context mContext = null;
    private static volatile boolean isSdkInited = false;
    private static int EN_VSC_VPARA_LOCAL_ROTATE = 1;
    private static int EN_VSC_VPARA_REMOTE_ROTATE = 2;
    private static int EN_VSC_VPARA_NEGO_FPS = 3;
    private static int EN_VSC_VPARA_NEGO_HEIGHT = 4;
    private static int EN_VSC_VPARA_NEGO_WIDTH = 5;
    private static int EN_VSC_VPARA_PEER_HEIGHT = 6;
    private static int EN_VSC_VPARA_PEER_WIDTH = 7;
    private static int EN_VSC_VPARA_LOCAL_MIRROR = 8;
    private static int EN_VSC_VPARA_QUALITY_LEVEL = 9;
    private static final Runnable mZpandModDriveMsg = new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.1
        @Override // java.lang.Runnable
        public void run() {
            ImsThinClient.zpandModDriveMsg();
        }
    };
    private static final Handler mSdkHandler = new Handler() { // from class: com.huawei.vtproxy.ImsThinClient.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    };

    /* loaded from: ImsThinClient$ChrHmeCallBack.class */
    public interface ChrHmeCallBack {
        void chrHmeCbGetErrReport(int[] iArr);
    }

    /* loaded from: ImsThinClient$GetResCallBack.class */
    public interface GetResCallBack {
        void getCurrentDynamicRes(int i, int i2);
    }

    private static void ReportCurrentResCallBack(int i, int i2) {
        if (itfGetResCallBack != null) {
            itfGetResCallBack.getCurrentDynamicRes(i, i2);
        } else {
            Log.d("VTPROXY", "----UICALLBACK : [ReportCurrentResCallBack] callback interface not set.");
        }
    }

    private static void chrHmeReportCb(int[] iArr) {
        StringBuffer stringBuffer = new StringBuffer("chrHmeReportCb hmeChrData : ");
        if (iArr != null) {
            for (int i : iArr) {
                stringBuffer.append("[");
                stringBuffer.append(i);
                stringBuffer.append("]");
            }
        }
        Log.d("VTPROXY", stringBuffer.toString());
        if (chrHmeCallBack != null) {
            chrHmeCallBack.chrHmeCbGetErrReport(iArr);
        } else {
            Log.d("VTPROXY", "chrHmeReportCb hme chr cb func is null");
        }
    }

    public static void createHmeLogFolder() {
        new Thread(new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.4
            boolean isResult = false;
            File path = null;

            @Override // java.lang.Runnable
            public void run() {
                if (ImsThinClient.mContext == null) {
                    Log.e("VTPROXY", "ERROR createHmeLogFolder mContext is null");
                    return;
                }
                this.path = ImsThinClient.mContext.getExternalFilesDir(null);
                if (this.path == null) {
                    Log.e("VTPROXY", "ERROR createHmeLogFolder getExternalFilesDir is null");
                    return;
                }
                Log.d("VTPROXY", "createHmeLogFolder filePath: " + this.path.toString());
                this.isResult = ImsThinClient.createHmeLogPath(this.path);
                if (this.isResult) {
                    Log.d("VTPROXY", "createHmeLogFolder createHmeLogPath OK");
                }
            }
        }).start();
    }

    static boolean createHmeLogPath(File file) {
        try {
            if (file.exists()) {
                return true;
            }
            if (file.mkdirs()) {
                Log.d("VTPROXY", "createHmeLogPath successful");
                return true;
            }
            Log.d("VTPROXY", "createHmeLogPath failed");
            return false;
        } catch (Exception e) {
            Log.d("VTPROXY", "createHmeLogPath failed" + e.getMessage());
            return false;
        }
    }

    public static int deInitImsThinClient() {
        isSdkInited = false;
        return nativeDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean deleteHmeLogPath(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles == null) {
                        Log.d("VTPROXY", "empty directory");
                        return true;
                    }
                    boolean z = false;
                    for (File file2 : listFiles) {
                        try {
                            boolean z2 = z;
                            z = file2.delete();
                            if (!z) {
                                Log.e("VTPROXY", "deleteHmeLogPath failed");
                                return false;
                            }
                        } catch (Exception e) {
                            e = e;
                            Log.d("VTPROXY", "deleteHmeLogPath failed" + e.getMessage());
                            return false;
                        }
                    }
                }
                Log.d("VTPROXY", "deleteHmeLogPath success");
                return true;
            }
            return false;
        } catch (Exception e2) {
            e = e2;
        }
    }

    private static native void enableHmeLog(boolean z);

    private static native void enableSetInitMaxBitRate(boolean z);

    private static String getEventNameByEnum(int i) {
        switch (i) {
            case 1:
                return "com.huawei.caas.vtproxy.thinclient.PARAM_READY";
            case 2:
                return CAAS_EVENT_START_READY;
            case 3:
                return CAAS_EVENT_PLAYER_START;
            case 4:
                return CAAS_EVENT_PLAYER_STOP;
            case 5:
                return CAAS_EVENT_PEER_RESOLUTION_CHANGE;
            case 6:
                return CAAS_EVENT_VIDEO_QUALITY;
            default:
                return null;
        }
    }

    private static native int getImsLpdcpThreshold();

    public static int getLpdcpThreshold() {
        return getImsLpdcpThreshold();
    }

    public static int getNegotiatedFPS() {
        return getParaInt(EN_VSC_VPARA_NEGO_FPS);
    }

    public static int getNegotiatedHeight() {
        return getParaInt(EN_VSC_VPARA_NEGO_HEIGHT);
    }

    public static int getNegotiatedWidth() {
        return getParaInt(EN_VSC_VPARA_NEGO_WIDTH);
    }

    private static native int getParaInt(int i);

    public static int getPeerHeight() {
        return getParaInt(EN_VSC_VPARA_PEER_HEIGHT);
    }

    public static int getPeerWidth() {
        return getParaInt(EN_VSC_VPARA_PEER_WIDTH);
    }

    private static native int getQosInfo(QosInfo[] qosInfoArr);

    public static QosInfo getVideoQosInfo() {
        QosInfo[] qosInfoArr = {new QosInfo()};
        getQosInfo(qosInfoArr);
        if (qosInfoArr[0] == null) {
            Log.e("VTPROXY", "getVideoQos qosInfo is empty");
            return null;
        }
        return qosInfoArr[0];
    }

    public static int getVideoQualityIndication() {
        return getParaInt(EN_VSC_VPARA_QUALITY_LEVEL);
    }

    public static int hideRmtVideo() {
        return stopRmtVideo();
    }

    private static void imsEventNotifyCb(int i, int i2) {
        String eventNameByEnum = getEventNameByEnum(i);
        if (eventNameByEnum == null) {
            return;
        }
        Intent intent = new Intent(eventNameByEnum);
        if (1 == i) {
            intent.putExtra("ims_sdk_res_id", i2);
        }
        if (mContext != null) {
            LocalBroadcastManager.getInstance(mContext).sendBroadcast(intent);
        } else {
            LocalBroadcastManager.getInstance(SciSys.getContext()).sendBroadcast(intent);
        }
    }

    private static String imsGetLocalAddrCb() {
        return SystemProperties.get("net.lte.vt.local_ip", DEFAULT_LOCAL_IPV4);
    }

    public static void imsProcBootCompleted() {
    }

    private static void imsSetLocalAddrCb(String str) {
        if (str == null) {
            Log.e("VTPROXY", "######JniVsImsSetLocalAddrCb: Input is NULL########");
            return;
        }
        Log.d("VTPROXY", "########JniVsImsSetLocalAddrCb");
        SystemProperties.set("net.lte.vt.local_ip", str);
    }

    public static int initImsThinClient(Context context) {
        mContext = context;
        if (isSdkInited) {
            return 0;
        }
        if (mContext == null) {
            Log.e("VTPROXY", "initImsThinClient mContext is null");
        }
        if (nativeInit(HwImsConfigImpl.NULL_STRING_VALUE, "2014-06-24", mContext) != 0) {
            Log.e("VTPROXY", "initImsThinClient nativeInit failed.");
            return -1;
        }
        isSdkInited = true;
        return 0;
    }

    public static boolean isSdkInited() {
        return isSdkInited;
    }

    private static native int nativeDestroy();

    private static native int nativeInit(String str, String str2, Context context);

    public static int pauseImsRTPStream(int i) {
        return pauseRTPStream(i);
    }

    private static native int pauseRTPStream(int i);

    private static native int pauseRmtVideo();

    public static int pauseVideo() {
        return pauseRmtVideo();
    }

    public static int resumeImsRTPStream(int i) {
        return resumeRTPStream(i);
    }

    private static native int resumeRTPStream(int i);

    private static native int resumeRmtVideo();

    public static int resumeVideo() {
        return resumeRmtVideo();
    }

    public static int setBuffInfo(long j, long j2, long j3, long j4) {
        return setImsBuffInfo(j, j2, j3, j4);
    }

    public static void setChrHmeCallBack(ChrHmeCallBack chrHmeCallBack2) {
        Log.d("VTPROXY", "setChrHmeCallBack in func");
        chrHmeCallBack = chrHmeCallBack2;
    }

    private static native int setCurrentSession(int i);

    public static int setDeviceOrientation(int i) {
        return startRotateLocalRmtVideo(i, false);
    }

    public static int setDeviceOrientation(int i, boolean z) {
        return startRotateLocalRmtVideo(i, z);
    }

    public static int setFarEndSurface(Surface surface) {
        return setRemoteView(surface);
    }

    public static int setFarEndSurface(SurfaceView surfaceView) {
        return setRemoteView(surfaceView.getHolder().getSurface());
    }

    public static void setGetResCallBack(GetResCallBack getResCallBack) {
        itfGetResCallBack = getResCallBack;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setHmeLog(boolean z) {
        enableHmeLog(z);
    }

    private static native int setImsBuffInfo(long j, long j2, long j3, long j4);

    public static int setImsCurrentSession(int i) {
        return setCurrentSession(i);
    }

    private static native int setImsRlQualInfo(int i, int i2, int i3, int i4);

    public static void setInitMaxBitRate(boolean z) {
        Log.d("VTPROXY", "setInitMaxBitRate isFlag: " + z);
        enableSetInitMaxBitRate(z);
    }

    private static native int setParaInt(int i, int i2);

    private static native int setRemoteView(Object obj);

    public static int setRlQualInfo(int i, int i2, int i3, int i4) {
        return setImsRlQualInfo(i, i2, i3, i4);
    }

    public static int setRmtVideoOrientation(int i) {
        return setParaInt(EN_VSC_VPARA_REMOTE_ROTATE, i);
    }

    public static int showRmtVideo() {
        return startRmtVideo();
    }

    private static native int startRmtVideo();

    private static native int startRotateLocalRmtVideo(int i, boolean z);

    private static native int stopRmtVideo();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandModDriveMsg();

    public static int zpandModPostDrv() {
        boolean z = false;
        if (mZpandModDriveMsg != null) {
            z = mSdkHandler.post(mZpandModDriveMsg);
        } else {
            Log.e("VTPROXY", "VT zpandModPostDrv mZpandTimerActive is null");
        }
        return z ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandTimerActive();

    public static int zpandTimerDestroy() {
        mZpandTimerActive = null;
        return 0;
    }

    public static int zpandTimerInit() {
        mZpandTimerActive = new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.3
            @Override // java.lang.Runnable
            public void run() {
                ImsThinClient.zpandTimerActive();
            }
        };
        return 0;
    }

    public static int zpandTimerStart(long j) {
        boolean z = false;
        if (mZpandTimerActive != null) {
            z = mSdkHandler.postDelayed(mZpandTimerActive, j);
        } else {
            Log.e("VTPROXY", "VT zpandTimerStart mZpandTimerActive is null");
        }
        return z ? 0 : -1;
    }

    public static int zpandTimerStop() {
        mSdkHandler.removeCallbacks(mZpandTimerActive);
        return 0;
    }
}
