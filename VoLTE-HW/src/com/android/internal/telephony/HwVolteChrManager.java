package com.android.internal.telephony;

// This file copypasta from https://github.com/dstmath/HWFramework/blob/master/P9-8.0/src/main/java/com/android/internal/telephony/HwVolteChrManager.java

import android.content.Context;
import com.android.internal.telephony.imsphone.ImsPhone;
import com.android.internal.telephony.imsphone.ImsPhoneConnection;
import com.android.internal.telephony.Call;

public interface HwVolteChrManager {
	void init(Context context);

	void notifyCSRedial();

	void notifySrvccState(int i);

	void setRemoteCauseCode(int i);

	void setSrvccFlag(boolean z);

	void triggerAnswerFailedEvent(int i);

	void triggerHangupFailedEvent();

	boolean triggerImsRegFailEvent(ImsPhone imsPhone);

	void triggerMtCallFailEvent(long j, long j2, int i, int i2);

	void triggerNoServiceDuringCallEvent(Call call, Call call2, Call call3);

	void updateCallLog(ImsPhoneConnection imsPhoneConnection, ImsPhone imsPhone);

	void updateMtCallLog(int i);
}
