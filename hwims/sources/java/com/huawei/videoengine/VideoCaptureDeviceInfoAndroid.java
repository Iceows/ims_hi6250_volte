package com.huawei.videoengine;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;
import vendor.huawei.hardware.radio.ims.V1_0.RilConstS32;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class VideoCaptureDeviceInfoAndroid {
    private static boolean DEBUG = false;
    private static final String TAG = "hme-video";
    private static boolean VERBOSE;
    private boolean cameraOpen = false;
    Context context;
    List<AndroidVideoCaptureDevice> deviceList;
    int id;
    private static final String model = Build.MODEL;
    private static int LOGLEVEL = 0;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class AndroidVideoCaptureDevice {
        public CaptureCapabilityAndroid[] captureCapabilies;
        public String deviceUniqueName;
        public FrontFacingCameraType frontCameraType = FrontFacingCameraType.None;
        public int index = 0;
        public int orientation;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public enum FrontFacingCameraType {
        None,
        GalaxyS,
        HTCEvo,
        Android23
    }

    static {
        VERBOSE = LOGLEVEL > 2;
        DEBUG = LOGLEVEL > 1;
    }

    public static VideoCaptureDeviceInfoAndroid createVideoCaptureDeviceInfoAndroid(int i, Context context) {
        if (DEBUG) {
            Log.d(TAG, String.format(Locale.US, "VideoCaptureDeviceInfoAndroid", new Object[0]));
        }
        VideoCaptureDeviceInfoAndroid videoCaptureDeviceInfoAndroid = new VideoCaptureDeviceInfoAndroid(i, context);
        if (videoCaptureDeviceInfoAndroid.init() == 0) {
            Log.d(TAG, "Success to create VideoCaptureDeviceInfoAndroid.");
            return videoCaptureDeviceInfoAndroid;
        }
        Log.d(TAG, "Failed to create VideoCaptureDeviceInfoAndroid.");
        return null;
    }

    private VideoCaptureDeviceInfoAndroid(int i, Context context) {
        this.id = i;
        this.context = context;
        Log.d(TAG, "id" + this.id + ", context" + this.context);
        this.deviceList = new ArrayList();
    }

    public int reInit() {
        Log.d(TAG, "reInit!!model is " + model);
        if (model.equals("M310")) {
            Log.d(TAG, "M310(singlebox) reInit!!");
            Log.d(TAG, "M310(singlebox) support hot plug!!");
            this.deviceList = new ArrayList();
            return init();
        }
        Log.d(TAG, model + " no need to refresh camera number!");
        return 0;
    }

    private int init() {
        int i;
        this.deviceList = new ArrayList();
        if (Build.VERSION.SDK_INT > 8) {
            i = 0;
            for (int i2 = 0; i2 < Camera.getNumberOfCameras(); i2++) {
                try {
                    AndroidVideoCaptureDevice androidVideoCaptureDevice = new AndroidVideoCaptureDevice();
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    Camera.getCameraInfo(i2, cameraInfo);
                    androidVideoCaptureDevice.index = i2;
                    if (cameraInfo.facing == 0) {
                        androidVideoCaptureDevice.deviceUniqueName = "Camera " + i2 + ", Facing back, Orientation " + cameraInfo.orientation;
                        StringBuilder sb = new StringBuilder();
                        sb.append("back Camera, orientation: ");
                        sb.append(cameraInfo.orientation);
                        Log.d(TAG, sb.toString());
                    } else {
                        androidVideoCaptureDevice.deviceUniqueName = "Camera " + i2 + ", Facing front, Orientation " + cameraInfo.orientation;
                        androidVideoCaptureDevice.frontCameraType = FrontFacingCameraType.Android23;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("front Camera, orientation: ");
                        sb2.append(cameraInfo.orientation);
                        Log.d(TAG, sb2.toString());
                    }
                    androidVideoCaptureDevice.orientation = cameraInfo.orientation;
                    this.deviceList.add(androidVideoCaptureDevice);
                    i++;
                    if (model.equals("LG-P920") && 2 == i) {
                        Log.e(TAG, "Not use the camera 2 of LG-P920");
                        break;
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Failed to init VideoCaptureDeviceInfo ex::" + e.getLocalizedMessage());
                }
            }
        } else {
            i = 0;
        }
        if (i != 0) {
            return 0;
        }
        Log.e(TAG, "no valid Camera!");
        return 0;
    }

    private void addDeviceInfo(AndroidVideoCaptureDevice androidVideoCaptureDevice, Camera.Parameters parameters) {
        boolean z;
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Integer> supportedPreviewFrameRates = parameters.getSupportedPreviewFrameRates();
        if (supportedPreviewFrameRates == null || supportedPreviewSizes == null) {
            Log.e(TAG, "framerate or sizes is null");
            return;
        }
        List<Integer> supportedPreviewFormats = parameters.getSupportedPreviewFormats();
        int size = supportedPreviewFormats.size();
        int size2 = supportedPreviewSizes.size();
        Log.d(TAG, "addDeviceInfo: suport format num:" + size + "  iMaxSizePerFormat:" + size2);
        int i = 0;
        int i2 = 0;
        for (Integer num : supportedPreviewFrameRates) {
            if (VERBOSE) {
                Log.d(TAG, "VideoCaptureDeviceInfoAndroid:frameRate " + num);
            }
            if (num.intValue() > i2) {
                i2 = num.intValue();
            }
        }
        if (size > 0) {
            Log.d(TAG, "addDeviceInfo!!model is " + model);
            int i3 = size * size2;
            int i4 = 1;
            if (model.equals("M310")) {
                Log.d(TAG, "M310(singlebox) addDeviceInfo capabilityNumber: " + i3);
                z = true;
            } else {
                Log.d(TAG, model + " addDeviceInfo capabilityNumber: " + i3);
                z = false;
            }
            androidVideoCaptureDevice.captureCapabilies = new CaptureCapabilityAndroid[i3];
            for (Integer num2 : supportedPreviewFormats) {
                Log.d(TAG, "Add capture Device Info! suport format:" + num2);
                int i5 = size2 * i;
                i += i4;
                int i6 = size2 * i;
                int i7 = i5;
                while (i7 < i6) {
                    int i8 = i7 - i5;
                    Camera.Size size3 = supportedPreviewSizes.get(i8);
                    StringBuilder sb = new StringBuilder();
                    sb.append("cur size(");
                    sb.append(i8);
                    sb.append("):");
                    sb.append(size3.width);
                    sb.append("x");
                    sb.append(size3.height);
                    Log.d(TAG, sb.toString());
                    androidVideoCaptureDevice.captureCapabilies[i7] = new CaptureCapabilityAndroid();
                    androidVideoCaptureDevice.captureCapabilies[i7].height = size3.height;
                    androidVideoCaptureDevice.captureCapabilies[i7].width = size3.width;
                    androidVideoCaptureDevice.captureCapabilies[i7].maxFPS = i2;
                    androidVideoCaptureDevice.captureCapabilies[i7].VRawType = num2.intValue();
                    i7++;
                    supportedPreviewSizes = supportedPreviewSizes;
                }
                i4 = 1;
            }
            Log.d(TAG, model + " needToQueryDoubleStream: " + z);
            if (z) {
                int i9 = parameters.getInt("supported_stream");
                if (1 == i9) {
                    int i10 = i3 - 1;
                    androidVideoCaptureDevice.captureCapabilies[i10].height = RilConstS32.RIL_REQUEST_HW_GET_CURRENT_CALLS_V1_2;
                    androidVideoCaptureDevice.captureCapabilies[i10].width = 1280;
                    androidVideoCaptureDevice.captureCapabilies[i10].maxFPS = 30;
                    androidVideoCaptureDevice.captureCapabilies[i10].VRawType = 98;
                } else {
                    Log.d(TAG, "M310 not support double stream, do nothing!!");
                }
                Log.d(TAG, "supportDoubelStream: " + i9 + " VRawType: " + androidVideoCaptureDevice.captureCapabilies[i3 - 1].VRawType);
            }
        }
    }

    private void verifyCapabilities(AndroidVideoCaptureDevice androidVideoCaptureDevice) {
        if ((Build.DEVICE.equals("GT-I9000") && Build.VERSION.SDK_INT < 14) || Build.DEVICE.equals("crespo")) {
            CaptureCapabilityAndroid captureCapabilityAndroid = new CaptureCapabilityAndroid();
            captureCapabilityAndroid.width = 352;
            captureCapabilityAndroid.height = 288;
            captureCapabilityAndroid.maxFPS = 15;
            addDeviceSpecificCapability(androidVideoCaptureDevice, captureCapabilityAndroid);
            CaptureCapabilityAndroid captureCapabilityAndroid2 = new CaptureCapabilityAndroid();
            captureCapabilityAndroid2.width = 176;
            captureCapabilityAndroid2.height = 144;
            captureCapabilityAndroid2.maxFPS = 15;
            addDeviceSpecificCapability(androidVideoCaptureDevice, captureCapabilityAndroid2);
            CaptureCapabilityAndroid captureCapabilityAndroid3 = new CaptureCapabilityAndroid();
            captureCapabilityAndroid3.width = 320;
            captureCapabilityAndroid3.height = LastCallFailCause.CALL_BARRED;
            captureCapabilityAndroid3.maxFPS = 15;
            addDeviceSpecificCapability(androidVideoCaptureDevice, captureCapabilityAndroid3);
        }
        if (Build.MANUFACTURER.equals("motorola") && Build.DEVICE.equals("umts_sholes")) {
            for (CaptureCapabilityAndroid captureCapabilityAndroid4 : androidVideoCaptureDevice.captureCapabilies) {
                captureCapabilityAndroid4.maxFPS = 15;
            }
        }
    }

    private void addDeviceSpecificCapability(AndroidVideoCaptureDevice androidVideoCaptureDevice, CaptureCapabilityAndroid captureCapabilityAndroid) {
        boolean z;
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr = androidVideoCaptureDevice.captureCapabilies;
        int length = captureCapabilityAndroidArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                CaptureCapabilityAndroid captureCapabilityAndroid2 = captureCapabilityAndroidArr[i];
                if (captureCapabilityAndroid2.width != captureCapabilityAndroid.width || captureCapabilityAndroid2.height != captureCapabilityAndroid.height) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            CaptureCapabilityAndroid[] captureCapabilityAndroidArr2 = new CaptureCapabilityAndroid[androidVideoCaptureDevice.captureCapabilies.length + 1];
            int i2 = 0;
            while (i2 < androidVideoCaptureDevice.captureCapabilies.length) {
                int i3 = i2 + 1;
                captureCapabilityAndroidArr2[i3] = androidVideoCaptureDevice.captureCapabilies[i2];
                i2 = i3;
            }
            captureCapabilityAndroidArr2[0] = captureCapabilityAndroid;
            androidVideoCaptureDevice.captureCapabilies = captureCapabilityAndroidArr2;
        }
    }

    public int numberOfDevices() {
        if (!this.cameraOpen) {
            Log.e(TAG, "NumberOfDevices camera is not Open");
            init();
        }
        return this.deviceList.size();
    }

    public String getDeviceUniqueName(int i) {
        if (!this.cameraOpen) {
            Log.e(TAG, "GetDeviceUniqueName camera is not Open");
            init();
        }
        if (i < 0 || i >= this.deviceList.size()) {
            return null;
        }
        return this.deviceList.get(i).deviceUniqueName;
    }

    public CaptureCapabilityAndroid[] getCapabilityArray(String str) {
        int i = 0;
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr = new CaptureCapabilityAndroid[0];
        try {
            Log.d(TAG, "GetCapabilityArray " + str);
            if (!this.cameraOpen) {
                Log.e(TAG, "GetCapabilityArray camera is not Open");
                init();
            }
            for (AndroidVideoCaptureDevice androidVideoCaptureDevice : this.deviceList) {
                if (androidVideoCaptureDevice.deviceUniqueName.equals(str)) {
                    if (androidVideoCaptureDevice.captureCapabilies == null) {
                        if (Build.VERSION.SDK_INT > 8) {
                            CameraThread cameraThread = new CameraThread(androidVideoCaptureDevice.index);
                            cameraThread.start();
                            while (cameraThread.camera == null) {
                                Thread.sleep(20L);
                                i++;
                                if (i > 100) {
                                    cameraThread.stop();
                                    Log.d(TAG, "GetCapabilityArray Failed for open camera overtime!");
                                    return captureCapabilityAndroidArr;
                                }
                            }
                            Camera camera = cameraThread.camera;
                            addDeviceInfo(androidVideoCaptureDevice, camera.getParameters());
                            camera.release();
                        } else {
                            Log.d(TAG, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null" + str);
                        }
                    }
                    return androidVideoCaptureDevice.captureCapabilies;
                }
            }
            return captureCapabilityAndroidArr;
        } catch (Exception e) {
            Log.e(TAG, "GetCapabilityArray Failed to open camera- ex " + e.getLocalizedMessage());
            return captureCapabilityAndroidArr;
        }
    }

    public int getOrientation(String str) {
        for (AndroidVideoCaptureDevice androidVideoCaptureDevice : this.deviceList) {
            if (androidVideoCaptureDevice.deviceUniqueName.equals(str)) {
                Log.d("rotation", "java_GetOrientation device.orientation: " + androidVideoCaptureDevice.orientation);
                return androidVideoCaptureDevice.orientation;
            }
        }
        return -1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0043. Please report as an issue. */
    public VideoCaptureAndroid allocateCamera(int i, long j, String str) {
        Camera allocateHTCFrontCamera;
        try {
            Log.d(TAG, "AllocateCamera " + str);
            Camera camera = null;
            AndroidVideoCaptureDevice androidVideoCaptureDevice = null;
            for (AndroidVideoCaptureDevice androidVideoCaptureDevice2 : this.deviceList) {
                if (androidVideoCaptureDevice2.deviceUniqueName.equals(str)) {
                    switch (androidVideoCaptureDevice2.frontCameraType) {
                        case GalaxyS:
                            if (camera != null) {
                                camera.release();
                            }
                            allocateHTCFrontCamera = Camera.open();
                            if (allocateHTCFrontCamera != null) {
                                Camera.Parameters parameters = allocateHTCFrontCamera.getParameters();
                                parameters.set("camera-id", 2);
                                allocateHTCFrontCamera.setParameters(parameters);
                                if (Build.VERSION.SDK_INT > 8) {
                                    addDeviceInfo(androidVideoCaptureDevice2, parameters);
                                }
                                try {
                                    verifyCapabilities(androidVideoCaptureDevice2);
                                } catch (Exception e) {
                                    Log.e(TAG, "Failed to verifyCapabilities ex::" + e.getLocalizedMessage());
                                    allocateHTCFrontCamera.release();
                                    return null;
                                }
                            }
                            androidVideoCaptureDevice = androidVideoCaptureDevice2;
                            camera = allocateHTCFrontCamera;
                            break;
                        case HTCEvo:
                            try {
                                allocateHTCFrontCamera = allocateHTCFrontCamera();
                                androidVideoCaptureDevice = androidVideoCaptureDevice2;
                                camera = allocateHTCFrontCamera;
                                break;
                            } catch (Exception e2) {
                                Log.e(TAG, "Failed to verifyCapabilities ex::" + e2.getLocalizedMessage());
                                camera.release();
                                return null;
                            }
                        default:
                            if (Build.VERSION.SDK_INT > 8) {
                                CameraThread cameraThread = new CameraThread(androidVideoCaptureDevice2.index);
                                cameraThread.start();
                                int i2 = 0;
                                while (cameraThread.camera == null) {
                                    try {
                                        Thread.sleep(20L);
                                        i2++;
                                        if (i2 > 200) {
                                            Log.d(TAG, "AllocateCamera Failed for open camera overtime!");
                                            cameraThread.stop();
                                            if (camera != null) {
                                                camera.release();
                                            }
                                            return null;
                                        }
                                    } catch (Exception e3) {
                                        Log.e(TAG, "Failed to verifyCapabilities ex::" + e3.getLocalizedMessage());
                                        if (camera != null) {
                                            camera.release();
                                        }
                                        return null;
                                    }
                                }
                                allocateHTCFrontCamera = cameraThread.camera;
                                addDeviceInfo(androidVideoCaptureDevice2, allocateHTCFrontCamera.getParameters());
                                try {
                                    verifyCapabilities(androidVideoCaptureDevice2);
                                } catch (Exception e4) {
                                    Log.e(TAG, "Failed to VerifyCapabilities ex::" + e4.getLocalizedMessage());
                                    allocateHTCFrontCamera.release();
                                    return null;
                                }
                            } else {
                                allocateHTCFrontCamera = Camera.open();
                            }
                            androidVideoCaptureDevice = androidVideoCaptureDevice2;
                            camera = allocateHTCFrontCamera;
                            break;
                    }
                }
            }
            if (camera == null) {
                return null;
            }
            if (VERBOSE) {
                Log.v(TAG, "AllocateCamera - creating VideoCaptureAndroid");
            }
            this.cameraOpen = true;
            return new VideoCaptureAndroid(i, j, camera, androidVideoCaptureDevice);
        } catch (RuntimeException e5) {
            Log.e(TAG, "AllocateCamera Failed to open camera- ex " + e5.getLocalizedMessage());
            return null;
        }
    }

    private Camera allocateHTCFrontCamera() throws SecurityException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Log.e(TAG, "AllocateHTCFrontCamera");
        return null;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    static class CameraThread extends Thread {
        public Camera camera = null;
        int index;

        public CameraThread(int i) {
            this.index = 0;
            this.index = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.camera = Camera.open(this.index);
            } catch (Exception e) {
                Log.e(VideoCaptureDeviceInfoAndroid.TAG, "Failed to open camera" + e.getLocalizedMessage());
            }
        }
    }
}
