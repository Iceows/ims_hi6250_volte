package com.huawei.vtproxy;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceView;
import com.huawei.sci.SciSys;
import java.io.File;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsThinClient {
    public static final String CAAS_EVENT_PARAM_READY = "com.huawei.caas.vtproxy.thinclient.PARAM_READY";
    public static final String CAAS_EVENT_PEER_RESOLUTION_CHANGE = "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE";
    public static final String CAAS_EVENT_PLAYER_START = "com.huawei.caas.vtproxy.thinclient.PLAYER_START";
    public static final String CAAS_EVENT_PLAYER_STOP = "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP";
    public static final String CAAS_EVENT_START_READY = "com.huawei.caas.vtproxy.thinclient.START_READY";
    public static final String CAAS_EVENT_VIDEO_QUALITY = "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY";
    public static final String PARAM_QOS_LEVEL = "qos_level";
    private static final int VSC_EVENT_PARAM_READY = 1;
    private static final int VSC_EVENT_PEER_RESOLUTION_CHANGE = 5;
    private static final int VSC_EVENT_PLAYER_START = 3;
    private static final int VSC_EVENT_PLAYER_STOP = 4;
    private static final int VSC_EVENT_START_READY = 2;
    private static final int VSC_EVENT_VIDEO_QUALITY = 6;
    public static final int VT_FAILED = -1;
    public static final int VT_OK = 0;
    private static ChrHmeCallBack chrHmeCallBack;
    private static GetResCallBack itfGetResCallBack;
    private static Runnable zpandTimerActiveRun;
    private static Context context = null;
    private static volatile boolean isSdkInited = false;
    private static int VSC_VPARA_LOCAL_ROTATE = 1;
    private static int VSC_VPARA_REMOTE_ROTATE = 2;
    private static int VSC_VPARA_NEGO_FPS = 3;
    private static int VSC_VPARA_NEGO_HEIGHT = 4;
    private static int VSC_VPARA_NEGO_WIDTH = 5;
    private static int VSC_VPARA_PEER_HEIGHT = 6;
    private static int VSC_VPARA_PEER_WIDTH = 7;
    private static int VSC_VPARA_LOCAL_MIRROR = 8;
    private static int VSC_VPARA_QUALITY_LEVEL = 9;
    private static int VSC_VPARA_CODEC_TYPE = 10;
    private static final Object MOD_DRIVE_LOCK = new Object();
    private static final Object TIMER_ACTIVE_LOCK = new Object();
    private static final Object LOG_LOCK = new Object();
    private static final Runnable ZPAND_MOD_DRIVE_MSG = new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (ImsThinClient.MOD_DRIVE_LOCK) {
                ImsThinClient.zpandModDriveMsg();
            }
        }
    };
    private static final Handler SDK_HANDLER = new Handler() { // from class: com.huawei.vtproxy.ImsThinClient.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface ChrHmeCallBack {
        void chrHmeCbGetErrReport(int[] iArr);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface GetResCallBack {
        void getCurrentDynamicRes(int i, int i2);
    }

    private static native void enableHmeLog(boolean z);

    private static native void enableSetInitMaxBitRate(boolean z);

    private static native int getImsLpdcpThreshold();

    private static native int getParaInt(int i);

    private static native int getParaIntBySessId(int i, int i2);

    private static native int getQosInfo(QosInfo[] qosInfoArr);

    private static native int nativeDestroy();

    private static native int nativeInit(String str, String str2, Context context2);

    private static native int pauseRTPStream(int i);

    private static native int pauseRmtVideo();

    private static native int resumeRTPStream(int i);

    private static native int resumeRmtVideo();

    private static native int sendRmtImageData(int i, ImageData imageData);

    private static native int setAndroidObjects(Context context2);

    private static native int setCurrentSession(int i);

    private static native int setHmeLibPath(String str);

    private static native int setImsBuffInfo(long j, long j2, long j3, long j4);

    private static native int setImsRlQualInfo(int i, int i2, int i3, int i4);

    private static native int setParaInt(int i, int i2);

    private static native int setRemoteView(Object obj);

    private static native int startRmtVideo();

    private static native int startRotateLocalRmtVideo(int i, boolean z);

    private static native int stopRmtVideo();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandModDriveMsg();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandTimerActive();

    public static int zpandModPostDrv() {
        boolean isSuccess = false;
        Runnable runnable = ZPAND_MOD_DRIVE_MSG;
        if (runnable != null) {
            isSuccess = SDK_HANDLER.post(runnable);
        } else {
            Log.e("VTPROXY", "VT zpandModPostDrv ZPAND_MOD_DRIVE_MSG is null");
        }
        return isSuccess ? 0 : -1;
    }

    public static int zpandTimerInit() {
        zpandTimerActiveRun = new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ImsThinClient.TIMER_ACTIVE_LOCK) {
                    ImsThinClient.zpandTimerActive();
                }
            }
        };
        return 0;
    }

    public static int zpandTimerDestroy() {
        zpandTimerActiveRun = null;
        return 0;
    }

    public static int zpandTimerStart(long timeLen) {
        boolean isSuccess = false;
        Runnable runnable = zpandTimerActiveRun;
        if (runnable != null) {
            isSuccess = SDK_HANDLER.postDelayed(runnable, timeLen);
        } else {
            Log.e("VTPROXY", "VT zpandTimerStart zpandTimerActiveRun is null");
        }
        return isSuccess ? 0 : -1;
    }

    public static int zpandTimerStop() {
        SDK_HANDLER.removeCallbacks(zpandTimerActiveRun);
        return 0;
    }

    public static boolean isSdkInited() {
        return isSdkInited;
    }

    public static int initImsThinClient(Context contextVal) {
        context = contextVal;
        if (isSdkInited) {
            return 0;
        }
        if (context == null) {
            Log.e("VTPROXY", "initImsThinClient context is null");
        }
        if (nativeInit("", "2014-06-24", context) != 0) {
            Log.e("VTPROXY", "initImsThinClient nativeInit failed.");
            return -1;
        }
        isSdkInited = true;
        return 0;
    }

    public static int imsSetHmeLibPath(String path) {
        return setHmeLibPath(path);
    }

    public static void imsProcBootCompleted() {
    }

    public static void createHmeLogFolder() {
        new Thread(new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.4
            boolean isSuccess = false;
            File path = null;

            @Override // java.lang.Runnable
            public void run() {
                synchronized (ImsThinClient.LOG_LOCK) {
                    if (ImsThinClient.context != null) {
                        this.path = ImsThinClient.context.getExternalFilesDir(null);
                        if (this.path != null) {
                            Log.i("VTPROXY", "createHmeLogFolder filePath: " + this.path.toString());
                            this.isSuccess = ImsThinClient.createHmeLogPath(this.path);
                            if (this.isSuccess) {
                                Log.i("VTPROXY", "createHmeLogFolder createHmeLogPath OK");
                            }
                        } else {
                            Log.e("VTPROXY", "ERROR createHmeLogFolder getExternalFilesDir is null");
                        }
                        return;
                    }
                    Log.e("VTPROXY", "ERROR createHmeLogFolder context is null");
                }
            }
        }).start();
    }

    public static int deInitImsThinClient() {
        isSdkInited = false;
        return nativeDestroy();
    }

    public static int setFarEndSurface(Surface remoteSurface) {
        return setRemoteView(remoteSurface);
    }

    public static int setFarEndSurface(SurfaceView remoteView) {
        if (remoteView == null) {
            Log.i("VTPROXY", "setFarEndSurface localView is null ");
            return -1;
        }
        if (remoteView.getHolder() == null) {
            Log.i("VTPROXY", "setFarEndSurface the surfaceHolder of remoteView is null ");
            return -1;
        }
        return setRemoteView(remoteView.getHolder().getSurface());
    }

    public static int setDeviceOrientation(int orientation) {
        return startRotateLocalRmtVideo(orientation, false);
    }

    public static int setDeviceOrientation(int orientation, boolean isEnableLandScape) {
        return startRotateLocalRmtVideo(orientation, isEnableLandScape);
    }

    public static int setRmtVideoOrientation(int orientation) {
        return setParaInt(VSC_VPARA_REMOTE_ROTATE, orientation);
    }

    public static int showRmtVideo() {
        return startRmtVideo();
    }

    public static int hideRmtVideo() {
        return stopRmtVideo();
    }

    public static int pauseVideo() {
        return pauseRmtVideo();
    }

    public static int resumeVideo() {
        return resumeRmtVideo();
    }

    public static int getNegotiatedFPS() {
        return getParaInt(VSC_VPARA_NEGO_FPS);
    }

    public static int getNegotiatedHeight() {
        return getParaInt(VSC_VPARA_NEGO_HEIGHT);
    }

    public static int getNegotiatedWidth() {
        return getParaInt(VSC_VPARA_NEGO_WIDTH);
    }

    public static int getPeerHeight() {
        return getParaInt(VSC_VPARA_PEER_HEIGHT);
    }

    public static int getPeerWidth() {
        return getParaInt(VSC_VPARA_PEER_WIDTH);
    }

    public static int getVideoQualityIndication() {
        return getParaInt(VSC_VPARA_QUALITY_LEVEL);
    }

    public static QosInfo getVideoQosInfo() {
        QosInfo[] qosInfo = {new QosInfo()};
        getQosInfo(qosInfo);
        if (qosInfo[0] == null) {
            Log.e("VTPROXY", "getVideoQos qosInfo is empty");
            return null;
        }
        return qosInfo[0];
    }

    public static int getLpdcpThreshold() {
        return getImsLpdcpThreshold();
    }

    public static int setBuffInfo(long curBuffTime, long curBuffPktNum, long macUlThrput, long maxBuffTime) {
        return setImsBuffInfo(curBuffTime, curBuffPktNum, macUlThrput, maxBuffTime);
    }

    public static int setRlQualInfo(int rsrp, int rsrq, int rssi, int bler) {
        return setImsRlQualInfo(rsrp, rsrq, rssi, bler);
    }

    public static int pauseImsRTPStream(int direction) {
        return pauseRTPStream(direction);
    }

    public static int resumeImsRTPStream(int direction) {
        return resumeRTPStream(direction);
    }

    public static int setImsCurrentSession(int sessionId) {
        return setCurrentSession(sessionId);
    }

    private static String getEventNameByEnum(int eventEnum) {
        switch (eventEnum) {
            case 1:
                return CAAS_EVENT_PARAM_READY;
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

    private static void chrHmeReportCb(int[] hmeChrData) {
        StringBuffer logString = new StringBuffer("chrHmeReportCb hmeChrData : ");
        if (hmeChrData != null) {
            for (int a : hmeChrData) {
                logString.append("[");
                logString.append(a);
                logString.append("]");
            }
        }
        Log.i("VTPROXY", logString.toString());
        ChrHmeCallBack chrHmeCallBack2 = chrHmeCallBack;
        if (chrHmeCallBack2 != null) {
            chrHmeCallBack2.chrHmeCbGetErrReport(hmeChrData);
        } else {
            Log.i("VTPROXY", "chrHmeReportCb hme chr cb func is null");
        }
    }

    public static void setChrHmeCallBack(ChrHmeCallBack callBack) {
        Log.i("VTPROXY", "setChrHmeCallBack in func");
        chrHmeCallBack = callBack;
    }

    private static void reportCurrentResCallBack(int width, int height) {
        GetResCallBack getResCallBack = itfGetResCallBack;
        if (getResCallBack != null) {
            getResCallBack.getCurrentDynamicRes(width, height);
        } else {
            Log.i("VTPROXY", "----UICALLBACK : [reportCurrentResCallBack] callback interface not set.");
        }
    }

    private static int configVmContextForHmeCb() {
        Log.i("VTPROXY", "----UICALLBACK : configVmContextForHmeCb java");
        Context context2 = context;
        if (context2 == null) {
            Log.e("VTPROXY", "configVmContextForHmeCb context is null");
            return -1;
        }
        if (setAndroidObjects(context2) != 0) {
            Log.e("VTPROXY", "configVmContextForHmeCb failed.");
            return -1;
        }
        return 0;
    }

    public static void setGetResCallBack(GetResCallBack getResCbFunc) {
        itfGetResCallBack = getResCbFunc;
    }

    private static void imsEventNotifyCb(int value, int sessionId) {
        String eventName = getEventNameByEnum(value);
        if (eventName == null) {
            return;
        }
        Intent intent = new Intent(eventName);
        if (value == 1) {
            intent.putExtra("ims_sdk_res_id", sessionId);
        }
        Context context2 = context;
        if (context2 != null) {
            LocalBroadcastManager.getInstance(context2).sendBroadcast(intent);
        } else {
            LocalBroadcastManager.getInstance(SciSys.getContext()).sendBroadcast(intent);
        }
    }

    private static void imsSetLocalAddrCb(String ipAddr) {
        if (ipAddr == null) {
            Log.e("VTPROXY", "######JniVsImsSetLocalAddrCb: Input is NULL########");
        } else {
            Log.i("VTPROXY", "########JniVsImsSetLocalAddrCb");
            SystemProperties.set("net.lte.vt.local_ip", ipAddr);
        }
    }

    static boolean createHmeLogPath(File filePath) {
        try {
            if (!filePath.exists()) {
                boolean isSucceed = filePath.mkdirs();
                if (!isSucceed) {
                    Log.i("VTPROXY", "createHmeLogPath failed");
                    return false;
                }
                Log.i("VTPROXY", "createHmeLogPath successful");
                return true;
            }
            return true;
        } catch (Exception e) {
            Log.i("VTPROXY", "createHmeLogPath failed" + e.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean deleteHmeLogPath(File filePath) {
        try {
            if (!filePath.exists()) {
                return false;
            }
            if (filePath.isDirectory()) {
                File[] files = filePath.listFiles();
                if (files == null) {
                    Log.i("VTPROXY", "empty directory");
                    return true;
                }
                for (File file : files) {
                    boolean isSuccess = file.delete();
                    if (!isSuccess) {
                        Log.e("VTPROXY", "deleteHmeLogPath failed");
                        return false;
                    }
                }
            }
            Log.i("VTPROXY", "deleteHmeLogPath success");
            return true;
        } catch (Exception e) {
            Log.i("VTPROXY", "deleteHmeLogPath failed" + e.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setHmeLog(boolean isWrite) {
        enableHmeLog(isWrite);
    }

    public static void setInitMaxBitRate(boolean isEnable) {
        Log.i("VTPROXY", "setInitMaxBitRate isEnable: " + isEnable);
        enableSetInitMaxBitRate(isEnable);
    }

    public static int sendImageData(int sessionId, ImageData imgData) {
        return sendRmtImageData(sessionId, imgData);
    }

    public static int getNegotiatedCodecType(int sessionId) {
        return getParaIntBySessId(sessionId, VSC_VPARA_CODEC_TYPE);
    }
}
