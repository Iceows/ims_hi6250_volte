package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciSSConfAuthInfo {
    public static final int MAX_CIRCLE_TIMES = 10;
    private static SciSSConfAuthInfo instance = null;
    private int gbaType;
    private String impi;
    private byte[] naf_id;
    private byte[] rand;

    private SciSSConfAuthInfo() {
    }

    public static synchronized SciSSConfAuthInfo getInstance() {
        SciSSConfAuthInfo sciSSConfAuthInfo;
        synchronized (SciSSConfAuthInfo.class) {
            if (instance == null) {
                instance = new SciSSConfAuthInfo();
            }
            sciSSConfAuthInfo = instance;
        }
        return sciSSConfAuthInfo;
    }

    public String getImpi() {
        return this.impi;
    }

    public void setImpi(String impi) {
        this.impi = impi;
    }

    public int getGbaType() {
        return this.gbaType;
    }

    public void setGbaType(int gbaType) {
        this.gbaType = gbaType;
    }

    public byte[] getNaf_id() {
        return this.naf_id;
    }

    public void setNaf_id(byte[] naf_id) {
        this.naf_id = naf_id;
    }

    public byte[] getRand() {
        return this.rand;
    }

    public void setRand(byte[] rand) {
        this.rand = rand;
    }
}
