package com.huawei.videoengine;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: ViERenderer.class */
public class ViERenderer {
    private static final int MAXNUM = 16;
    private static final String TAG = "hme-video";
    private static ListenThread listenThread;
    private static SurfaceHolder g_localRenderer = null;
    private static SurfaceView g_localRender = null;
    private static ReentrantLock renderSysLock = new ReentrantLock();
    private static SurfaceView[] g_remoteRender = new SurfaceView[16];
    private static boolean saveLogcat = false;

    /* loaded from: ViERenderer$ListenThread.class */
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

        public void stop1() {
            this.isRun = false;
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

    public static SurfaceView createRenderer(Context context) {
        return createRenderer(context, false);
    }

    public static SurfaceView createRenderer(Context context, boolean z) {
        Log.i(TAG, "ViERenderer.java! createRenderer");
        ViEAndroidGLES20 viEAndroidGLES20 = (z && ViEAndroidGLES20.isSupported(context)) ? new ViEAndroidGLES20(context) : new SurfaceView(context);
        viEAndroidGLES20.setVisibility(0);
        viEAndroidGLES20.setBackgroundColor(0);
        viEAndroidGLES20.setDrawingCacheEnabled(false);
        viEAndroidGLES20.setZOrderMediaOverlay(true);
        return viEAndroidGLES20;
    }

    public static void freeLocalRenderResource() {
        Log.i(TAG, "enter ViERenderer.java! freeLocalRenderResource");
        if (renderSysLock != null) {
            renderSysLock.lock();
        }
        g_localRender = null;
        g_localRenderer = null;
        if (renderSysLock != null) {
            renderSysLock.unlock();
        }
        listenThread.stop1();
        Log.i(TAG, "leave ViERenderer.java! freeLocalRenderResource");
        if (saveLogcat) {
            stopLogcatManager();
        }
    }

    public static int getIndexOfSurface(SurfaceView surfaceView) {
        if (surfaceView == null) {
            Log.e(TAG, "The input render is null!");
            return -1;
        }
        for (int i = 1; i < 16; i++) {
            if (g_remoteRender[i] == null) {
                g_remoteRender[i] = surfaceView;
                return i;
            } else if (g_remoteRender[i] == surfaceView) {
                return i;
            }
        }
        Log.e(TAG, "Can't find the equal render!");
        return -1;
    }

    public static SurfaceHolder getLocalRenderer() {
        Log.i(TAG, "ViERenderer.java! getLocalRenderer");
        return g_localRenderer;
    }

    public static Object getSurfaceFromIndex(int i) {
        if (1 > i || 16 <= i) {
            return null;
        }
        if (g_remoteRender[i] != null) {
            return g_remoteRender[i];
        }
        Log.e(TAG, "The Render of index " + i + " is null!");
        return null;
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

    public static void setLocalRenderInfo(SurfaceView surfaceView) {
        Log.i(TAG, "enter ViERenderer.java! setLocalRenderInfo");
        surfaceView.setVisibility(0);
        surfaceView.setBackgroundColor(0);
        surfaceView.setDrawingCacheEnabled(false);
        surfaceView.setZOrderMediaOverlay(true);
        surfaceView.setZOrderOnTop(true);
        Log.i(TAG, "leave ViERenderer.java! setLocalRenderInfo");
    }

    public static void setSurfaceNull(SurfaceView surfaceView) {
        for (int i = 1; i < 16; i++) {
            if (surfaceView == g_remoteRender[i]) {
                g_remoteRender[i] = null;
                return;
            }
        }
    }

    public static void setSurfaceNullFromIndex(int i) {
        if (1 > i || 16 <= i) {
            return;
        }
        g_remoteRender[i] = null;
    }

    private static void startLogcatManager() {
    }

    public static void startLogcattoFile() {
        if (saveLogcat) {
            return;
        }
        startLogcatManager();
        saveLogcat = true;
    }

    private static void stopLogcatManager() {
    }

    public static void stopLogcattoFile() {
        if (saveLogcat) {
            stopLogcatManager();
            saveLogcat = false;
        }
    }
}
