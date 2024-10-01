package com.huawei.ims;


public class COMException extends Exception {
    private static final long serialVersionUID = 1;

    public COMException() {
    }

    public COMException(String message) {
        super(message);
    }

    public COMException(Throwable cause) {
        super(cause);
    }

    public COMException(String message, Throwable cause) {
        super(message, cause);
    }
}
