package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciXBuffer {
    public static native void XBufAddBool(long j, int i, boolean z);

    public static native void XBufAddInt(long j, int i, int i2);

    public static native void XBufAddIntValue(long j, int i, int i2);

    public static native void XBufAddLong(long j, int i, long j2);

    public static native void XBufAddStr(long j, int i, String str);

    public static native void XBufAddStrSafe(long j, int i, String str);

    public static native void XBufAddUInt(long j, int i, int i2);

    public static native long XBufCreate(String str);

    public static native void XBufDelete(long j);

    public static native boolean XBufGetFiledBoolX(long j, int i, int i2, boolean z);

    public static native int XBufGetFiledIntX(long j, int i, int i2, int i3);

    public static native long XBufGetFiledLongX(long j, int i, int i2, long j2);

    public static native String XBufGetFiledStrX(long j, int i, int i2, String str);

    public static native String XBufGetFiledStrXSafe(long j, int i, int i2, String str);

    public static native long XBufGetNextUlong(long j);
}
