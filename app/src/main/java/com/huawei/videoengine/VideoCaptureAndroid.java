package com.huawei.videoengine;

import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceHolder;
import com.huawei.videoengine.VideoCaptureDeviceInfoAndroid;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class VideoCaptureAndroid implements Camera.PreviewCallback, SurfaceHolder.Callback {
    private static boolean DEBUG = false;
    private static final String TAG = "hme-video";
    private static boolean VERBOSE = false;
    private static final String java_version = "LOG-iMedia Video VILTE 1.2.1";
    private static final int numCaptureBuffers = 3;
    private Camera camera;
    private boolean captureSystemRunFlag;
    private long context;
    private CaptureCapabilityAndroid currentCapability;
    private VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice currentDevice;
    private byte[] g_buffer1;
    private byte[] g_buffer2;
    private byte[] g_buffer3;
    private int id;
    PixelFormat pixelFormat;
    private static final String model = Build.MODEL;
    private static ReentrantLock captureSysLock = new ReentrantLock();
    private static int LOGLEVEL = 2;
    private int PIXEL_FORMAT = 17;
    private int config_PIXEL_FORMAT = 17;
    private boolean isRunning = false;
    private boolean isStartPreviewFlag = false;
    private boolean sysLockFlag = false;
    private int capMemorySize = 0;
    private int expectedFrameSize = 0;
    private int orientation = 0;
    private SurfaceHolder localPreview = null;
    private boolean ownsBuffers = false;

    native void provideCameraFrame(byte[] bArr, int i, long j);

    static {
        VERBOSE = LOGLEVEL > 2;
        DEBUG = LOGLEVEL > 1;
    }

    public void deleteVideoCaptureAndroid(VideoCaptureAndroid videoCaptureAndroid) {
        Log.d(TAG, "VideoCaptureAndroid.java! enter DeleteVideoCaptureAndroid!");
        captureSysLock.lock();
        try {
            Log.d(TAG, "CaptureSystemRunFlag:" + this.captureSystemRunFlag + " isRunningFlag:" + this.isRunning);
            if (this.captureSystemRunFlag) {
                if (this.isRunning) {
                    videoCaptureAndroid.stopCapture();
                }
                try {
                    Log.d(TAG, "before camera.release");
                    if (videoCaptureAndroid.camera != null) {
                        videoCaptureAndroid.camera.release();
                        videoCaptureAndroid.camera = null;
                        videoCaptureAndroid.context = 0L;
                    } else {
                        Log.d(TAG, "camera already free!");
                    }
                    Log.d(TAG, "after camera.release");
                    this.captureSystemRunFlag = false;
                } catch (Exception e) {
                    Log.e(TAG, "Failed to delete camera android!");
                    Log.e(TAG, "Message" + e.getMessage());
                    this.captureSystemRunFlag = false;
                    captureSysLock.unlock();
                    return;
                }
            }
            videoCaptureAndroid.freeCaptureResource();
            captureSysLock.unlock();
            Log.d(TAG, "VideoCaptureAndroid.java! leave DeleteVideoCaptureAndroid!");
        } catch (Throwable th) {
            captureSysLock.unlock();
            throw th;
        }
    }

    public VideoCaptureAndroid(int i, long j, Camera camera, VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice androidVideoCaptureDevice) {
        this.camera = null;
        this.currentDevice = null;
        this.pixelFormat = null;
        this.captureSystemRunFlag = false;
        this.id = 0;
        this.context = 0L;
        this.currentCapability = null;
        Log.d(TAG, "VideoCaptureAndroid.java! enter VideoCaptureAndroid! java version:LOG-iMedia Video VILTE 1.2.1");
        Log.d(TAG, "Device model is " + model);
        captureSysLock.lock();
        try {
            this.currentCapability = new CaptureCapabilityAndroid();
            this.pixelFormat = new PixelFormat();
            this.id = i;
            this.context = j;
            this.camera = camera;
            this.currentDevice = androidVideoCaptureDevice;
            PixelFormat.getPixelFormatInfo(this.PIXEL_FORMAT, this.pixelFormat);
            this.captureSystemRunFlag = true;
            if (this.pixelFormat.bitsPerPixel == -1) {
                Log.e(TAG, String.format(Locale.US, "Java VideoCaptureAndroid fail! not support format:%d", Integer.valueOf(this.PIXEL_FORMAT)));
            }
            captureSysLock.unlock();
            Log.d(TAG, "VideoCaptureAndroid.java! leave VideoCaptureAndroid!");
        } catch (Throwable th) {
            captureSysLock.unlock();
            throw th;
        }
    }

    public void freeCaptureResource() {
        this.currentCapability = null;
        this.localPreview = null;
        this.id = 0;
        this.context = 0L;
        this.currentDevice = null;
        this.pixelFormat = null;
        this.camera = null;
        this.g_buffer1 = null;
        this.g_buffer2 = null;
        this.g_buffer3 = null;
        this.capMemorySize = 0;
        Log.d(TAG, "VideoCaptureAndroid.java! leave FreeCaptureResource!");
    }

    public int configureCameraEncoder(int i, int i2) {
        Log.e(TAG, "#singleBox# ConfigureCameraEncoder!startkbps: " + (i / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE) + " kbps keyInternal: " + i2);
        captureSysLock.lock();
        try {
            if (this.camera == null) {
                Log.e(TAG, "Camera not initialized!!!id: " + this.id);
                return -1;
            }
            Camera.Parameters parameters = this.camera.getParameters();
            if (parameters == null) {
                Log.e(TAG, String.format(Locale.US, "setCaptureEncoderRate! null == parameters!", new Object[0]));
                return -1;
            }
            parameters.set("double_stream_bit_rate", i);
            Log.e(TAG, "dengxijia: set start bitrate to " + (i / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE) + " kbps");
            this.camera.setParameters(parameters);
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Failed to ConfigureCameraEncoder");
            Log.e(TAG, "Message" + e.getMessage());
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }

    public int setCaptureEncoderRate(int i) {
        Log.e(TAG, "#singleBox# setCaptureEncoderRate: " + (i / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE) + " kbps");
        captureSysLock.lock();
        try {
            if (this.camera == null) {
                Log.e(TAG, "Camera not initialized!!!id: " + this.id);
                return -1;
            }
            Camera.Parameters parameters = this.camera.getParameters();
            if (parameters == null) {
                Log.e(TAG, String.format(Locale.US, "setCaptureEncoderRate! null == parameters!", new Object[0]));
                return -1;
            }
            parameters.set("double_stream_bit_rate", i);
            Log.e(TAG, "dengxijia: set bitrate to " + (i / LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE) + " kbps");
            this.camera.setParameters(parameters);
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Failed to setCaptureEncoderRate");
            Log.e(TAG, "Message" + e.getMessage());
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }

    public int requestKeyFrame() {
        Log.e(TAG, "#singleBox# requestKeyFrame!!");
        captureSysLock.lock();
        try {
            if (this.camera == null) {
                Log.e(TAG, "Camera not initialized!!!id: " + this.id);
                return -1;
            }
            Camera.Parameters parameters = this.camera.getParameters();
            if (parameters == null) {
                Log.e(TAG, String.format(Locale.US, "setCaptureEncoderRate! null == parameters!", new Object[0]));
                return -1;
            }
            parameters.set("query_frame", "i_frame");
            Log.e(TAG, "#singleBox# requestKeyFrame set value!!");
            this.camera.setParameters(parameters);
            Log.e(TAG, "#singleBox# requestKeyFrame setParameter!!");
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Failed to requestKeyFrame");
            Log.e(TAG, "Message" + e.getMessage());
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }

    public int startCapture(int i, int i2, int i3, int i4) {
        boolean z;
        int i5;
        int[] iArr;
        if (DEBUG) {
            Log.d(TAG, "StartCapture width:" + i + " height:" + i2 + " fps:" + i3 + " previewImageType:" + i4);
        }
        Log.d(TAG, "StartCapture ");
        try {
            if (this.camera == null) {
                Log.e(TAG, String.format(Locale.US, "Camera not initialized %d", Integer.valueOf(this.id)));
                return -1;
            }
            captureSysLock.lock();
            List<Integer> supportedPreviewFormats = this.camera.getParameters().getSupportedPreviewFormats();
            int size = supportedPreviewFormats.size();
            if (size <= 0) {
                Log.e(TAG, "StartCapture: suport format num: " + size + "is invalid");
                return -1;
            }
            if (98 != i4) {
                z = false;
            } else if (!model.equals("M310")) {
                Log.e(TAG, "StartCapture input rawType is: " + i4 + "  modle: " + model + " is not supported");
                return -1;
            } else {
                i4 = supportedPreviewFormats.get(0).intValue();
                Log.e(TAG, "StartCapture change previewImageType from 98(just for M310) to " + i4);
                z = true;
            }
            Log.d(TAG, "StartCapture: suport format num:" + size);
            boolean z2 = false;
            for (Integer num : supportedPreviewFormats) {
                Log.d(TAG, "StartCapture: suport format:" + num);
                if (num.intValue() == i4) {
                    z2 = true;
                }
            }
            if (z2) {
                i5 = i4;
            } else {
                Log.e(TAG, "start capture! not support config format: " + i4);
                i5 = this.PIXEL_FORMAT;
                int i6 = i5;
                for (Integer num2 : supportedPreviewFormats) {
                    Log.d(TAG, "StartCapture: suport format:" + num2);
                    if (num2.intValue() == i5) {
                        z2 = true;
                    }
                    i6 = num2.intValue();
                }
                if (!z2) {
                    Log.e(TAG, "start capture! not support default format: " + i5);
                    i5 = i6;
                }
            }
            if (this.currentCapability == null) {
                Log.e(TAG, "null == currentCapability in StartCapture!");
                return -1;
            }
            this.currentCapability.width = i;
            this.currentCapability.height = i2;
            this.currentCapability.maxFPS = i3;
            Camera.Parameters parameters = this.camera.getParameters();
            if (parameters == null) {
                Log.e(TAG, String.format(Locale.US, "start capture! null == parameters!", new Object[0]));
                return -1;
            }
            parameters.setPreviewSize(this.currentCapability.width, this.currentCapability.height);
            Log.d(TAG, "StartCapture: current format:" + i5);
            PixelFormat.getPixelFormatInfo(i5, this.pixelFormat);
            if (this.pixelFormat.bitsPerPixel == -1) {
                Log.e(TAG, String.format(Locale.US, "start capture! not support format:%d", Integer.valueOf(i5)));
                i5 = 17;
                PixelFormat.getPixelFormatInfo(17, this.pixelFormat);
                if (this.pixelFormat.bitsPerPixel == -1) {
                    Log.e(TAG, String.format(Locale.US, "start capture! not support format:NV21", new Object[0]));
                    return -1;
                }
            }
            parameters.setPreviewFormat(i5);
            Log.d(TAG, "StartCapture! PIXEL_FORMAT:" + this.PIXEL_FORMAT + " Config PicFormat: " + i4 + "current PicFormat:" + i5 + " pixelFormat.bitsPerPixel:" + this.pixelFormat.bitsPerPixel);
            Integer valueOf = Integer.valueOf(i3);
            List<Integer> supportedPreviewFrameRates = parameters.getSupportedPreviewFrameRates();
            if (supportedPreviewFrameRates == null) {
                return -1;
            }
            Iterator<Integer> it = supportedPreviewFrameRates.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (i3 == it.next().intValue()) {
                    valueOf = Integer.valueOf(i3);
                    break;
                }
            }
            Log.d(TAG, "iLocalConfigFrame:" + valueOf + ", InputFrameFps:" + i3);
            parameters.setPreviewFrameRate(valueOf.intValue());
            if (Build.VERSION.SDK_INT > 8) {
                parameters.getPreviewFpsRange(new int[2]);
                Log.d(TAG, "minFps:" + iArr[0] + " maxFps:" + iArr[1] + " model:" + model);
                if (model.equals("XT910") || model.equals("XT928")) {
                    parameters.setPreviewFpsRange(5000, 20000);
                }
            }
            if (Build.VERSION.SDK_INT >= 14 && !model.equals("Full Android on exynos4412")) {
                if (!parameters.getFocusMode().equalsIgnoreCase("continuous-picture")) {
                    Iterator<String> it2 = parameters.getSupportedFocusModes().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        String next = it2.next();
                        Log.d(TAG, "focesMode:" + next);
                        if (next.equals("continuous-picture")) {
                            Log.d(TAG, "Support continuous-picture mode!");
                            parameters.setFocusMode("continuous-picture");
                            break;
                        }
                    }
                } else {
                    Log.d(TAG, "Default mode is continuous-picture!");
                }
            }
            if (model.equals("M310")) {
                if (z) {
                    parameters.set("camera_support_stream", 1);
                    Log.e(TAG, "#single_box# StartCapture: M310 enalbe double stream!!");
                } else {
                    parameters.set("camera_support_stream", 0);
                    Log.e(TAG, "#single_box# StartCapture: M310 disalbe 2 streams, only YUV preview stream!!");
                }
            }
            this.camera.setParameters(parameters);
            this.localPreview = ViERenderer.getLocalRenderer();
            if (this.localPreview != null) {
                this.localPreview.addCallback(this);
            } else {
                Log.e(TAG, "localPreview null!!");
            }
            this.isStartPreviewFlag = false;
            this.expectedFrameSize = ((i * i2) * this.pixelFormat.bitsPerPixel) / 8;
            this.config_PIXEL_FORMAT = i5;
            return 0;
        } catch (RuntimeException e) {
            Log.e(TAG, "Failed to start camera");
            Log.e(TAG, "Message" + e.getMessage());
            return -2;
        } finally {
            captureSysLock.unlock();
        }
    }

    public int stopCapture() {
        if (DEBUG) {
            Log.d(TAG, "Enter java StopCapture! isRunning:" + this.isRunning);
        }
        captureSysLock.lock();
        try {
            if (this.camera != null && this.isRunning) {
                this.camera.stopPreview();
                this.isRunning = false;
                if (Build.VERSION.SDK_INT > 7) {
                    this.camera.setPreviewCallbackWithBuffer(null);
                } else {
                    this.camera.setPreviewCallback(null);
                }
                if (this.localPreview != null) {
                    this.localPreview.removeCallback(this);
                }
                captureSysLock.unlock();
                Log.d(TAG, "leave java StopCapture! isRunning:" + this.isRunning);
                return 0;
            } else if (this.camera == null) {
                Log.e(TAG, "camera==null or camera flag not true in StopCapture! flag: " + this.isRunning);
                return -1;
            } else {
                if (this.localPreview != null) {
                    this.localPreview.removeCallback(this);
                }
                captureSysLock.unlock();
                Log.d(TAG, "leave java StopCapture! isRunning:" + this.isRunning);
                return 0;
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to removeCallback!");
            return -1;
        } catch (RuntimeException e2) {
            Log.e(TAG, "Failed to stop camera");
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        captureSysLock.lock();
        try {
            if (VERBOSE) {
                Log.d(TAG, String.format(Locale.US, "preview frame length %d context %x", Integer.valueOf(bArr.length), Long.valueOf(this.context)));
            }
            if (this.isRunning && bArr != null && camera != null) {
                if (bArr.length == this.expectedFrameSize) {
                    provideCameraFrame(bArr, this.expectedFrameSize, this.context);
                    if (VERBOSE) {
                        Log.d(TAG, String.format(Locale.US, "frame delivered", new Object[0]));
                    }
                    if (this.ownsBuffers) {
                        camera.addCallbackBuffer(bArr);
                    }
                } else {
                    Log.d(TAG, String.format(Locale.US, "err! frame delivered data.length:%d, expectedFrameSize:%d ", Integer.valueOf(bArr.length), Integer.valueOf(this.expectedFrameSize)));
                }
            }
        } catch (RuntimeException e) {
            Log.e(TAG, "Failed in onPreviewFrame!");
        } finally {
            captureSysLock.unlock();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        captureSysLock.lock();
        try {
            Log.i(TAG, "VideoCaptureAndroid.java! enter surfaceChanged, format=" + i + ", widht=" + i2 + ", height=" + i3);
            StringBuilder sb = new StringBuilder();
            sb.append("isStartPreviewFlag:");
            sb.append(this.isStartPreviewFlag);
            sb.append(" captureSystemRunFlag:");
            sb.append(this.captureSystemRunFlag);
            Log.i(TAG, sb.toString());
            if (!this.captureSystemRunFlag) {
                Log.i(TAG, "capture system had destroy in surfaceChanged!");
            } else if (this.camera == null) {
                Log.i(TAG, "capture has destory in surfaceChanged!");
            } else if (!this.isRunning) {
                Log.i(TAG, "before start preview in surfaceChanged!");
                this.camera.startPreview();
                Log.i(TAG, "after  start preview in surfaceChanged!");
                this.isRunning = true;
                this.isStartPreviewFlag = false;
            }
        } catch (Exception e) {
            Log.e(TAG, "startPreview Failed in surfaceChanged!");
            Log.e(TAG, "Message" + e.getMessage());
        } finally {
            captureSysLock.unlock();
        }
    }

    public int setPreviewRotation(int i) {
        int i2;
        int i3;
        int i4;
        Log.d(TAG, "SetPreviewRotation start, rotation=" + i);
        captureSysLock.lock();
        try {
            if (this.camera == null) {
                Log.e(TAG, String.format(Locale.US, "Camera not initialized in SetPreviewRotation!", new Object[0]));
                return -1;
            }
            boolean z = this.isRunning;
            if (!z || Build.VERSION.SDK_INT >= 14) {
                i2 = 0;
                i3 = 0;
                i4 = 0;
            } else {
                i2 = this.currentCapability.width;
                i3 = this.currentCapability.height;
                i4 = this.currentCapability.maxFPS;
                stopCapture();
            }
            if (this.currentDevice.frontCameraType == VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23) {
                if (!model.equals("GT-I9001") && !model.equals("LG-E730")) {
                    i = (360 - i) % 360;
                }
                i = ((360 - i) + 180) % 360;
            }
            if (Build.VERSION.SDK_INT > 7) {
                this.camera.setDisplayOrientation(i);
            } else {
                Camera.Parameters parameters = this.camera.getParameters();
                parameters.setRotation(i);
                this.camera.setParameters(parameters);
            }
            if (z && Build.VERSION.SDK_INT < 14) {
                startCapture(i2, i3, i4, this.config_PIXEL_FORMAT);
                Log.e(TAG, "before setPreviewCallback ");
                setPreviewCallback();
                Log.e(TAG, "before startPreview");
                this.camera.startPreview();
                this.isRunning = true;
            }
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Failed in setPreviewCallback!");
            Log.e(TAG, "Message" + e.getMessage());
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        captureSysLock.lock();
        try {
            Log.i(TAG, "VideoCaptureAndroid.java! surfaceCreated! isRunning:" + this.isRunning + " isStartPreviewFlag:" + this.isStartPreviewFlag);
            Log.i(TAG, "surfaceCreated! surface:" + this + " holder:" + surfaceHolder);
            if (!this.captureSystemRunFlag || this.isStartPreviewFlag) {
                if (this.isStartPreviewFlag) {
                    Log.i(TAG, "now is starting preview, can't repeat start preview!");
                } else {
                    Log.e(TAG, "camera has destory in surfaceCreated");
                }
            } else if (this.camera != null) {
                if (this.isRunning) {
                    Log.i(TAG, "before stop preview");
                    this.camera.stopPreview();
                    this.isRunning = false;
                    Log.i(TAG, "before set preview buf null");
                }
                this.isStartPreviewFlag = true;
                setPreviewCallback();
                this.camera.setPreviewDisplay(surfaceHolder);
            }
        } catch (Throwable th) {
            try {
                Log.e(TAG, "Exception in surfaceCreated()", th);
            } finally {
                captureSysLock.unlock();
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.i(TAG, "surfaceDestroyed! surface:" + this + " holder:" + surfaceHolder);
    }

    private void setPreviewCallback() {
        byte[] bArr;
        Log.d(TAG, "setPreviewCallback, sdk version:" + Build.VERSION.SDK_INT);
        try {
            if (this.camera == null) {
                Log.e(TAG, String.format(Locale.US, "Camera not initialized in setPreviewCallback!", new Object[0]));
                return;
            }
            int i = ((this.currentCapability.width * this.currentCapability.height) * this.pixelFormat.bitsPerPixel) / 8;
            if (Build.VERSION.SDK_INT > 7) {
                for (int i2 = 0; i2 < 3; i2++) {
                    switch (i2) {
                        case 0:
                            if (this.capMemorySize != i) {
                                this.g_buffer1 = new byte[i];
                            }
                            bArr = this.g_buffer1;
                            break;
                        case 1:
                            if (this.capMemorySize != i) {
                                this.g_buffer2 = new byte[i];
                            }
                            bArr = this.g_buffer2;
                            break;
                        default:
                            if (this.capMemorySize != i) {
                                this.g_buffer3 = new byte[i];
                            }
                            bArr = this.g_buffer3;
                            break;
                    }
                    if (bArr == null) {
                        Log.e(TAG, "null == buffer in local setPreviewCallback!");
                        return;
                    }
                    this.camera.addCallbackBuffer(bArr);
                }
                this.capMemorySize = i;
                this.camera.setPreviewCallbackWithBuffer(this);
                this.ownsBuffers = true;
                return;
            }
            this.camera.setPreviewCallback(this);
        } catch (Exception e) {
            Log.e(TAG, "Failed in setPreviewCallback!");
            Log.e(TAG, "Message" + e.getMessage());
        }
    }

    public int openFlashLight(boolean z) {
        Log.d(TAG, "OpenFlashLight:" + z);
        captureSysLock.lock();
        try {
            if (this.camera == null) {
                Log.e(TAG, "Camera not initialized!!!id: " + this.id);
                return -1;
            }
            Camera.Parameters parameters = this.camera.getParameters();
            if (true == z) {
                parameters.setFlashMode("torch");
                Log.e(TAG, "open device FlashLight!");
            } else {
                parameters.setFlashMode("off");
                Log.e(TAG, "close device FlashLight!");
            }
            this.camera.setParameters(parameters);
            captureSysLock.unlock();
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Failed to OpenFlashLight");
            Log.e(TAG, "Message" + e.getMessage());
            return -1;
        } finally {
            captureSysLock.unlock();
        }
    }
}
