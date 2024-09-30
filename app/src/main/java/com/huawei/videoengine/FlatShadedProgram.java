package com.huawei.videoengine;

import android.opengl.GLES20;
import android.util.Log;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class FlatShadedProgram {
    private static final String FRAGMENT_SHADER = "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}";
    private static final String TAG = "hme_engine_java_OpenGL";
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}";
    private int mProgramHandle;
    private int maPositionLoc;
    private int muColorLoc;
    private int muMVPMatrixLoc;

    public FlatShadedProgram() {
        this.mProgramHandle = -1;
        this.muColorLoc = -1;
        this.muMVPMatrixLoc = -1;
        this.maPositionLoc = -1;
        this.mProgramHandle = GlUtil.createProgram(VERTEX_SHADER, FRAGMENT_SHADER);
        if (this.mProgramHandle == 0) {
            Log.e("hme_engine_java_OpenGL", "Unable to create program");
            return;
        }
        Log.d("hme_engine_java_OpenGL", "Created program " + this.mProgramHandle);
        this.maPositionLoc = GLES20.glGetAttribLocation(this.mProgramHandle, "aPosition");
        GlUtil.checkLocation(this.maPositionLoc, "aPosition");
        this.muMVPMatrixLoc = GLES20.glGetUniformLocation(this.mProgramHandle, "uMVPMatrix");
        GlUtil.checkLocation(this.muMVPMatrixLoc, "uMVPMatrix");
        this.muColorLoc = GLES20.glGetUniformLocation(this.mProgramHandle, "uColor");
        GlUtil.checkLocation(this.muColorLoc, "uColor");
    }

    public void release() {
        GLES20.glDeleteProgram(this.mProgramHandle);
        this.mProgramHandle = -1;
    }

    public void draw(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4) {
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.mProgramHandle);
        GlUtil.checkGlError("glUseProgram");
        GLES20.glUniformMatrix4fv(this.muMVPMatrixLoc, 1, false, fArr, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glUniform4fv(this.muColorLoc, 1, fArr2, 0);
        GlUtil.checkGlError("glUniform4fv ");
        GLES20.glEnableVertexAttribArray(this.maPositionLoc);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.maPositionLoc, i3, 5126, false, i4, (Buffer) floatBuffer);
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glDrawArrays(5, i, i2);
        GlUtil.checkGlError("glDrawArrays");
        GLES20.glDisableVertexAttribArray(this.maPositionLoc);
        GLES20.glUseProgram(0);
    }
}
