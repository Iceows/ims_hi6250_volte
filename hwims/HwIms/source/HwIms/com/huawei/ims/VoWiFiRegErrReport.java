package com.huawei.ims;

import vendor.huawei.hardware.radio.ims.V1_0.RILImsRegErrReport;

/* loaded from: VoWiFiRegErrReport.class */
public class VoWiFiRegErrReport {
    public static final int VOWIFI_REG_ERR_DOMAIN_LTE = 0;
    public static final int VOWIFI_REG_ERR_DOMAIN_WIFI = 1;
    public static final int VOWIFI_REG_ERR_STAGE_IMS = 1;
    public static final int VOWIFI_REG_ERR_STAGE_PDN = 0;
    public int errDomain;
    public int errStage;
    public int failCause;
    public String failString;

    public VoWiFiRegErrReport() {
    }

    public VoWiFiRegErrReport(RILImsRegErrReport rILImsRegErrReport) {
        if (rILImsRegErrReport != null) {
            this.errDomain = rILImsRegErrReport.failDomain;
            this.errStage = rILImsRegErrReport.failStage;
            this.failCause = rILImsRegErrReport.failCause;
            this.failString = rILImsRegErrReport.failStr;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("errDomain: ");
        sb.append(this.errDomain == 1 ? "WIFI" : "LTE");
        sb.append(" errStage: ");
        sb.append(this.errStage == 0 ? "PDN" : "IMS");
        sb.append(" failcause: ");
        sb.append(this.failCause);
        sb.append(" failString: ");
        sb.append(this.failString);
        return sb.toString();
    }
}
