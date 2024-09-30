package com.huawei.videoengine;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;


public class WindowSurface extends EglSurfaceBase {
    private Surface mSurface;

    public WindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore);
        createWindowSurface(surface);
        this.mSurface = surface;
    }

    public WindowSurface(EglCore eglCore, SurfaceTexture surfaceTexture) {
        super(eglCore);
        createWindowSurface(surfaceTexture);
    }

    public void release() {
        releaseEglSurface();
    }

    public void recreate(EglCore eglCore) {
        if (this.mSurface == null) {
            Log.e("hme_engine_java_EglSurfaceBase", "not yet implemented for SurfaceTexture");
            return;
        }
        this.mEglCore = eglCore;
        createWindowSurface(this.mSurface);
    }

    public Surface getSurface() {
        return this.mSurface;
    }
}
