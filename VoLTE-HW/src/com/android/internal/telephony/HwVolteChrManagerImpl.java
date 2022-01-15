package com.android.internal.telephony;

import java.lang.Enum;
import android.content.Context;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.android.internal.telephony.imsphone.ImsPhoneConnection;
import com.android.internal.telephony.Call;

public class HwVolteChrManagerImpl implements HwVolteChrManager {

// Constant values from stock ROM.
	private static final int ANSWER_FAIL = 4;
	private static final String CALL_COUNT_LIST = "call_count_list";
	private static final String CALL_FAIL_TYPE = "call_fail_type";
	private static final String CALL_STATE = "call_state";
	private static final String CALL_TYPE_AUDIO = "VoLTE";
	public static final String CHR_BROADCAST_PERMISSION = "com.huawei.android.permission.GET_CHR_DATA";
	public static final String CHR_DATA = "chr_data";
	private static final int CS_REDIAL = 5;
	private static final String Call_TYPE_VIDEO = "VT";
	public static final boolean DBG = true;
	private static final int DROP_CALL = 2;
	public static final String FAULT_ID = "fault_id";
	private static final int FAULT_IMS_REG_FAIL_EVENT = 4002;
	private static final int FAULT_IMS_SS_PERFORMANCE_EVENT = 4004;
	private static final int FAULT_IMS_VT_FAIL_EVENT = 4003;
	private static final int FAULT_VOLTE_PERFORMANCE_EVENT = 4001;
	private static final int HANDOVER_CANCELED = 3;
	private static final int HANDOVER_COMPLETED = 1;
	private static final int HANDOVER_FAILED = 2;
	private static final int HANDOVER_STARTED = 0;
	private static final int HANGUP_FAIL = 3;
	public static final String INTENT_CHR = "com.huawei.android.chr.action.ACTION_REPORT_CHR";
	private static final String INVITE_TO_RING_TIME = "invite_to_ring_time";
	private static final String IS_MULTI_PARTY = "is_multi_party";
	public static final String LOG_TAG = "HwVolteChrManager";
	public static final int MAX_MONITOR_TIME = 65535;
	private static final String MEDIA_TYPE = "media_type";
	private static final int MODIFY_FAIL = 8;
	public static final String MODULE_ID = "module_id";
	private static final int MO_FAIL = 1;
	private static final int MT_EVENT = 2;
	private static final int MT_FAIL = 7;
	private static final int MT_NW_FAIL_EVENT = 9;
	public static final int NO_SERVICE_CAUSE_INCALL = 36867;
	public static final int NO_SERVICE_CAUSE_MO = 36865;
	public static final int NO_SERVICE_CAUSE_MT = 36866;
	public static final int NO_SERVICE_OFFSET_BASE = 36864;
	private static final String PRECISE_DISCONNECT_CAUSE = "precise_disconnect_cause";
	private static final int RESERVE_FAIL = 10;
	private static final int SRVCC_CANCEL = 9;
	private static final int SRVCC_FAIL = 6;
	private static final int VOLTE_MODULE_ID = 4000;
	private static final int VOLTE_STATISTIC_EVENT = 4005;
	private static HwVolteChrManager mInstance = new HwVolteChrManagerImpl();
	public Context mContext;
	public boolean mIsMissedCallTipsOn = false;
	public int mRemoteCauseCode = -1;
	public boolean mSrvccFlag = false;


	public enum CallCountEvent {
		Mo,
	 	Mt,
		Connected,
		MoFailUE,
		MoFailNW,
		MtFailUE,
		MtFailNW,
		DropCallUE,
		DropCallNW,
		SRVCCSuccess,
		SRVCCFail,
		CSRedial
	}

	public enum CallEndReason {
		CALL_END_NORMAL,
		CALL_FAIL_UE,
		CALL_FAIL_NW
	}

	public static HwVolteChrManager getDefault() {
		return mInstance;
	}

	public void init(Context context) {
		this.mContext = context;
	}

	// Lovely stubs! Don't throw an exeption since they will never be implemented.
	public void updateCallLog(ImsPhoneConnection conn, ImsPhone phone) {};
	public void updateMtCallLog(int event) {};
	public void triggerCallLostEvent(ImsPhoneConnection conn, ImsPhone phone, int callType) {};
	public void triggerHangupFailedEvent() {};
	public void triggerAnswerFailedEvent(int callState) {};
	public void triggerMtCallFailEvent(long ringTime, long inviteTime, int failType, int failCause) {};
	public void triggerNoServiceDuringCallEvent(Call call, Call call2, Call call3) {};
	public boolean triggerImsRegFailEvent(ImsPhone imsPhone) {return true;};
	public void setSrvccFlag(boolean flag) {};
	public void notifySrvccState(int state) {};
	public void notifyCSRedial() {};
	public void setRemoteCauseCode(int causeCode) {};
}
