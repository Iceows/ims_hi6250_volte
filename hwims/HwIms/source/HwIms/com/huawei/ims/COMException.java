package com.huawei.ims;

/* loaded from: COMException.class */
public class COMException extends Exception {
    private static final long serialVersionUID = 1;

    public COMException() {
    }

    public COMException(String str) {
        super(str);
    }

    public COMException(String str, Throwable th) {
        super(str, th);
    }

    public COMException(Throwable th) {
        super(th);
    }
}
