package vendor.huawei.hardware.radio.ims.V1_0;

import java.util.ArrayList;

/* loaded from: RadioError.class */
public final class RadioError {
    public static final int ABORTED = 65;
    public static final int CANCELLED = 7;
    public static final int DEVICE_IN_USE = 64;
    public static final int DIAL_MODIFIED_TO_DIAL = 20;
    public static final int DIAL_MODIFIED_TO_SS = 19;
    public static final int DIAL_MODIFIED_TO_USSD = 18;
    public static final int EMPTY_RECORD = 55;
    public static final int ENCODING_ERR = 57;
    public static final int FDN_CHECK_FAILURE = 14;
    public static final int GENERIC_FAILURE = 2;
    public static final int ILLEGAL_SIM_OR_ME = 15;
    public static final int INTERNAL_ERR = 38;
    public static final int INVALID_ARGUMENTS = 44;
    public static final int INVALID_CALL_ID = 47;
    public static final int INVALID_MODEM_STATE = 46;
    public static final int INVALID_RESPONSE = 66;
    public static final int INVALID_SIM_STATE = 45;
    public static final int INVALID_SMSC_ADDRESS = 58;
    public static final int INVALID_SMS_FORMAT = 56;
    public static final int INVALID_STATE = 41;
    public static final int LCE_NOT_SUPPORTED = 36;
    public static final int MISSING_RESOURCE = 16;
    public static final int MODEM_ERR = 40;
    public static final int MODE_NOT_SUPPORTED = 13;
    public static final int NETWORK_ERR = 49;
    public static final int NETWORK_NOT_READY = 60;
    public static final int NETWORK_REJECT = 53;
    public static final int NONE = 0;
    public static final int NOT_PROVISIONED = 61;
    public static final int NO_MEMORY = 37;
    public static final int NO_NETWORK_FOUND = 63;
    public static final int NO_RESOURCES = 42;
    public static final int NO_SMS_TO_ACK = 48;
    public static final int NO_SUBSCRIPTION = 62;
    public static final int NO_SUCH_ELEMENT = 17;
    public static final int NO_SUCH_ENTRY = 59;
    public static final int OEM_ERROR_1 = 501;
    public static final int OEM_ERROR_10 = 510;
    public static final int OEM_ERROR_11 = 511;
    public static final int OEM_ERROR_12 = 512;
    public static final int OEM_ERROR_13 = 513;
    public static final int OEM_ERROR_14 = 514;
    public static final int OEM_ERROR_15 = 515;
    public static final int OEM_ERROR_16 = 516;
    public static final int OEM_ERROR_17 = 517;
    public static final int OEM_ERROR_18 = 518;
    public static final int OEM_ERROR_19 = 519;
    public static final int OEM_ERROR_2 = 502;
    public static final int OEM_ERROR_20 = 520;
    public static final int OEM_ERROR_21 = 521;
    public static final int OEM_ERROR_22 = 522;
    public static final int OEM_ERROR_23 = 523;
    public static final int OEM_ERROR_24 = 524;
    public static final int OEM_ERROR_25 = 525;
    public static final int OEM_ERROR_3 = 503;
    public static final int OEM_ERROR_4 = 504;
    public static final int OEM_ERROR_5 = 505;
    public static final int OEM_ERROR_6 = 506;
    public static final int OEM_ERROR_7 = 507;
    public static final int OEM_ERROR_8 = 508;
    public static final int OEM_ERROR_9 = 509;
    public static final int OPERATION_NOT_ALLOWED = 54;
    public static final int OP_NOT_ALLOWED_BEFORE_REG_TO_NW = 9;
    public static final int OP_NOT_ALLOWED_DURING_VOICE_CALL = 8;
    public static final int PASSWORD_INCORRECT = 3;
    public static final int RADIO_NOT_AVAILABLE = 1;
    public static final int REQUEST_NOT_SUPPORTED = 6;
    public static final int REQUEST_RATE_LIMITED = 50;
    public static final int SIM_ABSENT = 11;
    public static final int SIM_BUSY = 51;
    public static final int SIM_ERR = 43;
    public static final int SIM_FULL = 52;
    public static final int SIM_PIN2 = 4;
    public static final int SIM_PUK2 = 5;
    public static final int SMS_SEND_FAIL_RETRY = 10;
    public static final int SS_MODIFIED_TO_DIAL = 24;
    public static final int SS_MODIFIED_TO_SS = 27;
    public static final int SS_MODIFIED_TO_USSD = 25;
    public static final int SUBSCRIPTION_NOT_AVAILABLE = 12;
    public static final int SUBSCRIPTION_NOT_SUPPORTED = 26;
    public static final int SYSTEM_ERR = 39;
    public static final int USSD_MODIFIED_TO_DIAL = 21;
    public static final int USSD_MODIFIED_TO_SS = 22;
    public static final int USSD_MODIFIED_TO_USSD = 23;

