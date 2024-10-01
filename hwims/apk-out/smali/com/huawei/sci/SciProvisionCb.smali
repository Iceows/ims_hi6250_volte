.class public Lcom/huawei/sci/SciProvisionCb;
.super Ljava/lang/Object;
.source "SciProvisionCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciProvisionCb$Callback;
    }
.end annotation


# static fields
.field public static final PROV_OP_AUTH_FAILED:I = 0xd5

.field public static final PROV_OP_FAILED_RESET_PWD:I = 0xd2

.field public static final PROV_OP_INVALID_IMSI:I = 0xd6

.field public static final PROV_OP_REQUEST_USER_NOT_EXISTED:I = 0xd1

.field public static final PROV_OP_RMVED_USER:I = 0x1f6

.field public static final PROV_OP_SERVER_BUSY:I = 0x1f7

.field public static final PROV_OP_SHORT_MESSAGE_REQUEST:I = 0x198

.field public static final PROV_OP_SHORT_MESSAGE_RESEND_REQUEST:I = 0x199

.field public static final PROV_OP_SHORT_MESSAGE_SEND_FAILED:I = 0x1a3

.field public static final PROV_OP_STATUS_DUPLICATE_REGISTER:I = 0xc9

.field public static final PROV_OP_STATUS_INTERNAL_ERROR:I = 0x386

.field public static final PROV_OP_STATUS_INVALID_REQUEST:I = 0xcc

.field public static final PROV_OP_STATUS_OUTDATED_VERIFY_CODE:I = 0xcd

.field public static final PROV_OP_STATUS_REQUEST_TIMEOUT:I = 0x384

.field public static final PROV_OP_STATUS_REQUEST_VERIFY_CODE_FAILED:I = 0xd0

.field public static final PROV_OP_STATUS_SERVER_ERROR:I = 0xce

.field public static final PROV_OP_STATUS_SERVER_UNREACHABLE:I = 0x385

.field public static final PROV_OP_STATUS_SUCCESS:I = 0x0

.field public static final PROV_OP_STATUS_UNKNOWN_ERROR:I = 0x3e7

.field public static final PROV_OP_STATUS_VERIFY_CODE_MISSED:I = 0x192

.field public static final PROV_OP_STATUS_WRONG_ORIGINAL_PWD:I = 0xcb

.field public static final PROV_OP_STATUS_WRONG_USERNAME_FORMAT:I = 0xcf

.field public static final PROV_OP_STATUS_WRONG_VERIFY_CODE:I = 0xca

.field public static final PROV_OP_TEMP_NA_NET_UNAVAILABLE:I = 0x1f5

.field public static final PROV_OP_TYPE_CHANGECFD:I = 0x6

.field public static final PROV_OP_TYPE_CHANGECLNGS:I = 0x4

.field public static final PROV_OP_TYPE_CHANGEPWD:I = 0x2

.field public static final PROV_OP_TYPE_GET_SM_RESULT:I = 0xd

.field public static final PROV_OP_TYPE_QUERYBALANCE:I = 0x9

.field public static final PROV_OP_TYPE_QUERYBALANCEWITHDETAIL:I = 0xb

.field public static final PROV_OP_TYPE_QUERYCFD:I = 0x5

.field public static final PROV_OP_TYPE_QUERYCLNGS:I = 0x3

.field public static final PROV_OP_TYPE_QUERYPACKAGES:I = 0xa

.field public static final PROV_OP_TYPE_QUERYUSERPACKAGES:I = 0x8

.field public static final PROV_OP_TYPE_REGISTER:I = 0x0

.field public static final PROV_OP_TYPE_REGISTERWITHBOSS:I = 0x7

.field public static final PROV_OP_TYPE_REGISTER_WITH_IMSI:I = 0xc

.field public static final PROV_OP_TYPE_RESETPWD:I = 0x1

.field static mCallback:Lcom/huawei/sci/SciProvisionCb$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static provCbPostProvisionResult(IILjava/lang/String;)V
    .locals 1
    .param p0, "opType"    # I
    .param p1, "status"    # I
    .param p2, "showMsg"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/huawei/sci/SciProvisionCb;->mCallback:Lcom/huawei/sci/SciProvisionCb$Callback;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/huawei/sci/SciProvisionCb;->mCallback:Lcom/huawei/sci/SciProvisionCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciProvisionCb$Callback;->sciProvCbPostProvisionResult(IILjava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static setCallback(Lcom/huawei/sci/SciProvisionCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciProvisionCb$Callback;

    .line 48
    sput-object p0, Lcom/huawei/sci/SciProvisionCb;->mCallback:Lcom/huawei/sci/SciProvisionCb$Callback;

    .line 49
    return-void
.end method
