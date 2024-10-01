package com.huawei.videoengine;

import android.util.Log;
import java.nio.FloatBuffer;

/* loaded from: Drawable2d.class */
public class Drawable2d {
    private static final int SIZEOF_FLOAT = 4;
    private static final String TAG = "hme_engine_java";
    private int mCoordsPerVertex;
    private Prefab mPrefab;
    private FloatBuffer mTexCoordArray;
    private int mTexCoordStride;
    private FloatBuffer mVertexArray;
    private int mVertexCount;
    private int mVertexStride;
    private static final float[] TRIANGLE_COORDS = {0.0f, 0.57735026f, -0.5f, -0.28867513f, 0.5f, -0.28867513f};
    private static final float[] TRIANGLE_TEX_COORDS = {0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
    private static final FloatBuffer TRIANGLE_BUF = GlUtil.createFloatBuffer(TRIANGLE_COORDS);
    private static final FloatBuffer TRIANGLE_TEX_BUF = GlUtil.createFloatBuffer(TRIANGLE_TEX_COORDS);
    private static final float[] RECTANGLE_COORDS = {-0.5f, -0.5f, 0.5f, -0.5f, -0.5f, 0.5f, 0.5f, 0.5f};
    private static final float[] RECTANGLE_TEX_COORDS = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private static final FloatBuffer RECTANGLE_BUF = GlUtil.createFloatBuffer(RECTANGLE_COORDS);
    private static final FloatBuffer RECTANGLE_TEX_BUF = GlUtil.createFloatBuffer(RECTANGLE_TEX_COORDS);
    private static final float[] FULL_RECTANGLE_COORDS = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private static final float[] FULL_RECTANGLE_TEX_COORDS = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
    private static final FloatBuffer FULL_RECTANGLE_BUF = GlUtil.createFloatBuffer(FULL_RECTANGLE_COORDS);
    private static final FloatBuffer FULL_RECTANGLE_TEX_BUF = GlUtil.createFloatBuffer(FULL_RECTANGLE_TEX_COORDS);

    /* loaded from: Drawable2d$Prefab.class */
    public enum Prefab {
        TRIANGLE,
        RECTANGLE,
        FULL_RECTANGLE
    }

    public Drawable2d(Prefab prefab) {
        switch (prefab) {
            case TRIANGLE:
                this.mVertexArray = TRIANGLE_BUF;
                this.mTexCoordArray = TRIANGLE_TEX_BUF;
                this.mCoordsPerVertex = 2;
                this.mVertexStride = this.mCoordsPerVertex * 4;
                this.mVertexCount = TRIANGLE_COORDS.length / this.mCoordsPerVertex;
                break;
            case RECTANGLE:
                this.mVertexArray = RECTANGLE_BUF;
                this.mTexCoordArray = RECTANGLE_TEX_BUF;
                this.mCoordsPerVertex = 2;
                this.mVertexStride = this.mCoordsPerVertex * 4;
                this.mVertexCount = RECTANGLE_COORDS.length / this.mCoordsPerVertex;
                break;
            case FULL_RECTANGLE:
                this.mVertexArray = FULL_RECTANGLE_BUF;
                this.mTexCoordArray = FULL_RECTANGLE_TEX_BUF;
                this.mCoordsPerVertex = 2;
                this.mVertexStride = this.mCoordsPerVertex * 4;
                this.mVertexCount = FULL_RECTANGLE_COORDS.length / this.mCoordsPerVertex;
                break;
            default:
                Log.e(TAG, "Drawable2d fail!! Unknown shape" + prefab);
                return;
        }
        this.mTexCoordStride = 8;
        this.mPrefab = prefab;
    }

    public int getCoordsPerVertex() {
        return this.mCoordsPerVertex;
    }

    public FloatBuffer getTexCoordArray() {
        return this.mTexCoordArray;
    }

    public int getTexCoordStride() {
        return this.mTexCoordStride;
    }

    public FloatBuffer getVertexArray() {
        return this.mVertexArray;
    }

    public int getVertexCount() {
        return this.mVertexCount;
    }

    public int getVertexStride() {
        return this.mVertexStride;
    }

    public String toString() {
        if (this.mPrefab != null) {
            return "[Drawable2d: " + this.mPrefab + "]";
        }
        return "[Drawable2d: ...]";
    }
}
