package com.huawei.ims;

import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsEcbmImplBase;
import com.android.ims.internal.IImsEcbmListener;


public class HwImsEcbmImpl extends ImsEcbmImplBase {
    private static final int EVENT_ENTER_EMERGENCY_CALLBACK_MODE = 1;
    private static final int EVENT_EXIT_EMERGENCY_CALLBACK_MODE = 2;
    private static final String TAG = "HwImsEcbmImpl";
    private ImsRIL mCi;
    private Handler mHandler = new HwImsEcbmImplHandler();
    private IImsEcbmListener mListener;

    public HwImsEcbmImpl(ImsRIL ci) {
        this.mCi = ci;
        this.mCi.setEmergencyCallbackMode(this.mHandler, 1, null);
        this.mCi.registerForExitEmergencyCallbackMode(this.mHandler, 2, null);
    }

    public void setListener(IImsEcbmListener listener) {
        checkAccessPermission();
        this.mListener = listener;
    }

    public void exitEmergencyCallbackMode() {
        checkAccessPermission();
        this.mCi.exitEmergencyCallbackMode(Message.obtain(this.mHandler, 2));
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
            return;
        }
        throw new SecurityException("Only Phone is able to call this API");
    }

    public void createEcbmCallBackThread(final IImsEcbmListener listener, final boolean isEntered) {
        Runnable r = new Runnable() { // from class: com.huawei.ims.HwImsEcbmImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (isEntered) {
                        listener.enteredECBM();
                    } else {
                        listener.exitedECBM();
                    }
                } catch (RemoteException e) {
                    Rlog.d(HwImsEcbmImpl.TAG, "RemoteException @createEcbmCallBackThread " + e);
                }
            }
        };
        Thread t = new Thread(r, "HwImsEcbmImplEcbmCallBackThread");
        t.start();
    }

    public class HwImsEcbmImplHandler extends Handler {

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.d(HwImsEcbmImpl.TAG, "Message received: what = " + msg.what);
            switch (msg.what) {
                case 1:
                    Rlog.d(HwImsEcbmImpl.TAG, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE");
                    HwImsEcbmImpl.this.createEcbmCallBackThread(HwImsEcbmImpl.this.mListener, true);
                    return;
                case 2:
                    Rlog.d(HwImsEcbmImpl.TAG, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE");
                    HwImsEcbmImpl.this.createEcbmCallBackThread(HwImsEcbmImpl.this.mListener, false);
                    return;
                default:
                    Rlog.d(HwImsEcbmImpl.TAG, "Unknown message = " + msg.what);
                    return;
            }
        }
    }
}
