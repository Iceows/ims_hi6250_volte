package com.huawei.ims;

import android.os.Binder;
import android.os.Bundle;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsData;
import android.telephony.ims.ImsSsInfo;
import android.telephony.ims.ImsUtListener;

public class ImsUtListenerProxy {
    private static final String LOG_TAG = "ImsUtListenerProxy";
    public ImsUtListener mListener;

    public void utConfigurationUpdated(final int id) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.1

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationUpdated(id);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationUpdated()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationUpdateFailed(final int id, final ImsReasonInfo error) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.2

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationUpdateFailed(id, error);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationUpdateFailed()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationQueried(final int id, final Bundle ssInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.3

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationQueried(id, ssInfo);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationQueryFailed(final int id, final ImsReasonInfo error) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.4

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationQueryFailed(id, error);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationQueryFailed()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationCallBarringQueried(final int id, final ImsSsInfo[] cbInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.5

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallBarringQueried(id, cbInfo);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationCallBarringQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationCallForwardQueried(final int id, final ImsCallForwardInfo[] cfInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.6

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallForwardQueried(id, cfInfo);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationCallForwardQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationCallWaitingQueried(final int id, final ImsSsInfo[] cwInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.7

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onUtConfigurationCallWaitingQueried(id, cwInfo);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "utConfigurationCallWaitingQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void onSupplementaryServiceIndication(final ImsSsData ssData) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsUtListenerProxy.8

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsUtListenerProxy.this.mListener.onSupplementaryServiceIndication(ssData);
                    } catch (Throwable t) {
                        ImsUtListenerProxy.this.handleError(t, "onSupplementaryServiceIndication()");
                    }
                }
            };
            startThread(r);
        }
    }

    void startThread(Runnable r) {
        Thread t = new Thread(r, "ImsUtListenerProxyThread");
        t.start();
    }

    public void handleError(Throwable t, String message) {
        Rlog.e(LOG_TAG, t + " " + message);
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
            return;
        }
        throw new SecurityException("Only Phone is able to call this API");
    }
}
