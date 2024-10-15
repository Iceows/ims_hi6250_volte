package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Message;
import android.os.Parcel;
import android.os.WorkSource;
import android.telephony.Rlog;
import com.android.internal.telephony.CommandException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImsRIL.java */
/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsRilRequest {
    private static final String LOG_TAG = "RILJ_IMS";
    private static final int MAX_POOL_SIZE = 4;
    private static final int SERIAL_STRING_LENGTH = 4;
    private static final int STRING_BUILDER_INITIAL_LENGTH = 8;
    String mClientId;
    ImsRilRequest mNext;
    Parcel mParcel;
    int mRequest;
    Message mResult;
    int mSerial;
    int mWakeLockType;
    WorkSource mWorkSource;
    private static Object sSerialMonitor = new Object();
    private static Object sPoolSync = new Object();
    private static ImsRilRequest sPool = null;
    private static int sNextSerial = 0;
    private static int sPoolSize = 0;

    private ImsRilRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsRilRequest obtain(int request, Message result) {
        ImsRilRequest rr;
        ImsRilRequest rr2 = null;
        synchronized (sPoolSync) {
            if (sPool != null) {
                rr2 = sPool;
                sPool = rr2.mNext;
                rr2.mNext = null;
                sPoolSize--;
            }
        }
        if (rr2 != null) {
            rr = rr2;
        } else {
            ImsRilRequest rr3 = new ImsRilRequest();
            rr = rr3;
        }
        synchronized (sSerialMonitor) {
            int i = sNextSerial;
            sNextSerial = i + 1;
            rr.mSerial = i;
        }
        rr.mRequest = request;
        rr.mResult = result;
        rr.mParcel = Parcel.obtain();
        rr.mWakeLockType = -1;
        rr.mWorkSource = null;
        if (result != null && result.getTarget() == null) {
            Rlog.e(LOG_TAG, "Message target is null");
        }
        rr.mParcel.writeInt(request);
        rr.mParcel.writeInt(rr.mSerial);
        return rr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsRilRequest obtain(int request, Message result, WorkSource workSource) {
        ImsRilRequest rr = obtain(request, result);
        if (workSource != null) {
            rr.mWorkSource = workSource;
            rr.mClientId = String.valueOf(workSource.get(0)) + ":" + workSource.getName(0);
        } else {
            Rlog.e(LOG_TAG, "null workSource " + request);
        }
        return rr;
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
    public static void resetSerial() {
        synchronized (sSerialMonitor) {
            sNextSerial = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String serialString() {
        StringBuilder sb = new StringBuilder(8);
        String sn = Integer.toString(this.mSerial);
        sb.append('[');
        int len = sn.length();
        for (int i = 0; i < 4 - len; i++) {
            sb.append('0');
        }
        sb.append(sn);
        sb.append(']');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onError(int error, Object ret) {
        CommandException ex = CommandException.fromRilErrno(error);
        Rlog.i(LOG_TAG, serialString() + "< " + ImsRIL.requestToString(this.mRequest) + " error: " + ex);
        Message message = this.mResult;
        if (message != null) {
            AsyncResult.forMessage(message, ret, ex);
            this.mResult.sendToTarget();
        }
        Parcel parcel = this.mParcel;
        if (parcel != null) {
            parcel.recycle();
            this.mParcel = null;
        }
    }
}
