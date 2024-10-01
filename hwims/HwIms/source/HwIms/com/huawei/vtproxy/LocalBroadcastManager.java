package com.huawei.vtproxy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: LocalBroadcastManager.class */
public class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private final Context mAppContext;
    private final Handler mHandler;
    private static final Object mLock = new Object();
    private static LocalBroadcastManager mInstance = null;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers = new HashMap<>();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: LocalBroadcastManager$BroadcastRecord.class */
    public static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: LocalBroadcastManager$ReceiverRecord.class */
    public static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.receiver);
            sb.append(" filter=");
            sb.append(this.filter);
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: com.huawei.vtproxy.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executePendingBroadcasts() {
        BroadcastRecord[] broadcastRecordArr;
        while (true) {
            synchronized (this.mReceivers) {
                int size = this.mPendingBroadcasts.size();
                if (size <= 0) {
                    return;
                }
                broadcastRecordArr = new BroadcastRecord[size];
                this.mPendingBroadcasts.toArray(broadcastRecordArr);
                this.mPendingBroadcasts.clear();
            }
            for (BroadcastRecord broadcastRecord : broadcastRecordArr) {
                for (int i = 0; i < broadcastRecord.receivers.size(); i++) {
                    broadcastRecord.receivers.get(i).receiver.onReceive(this.mAppContext, broadcastRecord.intent);
                }
            }
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList<IntentFilter> arrayList = this.mReceivers.get(broadcastReceiver);
            ArrayList<IntentFilter> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>(1);
                this.mReceivers.put(broadcastReceiver, arrayList2);
            }
            arrayList2.add(intentFilter);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<ReceiverRecord> arrayList3 = this.mActions.get(action);
                ArrayList<ReceiverRecord> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>(1);
                    this.mActions.put(action, arrayList4);
                }
                arrayList4.add(receiverRecord);
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        String str;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v(TAG, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<ReceiverRecord> arrayList = this.mActions.get(intent.getAction());
            if (arrayList != null) {
                if (z) {
                    Log.v(TAG, "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    ReceiverRecord receiverRecord = arrayList.get(i);
                    if (z) {
                        Log.v(TAG, "Matching against filter " + receiverRecord.filter);
                    }
                    if (!receiverRecord.broadcasting) {
                        IntentFilter intentFilter = receiverRecord.filter;
                        ArrayList arrayList3 = arrayList2;
                        int match = intentFilter.match(action, resolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (z) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            ArrayList arrayList4 = arrayList3;
                            if (arrayList3 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList4.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                            arrayList2 = arrayList4;
                        } else if (z) {
                            switch (match) {
                                case -4:
                                    str = "category";
                                    break;
                                case -3:
                                    str = "action";
                                    break;
                                case -2:
                                    str = "data";
                                    break;
                                case -1:
                                    str = "type";
                                    break;
                                default:
                                    str = "unknown reason";
                                    break;
                            }
                            Log.v(TAG, "  Filter did not match: " + str);
                        }
                    } else if (z) {
                        Log.v(TAG, "  Filter's target already added");
                    }
                }
                if (arrayList2 != null) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        ((ReceiverRecord) arrayList2.get(i2)).broadcasting = false;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList2));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList<IntentFilter> remove = this.mReceivers.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int i = 0; i < remove.size(); i++) {
                IntentFilter intentFilter = remove.get(i);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<ReceiverRecord> arrayList = this.mActions.get(action);
                    if (arrayList != null) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (i4 >= arrayList.size()) {
                                break;
                            }
                            int i5 = i4;
                            if (arrayList.get(i4).receiver == broadcastReceiver) {
                                arrayList.remove(i4);
                                i5 = i4 - 1;
                            }
                            i3 = i5 + 1;
                        }
                        if (arrayList.size() <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }
}
