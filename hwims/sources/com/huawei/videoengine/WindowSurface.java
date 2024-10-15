package com.huawei.videoengine;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
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
        Surface surface = this.mSurface;
        if (surface == null) {
            Log.e("hme_engine_java_EglSurfaceBase", "not yet implemented for SurfaceTexture");
        } else {
            this.mEglCore = eglCore;
            createWindowSurface(surface);
        }
    }

    public Surface getSurface() {
        return this.mSurface;
    }
}
