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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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
        public void handleMessage(Message msg) {
        }
    };

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface ChrHmeCallBack {
        void chrHmeCbGetErrReport(int[] iArr);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public interface GetResCallBack {
        void getCurrentDynamicRes(int i, int i2);
    }

    private static native void enableHmeLog(boolean z);

    private static native void enableSetInitMaxBitRate(boolean z);

    private static native int getImsLpdcpThreshold();

    private static native int getParaInt(int i);

    private static native int getQosInfo(QosInfo[] qosInfoArr);

    private static native int nativeDestroy();

    private static native int nativeInit(String str, String str2, Context context);

    private static native int pauseRTPStream(int i);

    private static native int pauseRmtVideo();

    private static native int resumeRTPStream(int i);

    private static native int resumeRmtVideo();

    private static native int setCurrentSession(int i);

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
        boolean ret = false;
        if (mZpandModDriveMsg != null) {
            ret = mSdkHandler.post(mZpandModDriveMsg);
        } else {
            Log.e("VTPROXY", "VT zpandModPostDrv mZpandTimerActive is null");
        }
        return ret ? 0 : -1;
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

    public static int zpandTimerDestroy() {
        mZpandTimerActive = null;
        return 0;
    }

    public static int zpandTimerStart(long dwTimeLen) {
        boolean ret = false;
        if (mZpandTimerActive != null) {
            ret = mSdkHandler.postDelayed(mZpandTimerActive, dwTimeLen);
        } else {
            Log.e("VTPROXY", "VT zpandTimerStart mZpandTimerActive is null");
        }
        return ret ? 0 : -1;
    }

    public static int zpandTimerStop() {
        mSdkHandler.removeCallbacks(mZpandTimerActive);
        return 0;
    }

    public static boolean isSdkInited() {
        return isSdkInited;
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

    public static void imsProcBootCompleted() {
    }

    public static void createHmeLogFolder() {
        new Thread(new Runnable() { // from class: com.huawei.vtproxy.ImsThinClient.4
            boolean isResult = false;
            File path = null;

            @Override // java.lang.Runnable
            public void run() {
                if (ImsThinClient.mContext != null) {
                    this.path = ImsThinClient.mContext.getExternalFilesDir(null);
                    if (this.path != null) {
                        Log.d("VTPROXY", "createHmeLogFolder filePath: " + this.path.toString());
                        this.isResult = ImsThinClient.createHmeLogPath(this.path);
                        if (this.isResult) {
                            Log.d("VTPROXY", "createHmeLogFolder createHmeLogPath OK");
                            return;
                        }
                        return;
                    }
                    Log.e("VTPROXY", "ERROR createHmeLogFolder getExternalFilesDir is null");
                    return;
                }
                Log.e("VTPROXY", "ERROR createHmeLogFolder mContext is null");
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
        return setRemoteView(remoteView.getHolder().getSurface());
    }

    public static int setDeviceOrientation(int orientation) {
        return startRotateLocalRmtVideo(orientation, false);
    }

    public static int setDeviceOrientation(int orientation, boolean enableLandScape) {
        return startRotateLocalRmtVideo(orientation, enableLandScape);
    }

    public static int setRmtVideoOrientation(int orientation) {
        return setParaInt(EN_VSC_VPARA_REMOTE_ROTATE, orientation);
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
        return getParaInt(EN_VSC_VPARA_NEGO_FPS);
    }

    public static int getNegotiatedHeight() {
        return getParaInt(EN_VSC_VPARA_NEGO_HEIGHT);
    }

    public static int getNegotiatedWidth() {
        return getParaInt(EN_VSC_VPARA_NEGO_WIDTH);
    }

    public static int getPeerHeight() {
        return getParaInt(EN_VSC_VPARA_PEER_HEIGHT);
    }

    public static int getPeerWidth() {
        return getParaInt(EN_VSC_VPARA_PEER_WIDTH);
    }

    public static int getVideoQualityIndication() {
        return getParaInt(EN_VSC_VPARA_QUALITY_LEVEL);
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

    private static void chrHmeReportCb(int[] hmeChrData) {
        StringBuffer logString = new StringBuffer("chrHmeReportCb hmeChrData : ");
        if (hmeChrData != null) {
            for (int a : hmeChrData) {
                logString.append("[");
                logString.append(a);
                logString.append("]");
            }
        }
        Log.d("VTPROXY", logString.toString());
        if (chrHmeCallBack != null) {
            chrHmeCallBack.chrHmeCbGetErrReport(hmeChrData);
        } else {
            Log.d("VTPROXY", "chrHmeReportCb hme chr cb func is null");
        }
    }

    public static void setChrHmeCallBack(ChrHmeCallBack callBack) {
        Log.d("VTPROXY", "setChrHmeCallBack in func");
        chrHmeCallBack = callBack;
    }

    private static void ReportCurrentResCallBack(int width, int height) {
        if (itfGetResCallBack != null) {
            itfGetResCallBack.getCurrentDynamicRes(width, height);
        } else {
            Log.d("VTPROXY", "----UICALLBACK : [ReportCurrentResCallBack] callback interface not set.");
        }
    }

    public static void setGetResCallBack(GetResCallBack func_getResCb) {
        itfGetResCallBack = func_getResCb;
    }

    private static void imsEventNotifyCb(int value, int sessionId) {
        String eventName = getEventNameByEnum(value);
        if (eventName == null) {
            return;
        }
        Intent intent = new Intent(eventName);
        if (1 == value) {
            intent.putExtra("ims_sdk_res_id", sessionId);
        }
        if (mContext != null) {
            LocalBroadcastManager.getInstance(mContext).sendBroadcast(intent);
        } else {
            LocalBroadcastManager.getInstance(SciSys.getContext()).sendBroadcast(intent);
        }
    }

    private static void imsSetLocalAddrCb(String strIP) {
        if (strIP == null) {
            Log.e("VTPROXY", "######JniVsImsSetLocalAddrCb: Input is NULL########");
        } else {
            Log.d("VTPROXY", "########JniVsImsSetLocalAddrCb");
            SystemProperties.set("net.lte.vt.local_ip", strIP);
        }
    }

    private static String imsGetLocalAddrCb() {
        return SystemProperties.get("net.lte.vt.local_ip", DEFAULT_LOCAL_IPV4);
    }

    static boolean createHmeLogPath(File filePath) {
        try {
            if (!filePath.exists()) {
                boolean isSucceed = filePath.mkdirs();
                if (!isSucceed) {
                    Log.d("VTPROXY", "createHmeLogPath failed");
                    return false;
                }
                Log.d("VTPROXY", "createHmeLogPath successful");
                return true;
            }
            return true;
        } catch (Exception e) {
            Log.d("VTPROXY", "createHmeLogPath failed" + e.getMessage());
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
                    Log.d("VTPROXY", "empty directory");
                    return true;
                }
                boolean success = false;
                for (File file : files) {
                    try {
                        success = file.delete();
                        if (!success) {
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
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setHmeLog(boolean isWrite) {
        enableHmeLog(isWrite);
    }

    public static void setInitMaxBitRate(boolean isFlag) {
        Log.d("VTPROXY", "setInitMaxBitRate isFlag: " + isFlag);
        enableSetInitMaxBitRate(isFlag);
    }
}
