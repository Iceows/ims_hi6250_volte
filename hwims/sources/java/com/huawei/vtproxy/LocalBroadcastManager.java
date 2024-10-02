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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter _filter, BroadcastReceiver _receiver) {
            this.filter = _filter;
            this.receiver = _receiver;
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
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent _intent, ArrayList<ReceiverRecord> _receivers) {
            this.intent = _intent;
            this.receivers = _receivers;
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

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: com.huawei.vtproxy.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg.what == 1) {
                    LocalBroadcastManager.this.executePendingBroadcasts();
                } else {
                    super.handleMessage(msg);
                }
            }
        };
    }

    public void registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        synchronized (this.mReceivers) {
            ReceiverRecord entry = new ReceiverRecord(filter, receiver);
            ArrayList<IntentFilter> filters = this.mReceivers.get(receiver);
            if (filters == null) {
                filters = new ArrayList<>(1);
                this.mReceivers.put(receiver, filters);
            }
            filters.add(filter);
            for (int i = 0; i < filter.countActions(); i++) {
                String action = filter.getAction(i);
                ArrayList<ReceiverRecord> entries = this.mActions.get(action);
                if (entries == null) {
                    entries = new ArrayList<>(1);
                    this.mActions.put(action, entries);
                }
                entries.add(entry);
            }
        }
    }

    public void unregisterReceiver(BroadcastReceiver receiver) {
        synchronized (this.mReceivers) {
            ArrayList<IntentFilter> filters = this.mReceivers.remove(receiver);
            if (filters == null) {
                return;
            }
            for (int i = 0; i < filters.size(); i++) {
                IntentFilter filter = filters.get(i);
                for (int j = 0; j < filter.countActions(); j++) {
                    String action = filter.getAction(j);
                    ArrayList<ReceiverRecord> receivers = this.mActions.get(action);
                    if (receivers != null) {
                        int k = 0;
                        while (k < receivers.size()) {
                            if (receivers.get(k).receiver == receiver) {
                                receivers.remove(k);
                                k--;
                            }
                            k++;
                        }
                        int k2 = receivers.size();
                        if (k2 <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        int i;
        String type;
        ArrayList<ReceiverRecord> receivers;
        String reason;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String type2 = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean debug = (intent.getFlags() & 8) != 0;
            if (debug) {
                Log.v(TAG, "Resolving type " + type2 + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<ReceiverRecord> entries = this.mActions.get(intent.getAction());
            if (entries != null) {
                if (debug) {
                    Log.v(TAG, "Action list: " + entries);
                }
                ArrayList<ReceiverRecord> receivers2 = null;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    int i4 = entries.size();
                    if (i3 < i4) {
                        ReceiverRecord receiver = entries.get(i3);
                        if (debug) {
                            Log.v(TAG, "Matching against filter " + receiver.filter);
                        }
                        if (receiver.broadcasting) {
                            if (debug) {
                                Log.v(TAG, "  Filter's target already added");
                            }
                            type = type2;
                            i = i3;
                            receivers = receivers2;
                        } else {
                            String str = type2;
                            i = i3;
                            type = type2;
                            receivers = receivers2;
                            int match = receiver.filter.match(action, str, scheme, data, categories, TAG);
                            if (match >= 0) {
                                if (debug) {
                                    Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                                }
                                if (receivers == null) {
                                    ArrayList<ReceiverRecord> receivers3 = new ArrayList<>();
                                    receivers = receivers3;
                                }
                                receivers.add(receiver);
                                receiver.broadcasting = true;
                                receivers2 = receivers;
                                i2 = i + 1;
                                type2 = type;
                            } else if (debug) {
                                switch (match) {
                                    case -4:
                                        reason = "category";
                                        break;
                                    case -3:
                                        reason = "action";
                                        break;
                                    case -2:
                                        reason = "data";
                                        break;
                                    case -1:
                                        reason = "type";
                                        break;
                                    default:
                                        reason = "unknown reason";
                                        break;
                                }
                                Log.v(TAG, "  Filter did not match: " + reason);
                            }
                        }
                        receivers2 = receivers;
                        i2 = i + 1;
                        type2 = type;
                    } else {
                        ArrayList<ReceiverRecord> receivers4 = receivers2;
                        if (receivers4 != null) {
                            for (int i5 = 0; i5 < receivers4.size(); i5++) {
                                receivers4.get(i5).broadcasting = false;
                            }
                            this.mPendingBroadcasts.add(new BroadcastRecord(intent, receivers4));
                            if (!this.mHandler.hasMessages(1)) {
                                this.mHandler.sendEmptyMessage(1);
                            }
                            return true;
                        }
                    }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void executePendingBroadcasts() {
        BroadcastRecord[] brs;
        while (true) {
            synchronized (this.mReceivers) {
                int N = this.mPendingBroadcasts.size();
                if (N <= 0) {
                    return;
                }
                brs = new BroadcastRecord[N];
                this.mPendingBroadcasts.toArray(brs);
                this.mPendingBroadcasts.clear();
            }
            for (BroadcastRecord br : brs) {
                for (int j = 0; j < br.receivers.size(); j++) {
                    br.receivers.get(j).receiver.onReceive(this.mAppContext, br.intent);
                }
            }
        }
    }
}
