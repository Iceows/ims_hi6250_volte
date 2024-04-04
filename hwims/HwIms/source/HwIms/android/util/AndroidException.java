package android.util;

/* loaded from: AndroidException.class */
public class AndroidException extends Exception {
    public AndroidException() {
    }

    public AndroidException(Exception exc) {
        super(exc);
    }

    public AndroidException(String str) {
        super(str);
    }

    public AndroidException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AndroidException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
