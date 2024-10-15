package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciSSConfAuthInfo {
    public static final int MAX_CIRCLE_TIMES = 10;
    private static SciSSConfAuthInfo instance = null;
    private int gbaType;
    private String impi;
    private byte[] nafId;
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

    public byte[] getNafId() {
        return this.nafId;
    }

    public void setNafId(byte[] nafId) {
        this.nafId = nafId;
    }

    public byte[] getRand() {
        return this.rand;
    }

    public void setRand(byte[] rand) {
        this.rand = rand;
    }
}
