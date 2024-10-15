package com.huawei.videoengine;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ViERenderer {
    private static final int MAXNUM = 16;
    private static final String TAG = "hme-video";
    private static ListenThread listenThread;
    private static SurfaceHolder g_localRenderer = null;
    private static SurfaceView g_localRender = null;
    private static ReentrantLock renderSysLock = new ReentrantLock();
    private static SurfaceView[] g_remoteRender = new SurfaceView[16];
    private static boolean saveLogcat = false;

    public static SurfaceView createRenderer(Context context) {
        return createRenderer(context, false);
    }

    public static SurfaceView createRenderer(Context context, boolean z) {
        SurfaceView surfaceView;
        Log.i(TAG, "ViERenderer.java! createRenderer");
        if (z && ViEAndroidGLES20.isSupported(context)) {
            surfaceView = new ViEAndroidGLES20(context);
        } else {
            surfaceView = new SurfaceView(context);
        }
        surfaceView.setVisibility(0);
        surfaceView.setBackgroundColor(0);
        surfaceView.setDrawingCacheEnabled(false);
        surfaceView.setZOrderMediaOverlay(true);
        return surfaceView;
    }

    public static int getIndexOfSurface(SurfaceView surfaceView) {
        if (surfaceView == null) {
            Log.e(TAG, "The input render is null!");
            return -1;
        }
        for (int i = 1; i < 16; i++) {
            SurfaceView[] surfaceViewArr = g_remoteRender;
            if (surfaceViewArr[i] == null) {
                surfaceViewArr[i] = surfaceView;
                return i;
            }
            if (surfaceViewArr[i] == surfaceView) {
                return i;
            }
        }
        Log.e(TAG, "Can't find the equal render!");
        return -1;
    }

    public static Object getSurfaceFromIndex(int i) {
        if (1 > i || 16 <= i) {
            return null;
        }
        SurfaceView[] surfaceViewArr = g_remoteRender;
        if (surfaceViewArr[i] != null) {
            return surfaceViewArr[i];
        }
        Log.e(TAG, "The Render of index " + i + " is null!");
        return null;
    }

    public static void setSurfaceNull(SurfaceView surfaceView) {
        for (int i = 1; i < 16; i++) {
            SurfaceView[] surfaceViewArr = g_remoteRender;
            if (surfaceView == surfaceViewArr[i]) {
                surfaceViewArr[i] = null;
                return;
            }
        }
    }

    public static void setSurfaceNullFromIndex(int i) {
        if (1 <= i && 16 > i) {
            g_remoteRender[i] = null;
        }
    }

    public static SurfaceView createLocalRenderer(Context context) {
        listenThread = new ListenThread(context);
        listenThread.start();
        Log.i(TAG, "Phone model: " + Build.MODEL);
        Log.i(TAG, "ViERenderer.java! createLocalRenderer");
        SurfaceView surfaceView = new SurfaceView(context);
        g_localRenderer = surfaceView.getHolder();
        g_localRenderer.setType(3);
        g_localRender = surfaceView;
        setLocalRenderInfo(surfaceView);
        return surfaceView;
    }

    public static void setLocalRenderInfo(SurfaceView surfaceView) {
        Log.i(TAG, "enter ViERenderer.java! setLocalRenderInfo");
        surfaceView.setVisibility(0);
        surfaceView.setBackgroundColor(0);
        surfaceView.setDrawingCacheEnabled(false);
        surfaceView.setZOrderMediaOverlay(true);
        surfaceView.setZOrderOnTop(true);
        Log.i(TAG, "leave ViERenderer.java! setLocalRenderInfo");
    }

    public static void reSetLocalRender() {
        Log.i(TAG, "enter ViERenderer.java! reSetLocalRender");
        renderSysLock.lock();
        try {
            setLocalRenderInfo(g_localRender);
            renderSysLock.unlock();
            Log.i(TAG, "leave ViERenderer.java! reSetLocalRender");
        } catch (Throwable th) {
            renderSysLock.unlock();
            throw th;
        }
    }

    public static void freeLocalRenderResource() {
        Log.i(TAG, "enter ViERenderer.java! freeLocalRenderResource");
        ReentrantLock reentrantLock = renderSysLock;
        if (reentrantLock != null) {
            reentrantLock.lock();
        }
        g_localRender = null;
        g_localRenderer = null;
        ReentrantLock reentrantLock2 = renderSysLock;
        if (reentrantLock2 != null) {
            reentrantLock2.unlock();
        }
        listenThread.stop1();
        Log.i(TAG, "leave ViERenderer.java! freeLocalRenderResource");
        if (saveLogcat) {
            stopLogcatManager();
        }
    }

    public static SurfaceHolder getLocalRenderer() {
        Log.i(TAG, "ViERenderer.java! getLocalRenderer");
        return g_localRenderer;
    }

    public static void startLogcattoFile() {
        if (!saveLogcat) {
            startLogcatManager();
            saveLogcat = true;
        }
    }

    public static void stopLogcattoFile() {
        if (saveLogcat) {
            stopLogcatManager();
            saveLogcat = false;
        }
    }

    public static boolean isAppOnForeground2(Context context) {
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName) && runningAppProcessInfo.importance == 100) {
                return true;
            }
        }
        return false;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    static class ListenThread extends Thread {
        Context icontext;
        boolean isFrontlast = false;
        boolean isFrontnow = false;
        boolean isRun;

        public ListenThread(Context context) {
            this.isRun = false;
            this.icontext = context;
            this.isRun = true;
        }

        public void stop1() {
            this.isRun = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.isRun) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                }
                this.isFrontnow = ViERenderer.isAppOnForeground2(this.icontext);
                if (this.isFrontlast != this.isFrontnow) {
                    Log.e(ViERenderer.TAG, "the app is on front " + this.isFrontnow);
                    this.isFrontlast = this.isFrontnow;
                }
            }
        }
    }

    private static void startLogcatManager() {
    }

    private static void stopLogcatManager() {
    }
}
