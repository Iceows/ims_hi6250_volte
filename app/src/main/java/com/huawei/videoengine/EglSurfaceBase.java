package com.huawei.videoengine;

import android.graphics.Bitmap;
import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;


public class EglSurfaceBase {
    protected static final String TAG = "hme_engine_java_EglSurfaceBase";
    protected EglCore mEglCore;
    private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
    private int mWidth = -1;
    private int mHeight = -1;

    public EglSurfaceBase(EglCore eglCore) {
        this.mEglCore = eglCore;
    }

    public void createWindowSurface(Object obj) {
        if (this.mEGLSurface != EGL14.EGL_NO_SURFACE) {
            Log.w(TAG, "surface already created");
        } else {
            this.mEGLSurface = this.mEglCore.createWindowSurface(obj);
        }
    }

    public void createOffscreenSurface(int i, int i2) {
        if (this.mEGLSurface != EGL14.EGL_NO_SURFACE) {
            Log.w(TAG, "surface already created");
            return;
        }
        this.mEGLSurface = this.mEglCore.createOffscreenSurface(i, i2);
        this.mWidth = i;
        this.mHeight = i2;
    }

    public int getWidth() {
        if (this.mWidth < 0) {
            return this.mEglCore.querySurface(this.mEGLSurface, 12375);
        }
        return this.mWidth;
    }

    public int getHeight() {
        if (this.mHeight < 0) {
            return this.mEglCore.querySurface(this.mEGLSurface, 12374);
        }
        return this.mHeight;
    }

    public void releaseEglSurface() {
        this.mEglCore.releaseSurface(this.mEGLSurface);
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mHeight = -1;
        this.mWidth = -1;
    }

    public void makeCurrent() {
        this.mEglCore.makeCurrent(this.mEGLSurface);
    }

    public void makeCurrentReadFrom(EglSurfaceBase eglSurfaceBase) {
        this.mEglCore.makeCurrent(this.mEGLSurface, eglSurfaceBase.mEGLSurface);
    }

    public boolean swapBuffers() {
        boolean swapBuffers = this.mEglCore.swapBuffers(this.mEGLSurface);
        if (!swapBuffers) {
            Log.d(TAG, "WARNING: swapBuffers() failed");
        }
        return swapBuffers;
    }

    public void setPresentationTime(long j) {
        this.mEglCore.setPresentationTime(this.mEGLSurface, j);
    }

    public void saveFrame(File file) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        if (!this.mEglCore.isCurrent(this.mEGLSurface)) {
            Log.e(TAG, "Expected EGL context/surface is not current");
            return;
        }
        String file2 = file.toString();
        int width = getWidth();
        int height = getHeight();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(width * height * 4);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        GLES20.glReadPixels(0, 0, width, height, 6408, 5121, allocateDirect);
        GlUtil.checkGlError("glReadPixels");
        allocateDirect.rewind();
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
        } catch (Throwable th) {
            th = th;
            bufferedOutputStream = null;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            createBitmap.copyPixelsFromBuffer(allocateDirect);
            createBitmap.compress(Bitmap.CompressFormat.PNG, 90, bufferedOutputStream);
            createBitmap.recycle();
            bufferedOutputStream.close();
            Log.d(TAG, "Saved " + width + "x" + height + " frame as '" + file2 + "'");
        } catch (Throwable th2) {
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            throw th2;
        }
    }

    public boolean isCurrent() {
        return this.mEglCore.isCurrent(this.mEGLSurface);
    }
}
