package com.huawei.videoengine;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import com.huawei.videoengine.VideoCaptureDeviceInfoAndroid;
import java.util.ArrayList;
import java.util.List;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class Camera2Characteristic {
    private static final String TAG = "hme_engine_java";
    List<VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice> deviceList = null;
    private Context mContext;
    private CameraManager mManager;

    public Camera2Characteristic(Context context) {
        this.mContext = null;
        this.mManager = null;
        this.mContext = context;
        this.mManager = (CameraManager) this.mContext.getSystemService("camera");
        init();
    }

    public String getDeviceUniqueName(Context context, int i) {
        String str;
        String str2 = "Camera " + i + ", ";
        try {
            CameraCharacteristics cameraCharacteristics = this.mManager.getCameraCharacteristics(this.mManager.getCameraIdList()[i]);
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num == null) {
                Log.e(TAG, "i is null");
                return null;
            }
            if (num.intValue() == 0) {
                str = str2 + "Facing front, ";
            } else if (num.intValue() == 1) {
                str = str2 + "Facing back, ";
            } else {
                str = str2 + "Facing external, ";
            }
            Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (num2 == null) {
                Log.e(TAG, "ori is null");
                return null;
            }
            return str + "Orientation " + num2.toString();
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    private int init() {
        this.deviceList = new ArrayList();
        try {
            String[] cameraIdList = this.mManager.getCameraIdList();
            int length = cameraIdList.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice = new VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice();
                try {
                    CameraCharacteristics cameraCharacteristics = this.mManager.getCameraCharacteristics(cameraIdList[i2]);
                    Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
                    Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
                    if (num.intValue() == 0) {
                        androidVideoCaptureDevice.deviceUniqueName = "Camera " + i2 + ", Facing front, Orientation " + num2;
                    } else if (num.intValue() == 1) {
                        androidVideoCaptureDevice.deviceUniqueName = "Camera " + i2 + ", Facing back, Orientation " + num2;
                    } else {
                        androidVideoCaptureDevice.deviceUniqueName += "Facing external, ";
                    }
                    androidVideoCaptureDevice.orientation = num2.intValue();
                    this.deviceList.add(androidVideoCaptureDevice);
                    i++;
                    Log.d(TAG, " " + androidVideoCaptureDevice.deviceUniqueName);
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                }
            }
            if (i != 0) {
                return 0;
            }
            Log.e(TAG, "no valid Camera!");
            this.deviceList = null;
            return 0;
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static boolean isFaceFront(CameraManager cameraManager, String str) {
        boolean z = false;
        try {
            Integer num = (Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
            if (num != null) {
                if (num.intValue() == 0) {
                    z = true;
                }
            } else {
                Log.e(TAG, "i is null");
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        return z;
    }

    public CaptureCapabilityAndroid[] getCapabilityArray(String str) {
        CaptureCapabilityAndroid[] captureCapabilityAndroidArr = new CaptureCapabilityAndroid[0];
        if (this.deviceList == null) {
            init();
            if (this.deviceList == null) {
                return captureCapabilityAndroidArr;
            }
        }
        for (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice : this.deviceList) {
            if (androidVideoCaptureDevice.deviceUniqueName.equals(str)) {
                addDeviceInfo(androidVideoCaptureDevice, androidVideoCaptureDevice.index);
                return androidVideoCaptureDevice.captureCapabilies;
            }
        }
        return captureCapabilityAndroidArr;
    }

    public int addDeviceInfo(VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice, int i) {
        CameraCharacteristics cameraCharacteristics;
        try {
            cameraCharacteristics = this.mManager.getCameraCharacteristics(this.mManager.getCameraIdList()[i]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            cameraCharacteristics = null;
        }
        if (cameraCharacteristics == null) {
            Log.e(TAG, "not support this resolution");
            return -1;
        }
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            Log.e(TAG, "map is null");
            return -1;
        }
        Size[] outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
        int i2 = 0;
        for (Range range : (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)) {
            if (((Integer) range.getUpper()).intValue() > i2) {
                i2 = ((Integer) range.getUpper()).intValue();
            }
        }
        androidVideoCaptureDevice.captureCapabilies = new CaptureCapabilityAndroid[outputSizes.length];
        int i3 = 0;
        for (Size size : outputSizes) {
            androidVideoCaptureDevice.captureCapabilies[i3] = new CaptureCapabilityAndroid();
            androidVideoCaptureDevice.captureCapabilies[i3].height = size.getHeight();
            androidVideoCaptureDevice.captureCapabilies[i3].width = size.getWidth();
            androidVideoCaptureDevice.captureCapabilies[i3].maxFPS = i2;
            androidVideoCaptureDevice.captureCapabilies[i3].VRawType = -1;
            i3++;
        }
        return 0;
    }

    public int numberOfDevices() {
        if (this.deviceList == null) {
            Log.e(TAG, "NumberOfDevices  is not initDeviceList");
            init();
            if (this.deviceList == null) {
                return 0;
            }
        }
        return this.deviceList.size();
    }

    public String getDeviceUniqueName(int i) {
        if (this.deviceList == null) {
            Log.e(TAG, "GetDeviceUniqueName  is not initinitDeviceList");
            init();
            if (this.deviceList == null) {
                return null;
            }
        }
        if (i < 0 || i >= this.deviceList.size()) {
            return null;
        }
        return this.deviceList.get(i).deviceUniqueName;
    }

    public int getOrientation(String str) {
        if (this.deviceList == null) {
            Log.e(TAG, "getOrientation  is not initinitDeviceList");
            init();
        }
        for (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice : this.deviceList) {
            if (androidVideoCaptureDevice.deviceUniqueName.equals(str)) {
                Log.d("rotation", "java_GetOrientation device.orientation: " + androidVideoCaptureDevice.orientation);
                return androidVideoCaptureDevice.orientation;
            }
        }
        return -1;
    }
}
