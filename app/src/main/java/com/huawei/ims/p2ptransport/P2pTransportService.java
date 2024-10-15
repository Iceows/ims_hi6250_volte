package com.huawei.ims.p2ptransport;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.huawei.ims.p2ptransport.service.IP2pTransportForCallService;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class P2pTransportService extends Service {
    private static final String PERMISSION_P2P_TRANSPORT_SERVICE_FOR_CALL = "com.huawei.ims.permission.P2P_TRANSPORT_SERVICE_FOR_CALL";
    private static final String TAG = "P2pTransportService";
    private final IP2pTransportForCallService.Stub mBinder = new IP2pTransportForCallService.Stub() { // from class: com.huawei.ims.p2ptransport.P2pTransportService.1
        @Override // com.huawei.ims.p2ptransport.service.IP2pTransportForCallService
        public void startP2pTransfer(ParcelFileDescriptor pfd) {
            if (!P2pTransportService.this.checkPermission()) {
                Log.e(P2pTransportService.TAG, "has no permission or is not meetime app calling");
                return;
            }
            Log.i(P2pTransportService.TAG, "Get pfd from voip service is: " + pfd);
            P2pTransportService.this.mP2pTransportManager.init(pfd);
        }
    };
    private P2pTransportManager mP2pTransportManager;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mP2pTransportManager = P2pTransportManager.getInstance();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Log.i(TAG, "Unbind service");
        P2pTransportManager p2pTransportManager = this.mP2pTransportManager;
        if (p2pTransportManager != null) {
            p2pTransportManager.deInit();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPermission() {
        P2pTransportManager p2pTransportManager = this.mP2pTransportManager;
        if (p2pTransportManager == null) {
            return false;
        }
        return p2pTransportManager.hasPermission(this, "com.huawei.ims.permission.P2P_TRANSPORT_SERVICE_FOR_CALL");
    }
}
