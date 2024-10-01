package com.huawei.videoengine;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ViESurfaceRenderer implements SurfaceHolder.Callback {
    private static final int displayBorder = 0;
    private static final int displayClipping = 1;
    private static final int displayNone = 2;
    private static final String manufaturer = Build.MANUFACTURER;
    private static ReentrantLock surfaceHolderSysLock = new ReentrantLock();
    private boolean creatNativeFlag;
    private int dstHeight;
    private Rect dstRect;
    private int dstWidth;
    private SurfaceHolder surfaceHolder;
    private Bitmap bitmap = null;
    private ByteBuffer byteBuffer = null;
    private Rect srcRect = new Rect();
    private int displayType = 2;
    private int dataWidth = 0;
    private int dataHeight = 0;
    private float dstTopScale = 0.0f;
    private float dstBottomScale = 1.0f;
    private float dstLeftScale = 0.0f;
    private float dstRightScale = 1.0f;
    private Surface remoteSurface = null;
    private long lnativeObject = 0;

    private native void setSurface(long j, Object obj);

    public ViESurfaceRenderer(SurfaceView surfaceView) {
        this.dstRect = new Rect();
        this.creatNativeFlag = false;
        this.dstHeight = 0;
        this.dstWidth = 0;
        Log.i("hme-video", "enter ViESurfaceRenderer !");
        this.surfaceHolder = surfaceView.getHolder();
        if (this.surfaceHolder == null) {
            return;
        }
        Canvas lockCanvas = this.surfaceHolder.lockCanvas();
        if (lockCanvas != null) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                this.dstRect = surfaceFrame;
                this.dstHeight = this.dstRect.bottom - this.dstRect.top;
                this.dstWidth = this.dstRect.right - this.dstRect.left;
            }
            this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
        }
        this.srcRect.left = 0;
        this.srcRect.top = 0;
        this.srcRect.bottom = 0;
        this.srcRect.right = 0;
        this.creatNativeFlag = false;
        this.surfaceHolder.addCallback(this);
        Log.i("hme-video", "leave ViESurfaceRenderer !");
    }

    public void removeCallback() {
        if (this.surfaceHolder != null) {
            this.surfaceHolder.removeCallback(this);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.i("hme-video", "ViESurfaceRenderer.java! surfaceChanged  width:" + i2 + " height:" + i3 + "format: " + i + " creatNativeFlag:" + this.creatNativeFlag);
        this.dstHeight = i3;
        this.dstWidth = i2;
        this.dstRect.left = (int) (this.dstLeftScale * ((float) this.dstWidth));
        this.dstRect.top = (int) (this.dstTopScale * ((float) this.dstHeight));
        this.dstRect.bottom = (int) (this.dstBottomScale * ((float) this.dstHeight));
        this.dstRect.right = (int) (this.dstRightScale * ((float) this.dstWidth));
        if (this.creatNativeFlag) {
            Log.i("hme-video", "before setSurfaceViewDisplayParas");
            setSurfaceViewDisplayParas();
            Log.i("hme-video", "after setSurfaceViewDisplayParas");
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.i("hme-video", "VieSurfaceRenderer.java! enter surfaceCreated  this:" + this + " holder:" + surfaceHolder);
        this.remoteSurface = surfaceHolder.getSurface();
        if (Build.VERSION.SDK_INT >= 14 && manufaturer.equals("HUAWEI")) {
            if (0 != this.lnativeObject) {
                Log.d("hme-video", "VieSurfaceRenderer.java! lnativeObject is registerd!");
                setSurface(this.lnativeObject, this.remoteSurface);
                this.remoteSurface = null;
                return;
            }
            Log.d("hme-video", "VieSurfaceRenderer.java! not registered,save remote surface!!");
        }
    }

    public void getRemoteSurface() {
        Log.d("hme-video", "VieSurfaceRenderer.java! getRemoteSurface!!");
        if (Build.VERSION.SDK_INT >= 14 && manufaturer.equals("HUAWEI")) {
            if (0 != this.lnativeObject) {
                if (this.remoteSurface != null) {
                    Log.d("hme-video", "VieSurfaceRenderer.java! set remote surface to native channel!!");
                    setSurface(this.lnativeObject, this.remoteSurface);
                    this.remoteSurface = null;
                    return;
                }
                Log.e("hme-video", "VieSurfaceRenderer.java! remoteSurface is null!!");
                return;
            }
            Log.e("hme-video", "VieSurfaceRenderer.java! getRemoteSurface but not registered!!");
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        surfaceHolderSysLock.lock();
        try {
            Log.i("hme-video", "VieSurfaceRenderer.java! enter surfaceDestroyed this:" + this + " holder:" + surfaceHolder);
        } finally {
            surfaceHolderSysLock.unlock();
        }
    }

    public Bitmap createBitmap(int i, int i2) {
        if (this.bitmap == null) {
            try {
                Process.setThreadPriority(-4);
            } catch (Exception e) {
                Log.e("Logerr", "IOException");
            }
        }
        this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        this.srcRect.left = 0;
        this.srcRect.top = 0;
        this.srcRect.bottom = i2;
        this.srcRect.right = i;
        this.creatNativeFlag = true;
        return this.bitmap;
    }

    public ByteBuffer createByteBuffer(int i, int i2) {
        if (this.bitmap == null) {
            try {
                Process.setThreadPriority(-4);
            } catch (Exception e) {
                Log.e("Logerr", "IOException");
            }
        }
        try {
            this.bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
            this.byteBuffer = ByteBuffer.allocateDirect(i * i2 * 2);
            this.srcRect.left = 0;
            this.srcRect.top = 0;
            this.srcRect.bottom = i2;
            this.srcRect.right = i;
            this.creatNativeFlag = true;
            this.dataWidth = i;
            this.dataHeight = i2;
            setSurfaceViewDisplayParas();
        } catch (RuntimeException e2) {
            Log.e("hme-video", "Failed to createByteBuffer");
            this.bitmap = null;
            this.byteBuffer = null;
        }
        return this.byteBuffer;
    }

    public void setSurfaceViewDisplayParas() {
        Log.i("hme-video", "setSurfaceViewDisplayParas + dataWidth:" + this.dataWidth + " dataHeight:" + this.dataHeight + " displayType:" + this.displayType);
        StringBuilder sb = new StringBuilder();
        sb.append("setSurfaceViewDisplayParas + dstWidth/dstHeight:");
        sb.append(((float) this.dstWidth) / ((float) this.dstHeight));
        sb.append(" width/height:");
        sb.append(((float) this.dataWidth) / ((float) this.dataHeight));
        Log.i("hme-video", sb.toString());
        if (this.dataWidth == 0 || this.dataHeight == 0 || this.dstWidth == 0 || this.dstHeight == 0) {
            return;
        }
        switch (this.displayType) {
            case 0:
                if (this.dstWidth / this.dstHeight >= this.dataWidth / this.dataHeight) {
                    float f = (this.dstHeight * this.dataWidth) / this.dataHeight;
                    float f2 = 1.0f - (f / this.dstWidth);
                    Log.i("hme-video", "createByteBuffer + ratio:" + f2 + " tempDestWidth:" + f + " dstWidth:" + this.dstWidth);
                    float f3 = f2 / 2.0f;
                    setCoordinates(f3, 0.0f, 1.0f - f3, 1.0f, 0);
                } else if (this.dstWidth / this.dstHeight < this.dataWidth / this.dataHeight) {
                    float f4 = (this.dstWidth * this.dataHeight) / this.dataWidth;
                    float f5 = 1.0f - (f4 / this.dstHeight);
                    Log.i("hme-video", "createByteBuffer + ratio:" + f5 + " tempDestHeight:" + f4 + " dstHeight:" + this.dstHeight);
                    float f6 = f5 / 2.0f;
                    setCoordinates(0.0f, f6, 1.0f, 1.0f - f6, 0);
                }
                drawBlack();
                drawBlack();
                drawBlack();
                return;
            case 1:
                if (this.dstWidth / this.dstHeight >= this.dataWidth / this.dataHeight) {
                    int i = (int) ((this.dstHeight * this.dataWidth) / this.dstWidth);
                    this.srcRect.left = 0;
                    this.srcRect.right = this.dataWidth;
                    this.srcRect.top = (this.dataHeight - i) / 2;
                    this.srcRect.bottom = this.srcRect.top + i;
                    Log.i("hme-video", "createByteBuffer + top" + this.srcRect.top + " bottom:" + this.srcRect.bottom);
                    return;
                } else if (this.dstWidth / this.dstHeight < this.dataWidth / this.dataHeight) {
                    int i2 = (int) ((this.dstWidth * this.dataHeight) / this.dstHeight);
                    this.srcRect.top = 0;
                    this.srcRect.bottom = this.dataHeight;
                    this.srcRect.left = (this.dataWidth - i2) / 2;
                    this.srcRect.right = this.srcRect.left + i2;
                    Log.i("hme-video", "createByteBuffer + left" + this.srcRect.left + " right:" + this.srcRect.right);
                    return;
                } else {
                    return;
                }
            case 2:
                this.srcRect.left = 0;
                this.srcRect.top = 0;
                this.srcRect.bottom = this.dataHeight;
                this.srcRect.right = this.dataWidth;
                return;
            default:
                return;
        }
    }

    public void setCoordinates(float f, float f2, float f3, float f4, int i) {
        this.dstLeftScale = f;
        this.dstTopScale = f2;
        this.dstRightScale = f3;
        this.dstBottomScale = f4;
        this.dstRect.left = (int) (this.dstLeftScale * this.dstWidth);
        this.dstRect.top = (int) (this.dstTopScale * this.dstHeight);
        this.dstRect.bottom = (int) (this.dstBottomScale * this.dstHeight);
        this.dstRect.right = (int) (this.dstRightScale * this.dstWidth);
        Log.i("hme-video", "setCoordinates + left:" + this.dstRect.left + " top:" + this.dstRect.top + " bottom:" + this.dstRect.bottom + " right:" + this.dstRect.right + " Type:" + i);
        this.displayType = i;
    }

    public void drawByteBuffer() {
        if (this.byteBuffer == null) {
            return;
        }
        this.byteBuffer.rewind();
        this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
        drawBitmap();
    }

    public void drawBitmap() {
        if (this.bitmap == null) {
            return;
        }
        surfaceHolderSysLock.lock();
        try {
            Canvas lockCanvas = this.surfaceHolder.lockCanvas();
            if (lockCanvas != null) {
                lockCanvas.drawBitmap(this.bitmap, this.srcRect, this.dstRect, (Paint) null);
                this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
            }
        } finally {
            surfaceHolderSysLock.unlock();
        }
    }

    public void drawBlack() {
        Canvas lockCanvas;
        if (this.bitmap != null && (lockCanvas = this.surfaceHolder.lockCanvas()) != null) {
            lockCanvas.drawColor(-16777216);
            this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
        }
    }

    public void registerNativeObject(long j) {
        this.lnativeObject = j;
    }
}
