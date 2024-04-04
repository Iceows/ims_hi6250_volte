package com.huawei.sci;

/* loaded from: SciProvisionCb.class */
public class SciProvisionCb {
    public static final int PROV_OP_AUTH_FAILED = 213;
    public static final int PROV_OP_FAILED_RESET_PWD = 210;
    public static final int PROV_OP_INVALID_IMSI = 214;
    public static final int PROV_OP_REQUEST_USER_NOT_EXISTED = 209;
    public static final int PROV_OP_RMVED_USER = 502;
    public static final int PROV_OP_SERVER_BUSY = 503;
    public static final int PROV_OP_SHORT_MESSAGE_REQUEST = 408;
    public static final int PROV_OP_SHORT_MESSAGE_RESEND_REQUEST = 409;
    public static final int PROV_OP_SHORT_MESSAGE_SEND_FAILED = 419;
    public static final int PROV_OP_STATUS_DUPLICATE_REGISTER = 201;
    public static final int PROV_OP_STATUS_INTERNAL_ERROR = 902;
    public static final int PROV_OP_STATUS_INVALID_REQUEST = 204;
    public static final int PROV_OP_STATUS_OUTDATED_VERIFY_CODE = 205;
    public static final int PROV_OP_STATUS_REQUEST_TIMEOUT = 900;
    public static final int PROV_OP_STATUS_REQUEST_VERIFY_CODE_FAILED = 208;
    public static final int PROV_OP_STATUS_SERVER_ERROR = 206;
    public static final int PROV_OP_STATUS_SERVER_UNREACHABLE = 901;
    public static final int PROV_OP_STATUS_SUCCESS = 0;
    public static final int PROV_OP_STATUS_UNKNOWN_ERROR = 999;
    public static final int PROV_OP_STATUS_VERIFY_CODE_MISSED = 402;
    public static final int PROV_OP_STATUS_WRONG_ORIGINAL_PWD = 203;
    public static final int PROV_OP_STATUS_WRONG_USERNAME_FORMAT = 207;
    public static final int PROV_OP_STATUS_WRONG_VERIFY_CODE = 202;
    public static final int PROV_OP_TEMP_NA_NET_UNAVAILABLE = 501;
    public static final int PROV_OP_TYPE_CHANGECFD = 6;
    public static final int PROV_OP_TYPE_CHANGECLNGS = 4;
    public static final int PROV_OP_TYPE_CHANGEPWD = 2;
    public static final int PROV_OP_TYPE_GET_SM_RESULT = 13;
    public static final int PROV_OP_TYPE_QUERYBALANCE = 9;
    public static final int PROV_OP_TYPE_QUERYBALANCEWITHDETAIL = 11;
    public static final int PROV_OP_TYPE_QUERYCFD = 5;
    public static final int PROV_OP_TYPE_QUERYCLNGS = 3;
    public static final int PROV_OP_TYPE_QUERYPACKAGES = 10;
    public static final int PROV_OP_TYPE_QUERYUSERPACKAGES = 8;
    public static final int PROV_OP_TYPE_REGISTER = 0;
    public static final int PROV_OP_TYPE_REGISTERWITHBOSS = 7;
    public static final int PROV_OP_TYPE_REGISTER_WITH_IMSI = 12;
    public static final int PROV_OP_TYPE_RESETPWD = 1;
    static Callback mCallback;

    /* loaded from: SciProvisionCb$Callback.class */
    public interface Callback {
        void sciProvCbPostProvisionResult(int i, int i2, String str);
    }

    public static void provCbPostProvisionResult(int i, int i2, String str) {
        if (mCallback != null) {
            mCallback.sciProvCbPostProvisionResult(i, i2, str);
        }
    }

    public static void setCallback(Callback callback) {
        mCallback = callback;
    }
}
