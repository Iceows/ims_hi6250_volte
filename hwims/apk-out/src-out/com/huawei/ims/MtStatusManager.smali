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

.field private static final LENGTH_THREE:I = 0x3

.field private static final LENGTH_TWO:I = 0x2

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


# instance fields
.field private anonymousCallCount:I

.field private mContext:Landroid/content/Context;

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

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
    .registers 7
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 174
    const v0, 0x1f400

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 178
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    .line 186
    new-instance v1, Lcom/huawei/ims/MtStatusManager$1;

    invoke-direct {v1, p0}, Lcom/huawei/ims/MtStatusManager$1;-><init>(Lcom/huawei/ims/MtStatusManager;)V

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    .line 226
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v2, :cond_50

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_50

    .line 227
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    .line 228
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.android.huawei.permission.mt.missing.tips"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 231
    :cond_50
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 232
    iput v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    .line 234
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    :cond_5d
    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 235
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_71

    .line 236
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsRingTimer()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    .line 237
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getMissedCallTipsDelayTimer()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    .line 239
    :cond_71
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/MtStatusManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;

    .line 40
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleMonitorTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/MtStatusManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager;

    .line 40
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->handleReminderTimeOut()V

    return-void
.end method

.method private checkServiceWhenIncomingCall(I)V
    .registers 12
    .param p1, "phoneId"    # I

    .line 700
    const-string v0, "enter checkServiceWhenIncomingCall"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCheckServiceWhenIncomingCall()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_58

    .line 714
    :cond_10
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    if-eq p1, v0, :cond_20

    .line 715
    const-string v0, "checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 716
    return-void

    .line 719
    :cond_20
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_25

    .line 720
    return-void

    .line 722
    :cond_25
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 724
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_2c

    .line 725
    return-void

    .line 727
    :cond_2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 729
    .local v1, "serviceState":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_57

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 730
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_57

    .line 731
    const-string v2, "checkServiceWhenIncomingCall: phone is out of service when incoming call"

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x3ef

    const v9, 0x800b

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 736
    :cond_57
    return-void

    .line 703
    .end local v0    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "serviceState":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_58
    :goto_58
    const-string v0, "isCheckServiceWhenIncomingCall is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private decreaseAnonymousCallCount(Z)V
    .registers 4
    .param p1, "isFail"    # Z

    .line 744
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v0, :cond_9

    .line 745
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    goto :goto_1f

    .line 747
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anonymousCallCount check fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 751
    :goto_1f
    if-eqz p1, :cond_2a

    .line 752
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 754
    :cond_2a
    return-void
.end method

.method private delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .registers 6
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 596
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 597
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V

    .line 599
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 602
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 604
    :cond_19
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
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

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 610
    return-void
.end method

.method private getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rawCallNumber"    # Ljava/lang/String;

    .line 539
    move-object v0, p1

    .line 540
    .local v0, "strResult":Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 541
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 542
    :cond_f
    const-string v1, "86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 543
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method private getReminderId()I
    .registers 3

    .line 550
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderId:I

    const v1, 0xffff

    rem-int/2addr v0, v1

    return v0
.end method

.method private handleMonitorTimeOut()V
    .registers 6

    .line 796
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_a

    .line 797
    const-string v0, "INTENT_CALL_MONITOR_ALARM is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 798
    return-void

    .line 801
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 803
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 804
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 806
    .local v3, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v4, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/MtStatusManager$MtCallRecord;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    goto :goto_17

    .line 809
    :cond_35
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 811
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 813
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_48

    .line 814
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 817
    :cond_48
    const-string v1, "open do-recovery"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0, v0}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 819
    return-void
.end method

