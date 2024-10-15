.class public Lcom/huawei/vtproxy/ImsThinClient;
.super Ljava/lang/Object;
.source "ImsThinClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;,
        Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;
    }
.end annotation


# static fields
.field public static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field public static final CAAS_EVENT_PEER_RESOLUTION_CHANGE:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE"

.field public static final CAAS_EVENT_PLAYER_START:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PLAYER_START"

.field public static final CAAS_EVENT_PLAYER_STOP:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP"

.field public static final CAAS_EVENT_START_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.START_READY"

.field public static final CAAS_EVENT_VIDEO_QUALITY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY"

.field private static final LOG_LOCK:Ljava/lang/Object;

.field private static final MOD_DRIVE_LOCK:Ljava/lang/Object;

.field public static final PARAM_QOS_LEVEL:Ljava/lang/String; = "qos_level"

.field private static final SDK_HANDLER:Landroid/os/Handler;

.field private static final TIMER_ACTIVE_LOCK:Ljava/lang/Object;

.field private static final VSC_EVENT_PARAM_READY:I = 0x1

.field private static final VSC_EVENT_PEER_RESOLUTION_CHANGE:I = 0x5

.field private static final VSC_EVENT_PLAYER_START:I = 0x3

.field private static final VSC_EVENT_PLAYER_STOP:I = 0x4

.field private static final VSC_EVENT_START_READY:I = 0x2

.field private static final VSC_EVENT_VIDEO_QUALITY:I = 0x6

.field private static VSC_VPARA_CODEC_TYPE:I = 0x0

.field private static VSC_VPARA_LOCAL_MIRROR:I = 0x0

.field private static VSC_VPARA_LOCAL_ROTATE:I = 0x0

.field private static VSC_VPARA_NEGO_FPS:I = 0x0

.field private static VSC_VPARA_NEGO_HEIGHT:I = 0x0

.field private static VSC_VPARA_NEGO_WIDTH:I = 0x0

.field private static VSC_VPARA_PEER_HEIGHT:I = 0x0

.field private static VSC_VPARA_PEER_WIDTH:I = 0x0

.field private static VSC_VPARA_QUALITY_LEVEL:I = 0x0

.field private static VSC_VPARA_REMOTE_ROTATE:I = 0x0

.field public static final VT_FAILED:I = -0x1

.field public static final VT_OK:I

.field private static final ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

.field private static chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

.field private static context:Landroid/content/Context;

.field private static volatile isSdkInited:Z

.field private static itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

