package com.hisi.mapcon;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.hisi.mapcon.IMapconServiceCallback;

/* loaded from: IMapconService.class */
public interface IMapconService extends IInterface {

    /* loaded from: IMapconService$Stub.class */
    public static abstract class Stub extends Binder implements IMapconService {
        private static final String DESCRIPTOR = "com.hisi.mapcon.IMapconService";
        static final int TRANSACTION_getUtOverWifiApn = 15;
        static final int TRANSACTION_getVoWifiServiceDomain = 12;
        static final int TRANSACTION_getVoWifiServiceState = 10;
        static final int TRANSACTION_notifyImsOff = 6;
        static final int TRANSACTION_notifyImsOn = 5;
        static final int TRANSACTION_notifyRoaming = 16;
        static final int TRANSACTION_notifyWifiOff = 4;
        static final int TRANSACTION_sendMessage = 7;
        static final int TRANSACTION_setDomain = 3;
        static final int TRANSACTION_setVoWifiOff = 2;
        static final int TRANSACTION_setVoWifiOn = 1;
        static final int TRANSACTION_setVoWifiServiceDomain = 11;
        static final int TRANSACTION_setVoWifiServiceOff = 9;
        static final int TRANSACTION_setVoWifiServiceOn = 8;
        static final int TRANSACTION_setupTunnelOverWifi = 13;
        static final int TRANSACTION_teardownTunnelOverWifi = 14;

        /* loaded from: IMapconService$Stub$Proxy.class */
        private static class Proxy implements IMapconService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hisi.mapcon.IMapconService
            public String getUtOverWifiApn() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int getVoWifiServiceDomain(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int getVoWifiServiceState(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int notifyImsOff(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int notifyImsOn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public void notifyRoaming(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public void notifyWifiOff(IMapconServiceCallback iMapconServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iMapconServiceCallback != null ? iMapconServiceCallback.asBinder() : null);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public void sendMessage(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setDomain(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setVoWifiOff(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setVoWifiOn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setVoWifiServiceDomain(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setVoWifiServiceOff(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setVoWifiServiceOn(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int setupTunnelOverWifi(int i, int i2, String str, ServerAddr serverAddr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (serverAddr != null) {
                        obtain.writeInt(1);
                        serverAddr.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.hisi.mapcon.IMapconService
            public int teardownTunnelOverWifi(int i, int i2, String str, ServerAddr serverAddr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (serverAddr != null) {
                        obtain.writeInt(1);
                        serverAddr.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMapconService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IMapconService)) ? new Proxy(iBinder) : (IMapconService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiOn = setVoWifiOn(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiOn);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiOff = setVoWifiOff(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiOff);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int domain = setDomain(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(domain);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyWifiOff(IMapconServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyImsOn = notifyImsOn(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyImsOn);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int notifyImsOff = notifyImsOff(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(notifyImsOff);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendMessage(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiServiceOn = setVoWifiServiceOn(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiServiceOn);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiServiceOff = setVoWifiServiceOff(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiServiceOff);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiServiceState = getVoWifiServiceState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiServiceState);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiServiceDomain = setVoWifiServiceDomain(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiServiceDomain);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int voWifiServiceDomain2 = getVoWifiServiceDomain(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(voWifiServiceDomain2);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i3 = setupTunnelOverWifi(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? ServerAddr.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    int teardownTunnelOverWifi = teardownTunnelOverWifi(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? ServerAddr.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(teardownTunnelOverWifi);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String utOverWifiApn = getUtOverWifiApn();
                    parcel2.writeNoException();
                    parcel2.writeString(utOverWifiApn);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyRoaming(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getUtOverWifiApn() throws RemoteException;

    int getVoWifiServiceDomain(int i, int i2) throws RemoteException;

    int getVoWifiServiceState(int i, int i2) throws RemoteException;

    int notifyImsOff(int i, int i2) throws RemoteException;

    int notifyImsOn(int i) throws RemoteException;

    void notifyRoaming(int i) throws RemoteException;

    void notifyWifiOff(IMapconServiceCallback iMapconServiceCallback) throws RemoteException;

    void sendMessage(int i) throws RemoteException;

    int setDomain(int i, int i2) throws RemoteException;

    int setVoWifiOff(int i) throws RemoteException;

    int setVoWifiOn(int i) throws RemoteException;

    int setVoWifiServiceDomain(int i, int i2, int i3) throws RemoteException;

    int setVoWifiServiceOff(int i, int i2) throws RemoteException;

    int setVoWifiServiceOn(int i, int i2) throws RemoteException;

    int setupTunnelOverWifi(int i, int i2, String str, ServerAddr serverAddr) throws RemoteException;

    int teardownTunnelOverWifi(int i, int i2, String str, ServerAddr serverAddr) throws RemoteException;
}
