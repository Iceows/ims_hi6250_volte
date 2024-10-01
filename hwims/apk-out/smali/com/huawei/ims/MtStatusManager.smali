.class public Lcom/huawei/ims/MtStatusManager;
.super Ljava/lang/Object;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FAIL_CAUSE_BASE:I = 0x8000

.field public static final FAIL_CAUSE_CANCEL_CALL_NOT_FOUND:I = 0x8008

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED:I = 0x8004

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_IDLE:I = 0x8001

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_INVITED:I = 0x8002

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_RANG:I = 0x8003

.field public static final FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN:I = 0x8005

.field public static final FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES:I = 0x8006

.field public static final FAIL_CAUSE_MT_FAIL_CALLER_KNOWN:I = 0x8000

.field public static final FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN:I = 0x800c

.field public static final FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS:I = 0x800a

.field public static final FAIL_CAUSE_NO_RING_OR_CANCEL_CALL:I = 0x8009

.field public static final FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES:I = 0x8007

.field public static final FAIL_CAUSE_RING_WHEN_NO_SERVICE:I = 0x800b

.field public static final INCOMING_CALL_SERVICE_ABNORMAL_EVENT:I = 0x3ef

.field private static final INTENT_CALL_MONITOR_ALARM:Ljava/lang/String; = "com.android.internal.telephony.mt.monitor.timeout"

.field private static final INTENT_CALL_REMINDER_ALARM:Ljava/lang/String; = "com.android.internal.telephony.mt.reminder.timeout"

.field private static final LOG_TAG:Ljava/lang/String; = "MtStatusManager"

.field public static final MAX_MONITOR_TIME:I = 0xffff

.field private static final MAX_REMINDER_ID_VALUE:I = 0xffff

.field public static final MISSED_CALL_NON_DIALABLE_CALL_FAIL_EVENT:I = 0x3ee

.field public static final MISSED_CALL_REMINDER_EVENT:I = 0x3ea

.field public static final MISSED_CALL_REMINDER_GENERAL_EVENT:I = 0x3eb

.field public static final MISSED_CALL_RING_TIMER_OUT_HUNG_EVENT:I = 0x3ed

.field public static final MISSED_CALL_RING_TIMER_OUT_RING_EVENT:I = 0x3ec

.field private static final MT_EVENT:I = 0x2

.field private static final MT_MGR_BROADCAST_PERMISSION:Ljava/lang/String; = "com.android.huawei.permission.mt.missing.tips"

.field private static final MT_NW_FAIL_EVENT:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.huawei.ims"

.field private static final VDEBUG:Z = false


# instance fields
.field private anonymousCallCount:I

.field private mContext:Landroid/content/Context;

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMissedCallTipsDelayTimer:I

.field private mMissedCallTipsRingTimer:I

.field private mMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/MtStatusManager$MtCallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMtReportIntentMonitor:Landroid/app/PendingIntent;

.field private mMtReportIntentReminder:Landroid/app/PendingIntent;

.field private mReminderId:I

.field private mReminderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/MtStatusManager$MtCallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private nm:Landroid/app/NotificationManager;

.field private owner:Lcom/huawei/ims/HwImsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 5
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 90
    const v0, 0x1f400

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 104
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    .line 120
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 430
    new-instance v1, Lcom/huawei/ims/MtStatusManager$1;

    invoke-direct {v1, p0}, Lcom/huawei/ims/MtStatusManager$1;-><init>(Lcom/huawei/ims/MtStatusManager;)V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    .line 130
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    .line 132
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.android.huawei.permission.mt.missing.tips"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 137
    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    .line 140
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    nop

    :cond_1
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 141
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsRingTimer()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 143
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsDelayTimer()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 146
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/MtStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;

    .line 36
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleMonitorTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/MtStatusManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;

    .line 36
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleReminderTimeOut()V

    return-void
.end method

.method private checkServiceWhenIncomingCall(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 619
    const-string v0, "enter checkServiceWhenIncomingCall"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCheckServiceWhenIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 637
    const-string v0, "checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 638
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_2

    .line 642
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 646
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_3

    .line 647
    return-void

    .line 649
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 651
    .local v1, "serviceState":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 652
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 653
    const-string v2, "checkServiceWhenIncomingCall: phone is out of service when incoming call"

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x3ef

    const v9, 0x800b

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 658
    :cond_4
    return-void

    .line 626
    .end local v0    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "serviceState":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_5
    :goto_0
    const-string v0, "isCheckServiceWhenIncomingCall is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private decreaseAnonymousCallCount(Z)V
    .locals 2
    .param p1, "isFail"    # Z

    .line 667
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v0, :cond_0

    .line 668
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    goto :goto_0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anonymousCallCount check fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 674
    :goto_0
    if-eqz p1, :cond_1

    .line 675
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 677
    :cond_1
    return-void
.end method

.method private delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 4
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 508
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 509
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V

    .line 511
    iget-object v1, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayMonitorFailCall: ReminderMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 522
    return-void
.end method

.method private getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawCallNumber"    # Ljava/lang/String;

    .line 454
    move-object v0, p1

    .line 455
    .local v0, "strResult":Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 457
    :cond_0
    const-string v1, "86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getReminderId()I
    .locals 2

    .line 465
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    const v1, 0xffff

    rem-int/2addr v0, v1

    return v0
.end method

.method private handleMonitorTimeOut()V
    .locals 5

    .line 723
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 724
    const-string v0, "INTENT_CALL_MONITOR_ALARM is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 725
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 730
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 731
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 732
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 733
    .local v3, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 742
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 743
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 746
    :cond_2
    const-string v1, "open do-recovery"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, v0}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 750
    return-void
