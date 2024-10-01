package com.huawei.videoengine;

import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.IdentityHashMap;
import java.util.Map;

/* loaded from: SurfaceEncoder.class */
public class SurfaceEncoder {
    private Map<Integer, Surface> encSfMap;
    private long mNativeEncClass;
    private String TAG = "SurfaceEncoder";
    private Object mNILock = new Object();

    public SurfaceEncoder() {
    }

    public SurfaceEncoder(long j) {
        Log.i(this.TAG, "SurfaceEncoder in 123");
        this.mNativeEncClass = j;
        this.encSfMap = new IdentityHashMap();
    }

    public void freeEncSurface(int i) {
        Surface surface;
        try {
            Thread.sleep(100L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (this.encSfMap == null || (surface = this.encSfMap.get(Integer.valueOf(i))) == null) {
            return;
        }
        String str = this.TAG;
        Log.e(str, " freeEncSurface() _encSf is " + surface + ":channelId");
        surface.release();
        this.encSfMap.remove(Integer.valueOf(i));
    }

    native void nProvideOutBuffer(ByteBuffer byteBuffer, int i, int i2, long j);

    public void provideOutBuffer(ByteBuffer byteBuffer, int i, int i2) {
        synchronized (this.mNILock) {
            if (this.mNativeEncClass != 0) {
                nProvideOutBuffer(byteBuffer, i, i2, this.mNativeEncClass);
            }
        }
    }

    public void setEncSurface(Surface surface, int i) {
        if (this.encSfMap != null) {
            this.encSfMap.remove(Integer.valueOf(i));
            this.encSfMap.put(Integer.valueOf(i), surface);
        }
    }

    public void setNativeInstanceNull() {
        synchronized (this.mNILock) {
            this.mNativeEncClass = 0L;
        }
    }
}
