package com.huawei.videoengine;

import com.huawei.videoengine.Drawable2d;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class FullFrameRect {
    private Texture2dProgram mProgram;
    private final Drawable2d mRectDrawable = new Drawable2d(Drawable2d.Prefab.FULL_RECTANGLE);

    public FullFrameRect(Texture2dProgram texture2dProgram) {
        this.mProgram = texture2dProgram;
    }

    public void release(boolean z) {
        if (this.mProgram != null) {
            if (z) {
                this.mProgram.release();
            }
            this.mProgram = null;
        }
    }

    public Texture2dProgram getProgram() {
        return this.mProgram;
    }

    public void changeProgram(Texture2dProgram texture2dProgram) {
        this.mProgram.release();
        this.mProgram = texture2dProgram;
    }

    public int createTextureObject() {
        return this.mProgram.createTextureObject();
    }

    public void drawFrame(int i, float[] fArr, float[] fArr2) {
        this.mProgram.draw(fArr, this.mRectDrawable.getVertexArray(), 0, this.mRectDrawable.getVertexCount(), this.mRectDrawable.getCoordsPerVertex(), this.mRectDrawable.getVertexStride(), fArr2, this.mRectDrawable.getTexCoordArray(), i, this.mRectDrawable.getTexCoordStride());
    }
}
