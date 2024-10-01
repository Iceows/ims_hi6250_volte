.class public Lcom/huawei/sci/SciUpgrade;
.super Ljava/lang/Object;
.source "SciUpgrade.java"


# static fields
.field public static final FORCED_UPDATE_FLAG:I = 0x1

.field public static final RESULT_FAIL:I = 0x3b8

.field public static final RESULT_MD5ERROR:I = 0x389

.field public static final RESULT_NETERROR:I = 0x387

.field public static final RESULT_USERCANCEL:I = 0x386

.field public static final RETCODE_CHECKING:I = 0x3

.field public static final RETCODE_FAILED:I = 0x1

.field public static final RETCODE_OK:I = 0x0

.field public static final RETCODE_SERVER_DISCONNECT:I = 0x2

.field public static final RETCODE_UNKNOWN:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native check()I
.end method

.method public static native getUpgradePackageInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native isChecking()Z
.end method

.method public static native result(I)I
.end method
