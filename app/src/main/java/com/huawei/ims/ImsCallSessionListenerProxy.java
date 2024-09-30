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

    public void callSessionStartFailed(final ImsReasonInfo reason) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionInitiatedFailed(reason);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionStartFailed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionProgressing(final ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionProgressing()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionProgressing(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionProgressing()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionStarted(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionStarted()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionInitiated(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionStarted()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionTerminated(final ImsReasonInfo reason) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTerminated()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionTerminated(reason);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionTerminated()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionUssdMessageReceived(int mode, String ussdMessage) {
    }

    public void callSessionSuppServiceReceived(final ImsSuppServiceNotification suppServiceInfo) {
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionSuppServiceReceived(suppServiceInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "callSessionSuppServiceReceived()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionHandover(final int srcAccessTech, final int targetAccessTech, final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandover()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionHandover(srcAccessTech, targetAccessTech, reasonInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "callSessionHandover()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionHandoverFailed(final int srcAccessTech, final int targetAccessTech, final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandoverFailed()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionHandoverFailed(srcAccessTech, targetAccessTech, reasonInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "callSessionHandoverFailed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionTtyModeReceived(final int ttyMode) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTtyModeReceived");
                        ImsCallSessionListenerProxy.this.mListener.callSessionTtyModeReceived(ttyMode);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionTtyModeReceived()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionDeflected() {
        checkAccessPermission();
    }

    public void callSessionDeflectFailed(ImsReasonInfo reasonInfo) {
        checkAccessPermission();
    }

    public void callSessionHeld(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHeld(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionHeld()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionHoldFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHoldFailed(reasonInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionHoldFailed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionHoldReceived(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionHoldReceived(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionHoldReceived()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionResumed(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.12
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumed(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionResumed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionResumeFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.13
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumeFailed(reasonInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionResumeFailed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionResumeReceived(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionResumeReceived(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionResumeReceived()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionMergeStarted(final IImsCallSession newSession, final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.15
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeStarted()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeStarted(newSession, profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionMergeStarted()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionMergeComplete(final ImsCallSessionImplBase newSession) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.16
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeComplete()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeComplete(newSession);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionMergeComplete()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionMergeFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.17
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeFailed()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionMergeFailed(reasonInfo);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "oncallSessionMergeFailed()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionUpdated(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.18
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ImsCallSessionListenerProxy.this.mListener.callSessionUpdated(profile);
                    } catch (Throwable t) {
                        ImsCallSessionListenerProxy.this.handleError(t, "onCallSessionResumeReceived()");
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void callSessionUpdateFailed(ImsReasonInfo reasonInfo) {
    }

    public void callSessionUpdateReceived(ImsCallProfile profile) {
    }

    public void callSessionConferenceExtended(IImsCallSession newSession, ImsCallProfile profile) {
    }

    public void callSessionConferenceExtendFailed(ImsReasonInfo reasonInfo) {
    }

    public void callSessionConferenceExtendReceived(IImsCallSession newSession, ImsCallProfile profile) {
    }

    public void callSessionInviteParticipantsRequestDelivered() {
    }

    public void callSessionInviteParticipantsRequestFailed(ImsReasonInfo reasonInfo) {
    }

    public void callSessionRemoveParticipantsRequestDelivered() {
    }

    public void callSessionRemoveParticipantsRequestFailed(ImsReasonInfo reasonInfo) {
    }

    public void callSessionConferenceStateUpdated(final ImsConferenceState state) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.19
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Rlog.d(ImsCallSessionListenerProxy.LOG_TAG, "callSessionConferenceStateUpdated()");
                        ImsCallSessionListenerProxy.this.mListener.callSessionConferenceStateUpdated(state);
                    } catch (RuntimeException re) {
                        Rlog.e(ImsCallSessionListenerProxy.LOG_TAG, "RemoteException @onCallConferenceStateUpdated() --> " + re);
                    }
                }
            };
            postRunnable(r);
        }
    }

    public void dispose() {
        Rlog.d(LOG_TAG, "dispose");
        checkAccessPermission();
        Runnable r = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.20
            @Override // java.lang.Runnable
            public void run() {
                ImsCallSessionListenerProxy.this.cleanup();
            }
        };
        postRunnable(r);
    }

    public void cleanup() {
        Rlog.d(LOG_TAG, "cleanup");
        if (this.mHandlerThread != null) {
            this.mHandlerThread.quitSafely();
            this.mHandlerThread = null;
            this.mCallbackHandler = null;
        }
    }

    void postRunnable(Runnable r) {
        Rlog.d(LOG_TAG, "posting to handler");
        if (this.mCallbackHandler != null) {
            this.mCallbackHandler.post(r);
        }
    }

    public void handleError(Throwable t, String message) {
        Rlog.e(LOG_TAG, t + " " + message);
    }

    public void callSessionMultipartyStateChanged(boolean isMultiParty) {
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
            return;
        }
        throw new SecurityException("Only Phone is able to call this API");
    }
}
