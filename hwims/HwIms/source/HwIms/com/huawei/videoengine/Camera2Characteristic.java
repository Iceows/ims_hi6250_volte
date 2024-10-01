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

/* loaded from: Camera2Characteristic.class */
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

    private int init() {
        this.deviceList = new ArrayList();
        try {
            String[] cameraIdList = this.mManager.getCameraIdList();
            int length = cameraIdList.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice = new VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice();
                int i3 = i;
                try {
                    CameraCharacteristics cameraCharacteristics = this.mManager.getCameraCharacteristics(cameraIdList[i2]);
                    int i4 = i;
                    Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
                    int i5 = i;
                    Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
                    int i6 = i;
                    if (num.intValue() == 0) {
                        int i7 = i;
                        int i8 = i;
                        StringBuilder sb = new StringBuilder();
                        int i9 = i;
                        sb.append("Camera ");
                        int i10 = i;
                        sb.append(i2);
                        int i11 = i;
                        sb.append(", Facing front, Orientation ");
                        int i12 = i;
                        sb.append(num2);
                        int i13 = i;
                        androidVideoCaptureDevice.deviceUniqueName = sb.toString();
                    } else if (num.intValue() == 1) {
                        int i14 = i;
                        int i15 = i;
                        StringBuilder sb2 = new StringBuilder();
                        int i16 = i;
                        sb2.append("Camera ");
                        int i17 = i;
                        sb2.append(i2);
                        int i18 = i;
                        sb2.append(", Facing back, Orientation ");
                        int i19 = i;
                        sb2.append(num2);
                        int i20 = i;
                        androidVideoCaptureDevice.deviceUniqueName = sb2.toString();
                    } else {
                        int i21 = i;
                        StringBuilder sb3 = new StringBuilder();
                        int i22 = i;
                        sb3.append(androidVideoCaptureDevice.deviceUniqueName);
                        int i23 = i;
                        sb3.append("Facing external, ");
                        int i24 = i;
                        androidVideoCaptureDevice.deviceUniqueName = sb3.toString();
                    }
                    int i25 = i;
                    androidVideoCaptureDevice.orientation = num2.intValue();
                    int i26 = i;
                    this.deviceList.add(androidVideoCaptureDevice);
                    i++;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(" ");
                    sb4.append(androidVideoCaptureDevice.deviceUniqueName);
                    Log.d(TAG, sb4.toString());
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    i = i3;
                }
            }
            if (i == 0) {
                Log.e(TAG, "no valid Camera!");
                this.deviceList = null;
                return 0;
            }
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
            if (num == null) {
                Log.e(TAG, "i is null");
            } else if (num.intValue() == 0) {
                z = true;
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public int addDeviceInfo(VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice, int i) {
        CameraCharacteristics cameraCharacteristics;
        int i2;
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
        Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        int length = rangeArr.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i3 >= length) {
                break;
            }
            Range range = rangeArr[i3];
            int i5 = i2;
            if (((Integer) range.getUpper()).intValue() > i2) {
                i5 = ((Integer) range.getUpper()).intValue();
            }
            i3++;
            i4 = i5;
        }
        androidVideoCaptureDevice.captureCapabilies = new CaptureCapabilityAndroid[outputSizes.length];
        int i6 = 0;
        for (Size size : outputSizes) {
            androidVideoCaptureDevice.captureCapabilies[i6] = new CaptureCapabilityAndroid();
            androidVideoCaptureDevice.captureCapabilies[i6].height = size.getHeight();
            androidVideoCaptureDevice.captureCapabilies[i6].width = size.getWidth();
            androidVideoCaptureDevice.captureCapabilies[i6].maxFPS = i2;
            androidVideoCaptureDevice.captureCapabilies[i6].VRawType = -1;
            i6++;
        }
        return 0;
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

    public String getDeviceUniqueName(Context context, int i) {
        String str;
        CameraCharacteristics cameraCharacteristics;
        Integer num;
        String str2;
        Integer num2;
        String str3 = "Camera " + i + ", ";
        try {
            cameraCharacteristics = this.mManager.getCameraCharacteristics(this.mManager.getCameraIdList()[i]);
            num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            str = null;
        }
        if (num == null) {
            Log.e(TAG, "i is null");
            return null;
        }
        if (num.intValue() == 0) {
            str2 = str3 + "Facing front, ";
        } else if (num.intValue() == 1) {
            str2 = str3 + "Facing back, ";
        } else {
            str2 = str3 + "Facing external, ";
        }
        if (((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)) == null) {
            Log.e(TAG, "ori is null");
            return null;
        }
        str = str2 + "Orientation " + num2.toString();
        return str;
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
}
