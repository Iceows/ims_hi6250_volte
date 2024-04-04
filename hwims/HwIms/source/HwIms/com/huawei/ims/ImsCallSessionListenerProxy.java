package com.huawei.ims;

import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsConferenceState;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.ImsSuppServiceNotification;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import com.android.ims.internal.IImsCallSession;

/* loaded from: ImsCallSessionListenerProxy.class */
public class ImsCallSessionListenerProxy {
    private static final String LOG_TAG = "ImsCallSessionListenerProxy";
    private Handler mCallbackHandler;
    private HandlerThread mHandlerThread;
    public ImsCallSessionListener mListener;

    public ImsCallSessionListenerProxy() {
        Rlog.d(LOG_TAG, "Constructor: start handler thread for callbacks.");
        this.mHandlerThread = new HandlerThread(LOG_TAG);
        this.mHandlerThread.start();
        this.mCallbackHandler = new Handler(this.mHandlerThread.getLooper());
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanup() {
        Rlog.d(LOG_TAG, "cleanup");
        if (this.mHandlerThread != null) {
            this.mHandlerThread.quitSafely();
            this.mHandlerThread = null;
            this.mCallbackHandler = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleError(Throwable th, String str) {
        Rlog.e(LOG_TAG, th + " " + str);
    }

    public void callSessionConferenceExtendFailed(ImsReasonInfo imsReasonInfo) {
    }

    public void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    public void callSessionConferenceExtended(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    public void callSessionConferenceStateUpdated(final ImsConferenceState imsConferenceState) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.19
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionConferenceStateUpdated()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionConferenceStateUpdated(imsConferenceState);
                    } catch (RuntimeException e) {
                        Rlog.e(ImsCallSessionListenerProxy.LOG_TAG, "RemoteException @onCallConferenceStateUpdated() --> " + e);
                    }
                }
            });
        }
    }

    public void callSessionDeflectFailed(ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
    }

    public void callSessionDeflected() {
        checkAccessPermission();
    }

    public void callSessionHandover(final int i, final int i2, final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandover()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionHandover(i, i2, imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "callSessionHandover()");
                    }
                }
            });
        }
    }

    public void callSessionHandoverFailed(final int i, final int i2, final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandoverFailed()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionHandoverFailed(i, i2, imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "callSessionHandoverFailed()");
                    }
                }
            });
        }
    }

    public void callSessionHeld(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHeld(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionHeld()");
                    }
                }
            });
        }
    }

    public void callSessionHoldFailed(final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHoldFailed(imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionHoldFailed()");
                    }
                }
            });
        }
    }

    public void callSessionHoldReceived(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHoldReceived(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionHoldReceived()");
                    }
                }
            });
        }
    }

    public void callSessionInviteParticipantsRequestDelivered() {
    }

    public void callSessionInviteParticipantsRequestFailed(ImsReasonInfo imsReasonInfo) {
    }

    public void callSessionMergeComplete(final ImsCallSessionImplBase imsCallSessionImplBase) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.16
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeComplete()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeComplete(imsCallSessionImplBase);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionMergeComplete()");
                    }
                }
            });
        }
    }

    public void callSessionMergeFailed(final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.17
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeFailed()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeFailed(imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "oncallSessionMergeFailed()");
                    }
                }
            });
        }
    }

    public void callSessionMergeStarted(final IImsCallSession iImsCallSession, final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.15
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeStarted()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeStarted(iImsCallSession, imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionMergeStarted()");
                    }
                }
            });
        }
    }

    public void callSessionMultipartyStateChanged(boolean z) {
    }

    public void callSessionProgressing(final ImsStreamMediaProfile imsStreamMediaProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionProgressing()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionProgressing(imsStreamMediaProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionProgressing()");
                    }
                }
            });
        }
    }

    public void callSessionRemoveParticipantsRequestDelivered() {
    }

    public void callSessionRemoveParticipantsRequestFailed(ImsReasonInfo imsReasonInfo) {
    }

    public void callSessionResumeFailed(final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.13
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumeFailed(imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionResumeFailed()");
                    }
                }
            });
        }
    }

    public void callSessionResumeReceived(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumeReceived(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionResumeReceived()");
                    }
                }
            });
        }
    }

    public void callSessionResumed(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.12
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumed(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionResumed()");
                    }
                }
            });
        }
    }

    public void callSessionStartFailed(final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionInitiatedFailed(imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionStartFailed()");
                    }
                }
            });
        }
    }

    public void callSessionStarted(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionStarted()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionInitiated(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionStarted()");
                    }
                }
            });
        }
    }

    public void callSessionSuppServiceReceived(final ImsSuppServiceNotification imsSuppServiceNotification) {
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionSuppServiceReceived(imsSuppServiceNotification);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "callSessionSuppServiceReceived()");
                    }
                }
            });
        }
    }

    public void callSessionTerminated(final ImsReasonInfo imsReasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTerminated()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionTerminated(imsReasonInfo);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionTerminated()");
                    }
                }
            });
        }
    }

    public void callSessionTtyModeReceived(final int i) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTtyModeReceived");
                        ImsCallSessionListenerProxy.this.mListener.callSessionTtyModeReceived(i);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionTtyModeReceived()");
                    }
                }
            });
        }
    }

    public void callSessionUpdateFailed(ImsReasonInfo imsReasonInfo) {
    }

    public void callSessionUpdateReceived(ImsCallProfile imsCallProfile) {
    }

    public void callSessionUpdated(final ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (this.mListener != null) {
            postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.18
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionUpdated(imsCallProfile);
                    } catch (Throwable th) {
                        ImsCallSessionListenerProxy.this.handleError(th, "onCallSessionResumeReceived()");
                    }
                }
            });
        }
    }

    public void callSessionUssdMessageReceived(int i, String str) {
    }

    public void dispose() {
        Rlog.d(LOG_TAG, "dispose");
        checkAccessPermission();
        postRunnable(new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.20
            @Override // java.lang.Runnable
            public void run() {
                ImsCallSessionListenerProxy.this.cleanup();
            }
        });
    }

    void postRunnable(Runnable runnable) {
        Rlog.d(LOG_TAG, "posting to handler");
        if (this.mCallbackHandler != null) {
            this.mCallbackHandler.post(runnable);
        }
    }
}
