package com.huawei.videoengine;

import android.util.Log;

/* loaded from: FpsStatistic.class */
public class FpsStatistic {
    private static final String TAG = "hme_engine_java";
    private int mFrameInterval;
    private String mPos;
    private int mThreshold;
    private int mCount = 0;
    private long mLastTime = 0;
    private long mNowTime = 0;
    private float mFps = 0.0f;

    public FpsStatistic(String str, int i) {
        this.mThreshold = 0;
        this.mPos = str;
        if (i < 1) {
            Log.w(TAG, "frameInterval < 1");
            return;
        }
        this.mFrameInterval = i;
        this.mThreshold = 100;
    }

    public FpsStatistic(String str, int i, int i2) {
        this.mThreshold = 0;
        this.mPos = str;
        if (i < 1) {
            Log.w(TAG, "frameInterval < 1");
            return;
        }
        this.mFrameInterval = i;
        this.mThreshold = i2;
    }

    public void add() {
        this.mCount++;
        if (this.mCount > 0 && this.mCount < 7) {
            Log.i(TAG, "#FPS# " + this.mPos + ":Frame(" + this.mCount + ") come");
            this.mLastTime = System.currentTimeMillis();
        }
        if (this.mCount % this.mFrameInterval == 0) {
            this.mNowTime = System.currentTimeMillis();
            this.mFps = (this.mFrameInterval * 1000.0f) / ((float) (this.mNowTime - this.mLastTime));
            this.mLastTime = this.mNowTime;
            if (this.mFps <= this.mThreshold) {
                Log.i(TAG, "#FPS# " + this.mPos + ":" + this.mFps);
            }
        }
    }

    public void setThreshold(int i) {
        this.mThreshold = i;
    }
}
