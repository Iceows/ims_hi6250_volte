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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private final Context appContext;
    private final Handler handler;
    private static final Object BROADCAST_LOCK = new Object();
    private static LocalBroadcastManager instance = null;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> receiverMap = new HashMap<>();
    private final HashMap<String, ArrayList<ReceiverRecord>> actionMap = new HashMap<>();
    private final ArrayList<BroadcastRecord> pendingBroadcastList = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class ReceiverRecord {
        final IntentFilter filter;
        boolean isBroadcasting;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter filter, BroadcastReceiver receiver) {
            this.filter = filter;
            this.receiver = receiver;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder(128);
            builder.append("Receiver{");
            builder.append(this.receiver);
            builder.append(" filter=");
            builder.append(this.filter);
            builder.append("}");
            return builder.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> receivers) {
            this.intent = intent;
            this.receivers = receivers;
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        synchronized (BROADCAST_LOCK) {
            if (context == null) {
                return null;
            }
            if (instance == null) {
                instance = new LocalBroadcastManager(context.getApplicationContext());
            }
            return instance;
        }
    }

    private LocalBroadcastManager(Context context) {
        this.appContext = context;
        this.handler = new Handler(context.getMainLooper()) { // from class: com.huawei.vtproxy.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg == null) {
                    return;
                }
                if (msg.what == 1) {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                } else {
                    super.handleMessage(msg);
                }
            }
        };
    }

    public void registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        synchronized (this.receiverMap) {
            if (filter == null) {
                return;
            }
            ReceiverRecord entry = new ReceiverRecord(filter, receiver);
            ArrayList<IntentFilter> filters = this.receiverMap.get(receiver);
            if (filters == null) {
                filters = new ArrayList<>(1);
                this.receiverMap.put(receiver, filters);
            }
            filters.add(filter);
            for (int i = 0; i < filter.countActions(); i++) {
                String action = filter.getAction(i);
                ArrayList<ReceiverRecord> entries = this.actionMap.get(action);
                if (entries == null) {
                    entries = new ArrayList<>(1);
                    this.actionMap.put(action, entries);
                }
                entries.add(entry);
            }
        }
    }

    private void unregisterReceiverRemoveAction(String action, BroadcastReceiver receiver) {
        ArrayList<ReceiverRecord> receivers = this.actionMap.get(action);
        if (receivers != null && receiver != null) {
            int k = 0;
            while (k < receivers.size()) {
                if (receivers.get(k) != null && receiver.equals(receivers.get(k).receiver)) {
                    receivers.remove(k);
                    k--;
                }
                k++;
            }
            int k2 = receivers.size();
            if (k2 <= 0) {
                this.actionMap.remove(action);
            }
        }
    }

    public void unregisterReceiver(BroadcastReceiver receiver) {
        synchronized (this.receiverMap) {
            ArrayList<IntentFilter> filters = this.receiverMap.remove(receiver);
            if (filters == null) {
                return;
            }
            for (int i = 0; i < filters.size(); i++) {
                IntentFilter filter = filters.get(i);
                for (int j = 0; j < filter.countActions(); j++) {
                    String action = filter.getAction(j);
                    unregisterReceiverRemoveAction(action, receiver);
                }
            }
        }
    }

    private void sendBroadcastProcNotMatch(int match, boolean isDebug) {
        String reason;
        if (isDebug) {
            if (match == -4) {
                reason = "category";
            } else if (match == -3) {
                reason = "action";
            } else if (match == -2) {
                reason = "data";
            } else if (match == -1) {
                reason = "type";
            } else {
                reason = "unknown reason";
            }
            Log.v(TAG, "  Filter did not match: " + reason);
        }
    }

    private ArrayList<ReceiverRecord> sendBroadcastProcReceivers(Intent intent, ArrayList<ReceiverRecord> entries) {
        String str;
        String action;
        boolean isDebug;
        String type;
        boolean z;
        ArrayList<ReceiverRecord> receivers;
        ArrayList<ReceiverRecord> arrayList = entries;
        String action2 = intent.getAction();
        String type2 = intent.resolveTypeIfNeeded(this.appContext.getContentResolver());
        Uri data = intent.getData();
        String scheme = intent.getScheme();
        Set<String> categories = intent.getCategories();
        boolean z2 = true;
        boolean isDebug2 = (intent.getFlags() & 8) != 0;
        String str2 = TAG;
        if (isDebug2) {
            Log.v(TAG, "Resolving type " + type2 + " scheme " + scheme + " of intent " + intent);
            StringBuilder sb = new StringBuilder();
            sb.append("Action list: ");
            sb.append(arrayList);
            Log.v(TAG, sb.toString());
        }
        ArrayList<ReceiverRecord> receivers2 = null;
        int i = 0;
        while (i < entries.size()) {
            ReceiverRecord receiver = arrayList.get(i);
            if (isDebug2) {
                Log.v(str2, "Matching against filter " + receiver.filter);
            }
            if (receiver.isBroadcasting) {
                if (!isDebug2) {
                    str = str2;
                    action = action2;
                    type = type2;
                    isDebug = isDebug2;
                    z = z2;
                } else {
                    Log.v(str2, "Filter's target already added");
                    str = str2;
                    action = action2;
                    type = type2;
                    isDebug = isDebug2;
                    z = z2;
                }
            } else {
                String str3 = action2;
                String str4 = type2;
                str = str2;
                action = action2;
                isDebug = isDebug2;
                type = type2;
                z = z2;
                int match = receiver.filter.match(str3, str4, scheme, data, categories, TAG);
                if (match >= 0) {
                    if (isDebug) {
                        Log.v(str, "  Filter matched!  match=0x" + Integer.toHexString(match));
                    }
                    if (receivers2 != null) {
                        receivers = receivers2;
                    } else {
                        receivers = new ArrayList<>();
                    }
                    receivers.add(receiver);
                    receiver.isBroadcasting = z;
                    receivers2 = receivers;
                } else {
                    sendBroadcastProcNotMatch(match, isDebug);
                }
            }
            i++;
            str2 = str;
            isDebug2 = isDebug;
            z2 = z;
            action2 = action;
            type2 = type;
            arrayList = entries;
        }
        return receivers2;
    }

    public boolean sendBroadcast(Intent intent) {
        ArrayList<ReceiverRecord> receivers;
        synchronized (this.receiverMap) {
            if (intent == null) {
                return false;
            }
            ArrayList<ReceiverRecord> entries = this.actionMap.get(intent.getAction());
            if (entries == null || (receivers = sendBroadcastProcReceivers(intent, entries)) == null) {
                return false;
            }
            for (int i = 0; i < receivers.size(); i++) {
                receivers.get(i).isBroadcasting = false;
            }
            this.pendingBroadcastList.add(new BroadcastRecord(intent, receivers));
            if (!this.handler.hasMessages(1)) {
                this.handler.sendEmptyMessage(1);
            }
            return true;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executePendingBroadcasts() {
        BroadcastRecord[] brs;
        while (true) {
            synchronized (this.receiverMap) {
                int number = this.pendingBroadcastList.size();
                if (number <= 0) {
                    return;
                }
                brs = new BroadcastRecord[number];
                this.pendingBroadcastList.toArray(brs);
                this.pendingBroadcastList.clear();
            }
            for (BroadcastRecord br : brs) {
                for (int j = 0; j < br.receivers.size(); j++) {
                    br.receivers.get(j).receiver.onReceive(this.appContext, br.intent);
                }
            }
        }
    }
}
