package com.huawei.ims;

import vendor.huawei.hardware.radio.ims.V2_0.RILImsRegErrReport;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsRegErrReport {
    public static final int IMS_REG_ERR_DOMAIN_EE = 100;
    public static final int IMS_REG_ERR_DOMAIN_LTE = 0;
    public static final int IMS_REG_ERR_DOMAIN_NR = 4;
    public static final int IMS_REG_ERR_DOMAIN_WIFI = 1;
    public static final int IMS_REG_ERR_FAILCAUSE_ILLEGALME = 6;
    public static final int IMS_REG_ERR_FAILCAUSE_NONE = 0;
    public static final int IMS_REG_ERR_STAGE_EE = 100;
    public static final int IMS_REG_ERR_STAGE_IMS = 1;
    public static final int IMS_REG_ERR_STAGE_PDN = 0;
    private int errDomain;
    private int errStage;
    private int failCause;
    private String failString;

    public ImsRegErrReport() {
    }

    public ImsRegErrReport(RILImsRegErrReport imsRegErrRpt) {
        if (imsRegErrRpt != null) {
            this.errDomain = imsRegErrRpt.failDomain;
            this.errStage = imsRegErrRpt.failStage;
            this.failCause = imsRegErrRpt.failCause;
            this.failString = imsRegErrRpt.failStr;
        }
    }

    public int getErrDomain() {
        return this.errDomain;
    }

    public int getErrStage() {
        return this.errStage;
    }

    public int getFailCause() {
        return this.failCause;
    }

    public String getFailString() {
        return this.failString;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("errDomain: ");
        sb.append(this.errDomain);
        sb.append(" errStage: ");
        sb.append(this.errStage == 0 ? "PDN" : "IMS");
        sb.append(" failcause: ");
        sb.append(this.failCause);
        sb.append(" failString: ");
        sb.append(this.failString);
        return sb.toString();
    }
}
