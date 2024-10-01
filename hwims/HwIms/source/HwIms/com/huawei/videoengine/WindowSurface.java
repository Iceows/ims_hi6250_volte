package com.huawei.videoengine;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;

/* loaded from: WindowSurface.class */
public class WindowSurface extends EglSurfaceBase {
    private Surface mSurface;

    public WindowSurface(EglCore eglCore, SurfaceTexture surfaceTexture) {
        super(eglCore);
        createWindowSurface(surfaceTexture);
    }

    public WindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore);
        createWindowSurface(surface);
        this.mSurface = surface;
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public void recreate(EglCore eglCore) {
        if (this.mSurface == null) {
            Log.e("hme_engine_java_EglSurfaceBase", "not yet implemented for SurfaceTexture");
            return;
        }
        this.mEglCore = eglCore;
        createWindowSurface(this.mSurface);
    }

    public void release() {
        releaseEglSurface();
    }
}
