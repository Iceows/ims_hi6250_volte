package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Message;
import android.os.Parcel;
import android.os.WorkSource;
import android.telephony.Rlog;
import com.android.internal.telephony.CommandException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: ImsRILRequest.class */
public class ImsRILRequest {
    static final String LOG_TAG = "RILJ_IMS";
    private static final int MAX_POOL_SIZE = 4;
    String mClientId;
    ImsRILRequest mNext;
    int mRequest;
    Message mResult;
    int mSerial;
    int mWakeLockType;
    WorkSource mWorkSource;
    Parcel mp;
    static int sNextSerial = 0;
    static Object sSerialMonitor = new Object();
    private static Object sPoolSync = new Object();
    private static ImsRILRequest sPool = null;
    private static int sPoolSize = 0;

    private ImsRILRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsRILRequest obtain(int i, Message message) {
        ImsRILRequest imsRILRequest = null;
        synchronized (sPoolSync) {
            if (sPool != null) {
                imsRILRequest = sPool;
                sPool = imsRILRequest.mNext;
                imsRILRequest.mNext = null;
                sPoolSize--;
            }
        }
        ImsRILRequest imsRILRequest2 = imsRILRequest;
        if (imsRILRequest == null) {
            imsRILRequest2 = new ImsRILRequest();
        }
        synchronized (sSerialMonitor) {
            int i2 = sNextSerial;
            sNextSerial = i2 + 1;
            imsRILRequest2.mSerial = i2;
        }
        imsRILRequest2.mRequest = i;
        imsRILRequest2.mResult = message;
        imsRILRequest2.mp = Parcel.obtain();
        imsRILRequest2.mWakeLockType = -1;
        imsRILRequest2.mWorkSource = null;
        if (message == null || message.getTarget() != null) {
            imsRILRequest2.mp.writeInt(i);
            imsRILRequest2.mp.writeInt(imsRILRequest2.mSerial);
            return imsRILRequest2;
        }
        throw new NullPointerException("Message target must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsRILRequest obtain(int i, Message message, WorkSource workSource) {
        ImsRILRequest obtain = obtain(i, message);
        if (workSource != null) {
            obtain.mWorkSource = workSource;
            obtain.mClientId = String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
        } else {
            Rlog.e(LOG_TAG, "null workSource " + i);
        }
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resetSerial() {
        synchronized (sSerialMonitor) {
            sNextSerial = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onError(int i, Object obj) {
        CommandException fromRilErrno = CommandException.fromRilErrno(i);
        Rlog.d(LOG_TAG, serialString() + "< " + ImsRIL.requestToString(this.mRequest) + " error: " + fromRilErrno);
        if (this.mResult != null) {
            AsyncResult.forMessage(this.mResult, obj, fromRilErrno);
            this.mResult.sendToTarget();
        }
        if (this.mp != null) {
            this.mp.recycle();
            this.mp = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        synchronized (sPoolSync) {
            if (sPoolSize < 4) {
                this.mNext = sPool;
                sPool = this;
                sPoolSize++;
                this.mResult = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String serialString() {
        StringBuilder sb = new StringBuilder(8);
        String num = Integer.toString(this.mSerial);
        sb.append('[');
        int length = num.length();
        for (int i = 0; i < 4 - length; i++) {
            sb.append('0');
        }
        sb.append(num);
        sb.append(']');
        return sb.toString();
    }
}
