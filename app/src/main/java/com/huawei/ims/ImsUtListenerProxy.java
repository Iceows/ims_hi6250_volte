package com.huawei.ims;

import android.os.Binder;
import android.os.Bundle;
import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsData;
import android.telephony.ims.ImsSsInfo;
import android.telephony.ims.ImsUtListener;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsUtListenerProxy {
    private static final String LOG_TAG = "ImsUtListenerProxy";
    private ImsUtListener mListener;

    public void utConfigurationUpdated(final int id) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationUpdated(id);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationUpdateFailed(final int id, final ImsReasonInfo error) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.2
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationUpdateFailed(id, error);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationQueried(final int id, final Bundle ssInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.3
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationQueried(id, ssInfo);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationQueryFailed(final int id, final ImsReasonInfo error) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.4
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationQueryFailed(id, error);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationCallBarringQueried(final int id, final ImsSsInfo[] cbInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.5
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationCallBarringQueried(id, cbInfo);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationCallForwardQueried(final int id, final ImsCallForwardInfo[] cfInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.6
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationCallForwardQueried(id, cfInfo);
                }
            };
            startThread(runnable);
        }
    }

    public void utConfigurationCallWaitingQueried(final int id, final ImsSsInfo[] cwInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.7
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onUtConfigurationCallWaitingQueried(id, cwInfo);
                }
            };
            startThread(runnable);
        }
    }

    public void onSupplementaryServiceIndication(final ImsSsData ssData) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runnable = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.8
                @Override // java.lang.Runnable
                public void run() {
                    ImsUtListenerProxy.this.mListener.onSupplementaryServiceIndication(ssData);
                }
            };
            startThread(runnable);
        }
    }

    void startThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "ImsUtListenerProxyThread");
        thread.start();
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    public void setImsUtListener(ImsUtListener listener) {
        this.mListener = listener;
    }
}