    public static final String dumpBitfield(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        arrayList.add("NONE");
        if ((i & 1) == 1) {
            arrayList.add("RADIO_NOT_AVAILABLE");
            i2 = 0 | 1;
        }
        int i3 = i2;
        if ((i & 2) == 2) {
            arrayList.add("GENERIC_FAILURE");
            i3 = i2 | 2;
        }
        int i4 = i3;
        if ((i & 3) == 3) {
            arrayList.add("PASSWORD_INCORRECT");
            i4 = i3 | 3;
        }
        int i5 = i4;
        if ((i & 4) == 4) {
            arrayList.add("SIM_PIN2");
            i5 = i4 | 4;
        }
        int i6 = i5;
        if ((i & 5) == 5) {
            arrayList.add("SIM_PUK2");
            i6 = i5 | 5;
        }
        int i7 = i6;
        if ((i & 6) == 6) {
            arrayList.add("REQUEST_NOT_SUPPORTED");
            i7 = i6 | 6;
        }
        int i8 = i7;
        if ((i & 7) == 7) {
            arrayList.add("CANCELLED");
            i8 = i7 | 7;
        }
        int i9 = i8;
        if ((i & 8) == 8) {
            arrayList.add("OP_NOT_ALLOWED_DURING_VOICE_CALL");
            i9 = i8 | 8;
        }
        int i10 = i9;
        if ((i & 9) == 9) {
            arrayList.add("OP_NOT_ALLOWED_BEFORE_REG_TO_NW");
            i10 = i9 | 9;
        }
        int i11 = i10;
        if ((i & 10) == 10) {
            arrayList.add("SMS_SEND_FAIL_RETRY");
            i11 = i10 | 10;
        }
        int i12 = i11;
        if ((i & 11) == 11) {
            arrayList.add("SIM_ABSENT");
            i12 = i11 | 11;
        }
        int i13 = i12;
        if ((i & 12) == 12) {
            arrayList.add("SUBSCRIPTION_NOT_AVAILABLE");
            i13 = i12 | 12;
        }
        int i14 = i13;
        if ((i & 13) == 13) {
            arrayList.add("MODE_NOT_SUPPORTED");
            i14 = i13 | 13;
        }
        int i15 = i14;
        if ((i & 14) == 14) {
            arrayList.add("FDN_CHECK_FAILURE");
            i15 = i14 | 14;
        }
        int i16 = i15;
        if ((i & 15) == 15) {
            arrayList.add("ILLEGAL_SIM_OR_ME");
            i16 = i15 | 15;
        }
        int i17 = i16;
        if ((i & 16) == 16) {
            arrayList.add("MISSING_RESOURCE");
            i17 = i16 | 16;
        }
        int i18 = i17;
        if ((i & 17) == 17) {
            arrayList.add("NO_SUCH_ELEMENT");
            i18 = i17 | 17;
        }
        int i19 = i18;
        if ((i & 18) == 18) {
            arrayList.add("DIAL_MODIFIED_TO_USSD");
            i19 = i18 | 18;
        }
        int i20 = i19;
        if ((i & 19) == 19) {
            arrayList.add("DIAL_MODIFIED_TO_SS");
            i20 = i19 | 19;
        }
        int i21 = i20;
        if ((i & 20) == 20) {
            arrayList.add("DIAL_MODIFIED_TO_DIAL");
            i21 = i20 | 20;
        }
        int i22 = i21;
        if ((i & 21) == 21) {
            arrayList.add("USSD_MODIFIED_TO_DIAL");
            i22 = i21 | 21;
        }
        int i23 = i22;
        if ((i & 22) == 22) {
            arrayList.add("USSD_MODIFIED_TO_SS");
            i23 = i22 | 22;
        }
        int i24 = i23;
        if ((i & 23) == 23) {
            arrayList.add("USSD_MODIFIED_TO_USSD");
            i24 = i23 | 23;
        }
        int i25 = i24;
        if ((i & 24) == 24) {
            arrayList.add("SS_MODIFIED_TO_DIAL");
            i25 = i24 | 24;
        }
        int i26 = i25;
        if ((i & 25) == 25) {
            arrayList.add("SS_MODIFIED_TO_USSD");
            i26 = i25 | 25;
        }
        int i27 = i26;
        if ((i & 26) == 26) {
            arrayList.add("SUBSCRIPTION_NOT_SUPPORTED");
            i27 = i26 | 26;
        }
        int i28 = i27;
        if ((i & 27) == 27) {
            arrayList.add("SS_MODIFIED_TO_SS");
            i28 = i27 | 27;
        }
        int i29 = i28;
        if ((i & 36) == 36) {
            arrayList.add("LCE_NOT_SUPPORTED");
            i29 = i28 | 36;
        }
        int i30 = i29;
        if ((i & 37) == 37) {
            arrayList.add("NO_MEMORY");
            i30 = i29 | 37;
        }
        int i31 = i30;
        if ((i & 38) == 38) {
            arrayList.add("INTERNAL_ERR");
            i31 = i30 | 38;
        }
        int i32 = i31;
        if ((i & 39) == 39) {
            arrayList.add("SYSTEM_ERR");
            i32 = i31 | 39;
        }
        int i33 = i32;
        if ((i & 40) == 40) {
            arrayList.add("MODEM_ERR");
            i33 = i32 | 40;
        }
        int i34 = i33;
        if ((i & 41) == 41) {
            arrayList.add("INVALID_STATE");
            i34 = i33 | 41;
        }
        int i35 = i34;
        if ((i & 42) == 42) {
            arrayList.add("NO_RESOURCES");
            i35 = i34 | 42;
        }
        int i36 = i35;
        if ((i & 43) == 43) {
            arrayList.add("SIM_ERR");
            i36 = i35 | 43;
        }
        int i37 = i36;
        if ((i & 44) == 44) {
            arrayList.add("INVALID_ARGUMENTS");
            i37 = i36 | 44;
        }
        int i38 = i37;
        if ((i & 45) == 45) {
            arrayList.add("INVALID_SIM_STATE");
            i38 = i37 | 45;
        }
        int i39 = i38;
        if ((i & 46) == 46) {
            arrayList.add("INVALID_MODEM_STATE");
            i39 = i38 | 46;
        }
        int i40 = i39;
        if ((i & 47) == 47) {
            arrayList.add("INVALID_CALL_ID");
            i40 = i39 | 47;
        }
        int i41 = i40;
        if ((i & 48) == 48) {
            arrayList.add("NO_SMS_TO_ACK");
            i41 = i40 | 48;
        }
        int i42 = i41;
        if ((i & 49) == 49) {
            arrayList.add("NETWORK_ERR");
            i42 = i41 | 49;
        }
        int i43 = i42;
        if ((i & 50) == 50) {
            arrayList.add("REQUEST_RATE_LIMITED");
            i43 = i42 | 50;
        }
        int i44 = i43;
        if ((i & 51) == 51) {
            arrayList.add("SIM_BUSY");
            i44 = i43 | 51;
        }
        int i45 = i44;
        if ((i & 52) == 52) {
            arrayList.add("SIM_FULL");
            i45 = i44 | 52;
        }
        int i46 = i45;
        if ((i & 53) == 53) {
            arrayList.add("NETWORK_REJECT");
            i46 = i45 | 53;
        }
        int i47 = i46;
        if ((i & 54) == 54) {
            arrayList.add("OPERATION_NOT_ALLOWED");
            i47 = i46 | 54;
        }
        int i48 = i47;
        if ((i & 55) == 55) {
            arrayList.add("EMPTY_RECORD");
            i48 = i47 | 55;
        }
        int i49 = i48;
        if ((i & 56) == 56) {
            arrayList.add("INVALID_SMS_FORMAT");
            i49 = i48 | 56;
        }
        int i50 = i49;
        if ((i & 57) == 57) {
            arrayList.add("ENCODING_ERR");
            i50 = i49 | 57;
        }
        int i51 = i50;
        if ((i & 58) == 58) {
            arrayList.add("INVALID_SMSC_ADDRESS");
            i51 = i50 | 58;
        }
        int i52 = i51;
        if ((i & 59) == 59) {
            arrayList.add("NO_SUCH_ENTRY");
            i52 = i51 | 59;
        }
        int i53 = i52;
        if ((i & 60) == 60) {
            arrayList.add("NETWORK_NOT_READY");
            i53 = i52 | 60;
        }
        int i54 = i53;
        if ((i & 61) == 61) {
            arrayList.add("NOT_PROVISIONED");
            i54 = i53 | 61;
        }
        int i55 = i54;
        if ((i & 62) == 62) {
            arrayList.add("NO_SUBSCRIPTION");
            i55 = i54 | 62;
        }
        int i56 = i55;
        if ((i & 63) == 63) {
            arrayList.add("NO_NETWORK_FOUND");
            i56 = i55 | 63;
        }
        int i57 = i56;
        if ((i & 64) == 64) {
            arrayList.add("DEVICE_IN_USE");
            i57 = i56 | 64;
        }
        int i58 = i57;
        if ((i & 65) == 65) {
            arrayList.add("ABORTED");
            i58 = i57 | 65;
        }
        int i59 = i58;
        if ((i & 66) == 66) {
            arrayList.add("INVALID_RESPONSE");
            i59 = i58 | 66;
        }
        int i60 = i59;
        if ((i & 501) == 501) {
            arrayList.add("OEM_ERROR_1");
            i60 = i59 | 501;
        }
        int i61 = i60;
        if ((i & 502) == 502) {
            arrayList.add("OEM_ERROR_2");
            i61 = i60 | 502;
        }
        int i62 = i61;
        if ((i & 503) == 503) {
            arrayList.add("OEM_ERROR_3");
            i62 = i61 | 503;
        }
        int i63 = i62;
        if ((i & 504) == 504) {
            arrayList.add("OEM_ERROR_4");
            i63 = i62 | 504;
        }
        int i64 = i63;
        if ((i & 505) == 505) {
            arrayList.add("OEM_ERROR_5");
            i64 = i63 | 505;
        }
        int i65 = i64;
        if ((i & 506) == 506) {
            arrayList.add("OEM_ERROR_6");
            i65 = i64 | 506;
        }
        int i66 = i65;
        if ((i & 507) == 507) {
            arrayList.add("OEM_ERROR_7");
            i66 = i65 | 507;
        }
        int i67 = i66;
        if ((i & 508) == 508) {
            arrayList.add("OEM_ERROR_8");
            i67 = i66 | 508;
        }
        int i68 = i67;
        if ((i & 509) == 509) {
            arrayList.add("OEM_ERROR_9");
            i68 = i67 | 509;
        }
        int i69 = i68;
        if ((i & 510) == 510) {
            arrayList.add("OEM_ERROR_10");
            i69 = i68 | 510;
        }
        int i70 = i69;
        if ((i & 511) == 511) {
            arrayList.add("OEM_ERROR_11");
            i70 = i69 | 511;
        }
        int i71 = i70;
        if ((i & 512) == 512) {
            arrayList.add("OEM_ERROR_12");
            i71 = i70 | 512;
        }
        int i72 = i71;
        if ((i & 513) == 513) {
            arrayList.add("OEM_ERROR_13");
            i72 = i71 | 513;
        }
        int i73 = i72;
        if ((i & 514) == 514) {
            arrayList.add("OEM_ERROR_14");
            i73 = i72 | 514;
        }
        int i74 = i73;
        if ((i & 515) == 515) {
            arrayList.add("OEM_ERROR_15");
            i74 = i73 | 515;
        }
        int i75 = i74;
        if ((i & 516) == 516) {
            arrayList.add("OEM_ERROR_16");
            i75 = i74 | 516;
        }
        int i76 = i75;
        if ((i & 517) == 517) {
            arrayList.add("OEM_ERROR_17");
            i76 = i75 | 517;
        }
        int i77 = i76;
        if ((i & 518) == 518) {
            arrayList.add("OEM_ERROR_18");
            i77 = i76 | 518;
        }
        int i78 = i77;
        if ((i & 519) == 519) {
            arrayList.add("OEM_ERROR_19");
            i78 = i77 | 519;
        }
        int i79 = i78;
        if ((i & 520) == 520) {
            arrayList.add("OEM_ERROR_20");
            i79 = i78 | 520;
        }
        int i80 = i79;
        if ((i & 521) == 521) {
            arrayList.add("OEM_ERROR_21");
            i80 = i79 | 521;
        }
        int i81 = i80;
        if ((i & 522) == 522) {
            arrayList.add("OEM_ERROR_22");
            i81 = i80 | 522;
        }
        int i82 = i81;
        if ((i & 523) == 523) {
            arrayList.add("OEM_ERROR_23");
            i82 = i81 | 523;
        }
        int i83 = i82;
        if ((i & 524) == 524) {
            arrayList.add("OEM_ERROR_24");
            i83 = i82 | 524;
        }
        int i84 = i83;
        if ((i & 525) == 525) {
            arrayList.add("OEM_ERROR_25");
            i84 = i83 | 525;
        }
        if (i != i84) {
            arrayList.add("0x" + Integer.toHexString(i84 & i));
        }
        return String.join(" | ", arrayList);
    }

