package com.huawei.sci;

public class CsfNty {
    public static final int EN_CSF_NTY_PARA_COOKIE = 4;
    public static final int EN_CSF_NTY_PARA_EXPIRES = 17;
    public static final int EN_CSF_NTY_PARA_MAX = 100;
    public static final int EN_CSF_NTY_PARA_SIP_STATUS_CODE = 14;

    public static native int ntyFilter(long j);

    public static native int registerReceiver(INotifyReceiver iNotifyReceiver, String str);

    public static native void unRegisterReceiver(INotifyReceiver iNotifyReceiver, String str);
}
