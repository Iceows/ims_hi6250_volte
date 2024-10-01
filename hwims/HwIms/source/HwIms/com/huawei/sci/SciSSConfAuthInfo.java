package com.huawei.sci;

/* loaded from: SciSSConfAuthInfo.class */
public class SciSSConfAuthInfo {
    public static final int MAX_CIRCLE_TIMES = 10;
    private static SciSSConfAuthInfo instance = null;
    private int gbaType;
    private String impi;
    private byte[] naf_id;
    private byte[] rand;

    private SciSSConfAuthInfo() {
    }

    public static SciSSConfAuthInfo getInstance() {
        SciSSConfAuthInfo sciSSConfAuthInfo;
        synchronized (SciSSConfAuthInfo.class) {
            try {
                if (instance == null) {
                    instance = new SciSSConfAuthInfo();
                }
                sciSSConfAuthInfo = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sciSSConfAuthInfo;
    }

    public int getGbaType() {
        return this.gbaType;
    }

    public String getImpi() {
        return this.impi;
    }

    public byte[] getNaf_id() {
        return this.naf_id;
    }

    public byte[] getRand() {
        return this.rand;
    }

    public void setGbaType(int i) {
        this.gbaType = i;
    }

    public void setImpi(String str) {
        this.impi = str;
    }

    public void setNaf_id(byte[] bArr) {
        this.naf_id = bArr;
    }

    public void setRand(byte[] bArr) {
        this.rand = bArr;
    }
}