    public static final String toString(int i) {
        if (i == 0) {
            return "NONE";
        }
        if (i == 1) {
            return "RADIO_NOT_AVAILABLE";
        }
        if (i == 2) {
            return "GENERIC_FAILURE";
        }
        if (i == 3) {
            return "PASSWORD_INCORRECT";
        }
        if (i == 4) {
            return "SIM_PIN2";
        }
        if (i == 5) {
            return "SIM_PUK2";
        }
        if (i == 6) {
            return "REQUEST_NOT_SUPPORTED";
        }
        if (i == 7) {
            return "CANCELLED";
        }
        if (i == 8) {
            return "OP_NOT_ALLOWED_DURING_VOICE_CALL";
        }
        if (i == 9) {
            return "OP_NOT_ALLOWED_BEFORE_REG_TO_NW";
        }
        if (i == 10) {
            return "SMS_SEND_FAIL_RETRY";
        }
        if (i == 11) {
            return "SIM_ABSENT";
        }
        if (i == 12) {
            return "SUBSCRIPTION_NOT_AVAILABLE";
        }
        if (i == 13) {
            return "MODE_NOT_SUPPORTED";
        }
        if (i == 14) {
            return "FDN_CHECK_FAILURE";
        }
        if (i == 15) {
            return "ILLEGAL_SIM_OR_ME";
        }
        if (i == 16) {
            return "MISSING_RESOURCE";
        }
        if (i == 17) {
            return "NO_SUCH_ELEMENT";
        }
        if (i == 18) {
            return "DIAL_MODIFIED_TO_USSD";
        }
        if (i == 19) {
            return "DIAL_MODIFIED_TO_SS";
        }
        if (i == 20) {
            return "DIAL_MODIFIED_TO_DIAL";
        }
        if (i == 21) {
            return "USSD_MODIFIED_TO_DIAL";
        }
        if (i == 22) {
            return "USSD_MODIFIED_TO_SS";
        }
        if (i == 23) {
            return "USSD_MODIFIED_TO_USSD";
        }
        if (i == 24) {
            return "SS_MODIFIED_TO_DIAL";
        }
        if (i == 25) {
            return "SS_MODIFIED_TO_USSD";
        }
        if (i == 26) {
            return "SUBSCRIPTION_NOT_SUPPORTED";
        }
        if (i == 27) {
            return "SS_MODIFIED_TO_SS";
        }
        if (i == 36) {
            return "LCE_NOT_SUPPORTED";
        }
        if (i == 37) {
            return "NO_MEMORY";
        }
        if (i == 38) {
            return "INTERNAL_ERR";
        }
        if (i == 39) {
            return "SYSTEM_ERR";
        }
        if (i == 40) {
            return "MODEM_ERR";
        }
        if (i == 41) {
            return "INVALID_STATE";
        }
        if (i == 42) {
            return "NO_RESOURCES";
        }
        if (i == 43) {
            return "SIM_ERR";
        }
        if (i == 44) {
            return "INVALID_ARGUMENTS";
        }
        if (i == 45) {
            return "INVALID_SIM_STATE";
        }
        if (i == 46) {
            return "INVALID_MODEM_STATE";
        }
        if (i == 47) {
            return "INVALID_CALL_ID";
        }
        if (i == 48) {
            return "NO_SMS_TO_ACK";
        }
        if (i == 49) {
            return "NETWORK_ERR";
        }
        if (i == 50) {
            return "REQUEST_RATE_LIMITED";
        }
        if (i == 51) {
            return "SIM_BUSY";
        }
        if (i == 52) {
            return "SIM_FULL";
        }
        if (i == 53) {
            return "NETWORK_REJECT";
        }
        if (i == 54) {
            return "OPERATION_NOT_ALLOWED";
        }
        if (i == 55) {
            return "EMPTY_RECORD";
        }
        if (i == 56) {
            return "INVALID_SMS_FORMAT";
        }
        if (i == 57) {
            return "ENCODING_ERR";
        }
        if (i == 58) {
            return "INVALID_SMSC_ADDRESS";
        }
        if (i == 59) {
            return "NO_SUCH_ENTRY";
        }
        if (i == 60) {
            return "NETWORK_NOT_READY";
        }
        if (i == 61) {
            return "NOT_PROVISIONED";
        }
        if (i == 62) {
            return "NO_SUBSCRIPTION";
        }
        if (i == 63) {
            return "NO_NETWORK_FOUND";
        }
        if (i == 64) {
            return "DEVICE_IN_USE";
        }
        if (i == 65) {
            return "ABORTED";
        }
        if (i == 66) {
            return "INVALID_RESPONSE";
        }
        if (i == 501) {
            return "OEM_ERROR_1";
        }
        if (i == 502) {
            return "OEM_ERROR_2";
        }
        if (i == 503) {
            return "OEM_ERROR_3";
        }
        if (i == 504) {
            return "OEM_ERROR_4";
        }
        if (i == 505) {
            return "OEM_ERROR_5";
        }
        if (i == 506) {
            return "OEM_ERROR_6";
        }
        if (i == 507) {
            return "OEM_ERROR_7";
        }
        if (i == 508) {
            return "OEM_ERROR_8";
        }
        if (i == 509) {
            return "OEM_ERROR_9";
        }
        if (i == 510) {
            return "OEM_ERROR_10";
        }
        if (i == 511) {
            return "OEM_ERROR_11";
        }
        if (i == 512) {
            return "OEM_ERROR_12";
        }
        if (i == 513) {
            return "OEM_ERROR_13";
        }
        if (i == 514) {
            return "OEM_ERROR_14";
        }
        if (i == 515) {
            return "OEM_ERROR_15";
        }
        if (i == 516) {
            return "OEM_ERROR_16";
        }
        if (i == 517) {
            return "OEM_ERROR_17";
        }
        if (i == 518) {
            return "OEM_ERROR_18";
        }
        if (i == 519) {
            return "OEM_ERROR_19";
        }
        if (i == 520) {
            return "OEM_ERROR_20";
        }
        if (i == 521) {
            return "OEM_ERROR_21";
        }
        if (i == 522) {
            return "OEM_ERROR_22";
        }
        if (i == 523) {
            return "OEM_ERROR_23";
        }
        if (i == 524) {
            return "OEM_ERROR_24";
        }
        if (i == 525) {
            return "OEM_ERROR_25";
        }
        return "0x" + Integer.toHexString(i);
    }
}
