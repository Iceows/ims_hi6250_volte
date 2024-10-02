package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciProvision {
    public static native int changePwd(String str, String str2, String str3, String str4);

    public static native int commitRegister(String str, String str2, String str3, String str4);

    public static native int commitResetPwd(String str, String str2, String str3, String str4);

    public static native boolean getRegType();

    public static native int getShortMessageInfo(String[] strArr, int[] iArr, String[] strArr2, String[] strArr3);

    public static native int getSmResultForRegisterWithImsi(String str, int i);

    public static native int requestForRegisterWithImsi(String str);

    public static native int requestVeriyCodeForRegister(String str, String str2);

    public static native int requestVeriyCodeForResetPwd(String str, String str2);

    public static native int stopChangePwd();

    public static native int stopOperation(int i);

    public static native int stopRegister();

    public static native int stopResetPwd();
}
