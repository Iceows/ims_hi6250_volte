package com.android.services.telephony.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.services.telephony.common.IVolteEncryptCmdService;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public interface IVolteEncryptTelephonyService extends IInterface {
    void fallBack() throws RemoteException;

    void startVolteEncryptCallService(IVolteEncryptCmdService iVolteEncryptCmdService) throws RemoteException;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class Default implements IVolteEncryptTelephonyService {
        @Override // com.android.services.telephony.common.IVolteEncryptTelephonyService
        public void startVolteEncryptCallService(IVolteEncryptCmdService cmdService) throws RemoteException {
        }

        @Override // com.android.services.telephony.common.IVolteEncryptTelephonyService
        public void fallBack() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static abstract class Stub extends Binder implements IVolteEncryptTelephonyService {
        private static final String DESCRIPTOR = "com.android.services.telephony.common.IVolteEncryptTelephonyService";
        static final int TRANSACTION_fallBack = 2;
        static final int TRANSACTION_startVolteEncryptCallService = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVolteEncryptTelephonyService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVolteEncryptTelephonyService)) {
                return (IVolteEncryptTelephonyService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                IVolteEncryptCmdService _arg0 = IVolteEncryptCmdService.Stub.asInterface(data.readStrongBinder());
                startVolteEncryptCallService(_arg0);
                reply.writeNoException();
                return true;
            }
            if (code != 2) {
                if (code == 1598968902) {
                    reply.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            fallBack();
            reply.writeNoException();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
        public static class Proxy implements IVolteEncryptTelephonyService {
            public static IVolteEncryptTelephonyService sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.services.telephony.common.IVolteEncryptTelephonyService
            public void startVolteEncryptCallService(IVolteEncryptCmdService cmdService) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cmdService != null ? cmdService.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startVolteEncryptCallService(cmdService);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.services.telephony.common.IVolteEncryptTelephonyService
            public void fallBack() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fallBack();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVolteEncryptTelephonyService impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IVolteEncryptTelephonyService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
