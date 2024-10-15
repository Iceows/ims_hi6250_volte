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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
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
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder == null) {
            return;
        }
        Canvas lockCanvas = surfaceHolder.lockCanvas();
        if (lockCanvas != null) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                this.dstRect = surfaceFrame;
                this.dstHeight = this.dstRect.bottom - this.dstRect.top;
                this.dstWidth = this.dstRect.right - this.dstRect.left;
            }
            this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
        }
        Rect rect = this.srcRect;
        rect.left = 0;
        rect.top = 0;
        rect.bottom = 0;
        rect.right = 0;
        this.creatNativeFlag = false;
        this.surfaceHolder.addCallback(this);
        Log.i("hme-video", "leave ViESurfaceRenderer !");
    }

    public void removeCallback() {
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.i("hme-video", "ViESurfaceRenderer.java! surfaceChanged  width:" + i2 + " height:" + i3 + "format: " + i + " creatNativeFlag:" + this.creatNativeFlag);
        this.dstHeight = i3;
        this.dstWidth = i2;
        Rect rect = this.dstRect;
        float f = this.dstLeftScale;
        int i4 = this.dstWidth;
        rect.left = (int) (f * ((float) i4));
        float f2 = this.dstTopScale;
        int i5 = this.dstHeight;
        rect.top = (int) (f2 * ((float) i5));
        rect.bottom = (int) (this.dstBottomScale * i5);
        rect.right = (int) (this.dstRightScale * i4);
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
        if (Build.VERSION.SDK_INT < 14 || !manufaturer.equals("HUAWEI")) {
            return;
        }
        if (0 != this.lnativeObject) {
            Log.d("hme-video", "VieSurfaceRenderer.java! lnativeObject is registerd!");
            setSurface(this.lnativeObject, this.remoteSurface);
            this.remoteSurface = null;
            return;
        }
        Log.d("hme-video", "VieSurfaceRenderer.java! not registered,save remote surface!!");
    }

    public void getRemoteSurface() {
        Log.d("hme-video", "VieSurfaceRenderer.java! getRemoteSurface!!");
        if (Build.VERSION.SDK_INT < 14 || !manufaturer.equals("HUAWEI")) {
            return;
        }
        if (0 == this.lnativeObject) {
            Log.e("hme-video", "VieSurfaceRenderer.java! getRemoteSurface but not registered!!");
        } else {
            if (this.remoteSurface != null) {
                Log.d("hme-video", "VieSurfaceRenderer.java! set remote surface to native channel!!");
                setSurface(this.lnativeObject, this.remoteSurface);
                this.remoteSurface = null;
                return;
            }
            Log.e("hme-video", "VieSurfaceRenderer.java! remoteSurface is null!!");
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
        Rect rect = this.srcRect;
        rect.left = 0;
        rect.top = 0;
        rect.bottom = i2;
        rect.right = i;
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
        int i;
        int i2;
        int i3;
        Log.i("hme-video", "setSurfaceViewDisplayParas + dataWidth:" + this.dataWidth + " dataHeight:" + this.dataHeight + " displayType:" + this.displayType);
        StringBuilder sb = new StringBuilder();
        sb.append("setSurfaceViewDisplayParas + dstWidth/dstHeight:");
        sb.append(((float) this.dstWidth) / ((float) this.dstHeight));
        sb.append(" width/height:");
        sb.append(((float) this.dataWidth) / ((float) this.dataHeight));
        Log.i("hme-video", sb.toString());
        int i4 = this.dataWidth;
        if (i4 == 0 || (i = this.dataHeight) == 0 || (i2 = this.dstWidth) == 0 || (i3 = this.dstHeight) == 0) {
            return;
        }
        int i5 = this.displayType;
        if (i5 == 0) {
            if (i2 / i3 >= i4 / i) {
                float f = (i3 * i4) / i;
                float f2 = 1.0f - (f / i2);
                Log.i("hme-video", "createByteBuffer + ratio:" + f2 + " tempDestWidth:" + f + " dstWidth:" + this.dstWidth);
                float f3 = f2 / 2.0f;
                setCoordinates(f3, 0.0f, 1.0f - f3, 1.0f, 0);
            } else if (i2 / i3 < i4 / i) {
                float f4 = (i2 * i) / i4;
                float f5 = 1.0f - (f4 / i3);
                Log.i("hme-video", "createByteBuffer + ratio:" + f5 + " tempDestHeight:" + f4 + " dstHeight:" + this.dstHeight);
                float f6 = f5 / 2.0f;
                setCoordinates(0.0f, f6, 1.0f, 1.0f - f6, 0);
            }
            drawBlack();
            drawBlack();
            drawBlack();
            return;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                Rect rect = this.srcRect;
                rect.left = 0;
                rect.top = 0;
                rect.bottom = i;
                rect.right = i4;
                return;
            }
            return;
        }
        if (i2 / i3 >= i4 / i) {
            int i6 = (int) ((i3 * i4) / i2);
            Rect rect2 = this.srcRect;
            rect2.left = 0;
            rect2.right = i4;
            rect2.top = (i - i6) / 2;
            rect2.bottom = rect2.top + i6;
            Log.i("hme-video", "createByteBuffer + top" + this.srcRect.top + " bottom:" + this.srcRect.bottom);
            return;
        }
        if (i2 / i3 < i4 / i) {
            int i7 = (int) ((i2 * i) / i3);
            Rect rect3 = this.srcRect;
            rect3.top = 0;
            rect3.bottom = i;
            rect3.left = (i4 - i7) / 2;
            rect3.right = rect3.left + i7;
            Log.i("hme-video", "createByteBuffer + left" + this.srcRect.left + " right:" + this.srcRect.right);
        }
    }

    public void setCoordinates(float f, float f2, float f3, float f4, int i) {
        this.dstLeftScale = f;
        this.dstTopScale = f2;
        this.dstRightScale = f3;
        this.dstBottomScale = f4;
        Rect rect = this.dstRect;
        float f5 = this.dstLeftScale;
        int i2 = this.dstWidth;
        rect.left = (int) (f5 * i2);
        float f6 = this.dstTopScale;
        int i3 = this.dstHeight;
        rect.top = (int) (f6 * i3);
        rect.bottom = (int) (this.dstBottomScale * i3);
        rect.right = (int) (this.dstRightScale * i2);
        Log.i("hme-video", "setCoordinates + left:" + this.dstRect.left + " top:" + this.dstRect.top + " bottom:" + this.dstRect.bottom + " right:" + this.dstRect.right + " Type:" + i);
        this.displayType = i;
    }

    public void drawByteBuffer() {
        ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer == null) {
            return;
        }
        byteBuffer.rewind();
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
