package com.huawei.ims;

import android.content.Context;
import android.database.ContentObserver;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.telephony.HwTelephonyManager;
import android.telephony.Rlog;
import com.android.services.telephony.common.IVolteEncryptCmdService;
import java.util.ArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class VolteEncryptCallCmdService extends IVolteEncryptCmdService.Stub {
    private static final int ENCRYPT_DEVICE_FLAG_DISABLED = 0;
    private static final int EVT_SET_ENCRYPT_DEVICE_VALID_FLAG = 100;
    private static final int EVT_SET_ENCRYPT_DEVICE_VALID_RIL_RETURN = 101;
    private static final String SETTINGS_URI_SWITCH_CARD = "switch_dual_card_slots";
    private static final String TAG = "VolteEncryptCallCmdService";
    private static VolteEncryptCallCmdService sInstance;
    private Context mContext;
    private static final Object SERVICE_LOCK = new Object();
    private static final ArrayList<HwImsServiceImpl> IMS_SERVICE_SUB_ARRAY_LIST = new ArrayList<>();
    private int mCurrentDeviceValidFlag = 0;
    private ContentObserver mAuto4gSlotChangeObserver = new ContentObserver(new Handler()) { // from class: com.huawei.ims.VolteEncryptCallCmdService.1
        @Override // android.database.ContentObserver
        public void onChange(boolean isSelfChange) {
            Rlog.i(VolteEncryptCallCmdService.TAG, "mAuto4gSlotChangeObserver onChange, selfChange = " + isSelfChange);
            VolteEncryptCallCmdService volteEncryptCallCmdService = VolteEncryptCallCmdService.this;
            volteEncryptCallCmdService.setDeviceValidFlag(volteEncryptCallCmdService.mCurrentDeviceValidFlag);
        }
    };
    private Handler mMyHandler = new MyHandler();

    private VolteEncryptCallCmdService(Context context) {
        this.mContext = context;
        registerAuto4gSlotChangeObserver();
    }

    public static void init(Context context, HwImsServiceImpl hwMmTelFeature) {
        synchronized (SERVICE_LOCK) {
            if (!IMS_SERVICE_SUB_ARRAY_LIST.contains(hwMmTelFeature)) {
                IMS_SERVICE_SUB_ARRAY_LIST.add(hwMmTelFeature);
            }
            if (sInstance == null) {
                sInstance = new VolteEncryptCallCmdService(context);
            }
        }
    }

    public static VolteEncryptCallCmdService getInstance() {
        return sInstance;
    }

    @Override // com.android.services.telephony.common.IVolteEncryptCmdService
    public void setEncryptDeviceValidFlag(int validFlag) {
        Rlog.i(TAG, "setEncryptDeviceValidFlag Flag = " + validFlag);
        Message msg = this.mMyHandler.obtainMessage(100, validFlag, 0, null);
        msg.sendToTarget();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class MyHandler extends Handler {
        private MyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            AsyncResult ar;
            int i = msg.what;
            if (i == 100) {
                VolteEncryptCallCmdService.this.onSetDeviceValidFlag(msg.arg1);
            } else if (i == 101 && (msg.obj instanceof AsyncResult) && (ar = (AsyncResult) msg.obj) != null && ar.exception != null) {
                Rlog.e(VolteEncryptCallCmdService.TAG, "SET FLAG ERROR!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetDeviceValidFlag(int flag) {
        Rlog.i(TAG, "onSetDeviceValidFlag flag = " + flag);
        setDeviceValidFlag(flag);
        this.mCurrentDeviceValidFlag = flag;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDeviceValidFlag(int flag) {
        Rlog.i(TAG, "onSetDeviceValidFlag: flag = " + flag);
        int len = IMS_SERVICE_SUB_ARRAY_LIST.size();
        int default4gSlotId = HwTelephonyManager.getDefault().getDefault4GSlotId();
        for (int i = 0; i < len; i++) {
            HwImsServiceImpl hwImsServiceImpl = IMS_SERVICE_SUB_ARRAY_LIST.get(i);
            if (hwImsServiceImpl == null) {
                Rlog.e(TAG, "onSetDeviceValidFlag: hwImsServiceImpl " + i + " is NULL.");
            } else {
                ImsRIL ril = hwImsServiceImpl.mCi;
                if (ril == null) {
                    Rlog.e(TAG, "onSetDeviceValidFlag: ril " + i + " is NULL.");
                } else {
                    Message msg = this.mMyHandler.obtainMessage(101);
                    int newFlag = hwImsServiceImpl.getSubscription() == default4gSlotId ? flag : 0;
                    Rlog.i(TAG, "onSetDeviceValidFlag: slot " + i + " set flag to " + newFlag);
                    ril.setEncryptVolteCallSwitch(newFlag, msg);
                }
            }
        }
    }

    private void registerAuto4gSlotChangeObserver() {
        Rlog.i(TAG, "registerAuto4GSlotChangeObserver");
        Context context = this.mContext;
        if (context != null) {
            context.getContentResolver().registerContentObserver(Settings.System.getUriFor(SETTINGS_URI_SWITCH_CARD), true, this.mAuto4gSlotChangeObserver);
        }
    }
}
