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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsCallSessionListenerProxy {
    private static final String LOG_TAG = "ImsCallSessionListenerProxy";
    private Handler mCallbackHandler;
    private HandlerThread mHandlerThread;
    private ImsCallSessionListener mListener;

    public ImsCallSessionListenerProxy() {
        Rlog.i(LOG_TAG, "Constructor: start handler thread for callbacks.");
        this.mHandlerThread = new HandlerThread(LOG_TAG);
        this.mHandlerThread.start();
        this.mCallbackHandler = new Handler(this.mHandlerThread.getLooper());
    }

    public void callSessionStartFailed(final ImsReasonInfo reason) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.1
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionInitiatedFailed(reason);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionProgressing(final ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.2
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionProgressing()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionProgressing(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionStarted(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.3
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionStarted()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionInitiated(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionTerminated(final ImsReasonInfo reason) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.4
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTerminated()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionTerminated(reason);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionUssdMessageReceived(int mode, String ussdMessage) {
        Rlog.i(LOG_TAG, "callSessionUssdMessageReceived()");
    }

    public void callSessionSuppServiceReceived(final ImsSuppServiceNotification suppServiceInfo) {
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.5
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionSuppServiceReceived(suppServiceInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionHandover(final int srcAccessTech, final int targetAccessTech, final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.6
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandover()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionHandover(srcAccessTech, targetAccessTech, reasonInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionHandoverFailed(final int srcAccessTech, final int targetAccessTech, final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.7
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionHandoverFailed()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionHandoverFailed(srcAccessTech, targetAccessTech, reasonInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionTtyModeReceived(final int ttyMode) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.8
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionTtyModeReceived");
                    ImsCallSessionListenerProxy.this.mListener.callSessionTtyModeReceived(ttyMode);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionDeflected() {
        checkAccessPermission();
        Rlog.i(LOG_TAG, "callSessionDeflected");
    }

    public void callSessionDeflectFailed(ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        Rlog.i(LOG_TAG, "callSessionDeflectFailed");
    }

    public void callSessionHeld(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.9
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionHeld(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionHoldFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.10
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionHoldFailed(reasonInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionHoldReceived(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.11
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionHoldReceived(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionResumed(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.12
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionResumed(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionResumeFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.13
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionResumeFailed(reasonInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionResumeReceived(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.14
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionResumeReceived(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionMergeStarted(final IImsCallSession newSession, final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.15
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeStarted()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionMergeStarted(newSession, profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionMergeComplete(final ImsCallSessionImplBase newSession) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.16
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeComplete()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionMergeComplete(newSession);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionMergeFailed(final ImsReasonInfo reasonInfo) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.17
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionMergeFailed()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionMergeFailed(reasonInfo);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionUpdated(final ImsCallProfile profile) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.18
                @Override // java.lang.Runnable
                public void run() {
                    ImsCallSessionListenerProxy.this.mListener.callSessionUpdated(profile);
                }
            };
            postRunnable(runner);
        }
    }

    public void callSessionUpdateFailed(ImsReasonInfo reasonInfo) {
        Rlog.i(LOG_TAG, "callSessionUpdateFailed");
    }

    public void callSessionUpdateReceived(ImsCallProfile profile) {
        Rlog.i(LOG_TAG, "callSessionUpdateReceived");
    }

    public void callSessionConferenceExtended(IImsCallSession newSession, ImsCallProfile profile) {
        Rlog.i(LOG_TAG, "callSessionConferenceExtended");
    }

    public void callSessionConferenceExtendFailed(ImsReasonInfo reasonInfo) {
        Rlog.i(LOG_TAG, "callSessionConferenceExtendFailed");
    }

    public void callSessionConferenceExtendReceived(IImsCallSession newSession, ImsCallProfile profile) {
        Rlog.i(LOG_TAG, "callSessionConferenceExtendReceived");
    }

    public void callSessionInviteParticipantsRequestDelivered() {
        Rlog.i(LOG_TAG, "callSessionInviteParticipantsRequestDelivered");
    }

    public void callSessionInviteParticipantsRequestFailed(ImsReasonInfo reasonInfo) {
        Rlog.i(LOG_TAG, "callSessionInviteParticipantsRequestFailed");
    }

    public void callSessionRemoveParticipantsRequestDelivered() {
        Rlog.i(LOG_TAG, "callSessionRemoveParticipantsRequestDelivered");
    }

    public void callSessionRemoveParticipantsRequestFailed(ImsReasonInfo reasonInfo) {
        Rlog.i(LOG_TAG, "callSessionRemoveParticipantsRequestFailed");
    }

    public void callSessionConferenceStateUpdated(final ImsConferenceState state) {
        checkAccessPermission();
        if (this.mListener != null) {
            Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.19
                @Override // java.lang.Runnable
                public void run() {
                    Rlog.i(ImsCallSessionListenerProxy.LOG_TAG, "callSessionConferenceStateUpdated()");
                    ImsCallSessionListenerProxy.this.mListener.callSessionConferenceStateUpdated(state);
                }
            };
            postRunnable(runner);
        }
    }

    public void dispose() {
        Rlog.i(LOG_TAG, "dispose");
        checkAccessPermission();
        Runnable runner = new Runnable() { // from class: com.huawei.ims.ImsCallSessionListenerProxy.20
            @Override // java.lang.Runnable
            public void run() {
                ImsCallSessionListenerProxy.this.cleanup();
            }
        };
        postRunnable(runner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanup() {
        Rlog.i(LOG_TAG, "cleanup");
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.mHandlerThread = null;
            this.mCallbackHandler = null;
        }
    }

    void postRunnable(Runnable runner) {
        Rlog.i(LOG_TAG, "posting to handler");
        Handler handler = this.mCallbackHandler;
        if (handler != null) {
            handler.post(runner);
        }
    }

    public void callSessionMultipartyStateChanged(boolean isMultiParty) {
        Rlog.i(LOG_TAG, "callSessionMultipartyStateChanged enter");
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    public void setListener(ImsCallSessionListener listener) {
        this.mListener = listener;
    }
}
