package com.huawei.videoengine;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;
import vendor.huawei.hardware.radio.ims.V1_0.RilConstS32;

/* loaded from: VideoCaptureDeviceInfoAndroid.class */
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

    /* renamed from: com.huawei.videoengine.VideoCaptureDeviceInfoAndroid$1  reason: invalid class name */
    /* loaded from: VideoCaptureDeviceInfoAndroid$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType = new int[FrontFacingCameraType.values().length];

        static {
            try {
                $SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType[FrontFacingCameraType.GalaxyS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType[FrontFacingCameraType.HTCEvo.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice.class */
    public static class AndroidVideoCaptureDevice {
        public CaptureCapabilityAndroid[] captureCapabilies;
        public String deviceUniqueName;
        public FrontFacingCameraType frontCameraType = FrontFacingCameraType.None;
        public int index = 0;
        public int orientation;
    }

    /* loaded from: VideoCaptureDeviceInfoAndroid$CameraThread.class */
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

    /* loaded from: VideoCaptureDeviceInfoAndroid$FrontFacingCameraType.class */
    public enum FrontFacingCameraType {
        None,
        GalaxyS,
        HTCEvo,
        Android23
    }

    static {
        VERBOSE = LOGLEVEL > 2;
        boolean z = false;
        if (LOGLEVEL > 1) {
            z = true;
        }
        DEBUG = z;
    }

    private VideoCaptureDeviceInfoAndroid(int i, Context context) {
        this.id = i;
        this.context = context;
        Log.d(TAG, "id" + this.id + ", context" + this.context);
        this.deviceList = new ArrayList();
    }

    private void addDeviceInfo(AndroidVideoCaptureDevice androidVideoCaptureDevice, Camera.Parameters parameters) {
        int i;
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
        Iterator<Integer> it = supportedPreviewFrameRates.iterator();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            Integer next = it.next();
            if (VERBOSE) {
                Log.d(TAG, "VideoCaptureDeviceInfoAndroid:frameRate " + next);
            }
            int i3 = i;
            if (next.intValue() > i) {
                i3 = next.intValue();
            }
            i2 = i3;
        }
        if (size > 0) {
            Log.d(TAG, "addDeviceInfo!!model is " + model);
            int i4 = size * size2;
            if (model.equals("M310")) {
                Log.d(TAG, "M310(singlebox) addDeviceInfo capabilityNumber: " + i4);
                z = true;
            } else {
                Log.d(TAG, model + " addDeviceInfo capabilityNumber: " + i4);
                z = false;
            }
            androidVideoCaptureDevice.captureCapabilies = new CaptureCapabilityAndroid[i4];
            Iterator<Integer> it2 = supportedPreviewFormats.iterator();
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (!it2.hasNext()) {
                    break;
                }
                Integer next2 = it2.next();
                Log.d(TAG, "Add capture Device Info! suport format:" + next2);
                int i7 = size2 * i6;
                int i8 = i6 + 1;
                for (int i9 = i7; i9 < size2 * i8; i9++) {
                    int i10 = i9 - i7;
                    Camera.Size size3 = supportedPreviewSizes.get(i10);
                    Log.d(TAG, "cur size(" + i10 + "):" + size3.width + "x" + size3.height);
                    androidVideoCaptureDevice.captureCapabilies[i9] = new CaptureCapabilityAndroid();
                    androidVideoCaptureDevice.captureCapabilies[i9].height = size3.height;
                    androidVideoCaptureDevice.captureCapabilies[i9].width = size3.width;
                    androidVideoCaptureDevice.captureCapabilies[i9].maxFPS = i;
                    androidVideoCaptureDevice.captureCapabilies[i9].VRawType = next2.intValue();
                }
                i5 = i8;
            }
            Log.d(TAG, model + " needToQueryDoubleStream: " + z);
            if (z) {
                int i11 = parameters.getInt("supported_stream");
                if (1 == i11) {
                    int i12 = i4 - 1;
                    androidVideoCaptureDevice.captureCapabilies[i12].height = RilConstS32.RIL_REQUEST_HW_GET_CURRENT_CALLS_V1_2;
                    androidVideoCaptureDevice.captureCapabilies[i12].width = 1280;
                    androidVideoCaptureDevice.captureCapabilies[i12].maxFPS = 30;
                    androidVideoCaptureDevice.captureCapabilies[i12].VRawType = 98;
                } else {
                    Log.d(TAG, "M310 not support double stream, do nothing!!");
                }
                Log.d(TAG, "supportDoubelStream: " + i11 + " VRawType: " + androidVideoCaptureDevice.captureCapabilies[i4 - 1].VRawType);
            }
        }
    }

    private void addDeviceSpecificCapability(AndroidVideoCaptureDevice androidVideoCaptureDevice, CaptureCapabilityAndroid captureCapabilityAndroid) {
        boolean z;
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr = androidVideoCaptureDevice.captureCapabilies;
        int length = captureCapabilityAndroidArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            CaptureCapabilityAndroid captureCapabilityAndroid2 = captureCapabilityAndroidArr[i];
            if (captureCapabilityAndroid2.width == captureCapabilityAndroid.width && captureCapabilityAndroid2.height == captureCapabilityAndroid.height) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            return;
        }
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr2 = new CaptureCapabilityAndroid[androidVideoCaptureDevice.captureCapabilies.length + 1];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= androidVideoCaptureDevice.captureCapabilies.length) {
                captureCapabilityAndroidArr2[0] = captureCapabilityAndroid;
                androidVideoCaptureDevice.captureCapabilies = captureCapabilityAndroidArr2;
                return;
            }
            int i4 = i3 + 1;
            captureCapabilityAndroidArr2[i4] = androidVideoCaptureDevice.captureCapabilies[i3];
            i2 = i4;
        }
    }

    private Camera allocateHTCFrontCamera() throws SecurityException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Log.e(TAG, "AllocateHTCFrontCamera");
        return null;
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

    private int init() {
        int i;
        this.deviceList = new ArrayList();
        if (Build.VERSION.SDK_INT > 8) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= Camera.getNumberOfCameras()) {
                    break;
                }
                int i4 = i3;
                try {
                    int i5 = i3;
                    AndroidVideoCaptureDevice androidVideoCaptureDevice = new AndroidVideoCaptureDevice();
                    int i6 = i3;
                    int i7 = i3;
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    int i8 = i3;
                    Camera.getCameraInfo(i2, cameraInfo);
                    int i9 = i3;
                    androidVideoCaptureDevice.index = i2;
                    int i10 = i3;
                    if (cameraInfo.facing == 0) {
                        int i11 = i3;
                        int i12 = i3;
                        StringBuilder sb = new StringBuilder();
                        int i13 = i3;
                        sb.append("Camera ");
                        int i14 = i3;
                        sb.append(i2);
                        int i15 = i3;
                        sb.append(", Facing back, Orientation ");
                        int i16 = i3;
                        sb.append(cameraInfo.orientation);
                        int i17 = i3;
                        androidVideoCaptureDevice.deviceUniqueName = sb.toString();
                        int i18 = i3;
                        int i19 = i3;
                        StringBuilder sb2 = new StringBuilder();
                        int i20 = i3;
                        sb2.append("back Camera, orientation: ");
                        int i21 = i3;
                        sb2.append(cameraInfo.orientation);
                        int i22 = i3;
                        Log.d(TAG, sb2.toString());
                    } else {
                        int i23 = i3;
                        StringBuilder sb3 = new StringBuilder();
                        int i24 = i3;
                        sb3.append("Camera ");
                        int i25 = i3;
                        sb3.append(i2);
                        int i26 = i3;
                        sb3.append(", Facing front, Orientation ");
                        int i27 = i3;
                        sb3.append(cameraInfo.orientation);
                        int i28 = i3;
                        androidVideoCaptureDevice.deviceUniqueName = sb3.toString();
                        int i29 = i3;
                        androidVideoCaptureDevice.frontCameraType = FrontFacingCameraType.Android23;
                        int i30 = i3;
                        int i31 = i3;
                        StringBuilder sb4 = new StringBuilder();
                        int i32 = i3;
                        sb4.append("front Camera, orientation: ");
                        int i33 = i3;
                        sb4.append(cameraInfo.orientation);
                        int i34 = i3;
                        Log.d(TAG, sb4.toString());
                    }
                    int i35 = i3;
                    androidVideoCaptureDevice.orientation = cameraInfo.orientation;
                    int i36 = i3;
                    this.deviceList.add(androidVideoCaptureDevice);
                    i3++;
                    if (model.equals("LG-P920") && 2 == i3) {
                        i4 = i3;
                        Log.e(TAG, "Not use the camera 2 of LG-P920");
                        i = i3;
                        break;
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Failed to init VideoCaptureDeviceInfo ex::" + e.getLocalizedMessage());
                    i3 = i4;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i == 0) {
            Log.e(TAG, "no valid Camera!");
            return 0;
        }
        return 0;
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

    public VideoCaptureAndroid allocateCamera(int i, long j, String str) {
        Camera allocateHTCFrontCamera;
        try {
            Log.d(TAG, "AllocateCamera " + str);
            Camera camera = null;
            AndroidVideoCaptureDevice androidVideoCaptureDevice = null;
            for (AndroidVideoCaptureDevice androidVideoCaptureDevice2 : this.deviceList) {
                Camera camera2 = camera;
                if (androidVideoCaptureDevice2.deviceUniqueName.equals(str)) {
                    switch (AnonymousClass1.$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType[androidVideoCaptureDevice2.frontCameraType.ordinal()]) {
                        case 1:
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
                                    break;
                                } catch (Exception e) {
                                    Log.e(TAG, "Failed to verifyCapabilities ex::" + e.getLocalizedMessage());
                                    allocateHTCFrontCamera.release();
                                    return null;
                                }
                            }
                            break;
                        case 2:
                            try {
                                allocateHTCFrontCamera = allocateHTCFrontCamera();
                                break;
                            } catch (Exception e2) {
                                Log.e(TAG, "Failed to verifyCapabilities ex::" + e2.getLocalizedMessage());
                                camera.release();
                                return null;
                            }
                        default:
                            if (Build.VERSION.SDK_INT <= 8) {
                                allocateHTCFrontCamera = Camera.open();
                                break;
                            } else {
                                CameraThread cameraThread = new CameraThread(androidVideoCaptureDevice2.index);
                                cameraThread.start();
                                int i2 = 0;
                                while (cameraThread.camera == null) {
                                    try {
                                        Thread.sleep(20L);
                                        int i3 = i2 + 1;
                                        i2 = i3;
                                        if (i3 > 200) {
                                            Log.d(TAG, "AllocateCamera Failed for open camera overtime!");
                                            cameraThread.stop();
                                            if (camera != null) {
                                                camera.release();
                                                return null;
                                            }
                                            return null;
                                        }
                                    } catch (Exception e3) {
                                        Log.e(TAG, "Failed to verifyCapabilities ex::" + e3.getLocalizedMessage());
                                        if (camera != null) {
                                            camera.release();
                                            return null;
                                        }
                                        return null;
                                    }
                                }
                                allocateHTCFrontCamera = cameraThread.camera;
                                addDeviceInfo(androidVideoCaptureDevice2, allocateHTCFrontCamera.getParameters());
                                try {
                                    verifyCapabilities(androidVideoCaptureDevice2);
                                    break;
                                } catch (Exception e4) {
                                    Log.e(TAG, "Failed to VerifyCapabilities ex::" + e4.getLocalizedMessage());
                                    allocateHTCFrontCamera.release();
                                    return null;
                                }
                            }
                    }
                    androidVideoCaptureDevice = androidVideoCaptureDevice2;
                    camera2 = allocateHTCFrontCamera;
                }
                camera = camera2;
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

    public CaptureCapabilityAndroid[] getCapabilityArray(String str) {
        AndroidVideoCaptureDevice next;
        int i;
        int i2 = 0;
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr = new CaptureCapabilityAndroid[0];
        try {
            Log.d(TAG, "GetCapabilityArray " + str);
            if (!this.cameraOpen) {
                Log.e(TAG, "GetCapabilityArray camera is not Open");
                init();
            }
            Iterator<AndroidVideoCaptureDevice> it = this.deviceList.iterator();
            do {
                if (!it.hasNext()) {
                    return captureCapabilityAndroidArr;
                }
                next = it.next();
            } while (!next.deviceUniqueName.equals(str));
            if (next.captureCapabilies == null) {
                if (Build.VERSION.SDK_INT > 8) {
                    CameraThread cameraThread = new CameraThread(next.index);
                    cameraThread.start();
                    do {
                        if (cameraThread.camera == null) {
                            Thread.sleep(20L);
                            i = i2 + 1;
                            i2 = i;
                        } else {
                            Camera camera = cameraThread.camera;
                            addDeviceInfo(next, camera.getParameters());
                            camera.release();
                        }
                    } while (i <= 100);
                    cameraThread.stop();
                    Log.d(TAG, "GetCapabilityArray Failed for open camera overtime!");
                    return captureCapabilityAndroidArr;
                }
                Log.d(TAG, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null" + str);
            }
            return next.captureCapabilies;
        } catch (Exception e) {
            Log.e(TAG, "GetCapabilityArray Failed to open camera- ex " + e.getLocalizedMessage());
            return captureCapabilityAndroidArr;
        }
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

    public int getOrientation(String str) {
        for (AndroidVideoCaptureDevice androidVideoCaptureDevice : this.deviceList) {
            if (androidVideoCaptureDevice.deviceUniqueName.equals(str)) {
                Log.d("rotation", "java_GetOrientation device.orientation: " + androidVideoCaptureDevice.orientation);
                return androidVideoCaptureDevice.orientation;
            }
        }
        return -1;
    }

    public int numberOfDevices() {
        if (!this.cameraOpen) {
            Log.e(TAG, "NumberOfDevices camera is not Open");
            init();
        }
        return this.deviceList.size();
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
}
