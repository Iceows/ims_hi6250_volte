package android.os;

import android.util.AndroidException;

/* loaded from: RemoteException.class */
public class RemoteException extends AndroidException {
    public RemoteException() {
    }

    public RemoteException(String str) {
        super(str);
    }

    public RemoteException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }

    public RuntimeException rethrowAsRuntimeException() {
        throw new RuntimeException(this);
    }

    public RuntimeException rethrowFromSystemServer() {
        if (this instanceof DeadObjectException) {
            throw new RuntimeException(new DeadSystemException());
        }
        throw new RuntimeException(this);
    }
}