.end method

.method private handleReminderTimeOut()V
    .locals 11

    .line 753
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 754
    const-string v0, "INTENT_CALL_REMINDER_ALARM is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 755
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "onlyInvitedCallCount":I
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 764
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 766
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 767
    .local v3, "address":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 768
    .local v4, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    const/4 v5, 0x2

    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 769
    add-int/lit8 v0, v0, 0x1

    .line 775
    :cond_1
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallDisplay()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to reminder number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 780
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    .line 782
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v7, "missedCallReminder"

    const-string v8, "Missed Call Reminder"

    const/4 v9, 0x3

    invoke-direct {v5, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 783
    .local v5, "mMissedCallChannel":Landroid/app/NotificationChannel;
    iget-object v7, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v7, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 785
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 787
    .local v7, "intent1":Landroid/content/Intent;
    const-string v8, "com.huawei.ims"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    iget-object v8, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 791
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x108007f

    .line 792
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "Missed Call Reminder   v1.1"

    .line 794
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 795
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 796
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "missedCallReminder"

    .line 797
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 798
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 799
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 800
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 802
    .local v8, "notification":Landroid/app/Notification;
    iget-object v9, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->getReminderId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 805
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .end local v5    # "mMissedCallChannel":Landroid/app/NotificationChannel;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_2
    goto/16 :goto_0

    .line 806
    :cond_3
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionNoRingCall(I)V

    .line 807
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 808
    return-void
.end method

.method private increaseAnonymousCallCount()V
    .locals 1

    .line 663
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 664
    return-void
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 813
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 818
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    const/4 v2, 0x0

    return v2

    .line 817
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isIgnoreThisCall(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .line 474
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {p1}, Lcom/huawei/ims/MtStatusManager;->isDialable(Ljava/lang/String;)Z

    move-result v1

    .line 480
    .local v1, "isNumberDialable":Z
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-dialable number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 482
    return v0

    .line 485
    :cond_1
    return v2

    .line 475
    .end local v1    # "isNumberDialable":Z
    :cond_2
    :goto_0
    return v0
.end method

.method private isMonitorTimeOut()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOnlyOneMonitorCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOnlyOneReminderCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 854
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 867
    const-string v0, "MtStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 860
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 863
    const-string v0, "MtStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[warning] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method private reportAnonymousCallFailEvent(I)V
    .locals 9
    .param p1, "fail_cause"    # I

    .line 684
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 685
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anonymous call fail reason code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v2

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    const/16 v7, 0x3ee

    const v8, 0x800c

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 688
    return-void
.end method

.method private reportExceptionNoRingCall(I)V
    .locals 11
    .param p1, "onlyInvitedCallCount"    # I

    .line 691
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 693
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    const/16 v1, 0x9

    const/4 v2, 0x0

    if-lez p1, :cond_1

    .line 694
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 695
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    .end local v3    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3ea

    const v10, 0x8009

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 703
    :cond_1
    iget v3, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v3, :cond_3

    .line 704
    nop

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ge v2, v3, :cond_2

    .line 705
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 708
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    const/16 v8, 0x3ea

    const v9, 0x800a

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 712
    :cond_3
    return-void
.end method

.method private reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V
    .locals 12
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;
    .param p2, "rc"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 540
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 541
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 542
    .local v1, "now":J
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "strIndex":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update hang up MtCallRecord at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    .line 546
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    check-cast p2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 547
    invoke-virtual {p2, v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3ea

    const v10, 0x8000

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 552
    const-string v4, "received cancel when monitor timer out."

    invoke-direct {p0, v4}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    check-cast p2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 554
    invoke-virtual {p2, v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 556
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3ed

    const v10, 0x8006

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 560
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abnormal cancel event: cause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v5

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    invoke-static {p2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v8

    const/16 v10, 0x3eb

    const v11, 0x8008

    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 566
    :goto_0
    return-void
.end method

.method private reportExceptionWhenInvite(Ljava/lang/String;)V
    .locals 11
    .param p1, "strIndex"    # Ljava/lang/String;

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 570
    .local v0, "now":J
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 572
    .local v2, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state while invite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8005

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_0

    .line 599
    :pswitch_0
    const-string v3, "duplicate invite while previous state CANCELLED."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8004

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 604
    goto :goto_0

    .line 592
    :pswitch_1
    const-string v3, "duplicate invite while previous state RANG."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8003

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 597
    goto :goto_0

    .line 583
    :pswitch_2
    const-string v3, "duplicate invite while previous state INVITED."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 585
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 587
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8002

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 590
    goto :goto_0

    .line 574
    :pswitch_3
    const-string v3, "duplicate invite while previous state IDLE."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 576
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 578
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8001

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 581
    nop

    .line 614
    :goto_0
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$502(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 615
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reportExceptionWhenRingCall(Ljava/lang/String;)V
    .locals 10
    .param p1, "strIndex"    # Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update ring MtCallRecord at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logv(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "received ring when monitor timer out."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 530
    .local v0, "now":J
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 531
    .local v2, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-virtual {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setRing(J)V

    .line 533
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    const/16 v8, 0x3ec

    const v9, 0x8007

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 537
    .end local v0    # "now":J
    .end local v2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :cond_0
    return-void
.end method

.method private startMonitorCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 493
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "strIndex":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenInvite(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    new-instance v1, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>(I)V

    .line 499
    .local v1, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v1    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInviteMsg: mMonitorMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startMonitorTimer()V

    .line 505
    return-void
.end method

.method private startMonitorTimer()V
    .locals 7

    .line 360
    const-string v0, "start Monitor timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 363
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 369
    const/4 v2, 0x2

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v5, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 369
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 371
    const-string v2, "INTENT_CALL_MONITOR_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 373
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startReminderTimer()V
    .locals 7

    .line 399
    const-string v0, "start Reminder timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 402
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 408
    const/4 v2, 0x2

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v5, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 408
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 410
    const-string v2, "INTENT_CALL_REMINDER_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopMonitorTimer()V
    .locals 2

    .line 376
    const-string v0, "stop Monitor timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 378
    const-string v0, "already stop MonitorTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 383
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 384
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 387
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 388
    return-void
.end method

.method private stopReminderTimer()V
    .locals 2

    .line 415
    const-string v0, "stop Reminder timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 418
    const-string v0, "already stop ReminderTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 419
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 423
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 427
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 428
    return-void
.end method


# virtual methods
.method public addFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 190
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 198
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore call while cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 207
    iget v1, p1, Lcom/huawei/ims/MtStatusReport;->fail_cause:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->reportAnonymousCallFailEvent(I)V

    .line 208
    return-void

    .line 212
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 215
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V

    .line 216
    return-void

    .line 199
    :cond_3
    :goto_0
    const-string v1, "addCancelMsg: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 200
    return-void

    .line 193
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 155
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    .line 163
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 172
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->increaseAnonymousCallCount()V

    .line 174
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore call while invite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 176
    return-void

    .line 180
    :cond_2
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->startMonitorCall(Ljava/lang/String;)V

    .line 181
    return-void

    .line 164
    :cond_3
    :goto_0
    const-string v1, "addIncomingCall: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 165
    return-void

    .line 158
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 830
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 831
    const/4 v1, 0x0

    return-object v1

    .line 834
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v1
.end method

.method public isNeedNotifyImsCallEnded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 315
    :cond_1
    :goto_0
    return v2
.end method

.method public isNeedNotifyImsCallStarted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public notifyRingCall(Ljava/lang/String;I)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 224
    invoke-direct {p0, p2}, Lcom/huawei/ims/MtStatusManager;->checkServiceWhenIncomingCall(I)V

    .line 229
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 237
    const-string v0, "notifyRingCall: invalid number"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 238
    return-void

    .line 246
    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const-string v0, "notifyRingCall address is empty when only one mt"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "keys":Ljava/util/Set;
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 256
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 257
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 258
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    .line 268
    .end local v0    # "keys":Ljava/util/Set;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 269
    const-string v0, "open do-recovery"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 276
    :cond_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore call while ring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 279
    return-void

    .line 282
    :cond_6
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenRingCall(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 289
    :cond_7
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneReminderCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 294
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopReminderTimer()V

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReminderMap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 298
    return-void

    .line 232
    .end local v0    # "strIndex":Ljava/lang/String;
    :cond_9
    :goto_1
    const-string v0, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->log(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setIsBusy(Z)V
    .locals 2
    .param p1, "isBusy"    # Z

    .line 839
    invoke-virtual {p0}, Lcom/huawei/ims/MtStatusManager;->getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    .line 840
    .local v0, "imsphone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_0

    .line 841
    const-string v1, "setBusy: imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 842
    return-void

    .line 845
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhoneEx:Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;->setIsBusy(Z)V

    .line 846
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 875
    const-string v0, "MtStatusManager"

    return-object v0
.end method
