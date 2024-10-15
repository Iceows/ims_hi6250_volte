package com.huawei.videoengine;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ViEAndroidGLES20 extends GLSurfaceView implements GLSurfaceView.Renderer {
    private static final String TAG = "hme_engine_java_GLES20";
    private static final String manufaturer = Build.MANUFACTURER;
    private long lnativeObject;
    private boolean nativeFreeResFlag;
    private ReentrantLock nativeFunctionLock;
    private boolean nativeFunctionsRegisted;
    private boolean openGLCreated;
    private Surface remoteSurface;
    private boolean surfaceCreated;
    private int viewHeight;
    private int viewWidth;

    private native int createOpenGLNative(long j, int i, int i2);

    private native void drawNative(long j);

    private native void freeGlNative(long j);

    private native void setSurface(long j, Object obj);

    public static boolean useOpenGL2(Object obj) {
        return ViEAndroidGLES20.class.isInstance(obj);
    }

    public ViEAndroidGLES20(Context context) {
        super(context);
        this.surfaceCreated = false;
        this.openGLCreated = false;
        this.nativeFunctionsRegisted = false;
        this.nativeFreeResFlag = false;
        this.nativeFunctionLock = new ReentrantLock();
        this.lnativeObject = 0L;
        this.remoteSurface = null;
        this.viewWidth = 0;
        this.viewHeight = 0;
        Log.d(TAG, "enter ViEAndroidGLES20 creat!");
        setEGLContextFactory(new ContextFactory());
        setEGLConfigChooser(new ConfigChooser(5, 6, 5, 0, 0, 0));
        setRenderer(this);
        setRenderMode(0);
        Log.d(TAG, "end creatting ViEAndroidGLES20!");
    }

    public static boolean isSupported(Context context) {
        ConfigurationInfo deviceConfigurationInfo;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) == null || deviceConfigurationInfo.reqGlEsVersion < 131072) {
            return false;
        }
        return true;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        this.nativeFunctionLock.lock();
        try {
            if (this.nativeFunctionsRegisted && this.surfaceCreated) {
                if (this.nativeFreeResFlag) {
                    Log.d(TAG, "second! onDrawFrame before freeGlNative! openGLCreated:" + this.openGLCreated);
                    freeGlNative(this.lnativeObject);
                    Log.d(TAG, "onDrawFrame after freeGlNative!");
                    this.nativeFreeResFlag = false;
                } else {
                    if (!this.openGLCreated) {
                        if (createOpenGLNative(this.lnativeObject, this.viewWidth, this.viewHeight) != 0) {
                            return;
                        } else {
                            this.openGLCreated = true;
                        }
                    }
                    drawNative(this.lnativeObject);
                }
                return;
            }
            if (this.nativeFreeResFlag) {
                if (0 != this.lnativeObject) {
                    Log.d(TAG, "first! onDrawFrame before freeGlNative!");
                    freeGlNative(this.lnativeObject);
                    Log.d(TAG, "onDrawFrame after freeGlNative!");
                } else {
                    Log.e(TAG, "onDrawFrame 0 == lnativeObject!");
                }
                this.nativeFreeResFlag = false;
                this.lnativeObject = 0L;
            }
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.nativeFunctionLock.lock();
        try {
            Log.d(TAG, "ViEAndroidGLES20.java! enter onSurfaceChanged + width:" + i + " height:" + i2);
            StringBuilder sb = new StringBuilder();
            sb.append("nativeFunctionsRegisted flag:");
            sb.append(this.nativeFunctionsRegisted);
            Log.d(TAG, sb.toString());
            this.surfaceCreated = true;
            this.viewWidth = i;
            this.viewHeight = i2;
            if (this.lnativeObject != 0) {
                resetRender(this.lnativeObject, this.viewWidth, this.viewHeight);
            }
            if (this.nativeFunctionsRegisted && createOpenGLNative(this.lnativeObject, i, i2) == 0) {
                this.openGLCreated = true;
            }
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        Log.d(TAG, "ViEAndroidGLES20.java! onSurfaceCreated!");
        this.nativeFunctionLock.lock();
        try {
            this.nativeFreeResFlag = false;
            SurfaceHolder holder = getHolder();
            if (Build.VERSION.SDK_INT >= 14 && manufaturer.equals("HUAWEI")) {
                this.remoteSurface = holder.getSurface();
                if (0 != this.lnativeObject) {
                    Log.d(TAG, "ViEAndroidGLES20.java! lnativeObject is registerd!");
                    setSurface(this.lnativeObject, this.remoteSurface);
                    this.remoteSurface = null;
                } else {
                    Log.d(TAG, "ViEAndroidGLES20.java! not registered,save remote surface!!");
                }
            }
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    public void onSurfaceDestory(GL10 gl10, EGLConfig eGLConfig) {
        Log.d(TAG, "ViEAndroidGLES20.java! onSurfaceDestory!");
    }

    public void getRemoteSurface() {
        Log.d(TAG, "ViEAndroidGLES20.java! getRemoteSurface!!");
        if (Build.VERSION.SDK_INT >= 14 && manufaturer.equals("HUAWEI")) {
            this.nativeFunctionLock.lock();
            try {
                if (0 == this.lnativeObject) {
                    Log.e(TAG, "ViEAndroidGLES20.java! getRemoteSurface but not registered!!");
                } else if (this.remoteSurface != null) {
                    Log.d(TAG, "ViEAndroidGLES20.java! set remote surface to native channel!!");
                    setSurface(this.lnativeObject, this.remoteSurface);
                    this.remoteSurface = null;
                } else {
                    Log.e(TAG, "ViEAndroidGLES20.java! remoteSurface is null!!");
                }
            } finally {
                this.nativeFunctionLock.unlock();
            }
        }
    }

    public void registerNativeObject(long j) {
        this.nativeFunctionLock.lock();
        try {
            this.lnativeObject = j;
            this.nativeFunctionsRegisted = true;
            this.nativeFreeResFlag = false;
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    public void deRegisterNativeObject() {
        this.nativeFunctionLock.lock();
        try {
            this.nativeFunctionsRegisted = false;
            this.openGLCreated = false;
            this.lnativeObject = 0L;
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    public void reDraw() {
        if (this.surfaceCreated) {
            requestRender();
        }
    }

    public void javaUpdateResFreeFlag() {
        if (this.surfaceCreated) {
            this.nativeFunctionLock.lock();
            try {
                this.nativeFreeResFlag = true;
            } finally {
                this.nativeFunctionLock.unlock();
            }
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private static class ContextFactory implements GLSurfaceView.EGLContextFactory {
        private static int EGL_CONTEXT_CLIENT_VERSION = 12440;

        private ContextFactory() {
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            EGLContext eglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{EGL_CONTEXT_CLIENT_VERSION, 2, 12344});
            ViEAndroidGLES20.checkEglError("ContextFactory eglCreateContext", egl10);
            return eglCreateContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkEglError(String str, EGL10 egl10) {
        while (true) {
            int eglGetError = egl10.eglGetError();
            if (eglGetError == 12288) {
                return;
            } else {
                Log.e(TAG, String.format("%s: EGL error: 0x%x", str, Integer.valueOf(eglGetError)));
            }
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private static class ConfigChooser implements GLSurfaceView.EGLConfigChooser {
        private static int EGL_OPENGL_ES2_BIT = 4;
        private static int[] s_configAttribs2 = {12324, 4, 12323, 4, 12322, 4, 12352, EGL_OPENGL_ES2_BIT, 12344};
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue = new int[1];

        public ConfigChooser(int i, int i2, int i3, int i4, int i5, int i6) {
            this.mRedSize = i;
            this.mGreenSize = i2;
            this.mBlueSize = i3;
            this.mAlphaSize = i4;
            this.mDepthSize = i5;
            this.mStencilSize = i6;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            egl10.eglChooseConfig(eGLDisplay, s_configAttribs2, null, 0, iArr);
            int i = iArr[0];
            if (i <= 0) {
                Log.e(ViEAndroidGLES20.TAG, "No configs match configSpec");
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            egl10.eglChooseConfig(eGLDisplay, s_configAttribs2, eGLConfigArr, i, iArr);
            return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
        }

        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int findConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int findConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (findConfigAttrib >= this.mDepthSize && findConfigAttrib2 >= this.mStencilSize) {
                    int findConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int findConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int findConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int findConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (findConfigAttrib3 == this.mRedSize && findConfigAttrib4 == this.mGreenSize && findConfigAttrib5 == this.mBlueSize && findConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.mValue)) {
                return this.mValue[0];
            }
            return i2;
        }
    }

    public void resetRender(long j, int i, int i2) {
        freeGlNative(j);
        createOpenGLNative(j, i, i2);
    }
}
