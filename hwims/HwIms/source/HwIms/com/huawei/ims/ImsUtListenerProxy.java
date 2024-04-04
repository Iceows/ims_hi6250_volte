package com.huawei.ims;

import android.os.Binder;
import android.os.Bundle;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsData;
import android.telephony.ims.ImsSsInfo;
import android.telephony.ims.ImsUtListener;

/* loaded from: ImsUtListenerProxy.class */
public class ImsUtListenerProxy {
    private static final String LOG_TAG = "ImsUtListenerProxy";
    public ImsUtListener mListener;

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleError(Throwable th, String str) {
        Rlog.e(LOG_TAG, th + " " + str);
    }

    public void onSupplementaryServiceIndication(final ImsSsData imsSsData) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onSupplementaryServiceIndication(imsSsData);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "onSupplementaryServiceIndication()");
                    }
                }
            });
        }
    }

    void startThread(Runnable runnable) {
        new Thread(runnable, "ImsUtListenerProxyThread").start();
    }

    public void utConfigurationCallBarringQueried(final int i, final ImsSsInfo[] imsSsInfoArr) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallBarringQueried(i, imsSsInfoArr);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationCallBarringQueried()");
                    }
                }
            });
        }
    }

    public void utConfigurationCallForwardQueried(final int i, final ImsCallForwardInfo[] imsCallForwardInfoArr) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallForwardQueried(i, imsCallForwardInfoArr);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationCallForwardQueried()");
                    }
                }
            });
        }
    }

    public void utConfigurationCallWaitingQueried(final int i, final ImsSsInfo[] imsSsInfoArr) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallWaitingQueried(i, imsSsInfoArr);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationCallWaitingQueried()");
                    }
                }
            });
        }
    }

    public void utConfigurationQueried(final int i, final Bundle bundle) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationQueried(i, bundle);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationQueried()");
                    }
                }
            });
        }
    }

    public void utConfigurationQueryFailed(final int i, final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationQueryFailed(i, imsReasonInfo);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationQueryFailed()");
                    }
                }
            });
        }
    }

    public void utConfigurationUpdateFailed(final int i, final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationUpdateFailed(i, imsReasonInfo);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationUpdateFailed()");
                    }
                }
            });
        }
    }

    public void utConfigurationUpdated(final int i) {
        checkAccessPermission();
        if (this.mListener != null) {
            startThread(new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationUpdated(i);
                    } catch (Throwable th) {
                        ImsUtListenerProxy.this.handleError(th, "utConfigurationUpdated()");
                    }
                }
            });
        }
    }
}
