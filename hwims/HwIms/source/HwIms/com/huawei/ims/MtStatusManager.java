package com.huawei.ims;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import com.android.internal.telephony.HwTelephonyFactory;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.ServiceStateTracker;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.huawei.telephony.HuaweiTelephonyManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: MtStatusManager.class */
public class MtStatusManager {
    private static final boolean DEBUG = false;
    public static final int FAIL_CAUSE_BASE = 32768;
    public static final int FAIL_CAUSE_CANCEL_CALL_NOT_FOUND = 32776;
    public static final int FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED = 32772;
    public static final int FAIL_CAUSE_DUPLICATE_INVITE_IDLE = 32769;
    public static final int FAIL_CAUSE_DUPLICATE_INVITE_INVITED = 32770;
    public static final int FAIL_CAUSE_DUPLICATE_INVITE_RANG = 32771;
    public static final int FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN = 32773;
    public static final int FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES = 32774;
    public static final int FAIL_CAUSE_MT_FAIL_CALLER_KNOWN = 32768;
    public static final int FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN = 32780;
    public static final int FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS = 32778;
    public static final int FAIL_CAUSE_NO_RING_OR_CANCEL_CALL = 32777;
    public static final int FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES = 32775;
    public static final int FAIL_CAUSE_RING_WHEN_NO_SERVICE = 32779;
    public static final int INCOMING_CALL_SERVICE_ABNORMAL_EVENT = 1007;
    private static final String INTENT_CALL_MONITOR_ALARM = "com.android.internal.telephony.mt.monitor.timeout";
    private static final String INTENT_CALL_REMINDER_ALARM = "com.android.internal.telephony.mt.reminder.timeout";
    private static final String LOG_TAG = "MtStatusManager";
    public static final int MAX_MONITOR_TIME = 65535;
    private static final int MAX_REMINDER_ID_VALUE = 65535;
    public static final int MISSED_CALL_NON_DIALABLE_CALL_FAIL_EVENT = 1006;
    public static final int MISSED_CALL_REMINDER_EVENT = 1002;
    public static final int MISSED_CALL_REMINDER_GENERAL_EVENT = 1003;
    public static final int MISSED_CALL_RING_TIMER_OUT_HUNG_EVENT = 1005;
    public static final int MISSED_CALL_RING_TIMER_OUT_RING_EVENT = 1004;
    private static final int MT_EVENT = 2;
    private static final String MT_MGR_BROADCAST_PERMISSION = "com.android.huawei.permission.mt.missing.tips";
    private static final int MT_NW_FAIL_EVENT = 9;
    private static final String PACKAGE_NAME = "com.huawei.ims";
    private static final boolean VDEBUG = false;
    private int anonymousCallCount;
    private Context mContext;
    private HwImsConfigImpl mImsConfigImpl;
    private int mMissedCallTipsDelayTimer;
    private int mMissedCallTipsRingTimer;
    private int mReminderId;
    private NotificationManager nm;
    private HwImsServiceImpl owner;
    private PendingIntent mMtReportIntentMonitor = null;
    private PendingIntent mMtReportIntentReminder = null;
    private HashMap<String, MtCallRecord> mMonitorMap = new HashMap<>();
    private HashMap<String, MtCallRecord> mReminderMap = new HashMap<>();
    protected BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.MtStatusManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                MtStatusManager.this.log("intent null");
                return;
            }
            String action = intent.getAction();
            MtStatusManager mtStatusManager = MtStatusManager.this;
            mtStatusManager.logv("onReceive: action=" + action);
            if (MtStatusManager.INTENT_CALL_MONITOR_ALARM.equals(action)) {
                MtStatusManager.this.log("onReceive: monitor timer expires");
                MtStatusManager.this.handleMonitorTimeOut();
            } else if (MtStatusManager.INTENT_CALL_REMINDER_ALARM.equals(action)) {
                MtStatusManager.this.log("onReceive: reminder timer expires");
                MtStatusManager.this.handleReminderTimeOut();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: MtStatusManager$MtCallRecord.class */
    public static class MtCallRecord {
        public static final int STATE_CANCELLED = 4;
        public static final int STATE_IDLE = 1;
        public static final int STATE_INVITED = 2;
        public static final int STATE_RANG = 3;
        private long mInviteTime;
        private long mRingOrHangTime;
        private int mState;

        public MtCallRecord() {
            this.mState = 1;
            this.mInviteTime = 0L;
            this.mRingOrHangTime = 0L;
            this.mState = 1;
        }

        public MtCallRecord(int i) {
            this.mState = 1;
            if (2 == i) {
                this.mInviteTime = System.currentTimeMillis();
                this.mState = 2;
            } else {
                this.mInviteTime = 0L;
                this.mState = 1;
            }
            this.mRingOrHangTime = 0L;
        }

        public void setHang(long j) {
            this.mRingOrHangTime = j;
            this.mState = 4;
        }

        public void setRing(long j) {
            this.mRingOrHangTime = j;
            this.mState = 3;
        }
    }

    public MtStatusManager(HwImsServiceImpl hwImsServiceImpl) {
        this.mMissedCallTipsRingTimer = HwImsConfigImpl.MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
        this.mMissedCallTipsDelayTimer = HwImsConfigImpl.MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
        this.mImsConfigImpl = null;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_CALL_MONITOR_ALARM);
        intentFilter.addAction(INTENT_CALL_REMINDER_ALARM);
        this.owner = hwImsServiceImpl;
        if (this.owner != null && this.owner.mContext != null) {
            this.mContext = this.owner.mContext;
            this.mContext.registerReceiver(this.mIntentReceiver, intentFilter, "com.android.huawei.permission.mt.missing.tips", null);
        }
        this.anonymousCallCount = 0;
        this.mReminderId = 0;
        this.mImsConfigImpl = this.owner != null ? this.owner.getConfig() : null;
        if (this.mImsConfigImpl != null) {
            this.mMissedCallTipsRingTimer = this.mImsConfigImpl.getMissedCallTipsRingTimer();
            this.mMissedCallTipsDelayTimer = this.mImsConfigImpl.getMissedCallTipsDelayTimer();
        }
    }

    private void checkServiceWhenIncomingCall(int i) {
        Phone defaultPhone;
        ServiceStateTracker serviceStateTracker;
        log("enter checkServiceWhenIncomingCall");
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isCheckServiceWhenIncomingCall()) {
            log("isCheckServiceWhenIncomingCall is false.");
        } else if (i != HuaweiTelephonyManager.getDefault().getDefault4GSlotId()) {
            log("checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it");
        } else if (this.owner == null || (defaultPhone = this.owner.getDefaultPhone()) == null || (serviceStateTracker = defaultPhone.getServiceStateTracker()) == null || serviceStateTracker.mSS.getState() == 0 || serviceStateTracker.mSS.getDataRegState() == 0) {
        } else {
            loge("checkServiceWhenIncomingCall: phone is out of service when incoming call");
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(0L, 0L, 1007, (int) FAIL_CAUSE_RING_WHEN_NO_SERVICE);
        }
    }

    private void decreaseAnonymousCallCount(boolean z) {
        if (this.anonymousCallCount > 0) {
            this.anonymousCallCount--;
        } else {
            loge("anonymousCallCount check fail: " + this.anonymousCallCount);
        }
        if (z) {
            HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
        }
    }

    private void delayMonitorFailCall(MtStatusReport mtStatusReport) {
        MtCallRecord mtCallRecord = new MtCallRecord();
        reportExceptionWhenFailCall(mtStatusReport, mtCallRecord);
        String indexByCallNumber = getIndexByCallNumber(mtStatusReport.call_number);
        if (isOnlyOneMonitorCall(indexByCallNumber)) {
            stopMonitorTimer();
        }
        this.mMonitorMap.remove(indexByCallNumber);
        this.mReminderMap.put(indexByCallNumber, mtCallRecord);
        log("delayMonitorFailCall: ReminderMap size: " + this.mReminderMap.size());
        startReminderTimer();
    }

    private String getIndexByCallNumber(String str) {
        String str2 = str;
        if (str.startsWith("+86")) {
            str2 = str.substring(3);
        } else if (str.startsWith("86")) {
            str2 = str.substring(2);
        }
        return str2;
    }

    private int getReminderId() {
        int i = this.mReminderId + 1;
        this.mReminderId = i;
        return i % 65535;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMonitorTimeOut() {
        if (this.mMtReportIntentMonitor == null) {
            log("INTENT_CALL_MONITOR_ALARM is null");
            return;
        }
        this.mMtReportIntentMonitor = null;
        for (Map.Entry<String, MtCallRecord> entry : this.mMonitorMap.entrySet()) {
            this.mReminderMap.put(entry.getKey(), entry.getValue());
        }
        this.mMonitorMap.clear();
        this.anonymousCallCount = 0;
        if (this.mReminderMap.size() > 0) {
            startReminderTimer();
        }
        log("open do-recovery");
        setIsBusy(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReminderTimeOut() {
        if (this.mMtReportIntentReminder == null) {
            log("INTENT_CALL_REMINDER_ALARM is null");
            return;
        }
        this.mMtReportIntentReminder = null;
        int i = 0;
        for (Map.Entry<String, MtCallRecord> entry : this.mReminderMap.entrySet()) {
            String key = entry.getKey();
            int i2 = i;
            if (2 == entry.getValue().mState) {
                i2 = i + 1;
            }
            if (this.mImsConfigImpl != null && this.mImsConfigImpl.isMissedCallDisplay()) {
                log("to reminder number: " + HiddenPrivacyInfo.putMosaic(key, 0));
                Context context = this.mContext;
                Context context2 = this.mContext;
                this.nm = (NotificationManager) context.getSystemService("notification");
                this.nm.createNotificationChannel(new NotificationChannel("missedCallReminder", "Missed Call Reminder", 3));
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + key));
                intent.setPackage(PACKAGE_NAME);
                this.nm.notify(getReminderId(), new Notification.Builder(this.mContext).setSmallIcon(17301631).setWhen(System.currentTimeMillis()).setContentTitle("Missed Call Reminder   v1.1").setContentText(key).setContentIntent(PendingIntent.getActivity(this.mContext, 0, intent, 0)).setChannelId("missedCallReminder").setShowWhen(true).setAutoCancel(true).build());
            }
            i = i2;
        }
        reportExceptionNoRingCall(i);
        this.mReminderMap.clear();
    }

    private void increaseAnonymousCallCount() {
        this.anonymousCallCount++;
    }

    public static final boolean isDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N';
    }

    private static boolean isDialable(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isDialable(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private boolean isIgnoreThisCall(String str) {
        if (str == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(str)) {
            return true;
        }
        if (isDialable(str)) {
            return false;
        }
        loge("Non-dialable number: " + HiddenPrivacyInfo.putMosaic(str, 0));
        return true;
    }

    private boolean isMonitorTimeOut() {
        return this.mMtReportIntentMonitor == null;
    }

    private boolean isOnlyOneMonitorCall(String str) {
        boolean z = true;
        if (1 != this.mMonitorMap.size() || !this.mMonitorMap.containsKey(str)) {
            z = false;
        }
        return z;
    }

    private boolean isOnlyOneReminderCall(String str) {
        boolean z = true;
        if (1 != this.mReminderMap.size() || !this.mReminderMap.containsKey(str)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
    }

    private void loge(String str) {
        Log.e(LOG_TAG, "[error] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logv(String str) {
    }

    private void logw(String str) {
        Log.e(LOG_TAG, "[warning] " + str);
    }

    private void reportAnonymousCallFailEvent(int i) {
        MtCallRecord mtCallRecord = new MtCallRecord();
        log("Anonymous call fail reason code " + i);
        HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1006, (int) FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN);
    }

    private void reportExceptionNoRingCall(int i) {
        MtCallRecord mtCallRecord = new MtCallRecord();
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1002, (int) FAIL_CAUSE_NO_RING_OR_CANCEL_CALL);
        }
        if (this.anonymousCallCount > 0) {
            for (int i3 = 0; i3 < this.anonymousCallCount; i3++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1002, (int) FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS);
        }
    }

    private void reportExceptionWhenFailCall(MtStatusReport mtStatusReport, MtCallRecord mtCallRecord) {
        String str = mtStatusReport.call_number;
        long currentTimeMillis = System.currentTimeMillis();
        String indexByCallNumber = getIndexByCallNumber(str);
        if (!isMonitorTimeOut() && this.mMonitorMap.containsKey(indexByCallNumber)) {
            logv("update hang up MtCallRecord at " + currentTimeMillis);
            MtCallRecord mtCallRecord2 = this.mMonitorMap.get(indexByCallNumber);
            mtCallRecord2.setHang(currentTimeMillis);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord2.mRingOrHangTime, mtCallRecord2.mInviteTime, 1002, 32768);
        } else if (isMonitorTimeOut() && this.mReminderMap.containsKey(indexByCallNumber)) {
            logw("received cancel when monitor timer out.");
            MtCallRecord mtCallRecord3 = this.mReminderMap.get(indexByCallNumber);
            mtCallRecord3.setHang(currentTimeMillis);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord3.mRingOrHangTime, mtCallRecord3.mInviteTime, 1005, (int) FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES);
        } else {
            loge("abnormal cancel event: cause " + mtStatusReport.fail_cause);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_CANCEL_CALL_NOT_FOUND);
        }
    }

    private void reportExceptionWhenInvite(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        MtCallRecord mtCallRecord = this.mMonitorMap.get(str);
        switch (mtCallRecord.mState) {
            case 1:
                logw("duplicate invite while previous state IDLE.");
                mtCallRecord.mRingOrHangTime = currentTimeMillis;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_IDLE);
                break;
            case 2:
                logw("duplicate invite while previous state INVITED.");
                mtCallRecord.mRingOrHangTime = currentTimeMillis;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_INVITED);
                break;
            case 3:
                logw("duplicate invite while previous state RANG.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_RANG);
                break;
            case 4:
                logw("duplicate invite while previous state CANCELLED.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED);
                break;
            default:
                loge("invalid state while invite: " + mtCallRecord.mState);
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN);
                break;
        }
        mtCallRecord.mInviteTime = currentTimeMillis;
    }

    private void reportExceptionWhenRingCall(String str) {
        logv("update ring MtCallRecord at " + System.currentTimeMillis());
        if (isMonitorTimeOut() && this.mReminderMap.containsKey(str)) {
            logw("received ring when monitor timer out.");
            long currentTimeMillis = System.currentTimeMillis();
            MtCallRecord mtCallRecord = this.mReminderMap.get(str);
            mtCallRecord.setRing(currentTimeMillis);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(mtCallRecord.mRingOrHangTime, mtCallRecord.mInviteTime, 1004, (int) FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES);
        }
    }

    private void startMonitorCall(String str) {
        String indexByCallNumber = getIndexByCallNumber(str);
        if (this.mMonitorMap.containsKey(indexByCallNumber)) {
            reportExceptionWhenInvite(indexByCallNumber);
        } else {
            this.mMonitorMap.put(indexByCallNumber, new MtCallRecord(2));
        }
        log("addInviteMsg: mMonitorMap size: " + this.mMonitorMap.size());
        startMonitorTimer();
    }

    private void startMonitorTimer() {
        log("start Monitor timer.");
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        if (alarmManager != null) {
            Intent intent = new Intent(INTENT_CALL_MONITOR_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentMonitor = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            alarmManager.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsRingTimer, this.mMtReportIntentMonitor);
            log("INTENT_CALL_MONITOR_ALARM timer lauched.");
        }
    }

    private void startReminderTimer() {
        log("start Reminder timer.");
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        if (alarmManager != null) {
            Intent intent = new Intent(INTENT_CALL_REMINDER_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentReminder = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            alarmManager.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsDelayTimer, this.mMtReportIntentReminder);
            log("INTENT_CALL_REMINDER_ALARM timer lauched.");
        }
    }

    private void stopMonitorTimer() {
        log("stop Monitor timer.");
        if (this.mMtReportIntentMonitor == null) {
            log("already stop MonitorTimer.");
            return;
        }
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(this.mMtReportIntentMonitor);
        }
        this.mMtReportIntentMonitor = null;
    }

    private void stopReminderTimer() {
        log("stop Reminder timer.");
        if (this.mMtReportIntentReminder == null) {
            log("already stop ReminderTimer.");
            return;
        }
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(this.mMtReportIntentReminder);
        }
        this.mMtReportIntentReminder = null;
    }

    public void addFailCall(MtStatusReport mtStatusReport) {
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
            return;
        }
        String str = mtStatusReport.call_number;
        if (str == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(str)) {
            loge("addCancelMsg: invalid number");
        } else if (!isIgnoreThisCall(str)) {
            HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            delayMonitorFailCall(mtStatusReport);
        } else {
            decreaseAnonymousCallCount(true);
            logw("Ignore call while cancel: " + HiddenPrivacyInfo.putMosaic(str, 0));
            reportAnonymousCallFailEvent(mtStatusReport.fail_cause);
        }
    }

    public void addIncomingCall(MtStatusReport mtStatusReport) {
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
            return;
        }
        String str = mtStatusReport.call_number;
        if (str == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(str)) {
            loge("addIncomingCall: invalid number");
            return;
        }
        HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(2);
        if (!isIgnoreThisCall(str)) {
            startMonitorCall(str);
            return;
        }
        increaseAnonymousCallCount();
        startReminderTimer();
        logw("Ignore call while invite: " + HiddenPrivacyInfo.putMosaic(str, 0));
    }

    protected ImsPhone getImsPhone() {
        ImsPhone imsPhone = this.owner.getImsPhone();
        if (imsPhone == null) {
            return null;
        }
        return imsPhone;
    }

    public boolean isNeedNotifyImsCallEnded(String str) {
        if (isOnlyOneMonitorCall(getIndexByCallNumber(str))) {
            return true;
        }
        return isIgnoreThisCall(str) && this.anonymousCallCount == 1;
    }

    public boolean isNeedNotifyImsCallStarted(String str) {
        return true;
    }

    public void notifyRingCall(String str, int i) {
        checkServiceWhenIncomingCall(i);
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
        } else if (str == null) {
            loge("notifyRingCall: invalid number");
        } else {
            String str2 = str;
            if (HwImsConfigImpl.NULL_STRING_VALUE.equals(str)) {
                logw("notifyRingCall address is empty when only one mt");
                Set<String> set = null;
                if (1 == this.mMonitorMap.size()) {
                    set = this.mMonitorMap.keySet();
                } else if (1 == this.mReminderMap.size()) {
                    set = this.mReminderMap.keySet();
                }
                str2 = str;
                if (set != null) {
                    str2 = set.iterator().next();
                }
            }
            if (isNeedNotifyImsCallEnded(str2)) {
                log("open do-recovery");
                setIsBusy(false);
            }
            if (isIgnoreThisCall(str2)) {
                decreaseAnonymousCallCount(false);
                logw("Ignore call while ring: " + HiddenPrivacyInfo.putMosaic(str2, 0));
                return;
            }
            String indexByCallNumber = getIndexByCallNumber(str2);
            reportExceptionWhenRingCall(indexByCallNumber);
            if (isOnlyOneMonitorCall(indexByCallNumber)) {
                stopMonitorTimer();
            }
            this.mMonitorMap.remove(indexByCallNumber);
            log("MonitorMap size: " + this.mMonitorMap.size());
            if (isOnlyOneReminderCall(indexByCallNumber)) {
                stopReminderTimer();
            }
            this.mReminderMap.remove(indexByCallNumber);
            log("ReminderMap size: " + this.mReminderMap.size());
        }
    }

    public void setIsBusy(boolean z) {
        ImsPhone imsPhone = getImsPhone();
        if (imsPhone == null) {
            loge("setBusy: imsphone is null");
        } else {
            imsPhone.mHwImsPhoneEx.setIsBusy(z);
        }
    }

    public String toString() {
        return LOG_TAG;
    }
}
