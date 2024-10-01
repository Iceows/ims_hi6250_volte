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
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

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

    public MtStatusManager(HwImsServiceImpl hwImsServiceImpl) {
        this.mMissedCallTipsRingTimer = HwImsConfigImpl.MISSED_CALL_TIPS_RING_TIMER_DEFAULT;
        this.mMissedCallTipsDelayTimer = HwImsConfigImpl.MISSED_CALL_TIPS_DELAY_TIMER_DEFAULT;
        this.mImsConfigImpl = null;
        IntentFilter filter = new IntentFilter();
        filter.addAction(INTENT_CALL_MONITOR_ALARM);
        filter.addAction(INTENT_CALL_REMINDER_ALARM);
        this.owner = hwImsServiceImpl;
        if (this.owner != null && this.owner.mContext != null) {
            this.mContext = this.owner.mContext;
            this.mContext.registerReceiver(this.mIntentReceiver, filter, "com.android.huawei.permission.mt.missing.tips", null);
        }
        this.anonymousCallCount = 0;
        this.mReminderId = 0;
        this.mImsConfigImpl = this.owner != null ? this.owner.getConfig() : null;
        if (this.mImsConfigImpl != null) {
            this.mMissedCallTipsRingTimer = this.mImsConfigImpl.getMissedCallTipsRingTimer();
            this.mMissedCallTipsDelayTimer = this.mImsConfigImpl.getMissedCallTipsDelayTimer();
        }
    }

    public void addIncomingCall(MtStatusReport rp) {
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
            return;
        }
        String address = rp.call_number;
        if (address == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(address)) {
            loge("addIncomingCall: invalid number");
            return;
        }
        HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(2);
        if (isIgnoreThisCall(address)) {
            increaseAnonymousCallCount();
            startReminderTimer();
            logw("Ignore call while invite: " + HiddenPrivacyInfo.putMosaic(address, 0));
            return;
        }
        startMonitorCall(address);
    }

    public void addFailCall(MtStatusReport rp) {
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
            return;
        }
        String address = rp.call_number;
        if (address == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(address)) {
            loge("addCancelMsg: invalid number");
        } else if (isIgnoreThisCall(address)) {
            decreaseAnonymousCallCount(true);
            logw("Ignore call while cancel: " + HiddenPrivacyInfo.putMosaic(address, 0));
            reportAnonymousCallFailEvent(rp.fail_cause);
        } else {
            HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            delayMonitorFailCall(rp);
        }
    }

    public void notifyRingCall(String address, int phoneId) {
        checkServiceWhenIncomingCall(phoneId);
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isMissedCallTipsInternal()) {
            log("isMissedCallTipsInternal is false.");
        } else if (address == null) {
            loge("notifyRingCall: invalid number");
        } else {
            if (HwImsConfigImpl.NULL_STRING_VALUE.equals(address)) {
                logw("notifyRingCall address is empty when only one mt");
                Set keys = null;
                if (1 == this.mMonitorMap.size()) {
                    keys = this.mMonitorMap.keySet();
                } else if (1 == this.mReminderMap.size()) {
                    keys = this.mReminderMap.keySet();
                }
                if (keys != null) {
                    Iterator it = keys.iterator();
                    address = (String) it.next();
                }
            }
            if (isNeedNotifyImsCallEnded(address)) {
                log("open do-recovery");
                setIsBusy(false);
            }
            if (isIgnoreThisCall(address)) {
                decreaseAnonymousCallCount(false);
                logw("Ignore call while ring: " + HiddenPrivacyInfo.putMosaic(address, 0));
                return;
            }
            String strIndex = getIndexByCallNumber(address);
            reportExceptionWhenRingCall(strIndex);
            if (isOnlyOneMonitorCall(strIndex)) {
                stopMonitorTimer();
            }
            this.mMonitorMap.remove(strIndex);
            log("MonitorMap size: " + this.mMonitorMap.size());
            if (isOnlyOneReminderCall(strIndex)) {
                stopReminderTimer();
            }
            this.mReminderMap.remove(strIndex);
            log("ReminderMap size: " + this.mReminderMap.size());
        }
    }

    public boolean isNeedNotifyImsCallStarted(String address) {
        return true;
    }

    public boolean isNeedNotifyImsCallEnded(String address) {
        String strIndex = getIndexByCallNumber(address);
        return isOnlyOneMonitorCall(strIndex) || (isIgnoreThisCall(address) && this.anonymousCallCount == 1);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
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

        public MtCallRecord(int st) {
            this.mState = 1;
            if (2 == st) {
                this.mInviteTime = System.currentTimeMillis();
                this.mState = 2;
            } else {
                this.mInviteTime = 0L;
                this.mState = 1;
            }
            this.mRingOrHangTime = 0L;
        }

        public void setRing(long time) {
            this.mRingOrHangTime = time;
            this.mState = 3;
        }

        public void setHang(long time) {
            this.mRingOrHangTime = time;
            this.mState = 4;
        }
    }

    private void startMonitorTimer() {
        log("start Monitor timer.");
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            Intent intent = new Intent(INTENT_CALL_MONITOR_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentMonitor = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            am.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsRingTimer, this.mMtReportIntentMonitor);
            log("INTENT_CALL_MONITOR_ALARM timer lauched.");
        }
    }

    private void stopMonitorTimer() {
        log("stop Monitor timer.");
        if (this.mMtReportIntentMonitor == null) {
            log("already stop MonitorTimer.");
            return;
        }
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            am.cancel(this.mMtReportIntentMonitor);
        }
        this.mMtReportIntentMonitor = null;
    }

    private boolean isMonitorTimeOut() {
        if (this.mMtReportIntentMonitor == null) {
            return true;
        }
        return false;
    }

    private void startReminderTimer() {
        log("start Reminder timer.");
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            Intent intent = new Intent(INTENT_CALL_REMINDER_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentReminder = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            am.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsDelayTimer, this.mMtReportIntentReminder);
            log("INTENT_CALL_REMINDER_ALARM timer lauched.");
        }
    }

    private void stopReminderTimer() {
        log("stop Reminder timer.");
        if (this.mMtReportIntentReminder == null) {
            log("already stop ReminderTimer.");
            return;
        }
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            am.cancel(this.mMtReportIntentReminder);
        }
        this.mMtReportIntentReminder = null;
    }

    private String getIndexByCallNumber(String rawCallNumber) {
        if (rawCallNumber.startsWith("+86")) {
            String strResult = rawCallNumber.substring(3);
            return strResult;
        } else if (!rawCallNumber.startsWith("86")) {
            return rawCallNumber;
        } else {
            String strResult2 = rawCallNumber.substring(2);
            return strResult2;
        }
    }

    private int getReminderId() {
        int i = this.mReminderId + 1;
        this.mReminderId = i;
        return i % 65535;
    }

    private boolean isIgnoreThisCall(String address) {
        if (address == null || HwImsConfigImpl.NULL_STRING_VALUE.equals(address)) {
            return true;
        }
        boolean isNumberDialable = isDialable(address);
        if (isNumberDialable) {
            return false;
        }
        loge("Non-dialable number: " + HiddenPrivacyInfo.putMosaic(address, 0));
        return true;
    }

    private void startMonitorCall(String address) {
        String strIndex = getIndexByCallNumber(address);
        if (this.mMonitorMap.containsKey(strIndex)) {
            reportExceptionWhenInvite(strIndex);
        } else {
            MtCallRecord rc = new MtCallRecord(2);
            this.mMonitorMap.put(strIndex, rc);
        }
        log("addInviteMsg: mMonitorMap size: " + this.mMonitorMap.size());
        startMonitorTimer();
    }

    private void delayMonitorFailCall(MtStatusReport rp) {
        MtCallRecord rc = new MtCallRecord();
        reportExceptionWhenFailCall(rp, rc);
        String strIndex = getIndexByCallNumber(rp.call_number);
        if (isOnlyOneMonitorCall(strIndex)) {
            stopMonitorTimer();
        }
        this.mMonitorMap.remove(strIndex);
        this.mReminderMap.put(strIndex, rc);
        log("delayMonitorFailCall: ReminderMap size: " + this.mReminderMap.size());
        startReminderTimer();
    }

    private void reportExceptionWhenRingCall(String strIndex) {
        logv("update ring MtCallRecord at " + System.currentTimeMillis());
        if (isMonitorTimeOut() && this.mReminderMap.containsKey(strIndex)) {
            logw("received ring when monitor timer out.");
            long now = System.currentTimeMillis();
            MtCallRecord rc = this.mReminderMap.get(strIndex);
            rc.setRing(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1004, (int) FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES);
        }
    }

    private void reportExceptionWhenFailCall(MtStatusReport rp, MtCallRecord rc) {
        String address = rp.call_number;
        long now = System.currentTimeMillis();
        String strIndex = getIndexByCallNumber(address);
        if (!isMonitorTimeOut() && this.mMonitorMap.containsKey(strIndex)) {
            logv("update hang up MtCallRecord at " + now);
            MtCallRecord rc2 = this.mMonitorMap.get(strIndex);
            rc2.setHang(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc2.mRingOrHangTime, rc2.mInviteTime, 1002, 32768);
        } else if (isMonitorTimeOut() && this.mReminderMap.containsKey(strIndex)) {
            logw("received cancel when monitor timer out.");
            MtCallRecord rc3 = this.mReminderMap.get(strIndex);
            rc3.setHang(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc3.mRingOrHangTime, rc3.mInviteTime, 1005, (int) FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES);
        } else {
            loge("abnormal cancel event: cause " + rp.fail_cause);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_CANCEL_CALL_NOT_FOUND);
        }
    }

    private void reportExceptionWhenInvite(String strIndex) {
        long now = System.currentTimeMillis();
        MtCallRecord rc = this.mMonitorMap.get(strIndex);
        switch (rc.mState) {
            case 1:
                logw("duplicate invite while previous state IDLE.");
                rc.mRingOrHangTime = now;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_IDLE);
                break;
            case 2:
                logw("duplicate invite while previous state INVITED.");
                rc.mRingOrHangTime = now;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_INVITED);
                break;
            case 3:
                logw("duplicate invite while previous state RANG.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_RANG);
                break;
            case 4:
                logw("duplicate invite while previous state CANCELLED.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED);
                break;
            default:
                loge("invalid state while invite: " + rc.mState);
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, (int) FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN);
                break;
        }
        rc.mInviteTime = now;
    }

    private void checkServiceWhenIncomingCall(int phoneId) {
        Phone defPhone;
        ServiceStateTracker serviceState;
        log("enter checkServiceWhenIncomingCall");
        if (this.mImsConfigImpl == null || !this.mImsConfigImpl.isCheckServiceWhenIncomingCall()) {
            log("isCheckServiceWhenIncomingCall is false.");
        } else if (phoneId != HuaweiTelephonyManager.getDefault().getDefault4GSlotId()) {
            log("checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it");
        } else if (this.owner != null && (defPhone = this.owner.getDefaultPhone()) != null
                && (serviceState = defPhone.getServiceStateTracker()) != null
                && serviceState.mSS.getState() != 0 ) {
            // TODO Iceows
            loge("checkServiceWhenIncomingCall: phone is out of service when incoming call");
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(0L, 0L, 1007, (int) FAIL_CAUSE_RING_WHEN_NO_SERVICE);
        }
    }

    private void increaseAnonymousCallCount() {
        this.anonymousCallCount++;
    }

    private void decreaseAnonymousCallCount(boolean isFail) {
        if (this.anonymousCallCount > 0) {
            this.anonymousCallCount--;
        } else {
            loge("anonymousCallCount check fail: " + this.anonymousCallCount);
        }
        if (isFail) {
            HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
        }
    }

    private void reportAnonymousCallFailEvent(int fail_cause) {
        MtCallRecord rc = new MtCallRecord();
        log("Anonymous call fail reason code " + fail_cause);
        HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1006, (int) FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN);
    }

    private void reportExceptionNoRingCall(int onlyInvitedCallCount) {
        MtCallRecord rc = new MtCallRecord();
        if (onlyInvitedCallCount > 0) {
            for (int i = 0; i < onlyInvitedCallCount; i++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1002, (int) FAIL_CAUSE_NO_RING_OR_CANCEL_CALL);
        }
        if (this.anonymousCallCount > 0) {
            for (int i2 = 0; i2 < this.anonymousCallCount; i2++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1002, (int) FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS);
        }
    }

    private boolean isOnlyOneMonitorCall(String callNumber) {
        return 1 == this.mMonitorMap.size() && this.mMonitorMap.containsKey(callNumber);
    }

    private boolean isOnlyOneReminderCall(String callNumber) {
        return 1 == this.mReminderMap.size() && this.mReminderMap.containsKey(callNumber);
    }

    public void handleMonitorTimeOut() {
        if (this.mMtReportIntentMonitor == null) {
            log("INTENT_CALL_MONITOR_ALARM is null");
            return;
        }
        this.mMtReportIntentMonitor = null;
        for (Map.Entry<String, MtCallRecord> entry : this.mMonitorMap.entrySet()) {
            String key = entry.getKey();
            MtCallRecord rc = entry.getValue();
            this.mReminderMap.put(key, rc);
        }
        this.mMonitorMap.clear();
        this.anonymousCallCount = 0;
        if (this.mReminderMap.size() > 0) {
            startReminderTimer();
        }
        log("open do-recovery");
        setIsBusy(false);
    }

    public void handleReminderTimeOut() {
        if (this.mMtReportIntentReminder == null) {
            log("INTENT_CALL_REMINDER_ALARM is null");
            return;
        }
        this.mMtReportIntentReminder = null;
        int onlyInvitedCallCount = 0;
        for (Map.Entry<String, MtCallRecord> entry : this.mReminderMap.entrySet()) {
            String address = entry.getKey();
            MtCallRecord rc = entry.getValue();
            if (2 == rc.mState) {
                onlyInvitedCallCount++;
            }
            if (this.mImsConfigImpl != null && this.mImsConfigImpl.isMissedCallDisplay()) {
                log("to reminder number: " + HiddenPrivacyInfo.putMosaic(address, 0));
                Context context = this.mContext;
                Context context2 = this.mContext;
                this.nm = (NotificationManager) context.getSystemService("notification");
                NotificationChannel mMissedCallChannel = new NotificationChannel("missedCallReminder", "Missed Call Reminder", 3);
                this.nm.createNotificationChannel(mMissedCallChannel);
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + address));
                intent1.setPackage(PACKAGE_NAME);
                PendingIntent pi = PendingIntent.getActivity(this.mContext, 0, intent1, 0);
                Notification notification = new Notification.Builder(this.mContext).setSmallIcon(17301631).setWhen(System.currentTimeMillis()).setContentTitle("Missed Call Reminder   v1.1").setContentText(address).setContentIntent(pi).setChannelId("missedCallReminder").setShowWhen(true).setAutoCancel(true).build();
                this.nm.notify(getReminderId(), notification);
            }
        }
        reportExceptionNoRingCall(onlyInvitedCallCount);
        this.mReminderMap.clear();
    }

    public static final boolean isDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N';
    }

    private static boolean isDialable(String address) {
        int count = address.length();
        for (int i = 0; i < count; i++) {
            if (!isDialable(address.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    protected ImsPhone getImsPhone() {
        ImsPhone imsPhone = (ImsPhone) this.owner.getImsPhone();
        if (imsPhone == null) {
            return null;
        }
        return imsPhone;
    }

    public void setIsBusy(boolean isBusy) {
        ImsPhone imsphone = getImsPhone();
        if (imsphone == null) {
            loge("setBusy: imsphone is null");
        } else {
            // TODO Iceows
            //imsphone.mHwImsPhoneEx.setIsBusy(isBusy);
        }
    }

    public void log(String s) {
    }

    public void logv(String s) {
    }

    private void logw(String s) {
        Log.e(LOG_TAG, "[warning] " + s);
    }

    private void loge(String s) {
        Log.e(LOG_TAG, "[error] " + s);
    }

    public String toString() {
        return LOG_TAG;
    }
}
