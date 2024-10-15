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
import android.telephony.Rlog;
import com.android.internal.telephony.HwTelephonyFactory;
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.ServiceStateTracker;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.huawei.telephony.HuaweiTelephonyManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class MtStatusManager {
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
    private static final int LENGTH_THREE = 3;
    private static final int LENGTH_TWO = 2;
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
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.MtStatusManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                MtStatusManager.this.loge("intent null");
                return;
            }
            String action = intent.getAction();
            MtStatusManager.this.logi("onReceive: action=" + action);
            if (MtStatusManager.INTENT_CALL_MONITOR_ALARM.equals(action)) {
                MtStatusManager.this.logi("onReceive: monitor timer expires");
                MtStatusManager.this.handleMonitorTimeOut();
            } else if (MtStatusManager.INTENT_CALL_REMINDER_ALARM.equals(action)) {
                MtStatusManager.this.logi("onReceive: reminder timer expires");
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
        HwImsServiceImpl hwImsServiceImpl2 = this.owner;
        if (hwImsServiceImpl2 != null && hwImsServiceImpl2.mContext != null) {
            this.mContext = this.owner.mContext;
            this.mContext.registerReceiver(this.mIntentReceiver, filter, "com.android.huawei.permission.mt.missing.tips", null);
        }
        this.anonymousCallCount = 0;
        this.mReminderId = 0;
        HwImsServiceImpl hwImsServiceImpl3 = this.owner;
        this.mImsConfigImpl = hwImsServiceImpl3 != null ? hwImsServiceImpl3.getConfig() : null;
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl != null) {
            this.mMissedCallTipsRingTimer = hwImsConfigImpl.getMissedCallTipsRingTimer();
            this.mMissedCallTipsDelayTimer = this.mImsConfigImpl.getMissedCallTipsDelayTimer();
        }
    }

    public void addIncomingCall(MtStatusReport rp) {
        if (rp == null) {
            return;
        }
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null || !hwImsConfigImpl.isMissedCallTipsInternal()) {
            loge("isMissedCallTipsInternal is false.");
            return;
        }
        String address = rp.getCallNumber();
        if (address == null || "".equals(address)) {
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
        if (rp == null) {
            return;
        }
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null || !hwImsConfigImpl.isMissedCallTipsInternal()) {
            loge("isMissedCallTipsInternal is false.");
            return;
        }
        String address = rp.getCallNumber();
        if (address == null || "".equals(address)) {
            loge("addCancelMsg: invalid number");
            return;
        }
        if (isIgnoreThisCall(address)) {
            decreaseAnonymousCallCount(true);
            logw("Ignore call while cancel: " + HiddenPrivacyInfo.putMosaic(address, 0));
            reportAnonymousCallFailEvent(rp.getFailCause());
            return;
        }
        HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
        delayMonitorFailCall(rp);
    }

    public void notifyRingCall(String address, int phoneId) {
        checkServiceWhenIncomingCall(phoneId);
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null || !hwImsConfigImpl.isMissedCallTipsInternal()) {
            loge("mImsConfigImpl = " + this.mImsConfigImpl + ", isMissedCallTipsInternal is false.");
            return;
        }
        String newAddress = address;
        if (newAddress == null) {
            loge("notifyRingCall: invalid number");
            return;
        }
        if ("".equals(newAddress)) {
            logw("notifyRingCall newAddress is empty when only one mt");
            Set keys = null;
            if (this.mMonitorMap.size() == 1) {
                keys = this.mMonitorMap.keySet();
            } else if (this.mReminderMap.size() == 1) {
                keys = this.mReminderMap.keySet();
            }
            if (keys != null) {
                Iterator it = keys.iterator();
                newAddress = it.next();
            }
        }
        if (isIgnoreThisCall(newAddress)) {
            decreaseAnonymousCallCount(false);
            logw("Ignore call while ring: " + HiddenPrivacyInfo.putMosaic(newAddress, 0));
            return;
        }
        String strIndex = getIndexByCallNumber(newAddress);
        reportExceptionWhenRingCall(strIndex);
        if (isOnlyOneMonitorCall(strIndex)) {
            stopMonitorTimer();
        }
        this.mMonitorMap.remove(strIndex);
        logi("MonitorMap size: " + this.mMonitorMap.size());
        if (isOnlyOneReminderCall(strIndex)) {
            stopReminderTimer();
        }
        this.mReminderMap.remove(strIndex);
        logi("ReminderMap size: " + this.mReminderMap.size());
    }

    public boolean isNeedNotifyImsCallStarted(String address) {
        return true;
    }

    public boolean isNeedNotifyImsCallEnded(String address) {
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null || !hwImsConfigImpl.isMissedCallTipsInternal()) {
            return true;
        }
        if (address == null) {
            loge("isNeedNotifyImsCallEnded: address is null");
            return true;
        }
        String strIndex = getIndexByCallNumber(address);
        return isOnlyOneMonitorCall(strIndex) || (isIgnoreThisCall(address) && this.anonymousCallCount == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class MtCallRecord {
        public static final int STATE_CANCELLED = 4;
        public static final int STATE_IDLE = 1;
        public static final int STATE_INVITED = 2;
        public static final int STATE_RANG = 3;
        private long mInviteTime;
        private long mRingOrHangTime;
        private int mState;

        MtCallRecord() {
            this.mState = 1;
            this.mInviteTime = 0L;
            this.mRingOrHangTime = 0L;
            this.mState = 1;
        }

        MtCallRecord(int st) {
            this.mState = 1;
            if (st == 2) {
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
        logi("start Monitor timer.");
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            Intent intent = new Intent(INTENT_CALL_MONITOR_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentMonitor = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            am.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsRingTimer, this.mMtReportIntentMonitor);
            logi("INTENT_CALL_MONITOR_ALARM timer lauched.");
        }
    }

    private void stopMonitorTimer() {
        logi("stop Monitor timer.");
        if (this.mMtReportIntentMonitor == null) {
            loge("already stop MonitorTimer.");
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
        logi("start Reminder timer.");
        AlarmManager am = (AlarmManager) this.mContext.getSystemService("alarm");
        if (am != null) {
            Intent intent = new Intent(INTENT_CALL_REMINDER_ALARM);
            intent.setPackage(PACKAGE_NAME);
            this.mMtReportIntentReminder = PendingIntent.getBroadcast(this.mContext, 0, intent, 268435456);
            am.set(2, SystemClock.elapsedRealtime() + this.mMissedCallTipsDelayTimer, this.mMtReportIntentReminder);
            logi("INTENT_CALL_REMINDER_ALARM timer lauched.");
        }
    }

    private void stopReminderTimer() {
        logi("stop Reminder timer.");
        if (this.mMtReportIntentReminder == null) {
            loge("already stop ReminderTimer.");
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
        }
        if (!rawCallNumber.startsWith("86")) {
            return rawCallNumber;
        }
        String strResult2 = rawCallNumber.substring(2);
        return strResult2;
    }

    private int getReminderId() {
        int i = this.mReminderId + 1;
        this.mReminderId = i;
        return i % 65535;
    }

    private boolean isIgnoreThisCall(String address) {
        if (address == null || "".equals(address)) {
            loge("isIgnoreThisCall : address is null or empty");
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
        logi("addInviteMsg: mMonitorMap size: " + this.mMonitorMap.size());
        startMonitorTimer();
    }

    private void delayMonitorFailCall(MtStatusReport rp) {
        MtCallRecord rc = new MtCallRecord();
        reportExceptionWhenFailCall(rp, rc);
        String strIndex = getIndexByCallNumber(rp.getCallNumber());
        if (isOnlyOneMonitorCall(strIndex)) {
            stopMonitorTimer();
        }
        this.mMonitorMap.remove(strIndex);
        this.mReminderMap.put(strIndex, rc);
        logi("delayMonitorFailCall: ReminderMap size: " + this.mReminderMap.size());
        startReminderTimer();
    }

    private void reportExceptionWhenRingCall(String strIndex) {
        logi("update ring MtCallRecord at " + System.currentTimeMillis());
        if (isMonitorTimeOut() && this.mReminderMap.containsKey(strIndex)) {
            logw("received ring when monitor timer out.");
            long now = System.currentTimeMillis();
            MtCallRecord rc = this.mReminderMap.get(strIndex);
            rc.setRing(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1004, FAIL_CAUSE_RING_WHEN_MONITOR_EXPIRES);
        }
    }

    private void reportExceptionWhenFailCall(MtStatusReport rp, MtCallRecord rc) {
        String address = rp.getCallNumber();
        long now = System.currentTimeMillis();
        String strIndex = getIndexByCallNumber(address);
        if (!isMonitorTimeOut() && this.mMonitorMap.containsKey(strIndex)) {
            logi("update hang up MtCallRecord at " + now);
            MtCallRecord newCallRecord = this.mMonitorMap.get(strIndex);
            newCallRecord.setHang(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(newCallRecord.mRingOrHangTime, newCallRecord.mInviteTime, 1002, 32768);
            return;
        }
        if (isMonitorTimeOut() && this.mReminderMap.containsKey(strIndex)) {
            logw("received cancel when monitor timer out.");
            MtCallRecord newCallRecord2 = this.mReminderMap.get(strIndex);
            newCallRecord2.setHang(now);
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(newCallRecord2.mRingOrHangTime, newCallRecord2.mInviteTime, 1005, FAIL_CAUSE_HUNG_WHEN_MONITOR_EXPIRES);
            return;
        }
        loge("abnormal cancel event: cause " + rp.getFailCause());
        HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_CANCEL_CALL_NOT_FOUND);
    }

    private void reportExceptionWhenInvite(String strIndex) {
        long now = System.currentTimeMillis();
        MtCallRecord rc = this.mMonitorMap.get(strIndex);
        if (rc != null) {
            int i = rc.mState;
            if (i == 1) {
                logw("duplicate invite while previous state IDLE.");
                rc.mRingOrHangTime = now;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_DUPLICATE_INVITE_IDLE);
            } else if (i == 2) {
                logw("duplicate invite while previous state INVITED.");
                rc.mRingOrHangTime = now;
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_DUPLICATE_INVITE_INVITED);
            } else if (i == 3) {
                logw("duplicate invite while previous state RANG.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_DUPLICATE_INVITE_RANG);
            } else if (i == 4) {
                logw("duplicate invite while previous state CANCELLED.");
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_DUPLICATE_INVITE_CANCELLED);
            } else {
                loge("invalid state while invite: " + rc.mState);
                HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1003, FAIL_CAUSE_DUPLICATE_INVITE_UNKOWN);
            }
            rc.mInviteTime = now;
        }
    }

    private void checkServiceWhenIncomingCall(int phoneId) {
        Phone defPhone;
        ServiceStateTracker serviceState;
        logi("enter checkServiceWhenIncomingCall");
        HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
        if (hwImsConfigImpl == null || !hwImsConfigImpl.isCheckServiceWhenIncomingCall()) {
            loge("isCheckServiceWhenIncomingCall is false.");
            return;
        }
        if (phoneId != HuaweiTelephonyManager.getDefault().getDefault4GSlotId()) {
            loge("checkServiceWhenIncomingCall: this is incoming call from vsim, do not handle it");
            return;
        }
        HwImsServiceImpl hwImsServiceImpl = this.owner;
        if (hwImsServiceImpl != null && (defPhone = hwImsServiceImpl.getDefaultPhone()) != null && (serviceState = defPhone.getServiceStateTracker()) != null && serviceState.mSS.getState() != 0 && serviceState.mSS.getDataRegState() != 0) {
            loge("checkServiceWhenIncomingCall: phone is out of service when incoming call");
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(0L, 0L, 1007, FAIL_CAUSE_RING_WHEN_NO_SERVICE);
        }
    }

    private void increaseAnonymousCallCount() {
        this.anonymousCallCount++;
    }

    private void decreaseAnonymousCallCount(boolean isFail) {
        int i = this.anonymousCallCount;
        if (i > 0) {
            this.anonymousCallCount = i - 1;
        } else {
            loge("anonymousCallCount check fail: " + this.anonymousCallCount);
        }
        if (isFail) {
            HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
        }
    }

    private void reportAnonymousCallFailEvent(int failCause) {
        MtCallRecord rc = new MtCallRecord();
        logi("Anonymous call fail reason code " + failCause);
        HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1006, FAIL_CAUSE_MT_FAIL_CALLER_UNKNOWN);
    }

    private void reportExceptionNoRingCall(int onlyInvitedCallCount) {
        MtCallRecord rc = new MtCallRecord();
        if (onlyInvitedCallCount > 0) {
            for (int i = 0; i < onlyInvitedCallCount; i++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1002, FAIL_CAUSE_NO_RING_OR_CANCEL_CALL);
        }
        if (this.anonymousCallCount > 0) {
            for (int i2 = 0; i2 < this.anonymousCallCount; i2++) {
                HwTelephonyFactory.getHwVolteChrManager().updateMtCallLog(9);
            }
            HwTelephonyFactory.getHwVolteChrManager().triggerMtCallFailEvent(rc.mRingOrHangTime, rc.mInviteTime, 1002, FAIL_CAUSE_NO_RING_OR_CANCEL_ANMS);
        }
    }

    private boolean isOnlyOneMonitorCall(String callNumber) {
        logi("isOnlyOneMonitorCall : mMonitorMap.size() = " + this.mMonitorMap.size() + ", mMonitorMap.containsKey(callNumber) = " + this.mMonitorMap.containsKey(callNumber));
        return this.mMonitorMap.size() == 1 && this.mMonitorMap.containsKey(callNumber);
    }

    private boolean isOnlyOneReminderCall(String callNumber) {
        return this.mReminderMap.size() == 1 && this.mReminderMap.containsKey(callNumber);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMonitorTimeOut() {
        if (this.mMtReportIntentMonitor == null) {
            loge("INTENT_CALL_MONITOR_ALARM is null");
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
        logi("open do-recovery");
        setIsBusy(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReminderTimeOut() {
        if (this.mMtReportIntentReminder == null) {
            loge("INTENT_CALL_REMINDER_ALARM is null");
            return;
        }
        this.mMtReportIntentReminder = null;
        int onlyInvitedCallCount = 0;
        for (Map.Entry<String, MtCallRecord> entry : this.mReminderMap.entrySet()) {
            String address = entry.getKey();
            MtCallRecord rc = entry.getValue();
            if (rc.mState == 2) {
                onlyInvitedCallCount++;
            }
            HwImsConfigImpl hwImsConfigImpl = this.mImsConfigImpl;
            if (hwImsConfigImpl != null && hwImsConfigImpl.isMissedCallDisplay()) {
                logi("to reminder number: " + HiddenPrivacyInfo.putMosaic(address, 0));
                this.nm = (NotificationManager) this.mContext.getSystemService("notification");
                NotificationChannel mMissedCallChannel = new NotificationChannel("missedCallReminder", "Missed Call Reminder", 3);
                this.nm.createNotificationChannel(mMissedCallChannel);
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + address));
                intent1.setPackage(PACKAGE_NAME);
                PendingIntent pi = PendingIntent.getActivity(this.mContext, 0, intent1, 0);
                Notification notification = new Notification.Builder(this.mContext).setSmallIcon(android.R.drawable.stat_notify_missed_call).setWhen(System.currentTimeMillis()).setContentTitle("Missed Call Reminder   v1.1").setContentText(address).setContentIntent(pi).setChannelId("missedCallReminder").setShowWhen(true).setAutoCancel(true).build();
                this.nm.notify(getReminderId(), notification);
            }
        }
        reportExceptionNoRingCall(onlyInvitedCallCount);
        this.mReminderMap.clear();
    }

    public static final boolean isDialable(char chr) {
        boolean isSymbol = chr == '*' || chr == '#' || chr == '+' || chr == 'N';
        return (chr >= '0' && chr <= '9') || isSymbol;
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
        ImsPhone imsPhone = this.owner.getImsPhone();
        if (imsPhone == null) {
            return null;
        }
        return imsPhone;
    }

    public void setIsBusy(boolean isBusy) {
        ImsPhone imsPhone = getImsPhone();
        if (imsPhone == null) {
            loge("setIsBusy: imsPhone is null");
        } else {
            imsPhone.mHwImsPhoneEx.setIsBusy(isBusy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logi(String str) {
        Rlog.i(LOG_TAG, str);
    }

    private void logv(String str) {
        Rlog.v(LOG_TAG, str);
    }

    private void logw(String str) {
        Rlog.e(LOG_TAG, "[warning] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e(LOG_TAG, "[error] " + str);
    }

    public String toString() {
        return LOG_TAG;
    }
}
