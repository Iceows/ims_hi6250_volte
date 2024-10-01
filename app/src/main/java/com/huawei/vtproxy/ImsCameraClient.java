package com.huawei.vtproxy;

import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceView;
import java.io.File;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;

public class ImsCameraClient {
    public static final int CAAS_CAMERA_ID_BACK = 0;
    public static final int CAAS_CAMERA_ID_FRONT = 1;
    public static final int CAMERA_CLIENT_FAILED = 1;
    public static final int CAMERA_CLIENT_OK = 0;
    public static final int CHR_VT_ERROR_CAMERA_INIT = 1;
    public static final int CHR_VT_ERROR_CAMERA_NORMAL = 0;
    public static final int CHR_VT_ERROR_CAMERA_OCCUPIED = 4;
    public static final int CHR_VT_ERROR_CAMERA_OPEN = 3;
    public static final int CHR_VT_ERROR_CAMERA_PARA = 2;
    public static final int CHR_VT_ERROR_IPADDR_NORMAL = 0;
    public static final int CHR_VT_ERROR_IPADDR_NULL = 1;
    public static final int CHR_VT_ERROR_MOUDLE_NULL = 0;
    public static final int CHR_VT_ERROR_MOUDLE_VT = 1;
    public static final int CHR_VT_ERROR_SOCKET_ACCEPT = 5;
    public static final int CHR_VT_ERROR_SOCKET_BIND = 3;
    public static final int CHR_VT_ERROR_SOCKET_CONNECT = 6;
    public static final int CHR_VT_ERROR_SOCKET_LISTEN = 4;
    public static final int CHR_VT_ERROR_SOCKET_NORMAL = 0;
    public static final int CHR_VT_ERROR_SOCKET_OPEN = 1;
    public static final int CHR_VT_ERROR_SOCKET_SELECT = 2;
    private static final int HME_V_CAMERA_TYPE = 0;
    private static final int HME_V_ENCODER_USE_TYPE = 1;
    private static ChrVtCallBack chrVtCallBack = null;
    private static String hmeLogPath = "/storage/emulated/0/Android/data/com.huawei.ims/files";

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface ChrVtCallBack {
        void chrVtCbGetErrReport(int[] iArr, String[] strArr);
    }

    private static native int getChrVtCameraErr();

    private static native int getChrVtIpAddrErr();

    private static native int getChrVtSocketErr();

    private static native int open(int i, int i2);

    private static native int release(int i);

    private static native int setLocalView(Object obj);

    private static native int setParameter(int i, String str);

    private static native int startPreview();

    private static native int stopPreview();

    private static native int switchCamera();

    public static void setChrVtCallBack(ChrVtCallBack callBack) {
        Log.d("VTPROXY", "setChrVtCallBack in func");
        chrVtCallBack = callBack;
    }

    public static void startChrVtErrReport(int ConditionId) {
        Log.d("VTPROXY", "startChrVtErrReport in func");
        int socketErrReason = getChrVtSocketErr();
        int ipAddrErrReason = getChrVtIpAddrErr();
        int cameraErrReason = getChrVtCameraErr();
        int[] intData = {0, 0, 0, 0, 0};
        Log.d("VTPROXY", "startChrVtErrReport ConditionId : " + ConditionId + ", socketErrReason : " + socketErrReason + ", ipAddrErrReason : " + ipAddrErrReason + ", cameraErrReason : " + cameraErrReason);
        intData[0] = ConditionId;
        intData[1] = socketErrReason / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE;
        intData[2] = socketErrReason % LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE;
        intData[3] = ipAddrErrReason;
        intData[4] = cameraErrReason;
        if (chrVtCallBack != null) {
            Log.d("VTPROXY", "startChrVtErrReport run call back func");
            chrVtCallBack.chrVtCbGetErrReport(intData, null);
        }
    }

    public static int cameraOpen(int cameraid, int callType) {
        File path = new File(hmeLogPath);
        boolean isWriteLog = SystemProperties.getBoolean("persist.sys.huawei.debug.on", false);
        Log.d("VTPROXY", "initImsThinClient isWriteLog: " + isWriteLog);
        if (isWriteLog) {
            ImsThinClient.setHmeLog(isWriteLog);
        } else {
            ImsThinClient.setHmeLog(isWriteLog);
            ImsThinClient.deleteHmeLogPath(path);
        }
        return open(cameraid, callType);
    }

    public static int cameraRelease(int callType) {
        return release(callType);
    }

    public static int setNearEndSurface(SurfaceView localView) {
        return setLocalView(localView.getHolder().getSurface());
    }

    public static int setNearEndSurface(Surface localSurface) {
        return setLocalView(localSurface);
    }

    public static int setPreviewDisplayOrientation(int orientation) {
        return 0;
    }

    public static int startCameraPreview() {
        return startPreview();
    }

    public static int stopCameraPreview() {
        return stopPreview();
    }

    public static int switchCameras() {
        return switchCamera();
    }

    public static int setCameraParameter(int paramKey, Object paramValue) {
        switch (paramKey) {
            case 0:
            case 1:
                if (!Integer.class.isInstance(paramValue)) {
                    return 1;
                }
                Integer iValue = (Integer) paramValue;
                String sValue = iValue.toString();
                return setParameter(paramKey, sValue);
            default:
                Log.d("VTPROXY", "###############setCameraParameter invalid key. ");
                return 1;
        }
    }

    public static String getCameraParameter(String paramKey) {
        return null;
    }
}
