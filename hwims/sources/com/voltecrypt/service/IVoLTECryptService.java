package com.voltecrypt.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public interface IVoLTECryptService extends IInterface {
    int callVoLTEEncryptPhone(String str) throws RemoteException;

    int closeEncryptedVoLTE() throws RemoteException;

    int getEncryptionVoLTESwitchStatus() throws RemoteException;

    int getRootStatus() throws RemoteException;

    int getVoLTESwitchStatus() throws RemoteException;

    int openEncryptedVoLTE() throws RemoteException;

    int setEncryptionVoLTESwitchStatus(int i) throws RemoteException;

    int setPowerMode(int i) throws RemoteException;

    int setVoLTESwitchStatus(int i) throws RemoteException;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class Default implements IVoLTECryptService {
        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getVoLTESwitchStatus() throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setVoLTESwitchStatus(int status) throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getEncryptionVoLTESwitchStatus() throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setEncryptionVoLTESwitchStatus(int status) throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int setPowerMode(int mode) throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int getRootStatus() throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int callVoLTEEncryptPhone(String phoneNum) throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int openEncryptedVoLTE() throws RemoteException {
            return 0;
        }

        @Override // com.voltecrypt.service.IVoLTECryptService
        public int closeEncryptedVoLTE() throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static abstract class Stub extends Binder implements IVoLTECryptService {
        private static final String DESCRIPTOR = "com.voltecrypt.service.IVoLTECryptService";
        static final int TRANSACTION_callVoLTEEncryptPhone = 7;
        static final int TRANSACTION_closeEncryptedVoLTE = 9;
        static final int TRANSACTION_getEncryptionVoLTESwitchStatus = 3;
        static final int TRANSACTION_getRootStatus = 6;
        static final int TRANSACTION_getVoLTESwitchStatus = 1;
        static final int TRANSACTION_openEncryptedVoLTE = 8;
        static final int TRANSACTION_setEncryptionVoLTESwitchStatus = 4;
        static final int TRANSACTION_setPowerMode = 5;
        static final int TRANSACTION_setVoLTESwitchStatus = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoLTECryptService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVoLTECryptService)) {
                return (IVoLTECryptService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    int _result = getVoLTESwitchStatus();
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg0 = data.readInt();
                    int _result2 = setVoLTESwitchStatus(_arg0);
                    reply.writeNoException();
                    reply.writeInt(_result2);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    int _result3 = getEncryptionVoLTESwitchStatus();
                    reply.writeNoException();
                    reply.writeInt(_result3);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg02 = data.readInt();
                    int _result4 = setEncryptionVoLTESwitchStatus(_arg02);
                    reply.writeNoException();
                    reply.writeInt(_result4);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    int _arg03 = data.readInt();
                    int _result5 = setPowerMode(_arg03);
                    reply.writeNoException();
                    reply.writeInt(_result5);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    int _result6 = getRootStatus();
                    reply.writeNoException();
                    reply.writeInt(_result6);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    String _arg04 = data.readString();
                    int _result7 = callVoLTEEncryptPhone(_arg04);
                    reply.writeNoException();
                    reply.writeInt(_result7);
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    int _result8 = openEncryptedVoLTE();
                    reply.writeNoException();
                    reply.writeInt(_result8);
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    int _result9 = closeEncryptedVoLTE();
                    reply.writeNoException();
                    reply.writeInt(_result9);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
        public static class Proxy implements IVoLTECryptService {
            public static IVoLTECryptService sDefaultImpl;
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

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int getVoLTESwitchStatus() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVoLTESwitchStatus();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int setVoLTESwitchStatus(int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(status);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setVoLTESwitchStatus(status);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int getEncryptionVoLTESwitchStatus() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEncryptionVoLTESwitchStatus();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int setEncryptionVoLTESwitchStatus(int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(status);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setEncryptionVoLTESwitchStatus(status);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int setPowerMode(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setPowerMode(mode);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int getRootStatus() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRootStatus();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int callVoLTEEncryptPhone(String phoneNum) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(phoneNum);
                    boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().callVoLTEEncryptPhone(phoneNum);
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int openEncryptedVoLTE() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openEncryptedVoLTE();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.voltecrypt.service.IVoLTECryptService
            public int closeEncryptedVoLTE() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().closeEncryptedVoLTE();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVoLTECryptService impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IVoLTECryptService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
