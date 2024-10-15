package com.huawei.ims.p2ptransport;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.telephony.RIL;
import com.huawei.ims.ImsUtils;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import vendor.huawei.hardware.vpeer.p2ptransport.V1_0.IP2pTransport;
import vendor.huawei.hardware.vpeer.p2ptransport.V1_0.IP2pTransportAdapter;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class P2pTransportManager {
    private static final int DATA_QUEUE_LIMIT_LEN = 10;
    private static final String DEVICE_ID = "device_id";
    private static final int DEVICE_ID_LENGTH = 15;
    private static final int HEADER_LEN = 4;
    private static final int INVALID_PID = -1;
    private static final int KEEP_ALIVE_TIME = 1;
    private static final int MAX_THREAD_NUM = 2;
    private static final String MEETIME_PACKAGE_NAME = "com.huawei.meetime";
    private static final String MEETIME_SHA256_FINGERPRINT = "35:DF:D8:1C:FA:F2:CA:01:26:F0:0B:63:99:F4:5F:B2:BB:CF:66:30:63:6C:46:60:BF:4C:0A:13:2E:EE:EE:4B";
    private static final int MSG_HANDLE_VOIP_DATA = 101;
    private static final int MSG_HANDLE_VPEER_DATA = 100;
    private static final int SEND_TASK_TIME_OUT = 100;
    private static final String TAG = "P2pTransportManager";
    private static final String VOICE_DATA = "voice_data";
    private static P2pTransportManager sP2pTransportManager;
    private SocketChannel mConnection;
    private ThreadPoolExecutor mFixedTaskPoolExecutor;
    private FileInputStream mP2pInputStream;
    private FileOutputStream mP2pOutputStream;
    private P2pTransportAdapter mP2pTransportAdapter;
    private IP2pTransport mP2pTransportProxy;
    private volatile boolean mIsP2pTransportEnd = true;
    private LinkedBlockingQueue<byte[]> mSendDataQueue = new LinkedBlockingQueue<>(10);

    private P2pTransportManager() {
    }

    public static synchronized P2pTransportManager getInstance() {
        P2pTransportManager p2pTransportManager;
        synchronized (P2pTransportManager.class) {
            if (sP2pTransportManager == null) {
                sP2pTransportManager = new P2pTransportManager();
            }
            p2pTransportManager = sP2pTransportManager;
        }
        return p2pTransportManager;
    }

    public void init(ParcelFileDescriptor pfd) {
        if (pfd == null) {
            return;
        }
        this.mIsP2pTransportEnd = false;
        getVpeerProxy();
        this.mP2pTransportAdapter = new P2pTransportAdapter();
        IP2pTransport iP2pTransport = this.mP2pTransportProxy;
        if (iP2pTransport != null) {
            try {
                iP2pTransport.setP2pTransportAdapter(this.mP2pTransportAdapter);
            } catch (RemoteException e) {
                Log.e(TAG, "Vpeer service occurs exception.");
            }
        }
        this.mP2pInputStream = new ParcelFileDescriptor.AutoCloseInputStream(pfd);
        this.mP2pOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(pfd);
        this.mFixedTaskPoolExecutor = new ThreadPoolExecutor(2, 2, 1L, TimeUnit.SECONDS, new ArrayBlockingQueue(1));
        this.mFixedTaskPoolExecutor.execute(new SendTask());
        this.mFixedTaskPoolExecutor.execute(new ReceiveTask());
    }

    public void deInit() {
        this.mP2pTransportAdapter = null;
        this.mP2pTransportProxy = null;
        this.mIsP2pTransportEnd = true;
        FileInputStream fileInputStream = this.mP2pInputStream;
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e) {
                Log.w(TAG, "Unexcepted file exception of output stream.");
            }
        }
        FileOutputStream fileOutputStream = this.mP2pOutputStream;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Unexcepted file exception of output stream.");
            }
        }
        this.mSendDataQueue.clear();
        ThreadPoolExecutor threadPoolExecutor = this.mFixedTaskPoolExecutor;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.shutdown();
        }
    }

    private IP2pTransport getVpeerProxy() {
        IP2pTransport iP2pTransport = this.mP2pTransportProxy;
        if (iP2pTransport != null) {
            return iP2pTransport;
        }
        try {
            IP2pTransport p2pTransportProxy = IP2pTransport.getService(true);
            this.mP2pTransportProxy = p2pTransportProxy;
        } catch (RemoteException | RuntimeException e) {
            Log.e(TAG, "getVpeerProxy: p2pTransportProxy got V1_0 exception");
        }
        return this.mP2pTransportProxy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVoiceDataToVpeer(String devId, byte[] voiceData) {
        if (this.mP2pTransportProxy != null) {
            ArrayList<Byte> voiceDataLists = RIL.primitiveArrayToArrayList(voiceData);
            try {
                this.mP2pTransportProxy.send(devId, voiceDataLists);
            } catch (RemoteException e) {
                Log.e(TAG, "SendTask run: Exception.");
                deInit();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class P2pTransportAdapter extends IP2pTransportAdapter.Stub {
        private P2pTransportAdapter() {
        }

        @Override // vendor.huawei.hardware.vpeer.p2ptransport.V1_0.IP2pTransportAdapter
        public void onReceive(String devId, ArrayList<Byte> data) {
            if (data == null || data.size() <= 0) {
                Log.w(P2pTransportManager.TAG, "The data is empty, no need to handle");
                return;
            }
            byte[] responseArrays = RIL.arrayListToPrimitiveArray(data);
            byte[] sendDataArrays = P2pTransDataStructureUtil.generateData(devId, responseArrays);
            P2pTransportManager.this.mSendDataQueue.offer(sendDataArrays);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class SendTask implements Runnable {
        private SendTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (P2pTransportManager.this.mP2pOutputStream != null) {
                while (!P2pTransportManager.this.mIsP2pTransportEnd) {
                    try {
                        byte[] dataArrays = (byte[]) P2pTransportManager.this.mSendDataQueue.poll(100L, TimeUnit.MILLISECONDS);
                        if (dataArrays != null && dataArrays.length > 0) {
                            P2pTransportManager.this.mP2pOutputStream.write(dataArrays, 0, dataArrays.length);
                        }
                    } catch (IOException | InterruptedException e) {
                        Log.e(P2pTransportManager.TAG, "SendTask run: Exception.");
                    } catch (RuntimeException e2) {
                        Log.e(P2pTransportManager.TAG, "SendTask run: Unexcepted runtime exception.");
                    }
                }
                P2pTransportManager.this.deInit();
            }
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class ReceiveTask implements Runnable {
        private ReceiveTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (P2pTransportManager.this.mP2pInputStream != null) {
                while (!P2pTransportManager.this.mIsP2pTransportEnd) {
                    String devId = "";
                    byte[] dataArrays = null;
                    for (int i = 0; i < 2; i++) {
                        try {
                            byte[] headerArrays = readData(4);
                            int dataLen = P2pTransDataStructureUtil.getTransDataLen(headerArrays);
                            if (dataLen > 0 && dataLen <= 65535) {
                                byte[] bodyArrays = readData(dataLen);
                                int transDataType = P2pTransDataStructureUtil.getTransDataType(headerArrays);
                                if (transDataType == 1) {
                                    devId = new String(bodyArrays, Charset.defaultCharset());
                                } else if (transDataType != 2) {
                                    Log.w(P2pTransportManager.TAG, "Invalid data type.");
                                } else {
                                    dataArrays = bodyArrays;
                                }
                            }
                            Log.e(P2pTransportManager.TAG, "Read data failed for invalid data length");
                        } catch (IOException e) {
                            Log.e(P2pTransportManager.TAG, "ReceiveTask run: Exception.");
                        } catch (RuntimeException e2) {
                            Log.e(P2pTransportManager.TAG, "ReceiveTask run: Unexcepted runtime exception.");
                        }
                    }
                    P2pTransportManager.this.sendVoiceDataToVpeer(devId, dataArrays);
                }
                P2pTransportManager.this.deInit();
            }
        }

        private byte[] readData(int dataLen) throws IOException {
            int off = 0;
            byte[] dataBufs = new byte[dataLen];
            while (!P2pTransportManager.this.mIsP2pTransportEnd) {
                int len = P2pTransportManager.this.mP2pInputStream.read(dataBufs, off, dataLen - off);
                if (len < 0) {
                    Log.e(P2pTransportManager.TAG, "readData: the len < 0, stop.");
                    throw new IOException("The end of the stream has been reached.");
                }
                if (len == dataLen - off) {
                    break;
                }
                off += len;
            }
            return dataBufs;
        }
    }

    public boolean hasPermission(Context context, String permission) {
        if (checkCallingPermission(context, permission)) {
            return true;
        }
        if (isPidOfMeetime(context, Binder.getCallingPid()) && isRealMeetimeByFingerprint(context)) {
            return true;
        }
        Log.i(TAG, "has no permission");
        return false;
    }

    private boolean checkCallingPermission(Context context, String permission) {
        return context != null && context.checkCallingPermission(permission) == 0;
    }

    private boolean isPidOfMeetime(Context context, int pid) {
        int meetimePid;
        return (context == null || (meetimePid = ImsUtils.getPidByPackageName(context, MEETIME_PACKAGE_NAME)) == -1 || pid != meetimePid) ? false : true;
    }

    private boolean isRealMeetimeByFingerprint(Context context) {
        String fingerprint = ImsUtils.getCertificateSha256Fingerprint(context, MEETIME_PACKAGE_NAME);
        return MEETIME_SHA256_FINGERPRINT.equals(fingerprint);
    }
}
