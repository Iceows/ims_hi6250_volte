package com.huawei.ims;

import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsEcbmImplBase;
import com.android.ims.internal.IImsEcbmListener;

/* loaded from: HwImsEcbmImpl.class */
public class HwImsEcbmImpl extends ImsEcbmImplBase {
    private static final int EVENT_ENTER_EMERGENCY_CALLBACK_MODE = 1;
    private static final int EVENT_EXIT_EMERGENCY_CALLBACK_MODE = 2;
    private static final String TAG = "HwImsEcbmImpl";
    private ImsRIL mCi;
    private Handler mHandler = new HwImsEcbmImplHandler();
    private IImsEcbmListener mListener;

    /* loaded from: HwImsEcbmImpl$HwImsEcbmImplHandler.class */
    private class HwImsEcbmImplHandler extends Handler {
        private HwImsEcbmImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Rlog.d(HwImsEcbmImpl.TAG, "Message received: what = " + message.what);
            switch (message.what) {
                case 1:
                    Rlog.d(HwImsEcbmImpl.TAG, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE");
                    HwImsEcbmImpl.this.createEcbmCallBackThread(HwImsEcbmImpl.this.mListener, true);
                    return;
                case 2:
                    Rlog.d(HwImsEcbmImpl.TAG, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE");
                    HwImsEcbmImpl.this.createEcbmCallBackThread(HwImsEcbmImpl.this.mListener, false);
                    return;
                default:
                    Rlog.d(HwImsEcbmImpl.TAG, "Unknown message = " + message.what);
                    return;
            }
        }
    }

    public HwImsEcbmImpl(ImsRIL imsRIL) {
        this.mCi = imsRIL;
        this.mCi.setEmergencyCallbackMode(this.mHandler, 1, null);
        this.mCi.registerForExitEmergencyCallbackMode(this.mHandler, 2, null);
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEcbmCallBackThread(final IImsEcbmListener iImsEcbmListener, final boolean z) {
        new Thread(new Runnable() { // from class: com.huawei.ims.HwImsEcbmImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (z) {
                        iImsEcbmListener.enteredECBM();
                    } else {
                        iImsEcbmListener.exitedECBM();
                    }
                } catch (RemoteException e) {
                    Rlog.d(HwImsEcbmImpl.TAG, "RemoteException @createEcbmCallBackThread " + e);
                }
            }
        }, "HwImsEcbmImplEcbmCallBackThread").start();
    }

    public void exitEmergencyCallbackMode() {
        checkAccessPermission();
        this.mCi.exitEmergencyCallbackMode(Message.obtain(this.mHandler, 2));
    }

    public void setListener(IImsEcbmListener iImsEcbmListener) {
        checkAccessPermission();
        this.mListener = iImsEcbmListener;
    }
}
