.class public Lcom/huawei/sci/SciUplogCb;
.super Ljava/lang/Object;
.source "SciUplogCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;,
        Lcom/huawei/sci/SciUplogCb$Callback;
    }
.end annotation


# static fields
.field static mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

.field static mCallback:Lcom/huawei/sci/SciUplogCb$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    .line 70
    sput-object v0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static setAnalysisCallback(Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    .line 67
    sput-object p0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    .line 68
    return-void
.end method

.method public static setCallback(Lcom/huawei/sci/SciUplogCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciUplogCb$Callback;

    .line 44
    sput-object p0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    .line 45
    return-void
.end method

.method public static uplogCbLogErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "strErrorCode"    # Ljava/lang/String;
    .param p1, "strTime"    # Ljava/lang/String;
    .param p2, "strDes"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-nez v0, :cond_0

    .line 31
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbLogErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static uplogCbLogFileClosed(Ljava/lang/String;)V
    .locals 1
    .param p0, "LogFileName"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-nez v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogFileClosed(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static uplogCbPrintStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "pcEventID"    # Ljava/lang/String;
    .param p1, "pcFirstStaticParam"    # Ljava/lang/String;
    .param p2, "pcSecondStaticParam"    # Ljava/lang/String;
    .param p3, "pcThirdStaticParam"    # Ljava/lang/String;
    .param p4, "isAutoTest"    # Z

    .line 53
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;->sciUplogCbPrintStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public static uplogCbUplogNotify(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogNotify(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static uplogCbUplogResult(I)V
    .locals 1
    .param p0, "result"    # I

    .line 15
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-nez v0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogResult(I)V

    .line 19
    return-void
.end method
