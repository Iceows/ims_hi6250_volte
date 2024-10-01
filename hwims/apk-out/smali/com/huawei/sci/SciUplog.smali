.class public Lcom/huawei/sci/SciUplog;
.super Ljava/lang/Object;
.source "SciUplog.java"


# static fields
.field public static final RESULT_FAILED:I = 0x3b8

.field public static final RESULT_SUCCESS:I = 0x384

.field public static final RESULT_USERCANCELED:I = 0x386


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fixupXLogFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getFlushLog()I
.end method

.method public static native getHmeLogPath()Ljava/lang/String;
.end method

.method public static native getLogFileCount()J
.end method

.method public static native getLogFileName()Ljava/lang/String;
.end method

.method public static native getLogFileSize()J
.end method

.method public static native getLogQoeEnable()Z
.end method

.method public static native getUrl([Ljava/lang/String;)I
.end method

.method public static logStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "strEventID"    # Ljava/lang/String;
    .param p1, "strFrtParam"    # Ljava/lang/String;
    .param p2, "strScdParam"    # Ljava/lang/String;
    .param p3, "isAutoTest"    # Z

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/huawei/sci/SciUplogCb;->uplogCbPrintStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public static native result(I)I
.end method

.method public static native setHmeLogPath(Ljava/lang/String;)I
.end method

.method public static native setLogFileCount(J)I
.end method

.method public static native setLogFileName(Ljava/lang/String;)I
.end method

.method public static native setLogFileSize(J)I
.end method

.method public static native setLogNtyErrCode(Z)I
.end method

.method public static native setLogQoeEnable(Z)I
.end method

.method public static native upload(Ljava/lang/String;Ljava/lang/String;)I
.end method
