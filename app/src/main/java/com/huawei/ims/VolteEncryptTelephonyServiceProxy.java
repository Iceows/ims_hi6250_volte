package com.huawei.ims;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.Rlog;
import com.android.services.telephony.common.IVolteEncryptTelephonyService;
import java.util.List;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class VolteEncryptTelephonyServiceProxy {
    private static final Object OBJECT_LOCK = new Object();
    private static final String PHONE_PACKAGE_NAME = "com.android.phone";
    private static final String TAG = "VolteEncryptTelephonyServiceProxy";
    private static final String VOLTE_ENCRYPT_HANDLER_SERVICE_NAME = "com.android.phone.VolteEncryptTelephonyService";
    private static final String VOLTE_ENCRYPT_HANDLER_SERVICE_PERMISSION = "com.huawei.permission.BIND_VOLTE_ENCRYPT_TELEPHONY_SERVICE";
    private static VolteEncryptTelephonyServiceProxy sInstance;
    private ServiceConnection mConnection = null;
    private Context mContext;
    private IVolteEncryptTelephonyService mVolteEncryptTelephonyService;

    private VolteEncryptTelephonyServiceProxy(Context context) {
        this.mContext = context;
        initServiceConnection();
    }

    public static void init(Context context, HwImsServiceImpl hwMmTelFeature) {
        synchronized (OBJECT_LOCK) {
            if (sInstance == null) {
                sInstance = new VolteEncryptTelephonyServiceProxy(context);
            }
        }
    }

    public static VolteEncryptTelephonyServiceProxy getInstance() {
        return sInstance;
    }

    public void fallBack() {
        Rlog.i(TAG, "fallBack!");
        IVolteEncryptTelephonyService iVolteEncryptTelephonyService = this.mVolteEncryptTelephonyService;
        if (iVolteEncryptTelephonyService != null) {
            try {
                iVolteEncryptTelephonyService.fallBack();
            } catch (RemoteException e) {
                Rlog.e(TAG, "fallBack exception");
            }
        }
    }

    private void initServiceConnection() {
        synchronized (OBJECT_LOCK) {
            if (this.mVolteEncryptTelephonyService == null) {
                createServiceConnection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class TeleServiceConnection implements ServiceConnection {
        private TeleServiceConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName className, IBinder service) {
            Rlog.i(VolteEncryptTelephonyServiceProxy.TAG, "Service Connected className = " + className);
            VolteEncryptTelephonyServiceProxy.this.onCallHandlerServiceConnected(IVolteEncryptTelephonyService.Stub.asInterface(service));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName className) {
            Rlog.i(VolteEncryptTelephonyServiceProxy.TAG, "Disconnected from UI service.");
            synchronized (VolteEncryptTelephonyServiceProxy.OBJECT_LOCK) {
                VolteEncryptTelephonyServiceProxy.this.unbind();
            }
        }
    }

    private static Intent getInCallEncryptServiceIntent(Context context) {
        Intent serviceIntent = new Intent(IVolteEncryptTelephonyService.class.getName());
        ComponentName component = new ComponentName(PHONE_PACKAGE_NAME, VOLTE_ENCRYPT_HANDLER_SERVICE_NAME);
        serviceIntent.setComponent(component);
        return serviceIntent;
    }

    private void createServiceConnection() {
        Intent serviceIntent = getInCallEncryptServiceIntent(this.mContext);
        Rlog.i(TAG, "binding to service = " + serviceIntent);
        synchronized (OBJECT_LOCK) {
            if (this.mConnection == null) {
                this.mConnection = new TeleServiceConnection();
                if (this.mContext == null) {
                    return;
                }
                PackageManager packageManger = this.mContext.getPackageManager();
                if (packageManger == null) {
                    return;
                }
                List<ResolveInfo> services = packageManger.queryIntentServices(serviceIntent, 0);
                if (services == null) {
                    return;
                }
                ServiceInfo serviceInfo = null;
                int size = services.size();
                Rlog.i(TAG, "createServiceConnection SIZE = " + size);
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    ResolveInfo info = services.get(i);
                    if (info.serviceInfo == null || !VOLTE_ENCRYPT_HANDLER_SERVICE_PERMISSION.equals(info.serviceInfo.permission)) {
                        i++;
                    } else {
                        serviceInfo = info.serviceInfo;
                        break;
                    }
                }
                if (serviceInfo != null) {
                    serviceIntent.setComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
                    Rlog.i(TAG, "binding to service = " + serviceIntent);
                    if (!this.mContext.bindService(serviceIntent, this.mConnection, 1)) {
                        Rlog.e(TAG, "Could not bind to default call handler service: " + serviceIntent.getComponent());
                    }
                } else {
                    Rlog.e(TAG, "Default call handler service not found.");
                }
            } else {
                Rlog.i(TAG, "Service connection to telephony service already started.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unbind() {
        synchronized (OBJECT_LOCK) {
            if (this.mVolteEncryptTelephonyService != null) {
                Rlog.i(TAG, "Unbinding service!");
                this.mVolteEncryptTelephonyService = null;
                if (this.mContext != null) {
                    this.mContext.unbindService(this.mConnection);
                }
            }
            this.mConnection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCallHandlerServiceConnected(IVolteEncryptTelephonyService callHandlerService) {
        Rlog.i(TAG, "onCallHandlerServiceConnected");
        synchronized (OBJECT_LOCK) {
            this.mVolteEncryptTelephonyService = callHandlerService;
            initServiceCalls();
        }
    }

    private void initServiceCalls() {
        try {
            this.mVolteEncryptTelephonyService.startVolteEncryptCallService(VolteEncryptCallCmdService.getInstance());
        } catch (RemoteException e) {
            Rlog.e(TAG, "Remote exception calling CallHandlerService::setCallCommandService", e);
        }
    }
}
