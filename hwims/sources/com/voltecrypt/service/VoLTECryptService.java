package com.voltecrypt.service;

import android.app.Service;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.telephony.Rlog;
import android.text.TextUtils;
import com.huawei.ims.HemihuaLoaderManager;
import com.voltecrypt.service.IVoLTECryptService;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class VoLTECryptService extends Service {
    private static final int BINDER_RESULT_FAIL = -1;
    private static final int BINDER_RESULT_NOT_SUPPORT = -100;
    private static final int BINDER_RESULT_SUCCESS = 0;
    private static final String PERMISSION_KEY = "permission";
    private static final String PERMISSION_VALUE = "com.westone.permission.VOLTE_SERVICE";
    private static final String TAG = "VoLTECryptService";
    private final IVoLTECryptService.Stub mBinder = new IVoLTECryptService.Stub() { // from class: com.voltecrypt.service.VoLTECryptService.1
        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getVoLTESwitchStatus() {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("getVoLTESwitchStatus");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setVoLTESwitchStatus(int status) {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("setVoLTESwitchStatus");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getEncryptionVoLTESwitchStatus() {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("getEncryptionVoLTESwitchStatus");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setEncryptionVoLTESwitchStatus(int status) {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("setEncryptionVoLTESwitchStatus");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setPowerMode(int mode) {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("setPowerMode");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getRootStatus() {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("getRootStatus");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int callVoLTEEncryptPhone(String phoneNum) {
            return VoLTECryptService.this.checkBinderForUnsupportInterface("callVoLTEEncryptPhone");
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int openEncryptedVoLTE() {
            Rlog.i(VoLTECryptService.TAG, "OpenEncryptedVoLTE");
            if (VoLTECryptService.this.checkBinder()) {
                VoLTECryptService.this.handleEncryptSwitchChanged(true);
                return 0;
            }
            Rlog.i(VoLTECryptService.TAG, "OpenEncryptedVoLTE: not called from expected app.");
            return -1;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int closeEncryptedVoLTE() {
            Rlog.i(VoLTECryptService.TAG, "CloseEncryptedVoLTE");
            if (VoLTECryptService.this.checkBinder()) {
                VoLTECryptService.this.handleEncryptSwitchChanged(false);
                return 0;
            }
            Rlog.i(VoLTECryptService.TAG, "CloseEncryptedVoLTE: not call from hemihua.");
            return -1;
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        Rlog.i(TAG, "onCreate");
        super.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Rlog.i(TAG, "onBind");
        if (intent == null) {
            Rlog.e(TAG, "onBind: no intent.");
            return null;
        }
        if (!HemihuaLoaderManager.isSupportCmccEncrypt()) {
            Rlog.e(TAG, "onBind: not support volte encrypt call.");
            return null;
        }
        if (!checkPermission(intent)) {
            Rlog.e(TAG, "onBind: no permission.");
            return null;
        }
        return this.mBinder;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Rlog.i(TAG, "onUnbind");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEncryptSwitchChanged(boolean isOn) {
        HemihuaLoaderManager manager = HemihuaLoaderManager.getInstance(this);
        if (manager != null) {
            manager.handleEncryptSwitchChanged(this, isOn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkBinder() {
        HemihuaLoaderManager manager = HemihuaLoaderManager.getInstance(this);
        if (manager == null) {
            return false;
        }
        if (!manager.isHemihuaAppExist(this)) {
            Rlog.i(TAG, "checkBinder: expected app is not installed.");
            return false;
        }
        if (!manager.isPidOfHemihua(this, Binder.getCallingPid())) {
            Rlog.i(TAG, "checkBinder: not called from expected app.");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkBinderForUnsupportInterface(String interfaceName) {
        if (TextUtils.isEmpty(interfaceName)) {
            return -1;
        }
        if (!checkBinder()) {
            Rlog.i(TAG, interfaceName + ": not called from expected app.");
            return -1;
        }
        Rlog.i(TAG, interfaceName + ": not support.");
        return BINDER_RESULT_NOT_SUPPORT;
    }

    private boolean checkPermission(Intent intent) {
        String permission = null;
        try {
            permission = intent.getStringExtra(PERMISSION_KEY);
        } catch (BadParcelableException e) {
            Rlog.e(TAG, "checkPermission: got BadParcelableException!");
        } catch (Exception e2) {
            Rlog.e(TAG, "checkPermission: got ClassNotFoundException!");
        }
        return "com.westone.permission.VOLTE_SERVICE".equals(permission);
    }
}