.field private static zpandTimerActiveRun:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 141
    const/4 v0, 0x1

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_LOCAL_ROTATE:I

    .line 143
    const/4 v0, 0x2

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_REMOTE_ROTATE:I

    .line 145
    const/4 v0, 0x3

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_FPS:I

    .line 147
    const/4 v0, 0x4

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_HEIGHT:I

    .line 149
    const/4 v0, 0x5

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_WIDTH:I

    .line 151
    const/4 v0, 0x6

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_PEER_HEIGHT:I

    .line 153
    const/4 v0, 0x7

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_PEER_WIDTH:I

    .line 155
    const/16 v0, 0x8

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_LOCAL_MIRROR:I

    .line 157
    const/16 v0, 0x9

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_QUALITY_LEVEL:I

    .line 159
    const/16 v0, 0xa

    sput v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_CODEC_TYPE:I

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->MOD_DRIVE_LOCK:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->LOG_LOCK:Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$1;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$1;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$2;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$2;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->SDK_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 27
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->MOD_DRIVE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 27
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->zpandModDriveMsg()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 27
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 27
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActive()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 27
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->LOG_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .registers 1

    .line 27
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static chrHmeReportCb([I)V
    .registers 6
    .param p0, "hmeChrData"    # [I

    .line 640
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "chrHmeReportCb hmeChrData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "logString":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1f

    .line 642
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1f

    aget v3, p0, v2

    .line 643
    .local v3, "a":I
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    .end local v3    # "a":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 646
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTPROXY"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    if-eqz v1, :cond_30

    .line 649
    invoke-interface {v1, p0}, Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;->chrHmeCbGetErrReport([I)V

    goto :goto_35

    .line 651
    :cond_30
    const-string v1, "chrHmeReportCb hme chr cb func is null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_35
    return-void
.end method

.method private static configVmContextForHmeCb()I
    .registers 3

    .line 686
    const-string v0, "VTPROXY"

    const-string v1, "----UICALLBACK : configVmContextForHmeCb java"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    const/4 v2, -0x1

    if-nez v1, :cond_12

    .line 689
    const-string v1, "configVmContextForHmeCb context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v2

    .line 693
    :cond_12
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setAndroidObjects(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1e

    .line 694
    const-string v1, "configVmContextForHmeCb failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v2

    .line 698
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static createHmeLogFolder()V
    .registers 2

    .line 327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/vtproxy/ImsThinClient$4;

    invoke-direct {v1}, Lcom/huawei/vtproxy/ImsThinClient$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method static createHmeLogPath(Ljava/io/File;)Z
    .registers 6
    .param p0, "filePath"    # Ljava/io/File;

    .line 746
    const-string v0, "createHmeLogPath failed"

    const-string v1, "VTPROXY"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 747
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 748
    .local v3, "isSucceed":Z
    if-nez v3, :cond_15

    .line 749
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return v2

    .line 752
    :cond_15
    const-string v4, "createHmeLogPath successful"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1c

    .line 756
    .end local v3    # "isSucceed":Z
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 757
    :catch_1c
    move-exception v3

    .line 758
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return v2
.end method

.method public static deInitImsThinClient()I
    .registers 1

    .line 362
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 364
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->nativeDestroy()I

    move-result v0

    return v0
.end method

.method static deleteHmeLogPath(Ljava/io/File;)Z
    .registers 9
    .param p0, "filePath"    # Ljava/io/File;

    .line 770
    const-string v0, "deleteHmeLogPath failed"

    const-string v1, "VTPROXY"

    const/4 v2, 0x0

    .line 772
    .local v2, "isSuccess":Z
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d

    .line 773
    return v3

    .line 776
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    .line 777
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 778
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_20

    .line 779
    const-string v6, "empty directory"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v5

    .line 783
    :cond_20
    move v6, v3

    .local v6, "i":I
    :goto_21
    array-length v7, v4

    if-ge v6, v7, :cond_34

    .line 784
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    move v2, v7

    .line 785
    if-nez v2, :cond_31

    .line 786
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return v3

    .line 783
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 791
    .end local v4    # "files":[Ljava/io/File;
    .end local v6    # "i":I
    :cond_34
    const-string v4, "deleteHmeLogPath success"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_3a

    .line 792
    return v5

    .line 793
    :catch_3a
    move-exception v4

    .line 794
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v3
.end method

.method private static native enableHmeLog(Z)V
.end method

.method private static native enableSetInitMaxBitRate(Z)V
.end method

.method private static getEventNameByEnum(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventEnum"    # I

    .line 619
    packed-switch p0, :pswitch_data_18

    .line 633
    const/4 v0, 0x0

    return-object v0

    .line 631
    :pswitch_5
    const-string v0, "com.huawei.caas.vtproxy.thinclient.VIDEO_QUALITY"

    return-object v0

    .line 629
    :pswitch_8
    const-string v0, "com.huawei.caas.vtproxy.thinclient.PEER_RESOLUTION_CHANGE"

    return-object v0

    .line 627
    :pswitch_b
    const-string v0, "com.huawei.caas.vtproxy.thinclient.PLAYER_STOP"

    return-object v0

    .line 625
    :pswitch_e
    const-string v0, "com.huawei.caas.vtproxy.thinclient.PLAYER_START"

    return-object v0

    .line 623
    :pswitch_11
    const-string v0, "com.huawei.caas.vtproxy.thinclient.START_READY"

    return-object v0

    .line 621
    :pswitch_14
    const-string v0, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static native getImsLpdcpThreshold()I
.end method

.method public static getLpdcpThreshold()I
    .registers 1

    .line 556
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getImsLpdcpThreshold()I

    move-result v0

    return v0
.end method

.method public static getNegotiatedCodecType(I)I
    .registers 2
    .param p0, "sessionId"    # I

    .line 818
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_CODEC_TYPE:I

    invoke-static {p0, v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaIntBySessId(II)I

    move-result v0

    return v0
.end method

.method public static getNegotiatedFPS()I
    .registers 1

    .line 479
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_FPS:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getNegotiatedHeight()I
    .registers 1

    .line 489
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_HEIGHT:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getNegotiatedWidth()I
    .registers 1

    .line 499
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_NEGO_WIDTH:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method private static native getParaInt(I)I
.end method

.method private static native getParaIntBySessId(II)I
.end method

.method public static getPeerHeight()I
    .registers 1

    .line 509
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_PEER_HEIGHT:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static getPeerWidth()I
    .registers 1

    .line 519
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_PEER_WIDTH:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method private static native getQosInfo([Lcom/huawei/vtproxy/QosInfo;)I
.end method

.method public static getVideoQosInfo()Lcom/huawei/vtproxy/QosInfo;
    .registers 3

    .line 538
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/vtproxy/QosInfo;

    .line 539
    .local v0, "qosInfo":[Lcom/huawei/vtproxy/QosInfo;
    new-instance v1, Lcom/huawei/vtproxy/QosInfo;

    invoke-direct {v1}, Lcom/huawei/vtproxy/QosInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 541
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getQosInfo([Lcom/huawei/vtproxy/QosInfo;)I

    .line 542
    aget-object v1, v0, v2

    if-nez v1, :cond_1b

    .line 543
    const-string v1, "VTPROXY"

    const-string v2, "getVideoQos qosInfo is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v1, 0x0

    return-object v1

    .line 547
    :cond_1b
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static getVideoQualityIndication()I
    .registers 1

    .line 529
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_QUALITY_LEVEL:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getParaInt(I)I

    move-result v0

    return v0
.end method

.method public static hideRmtVideo()I
    .registers 1

    .line 451
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->stopRmtVideo()I

    move-result v0

    return v0
.end method

.method private static imsEventNotifyCb(II)V
    .registers 5
    .param p0, "value"    # I
    .param p1, "sessionId"    # I

    .line 711
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->getEventNameByEnum(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "eventName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 713
    return-void

    .line 716
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_14

    .line 718
    const-string v2, "ims_sdk_res_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    :cond_14
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    if-eqz v2, :cond_20

    .line 722
    invoke-static {v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2b

    .line 724
    :cond_20
    invoke-static {}, Lcom/huawei/sci/SciSys;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 726
    :goto_2b
    return-void
.end method

.method public static imsProcBootCompleted()V
    .registers 0

    .line 321
    return-void
.end method

.method public static imsSetHmeLibPath(Ljava/lang/String;)I
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 314
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLibPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static imsSetLocalAddrCb(Ljava/lang/String;)V
    .registers 3
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 729
    const-string v0, "VTPROXY"

    if-nez p0, :cond_a

    .line 730
    const-string v1, "######JniVsImsSetLocalAddrCb: Input is NULL########"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_a
    const-string v1, "########JniVsImsSetLocalAddrCb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v0, "net.lte.vt.local_ip"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public static initImsThinClient(Landroid/content/Context;)I
    .registers 6
    .param p0, "contextVal"    # Landroid/content/Context;

    .line 288
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    .line 290
    sget-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 291
    return v1

    .line 294
    :cond_8
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    const-string v2, "VTPROXY"

    if-nez v0, :cond_13

    .line 295
    const-string v0, "initImsThinClient context is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_13
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;

    const-string v3, ""

    const-string v4, "2014-06-24"

    invoke-static {v3, v4, v0}, Lcom/huawei/vtproxy/ImsThinClient;->nativeInit(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_26

    .line 299
    const-string v0, "initImsThinClient nativeInit failed."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, -0x1

    return v0

    .line 303
    :cond_26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    .line 304
    return v1
.end method

.method public static isSdkInited()Z
    .registers 1

    .line 276
    sget-boolean v0, Lcom/huawei/vtproxy/ImsThinClient;->isSdkInited:Z

    return v0
.end method

.method private static native nativeDestroy()I
.end method

.method private static native nativeInit(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
.end method

.method public static pauseImsRTPStream(I)I
    .registers 2
    .param p0, "direction"    # I

    .line 594
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->pauseRTPStream(I)I

    move-result v0

    return v0
.end method

.method private static native pauseRTPStream(I)I
.end method

.method private static native pauseRmtVideo()I
.end method

.method public static pauseVideo()I
    .registers 1

    .line 460
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseRmtVideo()I

    move-result v0

    return v0
.end method

.method private static reportCurrentResCallBack(II)V
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 678
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    if-eqz v0, :cond_8

    .line 679
    invoke-interface {v0, p0, p1}, Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;->getCurrentDynamicRes(II)V

    goto :goto_f

    .line 681
    :cond_8
    const-string v0, "VTPROXY"

    const-string v1, "----UICALLBACK : [reportCurrentResCallBack] callback interface not set."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_f
    return-void
.end method

.method public static resumeImsRTPStream(I)I
    .registers 2
    .param p0, "direction"    # I

    .line 604
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeRTPStream(I)I

    move-result v0

    return v0
.end method

.method private static native resumeRTPStream(I)I
.end method

.method private static native resumeRmtVideo()I
.end method

.method public static resumeVideo()I
    .registers 1

    .line 469
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeRmtVideo()I

    move-result v0

    return v0
.end method

.method public static sendImageData(ILcom/huawei/vtproxy/ImageData;)I
    .registers 3
    .param p0, "sessionId"    # I
    .param p1, "imgData"    # Lcom/huawei/vtproxy/ImageData;

    .line 814
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsThinClient;->sendRmtImageData(ILcom/huawei/vtproxy/ImageData;)I

    move-result v0

    return v0
.end method

.method private static native sendRmtImageData(ILcom/huawei/vtproxy/ImageData;)I
.end method

.method private static native setAndroidObjects(Landroid/content/Context;)I
.end method

.method public static setBuffInfo(JJJJ)I
    .registers 9
    .param p0, "curBuffTime"    # J
    .param p2, "curBuffPktNum"    # J
    .param p4, "macUlThrput"    # J
    .param p6, "maxBuffTime"    # J

    .line 571
    invoke-static/range {p0 .. p7}, Lcom/huawei/vtproxy/ImsThinClient;->setImsBuffInfo(JJJJ)I

    move-result v0

    return v0
.end method

.method public static setChrHmeCallBack(Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;)V
    .registers 3
    .param p0, "callBack"    # Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 656
    const-string v0, "VTPROXY"

    const-string v1, "setChrHmeCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->chrHmeCallBack:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 658
    return-void
.end method

.method private static native setCurrentSession(I)I
.end method

.method public static setDeviceOrientation(I)I
    .registers 2
    .param p0, "orientation"    # I

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/vtproxy/ImsThinClient;->startRotateLocalRmtVideo(IZ)I

    move-result v0

    return v0
.end method

.method public static setDeviceOrientation(IZ)I
    .registers 3
    .param p0, "orientation"    # I
    .param p1, "isEnableLandScape"    # Z

    .line 423
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsThinClient;->startRotateLocalRmtVideo(IZ)I

    move-result v0

    return v0
.end method

.method public static setFarEndSurface(Landroid/view/Surface;)I
    .registers 2
    .param p0, "remoteSurface"    # Landroid/view/Surface;

    .line 376
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->setRemoteView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setFarEndSurface(Landroid/view/SurfaceView;)I
    .registers 4
    .param p0, "remoteView"    # Landroid/view/SurfaceView;

    .line 388
    const/4 v0, -0x1

    const-string v1, "VTPROXY"

    if-nez p0, :cond_b

    .line 389
    const-string v2, "setFarEndSurface localView is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v0

    .line 393
    :cond_b
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    if-nez v2, :cond_17

    .line 394
    const-string v2, "setFarEndSurface the surfaceHolder of remoteView is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v0

    .line 398
    :cond_17
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setRemoteView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V
    .registers 1
    .param p0, "getResCbFunc"    # Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 707
    sput-object p0, Lcom/huawei/vtproxy/ImsThinClient;->itfGetResCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 708
    return-void
.end method

.method private static native setHmeLibPath(Ljava/lang/String;)I
.end method

.method static setHmeLog(Z)V
    .registers 1
    .param p0, "isWrite"    # Z

    .line 800
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->enableHmeLog(Z)V

    .line 801
    return-void
.end method

.method private static native setImsBuffInfo(JJJJ)I
.end method

.method public static setImsCurrentSession(I)I
    .registers 2
    .param p0, "sessionId"    # I

    .line 614
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->setCurrentSession(I)I

    move-result v0

    return v0
.end method

.method private static native setImsRlQualInfo(IIII)I
.end method

.method public static setInitMaxBitRate(Z)V
    .registers 3
    .param p0, "isEnable"    # Z

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitMaxBitRate isEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->enableSetInitMaxBitRate(Z)V

    .line 811
    return-void
.end method

.method private static native setParaInt(II)I
.end method

.method private static native setRemoteView(Ljava/lang/Object;)I
.end method

.method public static setRlQualInfo(IIII)I
    .registers 5
    .param p0, "rsrp"    # I
    .param p1, "rsrq"    # I
    .param p2, "rssi"    # I
    .param p3, "bler"    # I

    .line 584
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsRlQualInfo(IIII)I

    move-result v0

    return v0
.end method

.method public static setRmtVideoOrientation(I)I
    .registers 2
    .param p0, "orientation"    # I

    .line 433
    sget v0, Lcom/huawei/vtproxy/ImsThinClient;->VSC_VPARA_REMOTE_ROTATE:I

    invoke-static {v0, p0}, Lcom/huawei/vtproxy/ImsThinClient;->setParaInt(II)I

    move-result v0

    return v0
.end method

.method public static showRmtVideo()I
    .registers 1

    .line 442
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->startRmtVideo()I

    move-result v0

    return v0
.end method

.method private static native startRmtVideo()I
.end method

.method private static native startRotateLocalRmtVideo(IZ)I
.end method

.method private static native stopRmtVideo()I
.end method

.method private static native zpandModDriveMsg()V
.end method

.method public static zpandModPostDrv()I
    .registers 3

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 210
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->SDK_HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_13

    .line 212
    :cond_c
    const-string v1, "VTPROXY"

    const-string v2, "VT zpandModPostDrv ZPAND_MOD_DRIVE_MSG is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_13
    if-eqz v0, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    return v1
.end method

.method private static native zpandTimerActive()V
.end method

.method public static zpandTimerDestroy()I
    .registers 1

    .line 242
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActiveRun:Ljava/lang/Runnable;

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerInit()I
    .registers 1

    .line 224
    new-instance v0, Lcom/huawei/vtproxy/ImsThinClient$3;

    invoke-direct {v0}, Lcom/huawei/vtproxy/ImsThinClient$3;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActiveRun:Ljava/lang/Runnable;

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerStart(J)I
    .registers 5
    .param p0, "timeLen"    # J

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActiveRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 257
    sget-object v2, Lcom/huawei/vtproxy/ImsThinClient;->SDK_HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_13

    .line 259
    :cond_c
    const-string v1, "VTPROXY"

    const-string v2, "VT zpandTimerStart zpandTimerActiveRun is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_13
    if-eqz v0, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    return v1
.end method

.method public static zpandTimerStop()I
    .registers 2

    .line 271
    sget-object v0, Lcom/huawei/vtproxy/ImsThinClient;->SDK_HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActiveRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    const/4 v0, 0x0

    return v0
.end method
