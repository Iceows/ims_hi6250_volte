package com.huawei.ims;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.telephony.Rlog;
import android.text.TextUtils;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HemihuaLoaderService extends Service {
    private static final String PACKAGE = "package";
    private static final String SERVICE_ACTION_NAME = ".UIService";
    private static final String SERVICE_NAME = "com.cmcc.hemihua.server.UIService";
    private static final String TAG = "HemihuaLoaderService";
    private static boolean isHemihuaBind = false;
    private BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.HemihuaLoaderService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String packageName;
            if (intent != null && intent.getData() != null && (packageName = intent.getData().getSchemeSpecificPart()) != null && packageName.equals(HemihuaLoaderManager.getHemihuaPackageName())) {
                if (TextUtils.equals(intent.getAction(), "android.intent.action.PACKAGE_ADDED") || TextUtils.equals(intent.getAction(), "android.intent.action.PACKAGE_REPLACED")) {
                    Rlog.i(HemihuaLoaderService.TAG, "startHemihuaService when package is added or replaced");
                    HemihuaLoaderService.this.startHemihuaService();
                } else if (TextUtils.equals(intent.getAction(), "android.intent.action.PACKAGE_REMOVED")) {
                    Rlog.i(HemihuaLoaderService.TAG, "close volte encrypt switch when package is removed.");
                    HemihuaLoaderService.this.closeEncryptSwitch();
                } else {
                    Rlog.i(HemihuaLoaderService.TAG, "no used action.");
                }
            }
        }
    };
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.ims.HemihuaLoaderService.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            Rlog.i(HemihuaLoaderService.TAG, "Hemihua-connected");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Rlog.i(HemihuaLoaderService.TAG, "Hemihua-disconnected");
            HemihuaLoaderService.this.startHemihuaService();
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Rlog.i(TAG, "onCreate");
        startHemihuaService();
        IntentFilter appFilter = new IntentFilter();
        appFilter.addAction("android.intent.action.PACKAGE_ADDED");
        appFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        appFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        appFilter.addDataScheme(PACKAGE);
        registerReceiver(this.broadcastReceiver, appFilter);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Rlog.i(TAG, "onDestroy");
        unbindHemihuaService();
        BroadcastReceiver broadcastReceiver = this.broadcastReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHemihuaService() {
        Rlog.i(TAG, "startHemihuaErvice...");
        HemihuaLoaderManager manager = HemihuaLoaderManager.getInstance(this);
        if (manager == null || !manager.isHemihuaAppExist(this)) {
            Rlog.i(TAG, "close volte encrypt switch when expected app is not installed.");
            closeEncryptSwitch();
            return;
        }
        Intent intent = new Intent();
        ComponentName componentName = new ComponentName(HemihuaLoaderManager.getHemihuaPackageName(), SERVICE_NAME);
        intent.setComponent(componentName);
        intent.setAction(SERVICE_ACTION_NAME);
        isHemihuaBind = bindService(intent, this.mConnection, 1);
        Rlog.i(TAG, "bindservice:" + isHemihuaBind);
    }

    private void unbindHemihuaService() {
        if (isHemihuaBind) {
            unbindService(this.mConnection);
            Rlog.i(TAG, "unbindHemihuaService");
            isHemihuaBind = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeEncryptSwitch() {
        HemihuaLoaderManager manager = HemihuaLoaderManager.getInstance(this);
        if (manager != null) {
            manager.handleEncryptSwitchChanged(this, false);
        }
    }
}
