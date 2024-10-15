package com.huawei.ims;

import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsEcbmImplBase;
import com.android.ims.internal.IImsEcbmListener;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
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
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createEcbmCallBackThread(final IImsEcbmListener listener, final boolean isEntered) {
        Runnable runnable = new Runnable() { // from class: com.huawei.ims.HwImsEcbmImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (isEntered) {
                        listener.enteredECBM();
                    } else {
                        listener.exitedECBM();
                    }
                } catch (RemoteException e) {
                    Rlog.i(HwImsEcbmImpl.TAG, "RemoteException @createEcbmCallBackThread " + e);
                }
            }
        };
        Thread thread = new Thread(runnable, "HwImsEcbmImplEcbmCallBackThread");
        thread.start();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class HwImsEcbmImplHandler extends Handler {
        private HwImsEcbmImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.i(HwImsEcbmImpl.TAG, "Message received: what = " + msg.what);
            int i = msg.what;
            if (i == 1) {
                Rlog.i(HwImsEcbmImpl.TAG, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE");
                HwImsEcbmImpl hwImsEcbmImpl = HwImsEcbmImpl.this;
                hwImsEcbmImpl.createEcbmCallBackThread(hwImsEcbmImpl.mListener, true);
            } else if (i == 2) {
                Rlog.i(HwImsEcbmImpl.TAG, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE");
                HwImsEcbmImpl hwImsEcbmImpl2 = HwImsEcbmImpl.this;
                hwImsEcbmImpl2.createEcbmCallBackThread(hwImsEcbmImpl2.mListener, false);
            } else {
                Rlog.i(HwImsEcbmImpl.TAG, "Unknown message = " + msg.what);
            }
        }
    }
}
