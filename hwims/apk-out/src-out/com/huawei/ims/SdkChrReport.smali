.class public Lcom/huawei/ims/SdkChrReport;
.super Ljava/lang/Object;
.source "SdkChrReport.java"


# static fields
.field private static final CAMERA_OPEN_FAIL_SUB_EVENT:I = 0x1

.field private static final FAULT_IMS_SS_PERFORMANCE_EVENT:I = 0xfa4

.field private static final FAULT_IMS_VT_FAIL_EVENT:I = 0xfa3

.field private static final LOG_TAG:Ljava/lang/String; = "SdkChrReport"

.field private static final SDK_INTINFO:Ljava/lang/String; = "sdk_intinfo"

.field private static final SDK_STRINFO:Ljava/lang/String; = "sdk_strinfo"

.field private static final UT_FAIL_SUB_EVENT:I = 0xa

.field private static final VIDEO_PERFOMANCE_SUB_EVENT:I = 0x2

.field private static final VOLTE_MODULE_ID:I = 0xfa0


# instance fields
.field private mCameraClientChrCb:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private mContext:Landroid/content/Context;

.field private mHmeChrCb:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/huawei/ims/SdkChrReport$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SdkChrReport$1;-><init>(Lcom/huawei/ims/SdkChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SdkChrReport;->mHmeChrCb:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 51
    new-instance v0, Lcom/huawei/ims/SdkChrReport$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SdkChrReport$2;-><init>(Lcom/huawei/ims/SdkChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SdkChrReport;->mCameraClientChrCb:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 64
    iput-object p1, p0, Lcom/huawei/ims/SdkChrReport;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/huawei/ims/SdkChrReport;->mCameraClientChrCb:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V

    .line 66
    iget-object v0, p0, Lcom/huawei/ims/SdkChrReport;->mHmeChrCb:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setChrHmeCallBack(Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/SdkChrReport;[I[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/SdkChrReport;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SdkChrReport;->reportSdkChrParas([I[Ljava/lang/String;)V

    return-void
.end method

.method private isUtEvent(I)Z
    .registers 3
    .param p1, "eventId"    # I

    .line 84
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isVtEvent(I)Z
    .registers 4
    .param p1, "eventId"    # I

    .line 77
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_9

    .line 80
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_9
    :goto_9
    return v0
.end method

.method private logChrPara([I[Ljava/lang/String;)V
    .registers 9
    .param p1, "chrPara"    # [I
    .param p2, "strChrPara"    # [Ljava/lang/String;

    .line 91
    const-string v0, "SdkChrReport"

    if-eqz p1, :cond_69

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_69

    .line 96
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, "outStr":Ljava/lang/StringBuilder;
    const-string v2, "CHRParas of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, " is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/4 v2, 0x1

    .line 102
    .local v2, "i":I
    :goto_1e
    array-length v3, p1

    const-string v4, ","

    if-ge v2, v3, :cond_2e

    .line 103
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 108
    :cond_2e
    if-nez p2, :cond_45

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strChrPara is null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_45
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_46
    array-length v5, p2

    if-ge v3, v5, :cond_54

    .line 114
    aget-object v5, p2, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 117
    .end local v3    # "j":I
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 92
    .end local v1    # "outStr":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_69
    :goto_69
    const-string v1, "logChrPara: chrPara is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private reportSdkChrParas([I[Ljava/lang/String;)V
    .registers 7
    .param p1, "chrPara"    # [I
    .param p2, "strChrPara"    # [Ljava/lang/String;

    .line 152
    const-string v0, "SdkChrReport"

    if-eqz p1, :cond_58

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_58

    .line 157
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSdkChrParas chrPara[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SdkChrReport;->logChrPara([I[Ljava/lang/String;)V

    .line 161
    aget v1, p1, v2

    invoke-direct {p0, v1}, Lcom/huawei/ims/SdkChrReport;->isVtEvent(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 162
    const-string v1, "report VTLTE CHR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_intinfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 166
    const-string v1, "sdk_strinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    const/16 v1, 0xfa3

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/SdkChrReport;->sendVolteChrBroadcast(Landroid/os/Bundle;I)V

    .line 168
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_57

    :cond_44
    aget v1, p1, v2

    invoke-direct {p0, v1}, Lcom/huawei/ims/SdkChrReport;->isUtEvent(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 169
    const-string v1, "report UT CHR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 171
    :cond_52
    const-string v1, "unknown CHR EVENT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_57
    return-void

    .line 153
    :cond_58
    :goto_58
    const-string v1, "chrPara is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method private sendVolteChrBroadcast(Landroid/os/Bundle;I)V
    .registers 11
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "eventId"    # I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVolteChrBroadcast faultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkChrReport"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "com.huawei.android.permission.GET_CHR_DATA"

    .line 130
    .local v0, "chrBroadcastPermission":Ljava/lang/String;
    const-string v1, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    .line 133
    .local v1, "intentChr":Ljava/lang/String;
    const-string v2, "module_id"

    .line 134
    .local v2, "moduleId":Ljava/lang/String;
    const-string v3, "fault_id"

    .line 135
    .local v3, "faultId":Ljava/lang/String;
    const-string v4, "chr_data"

    .line 137
    .local v4, "chrData":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "module_id"

    const/16 v7, 0xfa0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v6, "fault_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v6, "chr_data"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    iget-object v6, p0, Lcom/huawei/ims/SdkChrReport;->mContext:Landroid/content/Context;

    const-string v7, "com.huawei.android.permission.GET_CHR_DATA"

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getCameraOpenFailedReason()V
    .registers 2

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->startChrVtErrReport(I)V

    .line 74
    return-void
.end method
