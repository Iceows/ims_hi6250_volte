package android.os;

import android.annotation.SystemApi;

@SystemApi
/* loaded from: IHwBinder.class */
public interface IHwBinder {

    @SystemApi
    /* loaded from: IHwBinder$DeathRecipient.class */
    public interface DeathRecipient {
        @SystemApi
        void serviceDied(long j);
    }

    @SystemApi
    boolean linkToDeath(DeathRecipient deathRecipient, long j);

    @SystemApi
    IHwInterface queryLocalInterface(String str);

    @SystemApi
    void transact(int i, HwParcel hwParcel, HwParcel hwParcel2, int i2) throws RemoteException;

    @SystemApi
    boolean unlinkToDeath(DeathRecipient deathRecipient);
}