.method private handleReminderTimeOut()V
    .registers 13

    .line 822
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v0, :cond_a

    .line 823
    const-string v0, "INTENT_CALL_REMINDER_ALARM is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 824
    return-void

    .line 827
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "onlyInvitedCallCount":I
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 830
    .local v1, "it":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 832
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 833
    .local v3, "address":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 834
    .local v4, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 838
    :cond_39
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v5, :cond_dc

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallDisplay()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to reminder number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 840
    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 842
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    .line 843
    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v7, 0x3

    const-string v8, "missedCallReminder"

    const-string v9, "Missed Call Reminder"

    invoke-direct {v5, v8, v9, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 845
    .local v5, "mMissedCallChannel":Landroid/app/NotificationChannel;
    iget-object v7, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v7, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 846
    new-instance v7, Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v7, v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 847
    .local v7, "intent1":Landroid/content/Intent;
    const-string v9, "com.huawei.ims"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    iget-object v9, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 849
    .local v6, "pi":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x108007f

    .line 850
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 852
    const-string v10, "Missed Call Reminder   v1.1"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 853
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 854
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 855
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 856
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 857
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 858
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 859
    .local v8, "notification":Landroid/app/Notification;
    iget-object v9, p0, Lcom/huawei/ims/MtStatusManager;->nm:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->getReminderId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 861
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .end local v5    # "mMissedCallChannel":Landroid/app/NotificationChannel;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_dc
    goto/16 :goto_18

    .line 862
    :cond_de
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionNoRingCall(I)V

    .line 863
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 864
    return-void
.end method

.method private increaseAnonymousCallCount()V
    .registers 2

    .line 740
    iget v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    .line 741
    return-void
.end method

.method public static final isDialable(C)Z
    .registers 5
    .param p0, "chr"    # C

    .line 873
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2a

    if-eq p0, v2, :cond_15

    const/16 v2, 0x23

    if-eq p0, v2, :cond_15

    const/16 v2, 0x2b

    if-eq p0, v2, :cond_15

    const/16 v2, 0x4e

    if-ne p0, v2, :cond_13

    goto :goto_15

    :cond_13
    move v2, v0

    goto :goto_16

    :cond_15
    :goto_15
    move v2, v1

    .line 874
    .local v2, "isSymbol":Z
    :goto_16
    const/16 v3, 0x30

    if-lt p0, v3, :cond_1e

    const/16 v3, 0x39

    if-le p0, v3, :cond_20

    :cond_1e
    if-eqz v2, :cond_21

    :cond_20
    move v0, v1

    :cond_21
    return v0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 879
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 880
    const/4 v2, 0x0

    return v2

    .line 878
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 883
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private isIgnoreThisCall(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .line 561
    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2d

    .line 566
    :cond_c
    invoke-static {p1}, Lcom/huawei/ims/MtStatusManager;->isDialable(Ljava/lang/String;)Z

    move-result v1

    .line 567
    .local v1, "isNumberDialable":Z
    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-dialable number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-static {p1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 570
    return v0

    .line 573
    :cond_2c
    return v2

    .line 562
    .end local v1    # "isNumberDialable":Z
    :cond_2d
    :goto_2d
    const-string v1, "isIgnoreThisCall : address is null or empty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 563
    return v0
.end method

.method private isMonitorTimeOut()Z
    .registers 2

    .line 500
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    .line 501
    const/4 v0, 0x1

    return v0

    .line 503
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isOnlyOneMonitorCall(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnlyOneMonitorCall : mMonitorMap.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMonitorMap.containsKey(callNumber) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    .line 787
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    return v1
.end method

.method private isOnlyOneReminderCall(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[error] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtStatusManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 918
    const-string v0, "MtStatusManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 922
    const-string v0, "MtStatusManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[warning] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtStatusManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method private reportAnonymousCallFailEvent(I)V
    .registers 11
    .param p1, "failCause"    # I

    .line 757
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 758
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anonymous call fail reason code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v2

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v3

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    const/16 v7, 0x3ee

    const v8, 0x800c

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 761
    return-void
.end method

.method private reportExceptionNoRingCall(I)V
    .registers 12
    .param p1, "onlyInvitedCallCount"    # I

    .line 764
    new-instance v0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    invoke-direct {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>()V

    .line 766
    .local v0, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    const/16 v1, 0x9

    if-lez p1, :cond_2a

    .line 767
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, p1, :cond_16

    .line 768
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 771
    .end local v2    # "i":I
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    const/16 v8, 0x3ea

    const v9, 0x8009

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 775
    :cond_2a
    iget v2, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-lez v2, :cond_51

    .line 776
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2f
    iget v3, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ge v2, v3, :cond_3d

    .line 777
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 780
    .end local v2    # "i":I
    :cond_3d
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v0}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    const/16 v8, 0x3ea

    const v9, 0x800a

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 783
    :cond_51
    return-void
.end method

.method private reportExceptionWhenFailCall(Lcom/huawei/ims/MtStatusReport;Lcom/huawei/ims/MtStatusManager$MtCallRecord;)V
    .registers 16
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;
    .param p2, "rc"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 627
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 629
    .local v1, "now":J
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "strIndex":Ljava/lang/String;
    move-object v4, p2

    .line 631
    .local v4, "newCallRecord":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v5

    if-nez v5, :cond_50

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 632
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update hang up MtCallRecord at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 634
    invoke-virtual {v4, v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 636
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    .line 637
    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v8

    const/16 v10, 0x3ea

    const v11, 0x8000

    .line 636
    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_b0

    .line 638
    :cond_50
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v5

    if-eqz v5, :cond_84

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 639
    const-string v5, "received cancel when monitor timer out."

    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 640
    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 641
    invoke-virtual {v4, v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setHang(J)V

    .line 643
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    .line 644
    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v8

    const/16 v10, 0x3ed

    const v11, 0x8006

    .line 643
    invoke-interface/range {v5 .. v11}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_b0

    .line 646
    :cond_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abnormal cancel event: cause "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getFailCause()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 648
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v6

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    .line 649
    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v4}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v9

    const/16 v11, 0x3eb

    const v12, 0x8008

    .line 648
    invoke-interface/range {v6 .. v12}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 651
    :goto_b0
    return-void
.end method

.method private reportExceptionWhenInvite(Ljava/lang/String;)V
    .registers 13
    .param p1, "strIndex"    # Ljava/lang/String;

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 655
    .local v0, "now":J
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 656
    .local v2, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    if-nez v2, :cond_f

    .line 657
    return-void

    .line 659
    :cond_f
    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_80

    const/4 v4, 0x3

    if-eq v3, v4, :cond_66

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4c

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state while invite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8005

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    goto :goto_ba

    .line 683
    :cond_4c
    const-string v3, "duplicate invite while previous state CANCELLED."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8004

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 687
    goto :goto_ba

    .line 677
    :cond_66
    const-string v3, "duplicate invite while previous state RANG."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8003

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 681
    goto :goto_ba

    .line 669
    :cond_80
    const-string v3, "duplicate invite while previous state INVITED."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 671
    # setter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 673
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8002

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 675
    goto :goto_ba

    .line 661
    :cond_9d
    const-string v3, "duplicate invite while previous state IDLE."

    invoke-direct {p0, v3}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 663
    # setter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 665
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v5

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v7

    const/16 v9, 0x3eb

    const v10, 0x8001

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 667
    nop

    .line 696
    :goto_ba
    # setter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$502(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J

    .line 697
    return-void
.end method

.method private reportExceptionWhenRingCall(Ljava/lang/String;)V
    .registers 12
    .param p1, "strIndex"    # Ljava/lang/String;

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update ring MtCallRecord at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->isMonitorTimeOut()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 616
    const-string v0, "received ring when monitor timer out."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 618
    .local v0, "now":J
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 619
    .local v2, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    invoke-virtual {v2, v0, v1}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->setRing(J)V

    .line 621
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v3

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v4

    # getter for: Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J
    invoke-static {v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J

    move-result-wide v6

    const/16 v8, 0x3ec

    const v9, 0x8007

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerMtCallFailEvent(JJII)V

    .line 624
    .end local v0    # "now":J
    .end local v2    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :cond_4e
    return-void
.end method

.method private startMonitorCall(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "strIndex":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 583
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenInvite(Ljava/lang/String;)V

    goto :goto_1b

    .line 586
    :cond_10
    new-instance v1, Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/huawei/ims/MtStatusManager$MtCallRecord;-><init>(I)V

    .line 587
    .local v1, "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .end local v1    # "rc":Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    :goto_1b
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

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startMonitorTimer()V

    .line 593
    return-void
.end method

.method private startMonitorTimer()V
    .registers 8

    .line 471
    const-string v0, "start Monitor timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 474
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_3b

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 478
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v5, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsRingTimer:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 480
    const-string v2, "INTENT_CALL_MONITOR_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 482
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3b
    return-void
.end method

.method private startReminderTimer()V
    .registers 8

    .line 508
    const-string v0, "start Reminder timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 511
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_3b

    .line 512
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.huawei.ims"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    .line 515
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 516
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v5, p0, Lcom/huawei/ims/MtStatusManager;->mMissedCallTipsDelayTimer:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 518
    const-string v2, "INTENT_CALL_REMINDER_ALARM timer lauched."

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 520
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3b
    return-void
.end method

.method private stopMonitorTimer()V
    .registers 3

    .line 485
    const-string v0, "stop Monitor timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    if-nez v0, :cond_f

    .line 487
    const-string v0, "already stop MonitorTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 488
    return-void

    .line 491
    :cond_f
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 492
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_20

    .line 493
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 496
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentMonitor:Landroid/app/PendingIntent;

    .line 497
    return-void
.end method

.method private stopReminderTimer()V
    .registers 3

    .line 523
    const-string v0, "stop Reminder timer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    if-nez v0, :cond_f

    .line 526
    const-string v0, "already stop ReminderTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 527
    return-void

    .line 530
    :cond_f
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 531
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz v0, :cond_20

    .line 532
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 535
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mMtReportIntentReminder:Landroid/app/PendingIntent;

    .line 536
    return-void
.end method


# virtual methods
.method public addFailCall(Lcom/huawei/ims/MtStatusReport;)V
    .registers 5
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 283
    if-nez p1, :cond_3

    .line 284
    return-void

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5b

    .line 291
    :cond_e
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_55

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_55

    .line 297
    :cond_1d
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 298
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore call while cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 300
    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getFailCause()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->reportAnonymousCallFailEvent(I)V

    .line 303
    return-void

    .line 307
    :cond_48
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 310
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->delayMonitorFailCall(Lcom/huawei/ims/MtStatusReport;)V

    .line 311
    return-void

    .line 293
    :cond_55
    :goto_55
    const-string v1, "addCancelMsg: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 294
    return-void

    .line 287
    .end local v0    # "address":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const-string v0, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V
    .registers 5
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 247
    if-nez p1, :cond_3

    .line 248
    return-void

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_55

    .line 255
    :cond_e
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_4f

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_4f

    .line 262
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HwVolteChrManager;->updateMtCallLog(I)V

    .line 265
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 266
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->increaseAnonymousCallCount()V

    .line 267
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->startReminderTimer()V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore call while invite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 269
    invoke-static {v0, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 270
    return-void

    .line 274
    :cond_4b
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->startMonitorCall(Ljava/lang/String;)V

    .line 275
    return-void

    .line 257
    :cond_4f
    :goto_4f
    const-string v1, "addIncomingCall: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 258
    return-void

    .line 251
    .end local v0    # "address":Ljava/lang/String;
    :cond_55
    :goto_55
    const-string v0, "isMissedCallTipsInternal is false."

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method protected getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->owner:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 894
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_a

    .line 895
    const/4 v1, 0x0

    return-object v1

    .line 898
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v1
.end method

.method public isNeedNotifyImsCallEnded(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2c

    .line 398
    :cond_c
    if-nez p1, :cond_14

    .line 399
    const-string v0, "isNeedNotifyImsCallEnded: address is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 400
    return v1

    .line 402
    :cond_14
    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {p0, p1}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/huawei/ims/MtStatusManager;->anonymousCallCount:I

    if-ne v2, v1, :cond_29

    goto :goto_2b

    .line 406
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 404
    :cond_2b
    :goto_2b
    return v1

    .line 396
    .end local v0    # "strIndex":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public isNeedNotifyImsCallStarted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public notifyRingCall(Ljava/lang/String;I)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 320
    invoke-direct {p0, p2}, Lcom/huawei/ims/MtStatusManager;->checkServiceWhenIncomingCall(I)V

    .line 322
    iget-object v0, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_cc

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isMissedCallTipsInternal()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_cc

    .line 327
    :cond_f
    move-object v0, p1

    .line 328
    .local v0, "newAddress":Ljava/lang/String;
    if-nez v0, :cond_18

    .line 329
    const-string v1, "notifyRingCall: invalid number"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 330
    return-void

    .line 337
    :cond_18
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 338
    const-string v1, "notifyRingCall newAddress is empty when only one mt"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, "keys":Ljava/util/Set;
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 342
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_44

    .line 343
    :cond_36
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v3, :cond_44

    .line 344
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 347
    :cond_44
    :goto_44
    if-eqz v1, :cond_51

    .line 348
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    .local v2, "it":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 353
    .end local v1    # "keys":Ljava/util/Set;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_51
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->isIgnoreThisCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 354
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->decreaseAnonymousCallCount(Z)V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore call while ring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {v0, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->logw(Ljava/lang/String;)V

    .line 357
    return-void

    .line 360
    :cond_74
    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->getIndexByCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "strIndex":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->reportExceptionWhenRingCall(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneMonitorCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 365
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopMonitorTimer()V

    .line 367
    :cond_84
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MonitorMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->isOnlyOneReminderCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 372
    invoke-direct {p0}, Lcom/huawei/ims/MtStatusManager;->stopReminderTimer()V

    .line 374
    :cond_ac
    iget-object v2, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReminderMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/MtStatusManager;->mReminderMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V

    .line 376
    return-void

    .line 323
    .end local v0    # "newAddress":Ljava/lang/String;
    .end local v1    # "strIndex":Ljava/lang/String;
    :cond_cc
    :goto_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsConfigImpl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMissedCallTipsInternal is false."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setIsBusy(Z)V
    .registers 4
    .param p1, "isBusy"    # Z

    .line 907
    invoke-virtual {p0}, Lcom/huawei/ims/MtStatusManager;->getImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    .line 908
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v0, :cond_c

    .line 909
    const-string v1, "setIsBusy: imsPhone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V

    .line 910
    return-void

    .line 913
    :cond_c
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhoneEx:Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;->setIsBusy(Z)V

    .line 914
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 940
    const-string v0, "MtStatusManager"

    return-object v0
.end method
