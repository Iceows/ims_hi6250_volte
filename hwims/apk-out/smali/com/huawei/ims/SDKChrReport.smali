.class public Lcom/huawei/ims/SDKChrReport;
.super Ljava/lang/Object;
.source "SDKChrReport.java"


# static fields
.field private static final CAMERA_OPEN_FAIL_SUB_EVENT:I = 0x1

.field private static final FAULT_IMS_SS_PERFORMANCE_EVENT:I = 0xfa4

.field private static final FAULT_IMS_VT_FAIL_EVENT:I = 0xfa3

.field private static final LOG_TAG:Ljava/lang/String; = "SDKChrReport"

.field private static final SDK_INTINFO:Ljava/lang/String; = "sdk_intinfo"

.field private static final SDK_STRINFO:Ljava/lang/String; = "sdk_strinfo"

.field private static final UT_FAIL_SUB_EVENT:I = 0xa

.field private static final VIDEO_PERFOMANCE_SUB_EVENT:I = 0x2

.field private static final VOLTE_MODULE_ID:I = 0xfa0


# instance fields
.field private mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private mContext:Landroid/content/Context;

.field private mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/huawei/ims/SDKChrReport$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SDKChrReport$1;-><init>(Lcom/huawei/ims/SDKChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 156
    new-instance v0, Lcom/huawei/ims/SDKChrReport$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SDKChrReport$2;-><init>(Lcom/huawei/ims/SDKChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 35
    iput-object p1, p0, Lcom/huawei/ims/SDKChrReport;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V

    .line 37
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setChrHmeCallBack(Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/SDKChrReport;[I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/SDKChrReport;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SDKChrReport;->reportSDKCHRParas([I[Ljava/lang/String;)V

    return-void
.end method

.method private isUTEvent(I)Z
    .locals 1
    .param p1, "eventID"    # I

    .line 56
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVTEvent(I)Z
    .locals 2
    .param p1, "eventID"    # I

    .line 48
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_1
    :goto_0
    return v0
.end method

.method private logCHRPara([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "outStr":Ljava/lang/StringBuilder;
    const-string v1, "CHRParas of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, " is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 75
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    if-nez p2, :cond_2

    .line 81
    const-string v1, "SDKChrReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strCHRPara is null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 85
    :cond_2
    nop

    .local v1, "j":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 86
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v1    # "j":I
    :cond_3
    const-string v1, "SDKChrReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 64
    .end local v0    # "outStr":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const-string v0, "SDKChrReport"

    const-string v1, "logCHRPara: iCHRPara is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private reportSDKCHRParas([I[Ljava/lang/String;)V
    .locals 4
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    const-string v0, "SDKChrReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSDKCHRParas iCHRPara[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SDKChrReport;->logCHRPara([I[Ljava/lang/String;)V

    .line 130
    aget v0, p1, v2

    invoke-direct {p0, v0}, Lcom/huawei/ims/SDKChrReport;->isVTEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "SDKChrReport"

    const-string v1, "report VTLTE CHR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_intinfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 135
    const-string v1, "sdk_strinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    const/16 v1, 0xfa3

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/SDKChrReport;->sendVolteChrBroadcast(Landroid/os/Bundle;I)V

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    :cond_1
    aget v0, p1, v2

    invoke-direct {p0, v0}, Lcom/huawei/ims/SDKChrReport;->isUTEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "SDKChrReport"

    const-string v1, "report UT CHR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "SDKChrReport"

    const-string v1, "unknown CHR EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 122
    :cond_3
    :goto_1
    const-string v0, "SDKChrReport"

    const-string v1, "iCHRPara is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private sendVolteChrBroadcast(Landroid/os/Bundle;I)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "faultID"    # I

    .line 98
    const-string v0, "SDKChrReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVolteChrBroadcast faultID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "com.huawei.android.permission.GET_CHR_DATA"

    .line 101
    .local v0, "CHR_BROADCAST_PERMISSION":Ljava/lang/String;
    const-string v1, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    .line 104
    .local v1, "INTENT_CHR":Ljava/lang/String;
    const-string v2, "module_id"

    .line 105
    .local v2, "MODULE_ID":Ljava/lang/String;
    const-string v3, "fault_id"

    .line 106
    .local v3, "FAULT_ID":Ljava/lang/String;
    const-string v4, "chr_data"

    .line 108
    .local v4, "CHR_DATA":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v5, "mI":Landroid/content/Intent;
    const-string v6, "module_id"

    const/16 v7, 0xfa0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v6, "fault_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v6, "chr_data"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    iget-object v6, p0, Lcom/huawei/ims/SDKChrReport;->mContext:Landroid/content/Context;

    const-string v7, "com.huawei.android.permission.GET_CHR_DATA"

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getCameraOpenFailedReason()V
    .locals 1

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->startChrVtErrReport(I)V

    .line 45
    return-void
.end method
