package com.huawei.vtproxy;

import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceView;
import java.io.File;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;

/* loaded from: ImsCameraClient.class */
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

    /* loaded from: ImsCameraClient$ChrVtCallBack.class */
    public interface ChrVtCallBack {
        void chrVtCbGetErrReport(int[] iArr, String[] strArr);
    }

    public static int cameraOpen(int i, int i2) {
        File file = new File(hmeLogPath);
        boolean z = SystemProperties.getBoolean("persist.sys.huawei.debug.on", false);
        Log.d("VTPROXY", "initImsThinClient isWriteLog: " + z);
        if (z) {
            ImsThinClient.setHmeLog(z);
        } else {
            ImsThinClient.setHmeLog(z);
            ImsThinClient.deleteHmeLogPath(file);
        }
        return open(i, i2);
    }

    public static int cameraRelease(int i) {
        return release(i);
    }

    public static String getCameraParameter(String str) {
        return null;
    }

    private static native int getChrVtCameraErr();

    private static native int getChrVtIpAddrErr();

    private static native int getChrVtSocketErr();

    private static native int open(int i, int i2);

    private static native int release(int i);

    public static int setCameraParameter(int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
                if (Integer.class.isInstance(obj)) {
                    return setParameter(i, ((Integer) obj).toString());
                }
                return 1;
            default:
                Log.d("VTPROXY", "###############setCameraParameter invalid key. ");
                return 1;
        }
    }

    public static void setChrVtCallBack(ChrVtCallBack chrVtCallBack2) {
        Log.d("VTPROXY", "setChrVtCallBack in func");
        chrVtCallBack = chrVtCallBack2;
    }

    private static native int setLocalView(Object obj);

    public static int setNearEndSurface(Surface surface) {
        return setLocalView(surface);
    }

    public static int setNearEndSurface(SurfaceView surfaceView) {
        return setLocalView(surfaceView.getHolder().getSurface());
    }

    private static native int setParameter(int i, String str);

    public static int setPreviewDisplayOrientation(int i) {
        return 0;
    }

    public static int startCameraPreview() {
        return startPreview();
    }

    public static void startChrVtErrReport(int i) {
        Log.d("VTPROXY", "startChrVtErrReport in func");
        int chrVtSocketErr = getChrVtSocketErr();
        int chrVtIpAddrErr = getChrVtIpAddrErr();
        int chrVtCameraErr = getChrVtCameraErr();
        int[] iArr = {0, 0, 0, 0, 0};
        Log.d("VTPROXY", "startChrVtErrReport ConditionId : " + i + ", socketErrReason : " + chrVtSocketErr + ", ipAddrErrReason : " + chrVtIpAddrErr + ", cameraErrReason : " + chrVtCameraErr);
        iArr[0] = i;
        iArr[1] = chrVtSocketErr / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE;
        iArr[2] = chrVtSocketErr % LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE;
        iArr[3] = chrVtIpAddrErr;
        iArr[4] = chrVtCameraErr;
        if (chrVtCallBack != null) {
            Log.d("VTPROXY", "startChrVtErrReport run call back func");
            chrVtCallBack.chrVtCbGetErrReport(iArr, null);
        }
    }

    private static native int startPreview();

    public static int stopCameraPreview() {
        return stopPreview();
    }

    private static native int stopPreview();

    private static native int switchCamera();

    public static int switchCameras() {
        return switchCamera();
    }
}
